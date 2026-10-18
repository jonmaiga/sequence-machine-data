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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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

/-! ## A328366.P4444315487186983068

`2*A299692(n+1)`
-/

namespace A328366.P4444315487186983068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299692 (n + 1)

end

end A328366.P4444315487186983068

noncomputable section

/-- A328366: a(n) is the surface area of the stepped pyramid with n levels described in A245092.

Offset 1, canonical program `A328366.P4444315487186983068`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328366 (n : ℕ) : ℤ :=
  A328366.P4444315487186983068.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328366.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A334907.P12812039533966240543

`n!*A001790(2*n+1)/A060818(n)`
-/

namespace A334907.P12812039533966240543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A001790 (2 * n + 1) : ℚ) / (A060818 n : ℚ)

end

end A334907.P12812039533966240543

noncomputable section

/-- A334907: Comtet's expansion of the e.g.f. (sqrt(1 + sqrt(8*s)) - sqrt(1 - sqrt(8*s)))/ sqrt(8*s * (1 - 8*s)).

Offset 0, canonical program `A334907.P12812039533966240543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334907 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A334907.P12812039533966240543.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351864.P6848579617677032466

`2^A240883(n)`
-/

namespace A351864.P6848579617677032466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A240883 n : ℤ)

end

end A351864.P6848579617677032466

noncomputable section

/-- A351864: Numerator of zeta({6}_n)/Pi^(6n).

Offset 0, canonical program `A351864.P6848579617677032466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351864 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A351864.P6848579617677032466.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351864.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374348.P7186734061745376650

`2*A129195(n)-(n+1)`
-/

namespace A374348.P7186734061745376650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129195 n - (n + 1 : ℤ)

end

end A374348.P7186734061745376650

noncomputable section

/-- A374348: a(n) = k where wt(k) = n and k + wt(k) = a power of two, where wt(n) = A000120(n) = binary weight of n.

Offset 1, canonical program `A374348.P7186734061745376650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374348 (n : ℕ) : ℤ :=
  A374348.P7186734061745376650.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378781.P6898465891069053923

`n*A378778(n)/3`
-/

namespace A378781.P6898465891069053923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A378778 n : ℚ) / 3

end

end A378781.P6898465891069053923

noncomputable section

/-- A378781: a(n) = n^3 * 2^n * binomial(3*n, n) / 3.

Offset 0, canonical program `A378781.P6898465891069053923`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378781.P6898465891069053923.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A336225.P17998549237820422195

`A007953(A004247(n))`
-/

namespace A336225.P17998549237820422195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004247 n).toNat

end

end A336225.P17998549237820422195

noncomputable section

/-- A336225: Table read by antidiagonals: T(n, k) = digitsum(n*k) with n >= 0 and k >= 0.

Offset 0, canonical program `A336225.P17998549237820422195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336225 (n : ℕ) : ℤ :=
  A336225.P17998549237820422195.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343754.P7504119164661584635

`n-A174574(n)`
-/

namespace A343754.P7504119164661584635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A174574 n

end

end A343754.P7504119164661584635

noncomputable section

/-- A343754: a(n) = 0, and for any n > 0, a(n+1) = a(n) - A065363(n) + 1.

Offset 0, canonical program `A343754.P7504119164661584635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343754 (n : ℕ) : ℤ :=
  A343754.P7504119164661584635.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353109.P16770643257705871787

`A010888(A004247(n))`
-/

namespace A353109.P16770643257705871787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A004247 n).toNat

end

end A353109.P16770643257705871787

noncomputable section

/-- A353109: Array read by antidiagonals: A(n, k) is the digital root of n*k with n >= 0 and k >= 0.

Offset 0, canonical program `A353109.P16770643257705871787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353109 (n : ℕ) : ℤ :=
  A353109.P16770643257705871787.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353109.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356133.P5129533171813419768

`3*(n+1)-A001285(n)`
-/

namespace A356133.P5129533171813419768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A001285 n

end

end A356133.P5129533171813419768

noncomputable section

/-- A356133: Complement of A026430.

Offset 1, canonical program `A356133.P5129533171813419768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356133 (n : ℕ) : ℤ :=
  A356133.P5129533171813419768.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359499.P4428695671887271465

`A219086(n)*A175110(n)*A359844(n)`
-/

namespace A359499.P4428695671887271465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n * A175110 n * A359844 n

end

end A359499.P4428695671887271465

noncomputable section

/-- A359499: a(n) = ((2*n+1)^16 - 1)/64.

Offset 0, canonical program `A359499.P4428695671887271465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359499 (n : ℕ) : ℤ :=
  A359499.P4428695671887271465.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369510.P1265040740689767623

`2^n*A006013(n)`
-/

namespace A369510.P1265040740689767623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006013 n

end

end A369510.P1265040740689767623

noncomputable section

/-- A369510: Expansion of (1/x) * Series_Reversion( x * ((1-x)^2-x^2)^2 ).

Offset 0, canonical program `A369510.P1265040740689767623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369510 (n : ℕ) : ℤ :=
  A369510.P1265040740689767623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369510.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371240.P7897189969390004216

`A000203(A032924(n+1))`
-/

namespace A371240.P7897189969390004216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A032924 (n + 1)).toNat

end

end A371240.P7897189969390004216

noncomputable section

/-- A371240: The sum of divisors of the zeroless numbers in base 3 (A032924).

Offset 1, canonical program `A371240.P7897189969390004216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371240 (n : ℕ) : ℤ :=
  A371240.P7897189969390004216.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372749.P13035462491583893748

`A202342(n+1)+A136496(n+1)+A381841(n+1)-2`
-/

namespace A372749.P13035462491583893748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1) + A136496 (n + 1) + A381841 (n + 1) - 2

end

end A372749.P13035462491583893748

noncomputable section

/-- A372749: 4th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372749.P13035462491583893748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372749 (n : ℕ) : ℤ :=
  A372749.P13035462491583893748.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372749.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372750.P11021400097773802461

`A202342(n+1)+A136496(n+1)+2*A381841(n+1)-3`
-/

namespace A372750.P11021400097773802461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1) + A136496 (n + 1) + 2 * A381841 (n + 1) - 3

end

end A372750.P11021400097773802461

noncomputable section

/-- A372750: 5th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372750.P11021400097773802461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372750 (n : ℕ) : ℤ :=
  A372750.P11021400097773802461.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372752.P5687007721040332012

`2*A202342(n+1)+A136496(n+1)+3*A381841(n+1)-4`
-/

namespace A372752.P5687007721040332012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202342 (n + 1) + A136496 (n + 1) + 3 * A381841 (n + 1) - 4

end

end A372752.P5687007721040332012

noncomputable section

/-- A372752: 6th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372752.P5687007721040332012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372752 (n : ℕ) : ℤ :=
  A372752.P5687007721040332012.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372756.P16576302570727181633

`3*A202342(n+1)+2*A136496(n+1)+4*A381841(n+1)-6`
-/

namespace A372756.P16576302570727181633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A202342 (n + 1) + 2 * A136496 (n + 1) + 4 * A381841 (n + 1) - 6

end

end A372756.P16576302570727181633

noncomputable section

/-- A372756: 7th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372756.P16576302570727181633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372756 (n : ℕ) : ℤ :=
  A372756.P16576302570727181633.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372757.P4399208571086954249

`4*A202342(n+1)+3*A136496(n+1)+6*A381841(n+1)-9`
-/

namespace A372757.P4399208571086954249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A202342 (n + 1) + 3 * A136496 (n + 1) + 6 * A381841 (n + 1) - 9

end

end A372757.P4399208571086954249

noncomputable section

/-- A372757: 8th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372757.P4399208571086954249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372757 (n : ℕ) : ℤ :=
  A372757.P4399208571086954249.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377879.P14705173764961041786

`A033879((n+1)*(n+1))`
-/

namespace A377879.P14705173764961041786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 ((n + 1) * (n + 1))

end

end A377879.P14705173764961041786

noncomputable section

/-- A377879: Deficiency of squares: a(n) = 2n^2 - sigma(n^2).

Offset 1, canonical program `A377879.P14705173764961041786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377879 (n : ℕ) : ℤ :=
  A377879.P14705173764961041786.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377879.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378978.P10075969272711393270

`A033879(2*(n+1))`
-/

namespace A378978.P10075969272711393270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (2 * (n + 1))

end

end A378978.P10075969272711393270

noncomputable section

/-- A378978: Deficiency of even numbers: a(n) = 4*n - sigma(2*n).

Offset 1, canonical program `A378978.P10075969272711393270`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378978 (n : ℕ) : ℤ :=
  A378978.P10075969272711393270.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394110.P1967582314872625174

`2*A006013(n)+A001764(n)`
-/

namespace A394110.P1967582314872625174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006013 n + A001764 n

end

end A394110.P1967582314872625174

noncomputable section

/-- A394110: a(n) = binomial(3*n, n)*(7*n+3)/((n+1)*(2*n+1)).

Offset 0, canonical program `A394110.P1967582314872625174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394110 (n : ℕ) : ℤ :=
  A394110.P1967582314872625174.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394111.P11665560195545579973

`A006013(n)+2*A001764(n)`
-/

namespace A394111.P11665560195545579973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n + 2 * A001764 n

end

end A394111.P11665560195545579973

noncomputable section

/-- A394111: a(n) = binomial(3*n, n)*(5*n+3)/((n+1)*(2*n+1)).

Offset 0, canonical program `A394111.P11665560195545579973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394111 (n : ℕ) : ℤ :=
  A394111.P11665560195545579973.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324469.P7402348818447187183

`2*A000989(n)+A000989(2*n)`
-/

namespace A324469.P7402348818447187183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000989 n + A000989 (2 * n)

end

end A324469.P7402348818447187183

noncomputable section

/-- A324469: Exponent of highest power of 3 that divides multinomial(4*n;n,n,n,n).

Offset 0, canonical program `A324469.P7402348818447187183`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324469 (n : ℕ) : ℤ :=
  A324469.P7402348818447187183.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326238.P2576865909490230932

`(n+1)*A002129(n+1)`
-/

namespace A326238.P2576865909490230932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002129 (n + 1)

end

end A326238.P2576865909490230932

noncomputable section

/-- A326238: Expansion of Sum_{k>=1} k * x^k * (1 - x^k) / (1 + x^k)^3.

Offset 1, canonical program `A326238.P2576865909490230932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326238 (n : ℕ) : ℤ :=
  A326238.P2576865909490230932.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326987.P399885579470220940

`(A001227(n+1)-1)*A001511(n+1)`
-/

namespace A326987.P399885579470220940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) - 1) * A001511 (n + 1)

end

end A326987.P399885579470220940

noncomputable section

/-- A326987: Number of nonpowers of 2 dividing n.

Offset 1, canonical program `A326987.P399885579470220940`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326987 (n : ℕ) : ℤ :=
  A326987.P399885579470220940.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A352375.P700649589614720325

`A007618(n+2)-A007618(n+1)`
-/

namespace A352375.P700649589614720325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007618 (n + 2) - A007618 (n + 1)

end

end A352375.P700649589614720325

noncomputable section

/-- A352375: Sum of digits of A007618.

Offset 1, canonical program `A352375.P700649589614720325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352375 (n : ℕ) : ℤ :=
  A352375.P700649589614720325.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363598.P10065687439542942200

`(A002129(n+1)-A138503(n+1))/6`
-/

namespace A363598.P10065687439542942200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) - A138503 (n + 1) : ℚ) / 6

end

end A363598.P10065687439542942200

noncomputable section

/-- A363598: Expansion of Sum_{k>0} x^(2*k)/(1+x^k)^4.

Offset 1, canonical program `A363598.P10065687439542942200`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363598 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363598.P10065687439542942200.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363598.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366839.P8593895561095689137

`2*A001511(n+1)`
-/

namespace A366839.P8593895561095689137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001511 (n + 1)

end

end A366839.P8593895561095689137

noncomputable section

/-- A366839: Sum of even prime factors of 2n, counted with multiplicity.

Offset 1, canonical program `A366839.P8593895561095689137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366839 (n : ℕ) : ℤ :=
  A366839.P8593895561095689137.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376583.P3078053738808332107

`A000035(A002260(n+1))`
-/

namespace A376583.P3078053738808332107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002260 (n + 1)).toNat

end

end A376583.P3078053738808332107

noncomputable section

/-- A376583: Parity of A002260.

Offset 1, canonical program `A376583.P3078053738808332107`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376583 (n : ℕ) : ℤ :=
  A376583.P3078053738808332107.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378887.P8856246218187554853

`gcd(n+1, A001511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378887.P8856246218187554853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001511 (n + 1))

end

end A378887.P8856246218187554853

noncomputable section

/-- A378887: a(n) = gcd(n, A001511(n)).

Offset 1, canonical program `A378887.P8856246218187554853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378887 (n : ℕ) : ℤ :=
  (A378887.P8856246218187554853.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385148.P6659841522934302944

`A001065(A346878(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385148.P6659841522934302944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A346878 (n + 1)).toNat

end

end A385148.P6659841522934302944

noncomputable section

/-- A385148: a(n) = A001065(A346878(n)).

Offset 1, canonical program `A385148.P6659841522934302944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385148 (n : ℕ) : ℤ :=
  A385148.P6659841522934302944.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385148.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386261.P786158884757430491

`A001511(A001511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386261.P786158884757430491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001511 (n + 1)).toNat

end

end A386261.P786158884757430491

noncomputable section

/-- A386261: a(n) = A001511(A001511(n)), where A001511 is the ruler function.

Offset 1, canonical program `A386261.P786158884757430491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386261 (n : ℕ) : ℤ :=
  A386261.P786158884757430491.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394790.P4967719223950179716

`A000203(n+1)*A001511(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394790.P4967719223950179716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001511 (n + 1)

end

end A394790.P4967719223950179716

noncomputable section

/-- A394790: Product of the sum of divisors of n with the exponent of the highest power of 2 dividing 2n: a(n) = A000203(n)*A001511(n).

Offset 1, canonical program `A394790.P4967719223950179716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394790 (n : ℕ) : ℤ :=
  A394790.P4967719223950179716.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394790.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396769.P5317963927150121089

`A003071(n+1)+n`
-/

namespace A396769.P5317963927150121089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1) + (n : ℤ)

end

end A396769.P5317963927150121089

noncomputable section

/-- A396769: Value of the Sackin index for the rooted binary echelon tree with n leaves.

Offset 1, canonical program `A396769.P5317963927150121089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396769 (n : ℕ) : ℤ :=
  A396769.P5317963927150121089.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373934.P2638291770601585293

`A373935(n+2)-A373935(n+1)`
-/

namespace A373934.P2638291770601585293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373935 (n + 2) - A373935 (n + 1)

end

end A373934.P2638291770601585293

noncomputable section

/-- A373934: Number of compositions of 7*n-2 into parts 6 and 7.

Offset 1, canonical program `A373934.P2638291770601585293`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373934 (n : ℕ) : ℤ :=
  A373934.P2638291770601585293.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373934.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373961.P18328240497616127407

`A373962(n+2)-A373962(n+1)`
-/

namespace A373961.P18328240497616127407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373962 (n + 2) - A373962 (n + 1)

end

end A373961.P18328240497616127407

noncomputable section

/-- A373961: Number of compositions of 6*n-1 into parts 5 and 6.

Offset 1, canonical program `A373961.P18328240497616127407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373961 (n : ℕ) : ℤ :=
  A373961.P18328240497616127407.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319102.P8736418722383109281

`ceil(ratio[A074909(n)])%2`
-/

namespace A319102.P8736418722383109281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ 2

end

end A319102.P8736418722383109281

noncomputable section

/-- A319102: Triangle read by rows: The k-th column has alternating blocks of k 1's followed by k 0's (see example).

Offset 1, canonical program `A319102.P8736418722383109281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319102 (n : ℕ) : ℤ :=
  A319102.P8736418722383109281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319840.P10443051831769235735

`A318274(n)+A000523(A137688(n))`
-/

namespace A319840.P10443051831769235735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 n + A000523 (A137688 n).toNat

end

end A319840.P10443051831769235735

noncomputable section

/-- A319840: Table read by antidiagonals: T(n, k) is the number of elements on the perimeter of an n X k matrix.

Offset 1, canonical program `A319840.P10443051831769235735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A319840 (n : ℕ) : ℤ :=
  A319840.P10443051831769235735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A319840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320283.P15640859263192477612

`n-and(A005843(n), A270106(n))`
-/

namespace A320283.P15640859263192477612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A005843 n) (A270106 n)

end

end A320283.P15640859263192477612

noncomputable section

/-- A320283: Lexicographical ordering of pure imaginary integers in the base (-1+i) numeral system.

Offset 0, canonical program `A320283.P15640859263192477612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A320283 (n : ℕ) : ℤ :=
  A320283.P15640859263192477612.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. -/
def A320283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320841.P10418808688263106149

`A256434(A130330(n)-A010054(n))`
-/

namespace A320841.P10418808688263106149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 (A130330 n - A010054 n).toNat

end

end A320841.P10418808688263106149

noncomputable section

/-- A320841: Number T(n,k) of partitions of n into k positive cubes; triangle T(n,k), n >= 0, 0 <= k <= n, read by rows.

Offset 0, canonical program `A320841.P10418808688263106149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A320841 (n : ℕ) : ℤ :=
  A320841.P10418808688263106149.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A320841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320926.P3058602061450553408

`A079979(A286692(n+1))`
-/

namespace A320926.P3058602061450553408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A286692 (n + 1)).toNat

end

end A320926.P3058602061450553408

noncomputable section

/-- A320926: Concatenation of successive segments generated by the morphism {0 -> {0, 0, 1}, 1 -> {0}}, starting with 0.

Offset 1, canonical program `A320926.P3058602061450553408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320926 (n : ℕ) : ℤ :=
  A320926.P3058602061450553408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321016.P11941317684383710991

`char[A002024(n+1)-A080956(A049777(n+1))]`
-/

namespace A321016.P11941317684383710991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A080956 (A049777 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A321016.P11941317684383710991

noncomputable section

/-- A321016: Triangle read by rows: number of partitions of n into distinct and consecutive parts with largest part k (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A321016.P11941317684383710991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A321016 (n : ℕ) : ℤ :=
  (A321016.P11941317684383710991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A321016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321500.P13328065906800071465

`A051162(n)*A069011(n)`
-/

namespace A321500.P13328065906800071465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n * A069011 n

end

end A321500.P13328065906800071465

noncomputable section

/-- A321500: Triangular table T(n,k) = (n+k)*(n^2+k^2), n >= k >= 0; read by rows n = 0, 1, 2, ...

Offset 0, canonical program `A321500.P13328065906800071465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321500 (n : ℕ) : ℤ :=
  A321500.P13328065906800071465.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322026.P9939505646475219061

`A071521(A065331(n+1))`
-/

namespace A322026.P9939505646475219061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A065331 (n + 1)).toNat

end

end A322026.P9939505646475219061

noncomputable section

/-- A322026: Lexicographically earliest infinite sequence such that a(i) = a(j) => A007814(i) = A007814(j) and A007949(i) = A007949(j), for all i, j, where A007814 and A007949 give the 2- and 3-adic valuations of n.

Offset 1, canonical program `A322026.P9939505646475219061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322026 (n : ℕ) : ℤ :=
  A322026.P9939505646475219061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322080.P8227606125856028005

`∑{p}[A002260(n+1), #^A025581(n)]`
-/

namespace A322080.P8227606125856028005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) ^ (A025581 n : ℤ)

end

end A322080.P8227606125856028005

noncomputable section

/-- A322080: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{p|n, p prime} p^k.

Offset 1, canonical program `A322080.P8227606125856028005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4678 terms. -/
def A322080 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322080.P8227606125856028005.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4678 terms. -/
def A322080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322656.P11382002683707604827

`A000203(n+1)/A007429(n+1)*A322655(n+1)`
-/

namespace A322656.P11382002683707604827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A007429 (n + 1) : ℚ) * (A322655 (n + 1) : ℚ)

end

end A322656.P11382002683707604827

noncomputable section

/-- A322656: Denominator of (Sum_{d|n} sigma(d)) / sigma(n).

Offset 1, canonical program `A322656.P11382002683707604827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322656 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322656.P11382002683707604827.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322756.P15132893621044649410

`2*A001790(n+1)`
-/

namespace A322756.P15132893621044649410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001790 (n + 1)

end

end A322756.P15132893621044649410

noncomputable section

/-- A322756: Denominator of expected payoff in the "Guessing Card Colors" game with a 2n-card deck, using an optimal strategy.

Offset 1, canonical program `A322756.P15132893621044649410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A322756 (n : ℕ) : ℤ :=
  A322756.P15132893621044649410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A322756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323704.P18318986639112400400

`A236959(n+1)+1`
-/

namespace A323704.P18318986639112400400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236959 (n + 1) + 1

end

end A323704.P18318986639112400400

noncomputable section

/-- A323704: Number of cubic residues (including 0) modulo the n-th prime.

Offset 1, canonical program `A323704.P18318986639112400400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323704 (n : ℕ) : ℤ :=
  A323704.P18318986639112400400.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A236959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323704.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325006.P11097347585470060049

`C(C(A004736(n+1), 2), A002260(n+1))`
-/

namespace A325006.P11097347585470060049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A004736 (n + 1)).toNat 2) (A002260 (n + 1)).toNat

end

end A325006.P11097347585470060049

noncomputable section

/-- A325006: Array read by descending antidiagonals: A(n,k) is the number of chiral pairs of colorings of the facets of a regular n-dimensional orthotope using up to k colors.

Offset 1, canonical program `A325006.P11097347585470060049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5518 terms. -/
def A325006 (n : ℕ) : ℤ :=
  (A325006.P11097347585470060049.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5518 terms. -/
def A325006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325191.P1948114789834443761

`A074909(n)-A010054(n)`
-/

namespace A325191.P1948114789834443761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A010054 n

end

end A325191.P1948114789834443761

noncomputable section

/-- A325191: Number of integer partitions of n such that the difference between the length of the minimal triangular partition containing and the maximal triangular partition contained in the Young diagram is 1.

Offset 0, canonical program `A325191.P1948114789834443761`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325191 (n : ℕ) : ℤ :=
  A325191.P1948114789834443761.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326354.P10591338432418692922

`2*A206350(n+1)-1`
-/

namespace A326354.P10591338432418692922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A206350 (n + 1) - 1

end

end A326354.P10591338432418692922

noncomputable section

/-- A326354: a(n) is the number of fractions reduced to lowest terms with numerator and denominator less than or equal to n in absolute value.

Offset 0, canonical program `A326354.P10591338432418692922`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206350, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326354 (n : ℕ) : ℤ :=
  A326354.P10591338432418692922.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206350, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326729.P660711864705047236

`xor(n, ceil(A335063(n)/(n+1)))`
-/

namespace A326729.P660711864705047236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌈(A335063 n : ℚ) / (n + 1 : ℚ)⌉

end

end A326729.P660711864705047236

noncomputable section

/-- A326729: a(0) = 0; for n >= 1, a(n) is the result of inverting s-th bit (from right) in n, where s is the number of ones in the binary representation of n.

Offset 0, canonical program `A326729.P660711864705047236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326729 (n : ℕ) : ℤ :=
  A326729.P660711864705047236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327123.P13363056094402647823

`∑{d}[n+1, A007427(#)*A327122((n+1)/#)]`
-/

namespace A327123.P13363056094402647823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A327122 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327123.P13363056094402647823

noncomputable section

/-- A327123: Expansion of Sum_{k>=1} phi(k) * x^k / (1 + x^(2*k)), where phi = A000010.

Offset 1, canonical program `A327123.P13363056094402647823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327123 (n : ℕ) : ℤ :=
  A327123.P13363056094402647823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327175.P4858780168493079708

`lt[A327174(n+1), 1]+1`
-/

namespace A327175.P4858780168493079708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327175.P4858780168493079708

noncomputable section

/-- A327175: Positions of 0's in {A327174(n) : n > 0}.

Offset 1, canonical program `A327175.P4858780168493079708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327175 (n : ℕ) : ℤ :=
  (A327175.P4858780168493079708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327176.P1040020970767484414

`lt[0, A327174(n)]`
-/

namespace A327176.P1040020970767484414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327176.P1040020970767484414

noncomputable section

/-- A327176: Positions of 1's in {A327174(n) : n > 0}.

Offset 1, canonical program `A327176.P1040020970767484414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327176 (n : ℕ) : ℤ :=
  (A327176.P1040020970767484414.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327178.P10784989447855658781

`lt[n*A327177(n), n]`
-/

namespace A327178.P10784989447855658781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327177 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327178.P10784989447855658781

noncomputable section

/-- A327178: Positions of 0's in {A327177(n) : n > 0}.

Offset 1, canonical program `A327178.P10784989447855658781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A327178 (n : ℕ) : ℤ :=
  (A327178.P10784989447855658781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A327178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327179.P1020334519859577474

`lt[0, A327177(n)]`
-/

namespace A327179.P1020334519859577474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327179.P1020334519859577474

noncomputable section

/-- A327179: Positions of 1's in {A327177(n) : n > 0}.

Offset 1, canonical program `A327179.P1020334519859577474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A327179 (n : ℕ) : ℤ :=
  (A327179.P1020334519859577474.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A327179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327204.P13706687149448486667

`lt[0, A327202(n)]`
-/

namespace A327204.P13706687149448486667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327204.P13706687149448486667

noncomputable section

/-- A327204: Positions of 1's in {A327202(n) : n > 0}.

Offset 1, canonical program `A327204.P13706687149448486667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327204 (n : ℕ) : ℤ :=
  (A327204.P13706687149448486667.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327207.P10451738580629158760

`lt[0, A327205(n)]`
-/

namespace A327207.P10451738580629158760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327207.P10451738580629158760

noncomputable section

/-- A327207: Positions of 1's in {A327205(n) : n > 0}.

Offset 1, canonical program `A327207.P10451738580629158760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327207 (n : ℕ) : ℤ :=
  (A327207.P10451738580629158760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327216.P5007103424748823424

`A327174(2*A327174(n+1)+n)`
-/

namespace A327216.P5007103424748823424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 (2 * A327174 (n + 1) + (n : ℤ)).toNat

end

end A327216.P5007103424748823424

noncomputable section

/-- A327216: a(n) = [(2n+3)r] - [(n+3)r] - [nr], where [ ] = floor and r = (1+sqrt(5))/2.

Offset 0, canonical program `A327216.P5007103424748823424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327216 (n : ℕ) : ℤ :=
  A327216.P5007103424748823424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327316.P2975238328497280231

`A001047(A004736(n+1))*A074909(n)`
-/

namespace A327316.P2975238328497280231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A004736 (n + 1)).toNat * A074909 n

end

end A327316.P2975238328497280231

noncomputable section

/-- A327316: Triangular array read by rows: row n shows the coefficients of this polynomial of degree n: p(x,n) = ((x+r)^n - (x+s)^n)/(r - s), where r = 3 and s = 2.

Offset 1, canonical program `A327316.P2975238328497280231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327316 (n : ℕ) : ℤ :=
  A327316.P2975238328497280231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327853.P14020414065990505661

`A002262(n*A047999(n))`
-/

namespace A327853.P14020414065990505661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) * A047999 n).toNat

end

end A327853.P14020414065990505661

noncomputable section

/-- A327853: Triangle read by rows, Sierpinski's gasket, A047999 * (0,1,2,3,4,...) diagonalized.

Offset 1, canonical program `A327853.P14020414065990505661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327853 (n : ℕ) : ℤ :=
  A327853.P14020414065990505661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327916.P14309064169059662937

`(A051162(n)+1)*A130321(n)`
-/

namespace A327916.P14309064169059662937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 1) * A130321 n

end

end A327916.P14309064169059662937

noncomputable section

/-- A327916: Triangle T(k, n) read by rows: Array A(k, n) = 2^k*(k + 1 + 2*n), k >= 0, n >= 0, read by antidiagonals upwards.

Offset 0, canonical program `A327916.P14309064169059662937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327916 (n : ℕ) : ℤ :=
  A327916.P14309064169059662937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328408.P6379189173016059792

`∑{d}[n+1, A001511(#)*A059376((n+1)/#)]`
-/

namespace A328408.P6379189173016059792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328408.P6379189173016059792

noncomputable section

/-- A328408: G.f. A(x) satisfies: A(x) = A(x^2) + x * (1 + 4*x + x^2) / (1 - x)^4.

Offset 1, canonical program `A328408.P6379189173016059792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328408 (n : ℕ) : ℤ :=
  A328408.P6379189173016059792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329686.P15611330832861329198

`A126120(ceil(n/2))+A126120(A123108(n))`
-/

namespace A329686.P15611330832861329198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 ⌈(n : ℚ) / 2⌉.toNat + A126120 (A123108 n).toNat

end

end A329686.P15611330832861329198

noncomputable section

/-- A329686: Number of excursions of length n with Motzkin-steps forbidding all consecutive steps of length 2 except UH, HU, HD and DH.

Offset 0, canonical program `A329686.P15611330832861329198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A329686 (n : ℕ) : ℤ :=
  A329686.P15611330832861329198.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A329686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329687.P17295788275179189251

`A126120(floor(2*n/3))`
-/

namespace A329687.P17295788275179189251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 ⌊2 * ((n : ℚ) / 3)⌋.toNat

end

end A329687.P17295788275179189251

noncomputable section

/-- A329687: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UU, UD, HH and DH.

Offset 0, canonical program `A329687.P17295788275179189251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A329687 (n : ℕ) : ℤ :=
  A329687.P17295788275179189251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 519 terms. -/
def A329687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329696.P2445749868837722424

`A126120((2*n)%(n+1)+1)+1`
-/

namespace A329696.P2445749868837722424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n % (n + 1) + 1) + 1

end

end A329696.P2445749868837722424

noncomputable section

/-- A329696: Number of excursions of length n with Motzkin-steps avoiding the consecutive steps UH, HU, HD and DH.

Offset 0, canonical program `A329696.P2445749868837722424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A329696 (n : ℕ) : ℤ :=
  A329696.P2445749868837722424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A329696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329779.P10369336807012279079

`∑[ceil(gcd(3, A315543(n))/ϕ)]`
-/

namespace A329779.P10369336807012279079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.gcd 3 (A315543 n) : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329779.P10369336807012279079

noncomputable section

/-- A329779: Numbers that are either odd or are congruent to {+-4, +-6, +-8, +-10} (mod 32).

Offset 1, canonical program `A329779.P10369336807012279079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A329779 (n : ℕ) : ℤ :=
  A329779.P10369336807012279079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. -/
def A329779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329854.P9235265463401662256

`2*(n+1)-A131422(n+1)`
-/

namespace A329854.P9235265463401662256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A131422 (n + 1)

end

end A329854.P9235265463401662256

noncomputable section

/-- A329854: Triangle read by rows: T(n,k) = ((n - k)*(n + k - 1) + 2)/2, 0 <= k <= n.

Offset 0, canonical program `A329854.P9235265463401662256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329854 (n : ℕ) : ℤ :=
  A329854.P9235265463401662256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330179.P2494087960825005647

`floor(3*A292666(n+1)/2)`
-/

namespace A330179.P2494087960825005647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A292666 (n + 1) : ℚ) / 2)⌋

end

end A330179.P2494087960825005647

noncomputable section

/-- A330179: a(n) = n + floor(ns/r) + floor(nt/r), where r = e - 1, s = e, t = e + 1.

Offset 1, canonical program `A330179.P2494087960825005647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330179 (n : ℕ) : ℤ :=
  A330179.P2494087960825005647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330186.P13460853311327019796

`A350522(n)-A330175(n+1)`
-/

namespace A330186.P13460853311327019796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350522 n - A330175 (n + 1)

end

end A330186.P13460853311327019796

noncomputable section

/-- A330186: a(n) = n + floor(n*r/t) + floor(n*s/t), where r = phi - 1/2, s = phi, t = phi + 1/2, phi = golden ratio = (1+sqrt(5))/2.

Offset 1, canonical program `A330186.P13460853311327019796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330186 (n : ℕ) : ℤ :=
  A330186.P13460853311327019796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330560.P6917697253061936391

`∑[A078444(n+1)%2]`
-/

namespace A330560.P6917697253061936391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078444 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330560.P6917697253061936391

noncomputable section

/-- A330560: a(n) = number of primes p <= prime(n) with Delta(p) == 2 (mod 4), where Delta(p) = nextprime(p) - p.

Offset 1, canonical program `A330560.P6917697253061936391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330560 (n : ℕ) : ℤ :=
  A330560.P6917697253061936391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330578.P18419266173771204815

`A053767(n)%Δ[A053767(n)]`
-/

namespace A330578.P18419266173771204815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053767 n) (f1 (n + 1) - f1 n)

end

end A330578.P18419266173771204815

noncomputable section

/-- A330578: a(n) is the remainder when the sum of the first n composite numbers is divided by the n-th composite number.

Offset 1, canonical program `A330578.P18419266173771204815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330578 (n : ℕ) : ℤ :=
  A330578.P18419266173771204815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330932.P4071948875635423639

`∩[A330931(n+1)-1, A330931(n+1)]`
-/

namespace A330932.P4071948875635423639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330931 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330932.P4071948875635423639

noncomputable section

/-- A330932: Starts of runs of 3 consecutive Niven numbers in base 2 (A049445).

Offset 1, canonical program `A330932.P4071948875635423639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A330932 (n : ℕ) : ℤ :=
  (A330932.P4071948875635423639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A330932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332252.P10279896766399306977

`∑[A131852(1-A261366(n)+n)]`
-/

namespace A332252.P10279896766399306977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (1 - A261366 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332252.P10279896766399306977

noncomputable section

/-- A332252: a(n) is the imaginary part of f(n) defined by f(0) = 0 and f(n+1) = f(n) + i^A000120(n) (where i denotes the imaginary unit). Sequence A332251 gives real parts.

Offset 0, canonical program `A332252.P10279896766399306977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A332252 (n : ℕ) : ℤ :=
  A332252.P10279896766399306977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A332252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332674.P11479518678889470787

`∩[A045453(n+1), A253970(n+1)]`
-/

namespace A332674.P11479518678889470787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332674.P11479518678889470787

noncomputable section

/-- A332674: Prime numbers p_k such that p_k == 1 (mod 10) and p_(k+1) == 9 (mod 10).

Offset 1, canonical program `A332674.P11479518678889470787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A332674 (n : ℕ) : ℤ :=
  (A332674.P11479518678889470787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A332674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333426.P8518684395099641354

`eq[0, (n+1)%A276150(n+1)]+1`
-/

namespace A333426.P8518684395099641354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A276150 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333426.P8518684395099641354

noncomputable section

/-- A333426: Primorial base Niven numbers: numbers divisible by their sum of digits in primorial base (A276150).

Offset 1, canonical program `A333426.P8518684395099641354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. -/
def A333426 (n : ℕ) : ℤ :=
  (A333426.P8518684395099641354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. -/
def A333426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333516.P17702150738721740833

`A002260(A124171(n+1))`
-/

namespace A333516.P17702150738721740833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A124171 (n + 1)).toNat

end

end A333516.P17702150738721740833

noncomputable section

/-- A333516: Irregular triangle read by rows in which row n lists the first A000217(n) terms of A002260, n >= 1.

Offset 1, canonical program `A333516.P17702150738721740833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333516 (n : ℕ) : ℤ :=
  A333516.P17702150738721740833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334913.P6654791302565191951

`A036555(n)-∑[∑{e}[xor(n, -n), 2-#]]`
-/

namespace A334913.P6654791302565191951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334913.P6654791302565191951

noncomputable section

/-- A334913: a(n) is the sum of digits of n in signed binary nonadjacent form.

Offset 0, canonical program `A334913.P6654791302565191951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334913 (n : ℕ) : ℤ :=
  A334913.P6654791302565191951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335587.P17858235810342075243

`A335063(A003817(n)-n)`
-/

namespace A335587.P17858235810342075243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 (A003817 n - (n : ℤ)).toNat

end

end A335587.P17858235810342075243

noncomputable section

/-- A335587: a(n) is the sum of the numbers k such that 0 <= k <= n and n AND k = 0 (where AND denotes the bitwise AND operator).

Offset 0, canonical program `A335587.P17858235810342075243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335587 (n : ℕ) : ℤ :=
  A335587.P17858235810342075243.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335821.P7622737242616201629

`2*(n+1)-A092283(n+1)`
-/

namespace A335821.P7622737242616201629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A092283 (n + 1)

end

end A335821.P7622737242616201629

noncomputable section

/-- A335821: Triangular array T(n, k) = n^2 - k^2, read by rows.

Offset 0, canonical program `A335821.P7622737242616201629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335821 (n : ℕ) : ℤ :=
  A335821.P7622737242616201629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335965.P14590338528508009539

`A048896(n)+abs(Δ[A048896(n)])`
-/

namespace A335965.P14590338528508009539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n + |f1 (n + 1) - f1 n|

end

end A335965.P14590338528508009539

noncomputable section

/-- A335965: a(n) = number of odd numbers in the n-th row of the Narayana triangle A001263.

Offset 1, canonical program `A335965.P14590338528508009539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A335965 (n : ℕ) : ℤ :=
  A335965.P14590338528508009539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A335965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338654.P4635307025439918129

`A056040(A002262(n))*A130321(n)`
-/

namespace A338654.P4635307025439918129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A002262 n).toNat * A130321 n

end

end A338654.P4635307025439918129

noncomputable section

/-- A338654: T(n, k) = 2^n * Product_{j=1..k} (j/2)^((-1)^(j - 1)). Triangle read by rows, for 0 <= k <= n.

Offset 0, canonical program `A338654.P4635307025439918129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338654 (n : ℕ) : ℤ :=
  A338654.P4635307025439918129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338854.P6322233544526817225

`2^A160382(n)*3^A160383(n)`
-/

namespace A338854.P6322233544526817225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A160382 n : ℤ) * (3 : ℚ) ^ (A160383 n : ℤ)

end

end A338854.P6322233544526817225

noncomputable section

/-- A338854: Product of the nonzero digits of (n written in base 4).

Offset 0, canonical program `A338854.P6322233544526817225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160382, A160383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338854 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A338854.P6322233544526817225.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160382, A160383, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338971.P5507288159481919178

`A290255(2*lt[and(n, -n), n])%∑{d}[n+1, #]`
-/

namespace A338971.P5507288159481919178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290255 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)) ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

end

end A338971.P5507288159481919178

noncomputable section

/-- A338971: Linear representation of the complete labeled binary trees of all integer heights, where the nodes at level i, 0 <= i <= n, of a binary tree with height n are labeled with the number n-i.

Offset 0, canonical program `A338971.P5507288159481919178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A338971 (n : ℕ) : ℤ :=
  A338971.P5507288159481919178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A338971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339080.P13752444290317850624

`A045319(eq[A035103(n+1), A035103(n+2)])`
-/

namespace A339080.P13752444290317850624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A339080.P13752444290317850624

noncomputable section

/-- A339080: Smaller members of binary Ormiston prime pairs: two consecutive primes whose binary representations are anagrams of each other.

Offset 1, canonical program `A339080.P13752444290317850624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2576 terms. -/
def A339080 (n : ℕ) : ℤ :=
  A339080.P13752444290317850624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2576 terms. -/
def A339080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339331.P5205086312218789208

`∑[2*A283682(n+1)]`
-/

namespace A339331.P5205086312218789208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339331.P5205086312218789208

noncomputable section

/-- A339331: Sums of antidiagonals in A283682.

Offset 1, canonical program `A339331.P5205086312218789208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339331 (n : ℕ) : ℤ :=
  A339331.P5205086312218789208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340161.P779018813949303739

`A018900(n)+a(floor(sin(n+1)²))` with `a(0)=1`
-/

namespace A340161.P779018813949303739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018900 n + a ⌊Real.sin (n + 1 : ℝ) ^ 2⌋.toNat

end

end A340161.P779018813949303739

noncomputable section

/-- A340161: a(n) is the smallest number k for which the set {k + 1, k + 2, ..., k + k} contains exactly n elements with exactly three 1-bits (A014311).

Offset 0, canonical program `A340161.P779018813949303739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340161 (n : ℕ) : ℤ :=
  A340161.P779018813949303739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340251.P9337903050879607244

`A153036(A142151(n))`
-/

namespace A340251.P9337903050879607244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153036 (A142151 n).toNat

end

end A340251.P9337903050879607244

noncomputable section

/-- A340251: a(n) is the index of the bit that was inverted in A340250(n) to get A340250(n+1).

Offset 0, canonical program `A340251.P9337903050879607244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A340251 (n : ℕ) : ℤ :=
  A340251.P9337903050879607244.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A340251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341315.P7736784569741981111

`A051162(n)/A109004(A028310(n))`
-/

namespace A341315.P7736784569741981111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051162 n : ℚ) / (A109004 (A028310 n).toNat : ℚ)

end

end A341315.P7736784569741981111

noncomputable section

/-- A341315: Triangle read by rows: T(n,k) = (n+k)/gcd(n,k), n>=0, 0<=k<=n.

Offset 0, canonical program `A341315.P7736784569741981111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341315 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A341315.P7736784569741981111.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341677.P7034296537446804868

`∑{e}[n+1, #]-A341593(n+1)`
-/

namespace A341677.P7034296537446804868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - A341593 (n + 1)

end

end A341677.P7034296537446804868

noncomputable section

/-- A341677: Number of strictly inferior prime-power divisors of n.

Offset 1, canonical program `A341677.P7034296537446804868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341677 (n : ℕ) : ℤ :=
  A341677.P7034296537446804868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341836.P13945260103919537689

`∑{d}[n+1, A007427(#)*A341834((n+1)/#)]`
-/

namespace A341836.P13945260103919537689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A341834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341836.P13945260103919537689

noncomputable section

/-- A341836: Dirichlet g.f.: 1 / zeta(s)^10.

Offset 1, canonical program `A341836.P13945260103919537689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341836 (n : ℕ) : ℤ :=
  A341836.P13945260103919537689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342906.P2056090426158184738

`abs(4^n-∑[A071724(n)])`
-/

namespace A342906.P2056090426158184738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A342906.P2056090426158184738

noncomputable section

/-- A342906: a(n) = 2^(2*n-2) - Catalan(n).

Offset 1, canonical program `A342906.P2056090426158184738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A342906 (n : ℕ) : ℤ :=
  A342906.P2056090426158184738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A342906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342982.P15832304321140669079

`A000108(A002262(n))*A280580(n)`
-/

namespace A342982.P15832304321140669079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A280580 n

end

end A342982.P15832304321140669079

noncomputable section

/-- A342982: Triangle read by rows: T(n,k) is the number of tree-rooted planar maps with n edges and k+1 faces, n >= 0, k = 0..n.

Offset 0, canonical program `A342982.P15832304321140669079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4045 terms. -/
def A342982 (n : ℕ) : ℤ :=
  A342982.P15832304321140669079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4045 terms. -/
def A342982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343408.P1295939081408960791

`∑{d}[n+1, A127773(#)%(n+1)]`
-/

namespace A343408.P1295939081408960791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A127773 d) (n + 1 : ℤ)

end

end A343408.P1295939081408960791

noncomputable section

/-- A343408: Sum of proper divisors of n that are triangular numbers.

Offset 1, canonical program `A343408.P1295939081408960791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343408 (n : ℕ) : ℤ :=
  A343408.P1295939081408960791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344342.P1548768335190184719

`A344341(lt[Δ[A344341(n+1)], 2]+1)`
-/

namespace A344342.P1548768335190184719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344341 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344341 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A344342.P1548768335190184719

noncomputable section

/-- A344342: Numbers k such that k and k + 1 are both Gray-code Niven numbers (A344341).

Offset 1, canonical program `A344342.P1548768335190184719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2017 terms. -/
def A344342 (n : ℕ) : ℤ :=
  A344342.P1548768335190184719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2017 terms. -/
def A344342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344438.P15929750037164641707

`char[A323505(n)-1]`
-/

namespace A344438.P15929750037164641707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323505 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A344438.P15929750037164641707

noncomputable section

/-- A344438: a(n) = 1 if n can be written as a product of factorials (A000142), 0 otherwise; Characteristic function of Jordan-Polya numbers (A001013).

Offset 1, canonical program `A344438.P15929750037164641707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344438 (n : ℕ) : ℤ :=
  (A344438.P15929750037164641707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344868.P11898745600634897145

`p?[A162345(n+2)+A034961(n+1)]`
-/

namespace A344868.P11898745600634897145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 2) + A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344868.P11898745600634897145

noncomputable section

/-- A344868: Primes p that are equal to (prime(k)+2*prime(k+1)+3*prime(k+2))/2 for some k.

Offset 1, canonical program `A344868.P11898745600634897145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A344868 (n : ℕ) : ℤ :=
  A344868.P11898745600634897145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A344868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344985.P13634796832414183033

`a(ceil(n/2)-1)+abs(A037861(n+1))` with `a(0)=1`
-/

namespace A344985.P13634796832414183033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (⌈(n : ℚ) / 2⌉ - 1).toNat + |A037861 (n + 1)|

end

end A344985.P13634796832414183033

noncomputable section

/-- A344985: Sum of imbalance of all initial subsequences of the binary representation of n.

Offset 1, canonical program `A344985.P13634796832414183033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344985 (n : ℕ) : ℤ :=
  A344985.P13634796832414183033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344992.P14212236107352668806

`∑[∑{d}[n+1, A326305(#)*A338046((n+1)/#)]]`
-/

namespace A344992.P14212236107352668806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A326305 d * A338046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344992.P14212236107352668806

noncomputable section

/-- A344992: a(n) = Sum_{1 <= i <= j <= k <= m <= n} gcd(i,j,k,m).

Offset 1, canonical program `A344992.P14212236107352668806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344992 (n : ℕ) : ℤ :=
  A344992.P14212236107352668806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345366.P6154496919403499449

`A083553(n+1)%Δ[A061802(n)]`
-/

namespace A345366.P6154496919403499449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083553 (n + 1)) (f1 (n + 1) - f1 n)

end

end A345366.P6154496919403499449

noncomputable section

/-- A345366: a(n) = (p*q+1) mod (p+q) where p=prime(n) and q=prime(n+1).

Offset 1, canonical program `A345366.P6154496919403499449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345366 (n : ℕ) : ℤ :=
  A345366.P6154496919403499449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345867.P3810117440269639629

`A328659(n+1)-A095375(n+1)`
-/

namespace A345867.P3810117440269639629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328659 (n + 1) - A095375 (n + 1)

end

end A345867.P3810117440269639629

noncomputable section

/-- A345867: Total number of 0's in the binary expansions of the first n primes.

Offset 1, canonical program `A345867.P3810117440269639629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095375, A328659, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345867 (n : ℕ) : ℤ :=
  A345867.P3810117440269639629.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095375, A328659, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345867.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346618.P909238526954114988

`A121262(A034932(n)+2)`
-/

namespace A346618.P909238526954114988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A034932 n + 2).toNat

end

end A346618.P909238526954114988

noncomputable section

/-- A346618: Triangle read by rows: T(n,k) = 1 iff 2 divides binomial(n,k) but 4 does not (0 <= k <= n).

Offset 0, canonical program `A346618.P909238526954114988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346618 (n : ℕ) : ℤ :=
  A346618.P909238526954114988.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347176.P15524223857312001555

`A002129(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A347176.P15524223857312001555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A347176.P15524223857312001555

noncomputable section

/-- A347176: G.f.: Sum_{k>=1} (-1)^(k+1) * k * x^(k^2) / (1 - x^(k^2)).

Offset 1, canonical program `A347176.P15524223857312001555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347176 (n : ℕ) : ℤ :=
  A347176.P15524223857312001555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348368.P5469906356835698158

`lt[A229745(n), 0]`
-/

namespace A348368.P5469906356835698158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229745 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348368.P5469906356835698158

noncomputable section

/-- A348368: Numbers k such that w(k + w(k)) < w(k), where w(k) is the binary weight of k, A000120(k).

Offset 1, canonical program `A348368.P5469906356835698158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3154 terms. -/
def A348368 (n : ℕ) : ℤ :=
  (A348368.P5469906356835698158.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3154 terms. -/
def A348368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348482.P17332133400386320147

`A143122(n)/A233543(n)`
-/

namespace A348482.P17332133400386320147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143122 n : ℚ) / (A233543 n : ℚ)

end

end A348482.P17332133400386320147

noncomputable section

/-- A348482: Triangle read by rows: T(n,k) = (Sum_{i=k..n} i!)/(k!) for 0 <= k <= n.

Offset 0, canonical program `A348482.P17332133400386320147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A348482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348482.P17332133400386320147.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A348482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348569.P9711021300508659903

`A133529(n+1)+A100484(n+1)*A215848(n+1)`
-/

namespace A348569.P9711021300508659903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 1) + A100484 (n + 1) * A215848 (n + 1)

end

end A348569.P9711021300508659903

noncomputable section

/-- A348569: a(n) = (prime(n) + prime(n+2))^2 + prime(n+1)^2.

Offset 1, canonical program `A348569.P9711021300508659903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348569 (n : ℕ) : ℤ :=
  A348569.P9711021300508659903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348647.P9920592203306078487

`Δ[record[n-A080098(n)]]`
-/

namespace A348647.P9920592203306078487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A080098 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348647.P9920592203306078487

noncomputable section

/-- A348647: Irregular table read by rows; the n-th row contains the lengths of the runs of consecutive terms with the same parity in the n-th row of Pascal's triangle (A007318).

Offset 0, canonical program `A348647.P9920592203306078487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6305 terms. -/
def A348647 (n : ℕ) : ℤ :=
  A348647.P9920592203306078487.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6305 terms. -/
def A348647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349258.P3621422876160068224

`∑{e}[n+1, A038573(#)]`
-/

namespace A349258.P3621422876160068224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A038573 (Nat.factorization (f1 n) p)

end

end A349258.P3621422876160068224

noncomputable section

/-- A349258: a(n) is the number of prime powers (not including 1) that are infinitary divisors of n.

Offset 1, canonical program `A349258.P3621422876160068224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349258 (n : ℕ) : ℤ :=
  A349258.P3621422876160068224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349342.P11414406444135434568

`A026741(n+1)+A349341(n+1)`
-/

namespace A349342.P11414406444135434568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + A349341 (n + 1)

end

end A349342.P11414406444135434568

noncomputable section

/-- A349342: Sum of A026741 and its Dirichlet inverse.

Offset 1, canonical program `A349342.P11414406444135434568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349342 (n : ℕ) : ℤ :=
  A349342.P11414406444135434568.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349830.P2239163741490567929

`∩[A228082(n+1), A349829(n+1)]`
-/

namespace A349830.P2239163741490567929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349830.P2239163741490567929

noncomputable section

/-- A349830: Intersection of A228082 and A349829.

Offset 1, canonical program `A349830.P2239163741490567929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7580 terms. -/
def A349830 (n : ℕ) : ℤ :=
  (A349830.P2239163741490567929.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7580 terms. -/
def A349830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349835.P853498659600068463

`2*A028283(n)-A000984(n)`
-/

namespace A349835.P853498659600068463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028283 n - A000984 n

end

end A349835.P853498659600068463

noncomputable section

/-- A349835: Expansion of (1 + 4*x)/sqrt(1 - 4*x).

Offset 0, canonical program `A349835.P853498659600068463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349835 (n : ℕ) : ℤ :=
  A349835.P853498659600068463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A349835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350149.P10072754262710028707

`A079901(A061579(n))*A233543(n)`
-/

namespace A350149.P10072754262710028707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (A061579 n).toNat * A233543 n

end

end A350149.P10072754262710028707

noncomputable section

/-- A350149: Triangle read by rows: T(n, k) = n^(n-k)*k!.

Offset 0, canonical program `A350149.P10072754262710028707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A350149 (n : ℕ) : ℤ :=
  A350149.P10072754262710028707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A350149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352776.P13844907865842794739

`eq[0, A229745(n)]`
-/

namespace A352776.P13844907865842794739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229745 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352776.P13844907865842794739

noncomputable section

/-- A352776: Numbers k such that w(k + w(k)) = w(k), where w(k) is the binary weight of k, A000120(k).

Offset 1, canonical program `A352776.P13844907865842794739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A352776 (n : ℕ) : ℤ :=
  (A352776.P13844907865842794739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. -/
def A352776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352778.P11519302946014693249

`lt[0, A229745(n)]`
-/

namespace A352778.P11519302946014693249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229745 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A352778.P11519302946014693249

noncomputable section

/-- A352778: Numbers k such that w(k + w(k)) > w(k), where w(k) is the binary weight of k, A000120(k).

Offset 1, canonical program `A352778.P11519302946014693249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4294 terms. -/
def A352778 (n : ℕ) : ℤ :=
  (A352778.P11519302946014693249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4294 terms. -/
def A352778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354037.P7194895652706141721

`A029430(and(3, ∑{d}[n+1, #]-(n+1)))`
-/

namespace A354037.P7194895652706141721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029430 (Int.land 3 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ))).toNat

end

end A354037.P7194895652706141721

noncomputable section

/-- A354037: a(n) = 1 if sigma(n)-n is a multiple of 4, otherwise 0.

Offset 1, canonical program `A354037.P7194895652706141721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354037 (n : ℕ) : ℤ :=
  A354037.P7194895652706141721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354626.P396020870782513592

`comp[A141169(n)+A141169(A099375(n))²]`
-/

namespace A354626.P396020870782513592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A141169 (A099375 n).toNat ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A354626.P396020870782513592

noncomputable section

/-- A354626: Numbers that can't be written as the sum of a Fibonacci number and the square of a Fibonacci number.

Offset 1, canonical program `A354626.P396020870782513592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354626 (n : ℕ) : ℤ :=
  (A354626.P396020870782513592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355347.P17583172323529427336

`A165817(n+1)-A001764(n+1)`
-/

namespace A355347.P17583172323529427336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 (n + 1) - A001764 (n + 1)

end

end A355347.P17583172323529427336

noncomputable section

/-- A355347: a(n) = binomial(3*n+3,n) + binomial(3*n+2,n-1) for n >= 0.

Offset 0, canonical program `A355347.P17583172323529427336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A355347 (n : ℕ) : ℤ :=
  A355347.P17583172323529427336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A355347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355859.P3189748681053471770

`A027656(A051162(n))`
-/

namespace A355859.P3189748681053471770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A051162 n).toNat

end

end A355859.P3189748681053471770

noncomputable section

/-- A355859: Triangle read by rows: T(n,k) = (n + k)/2 if (n + k) is congruent to 0 (mod 2), otherwise T(n,k) = 0; n >= 1, k >= 1.

Offset 1, canonical program `A355859.P3189748681053471770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355859 (n : ℕ) : ℤ :=
  A355859.P3189748681053471770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356520.P11715847703644159576

`floor(A052216(n+2)/10)`
-/

namespace A356520.P11715847703644159576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052216 (n + 2) : ℚ) / 10⌋

end

end A356520.P11715847703644159576

noncomputable section

/-- A356520: Numbers k such that A000005(A007953(k)) = A007953(k).

Offset 1, canonical program `A356520.P11715847703644159576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A356520 (n : ℕ) : ℤ :=
  A356520.P11715847703644159576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5133 terms. -/
def A356520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357298.P5592803203464036952

`A003986(n)%2`
-/

namespace A357298.P5592803203464036952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003986 n) 2

end

end A357298.P5592803203464036952

noncomputable section

/-- A357298: Triangle read by rows where all entries in every even row are 1's and the entries in every odd row alternate between 0 (start/end) and 1.

Offset 1, canonical program `A357298.P5592803203464036952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A357298 (n : ℕ) : ℤ :=
  A357298.P5592803203464036952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A357298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358135.P163929003100023159

`A001511(n+1)-A065120(n+1)`
-/

namespace A358135.P163929003100023159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - A065120 (n + 1)

end

end A358135.P163929003100023159

noncomputable section

/-- A358135: Difference of first and last parts of the n-th composition in standard order.

Offset 1, canonical program `A358135.P163929003100023159`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358135 (n : ℕ) : ℤ :=
  A358135.P163929003100023159.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358292.P11859919113194006918

`A318274(n)²*A000578(A004247(n))`
-/

namespace A358292.P11859919113194006918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 n ^ 2 * A000578 (A004247 n).toNat

end

end A358292.P11859919113194006918

noncomputable section

/-- A358292: Array read by antidiagonals: T(n,k) = n^3*k^3*(n+k)^2, n>=0, k>=0.

Offset 0, canonical program `A358292.P11859919113194006918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358292 (n : ℕ) : ℤ :=
  A358292.P11859919113194006918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358360.P603606278871448

`A000989(floor((n+1)/2))+A168570(n+1)`
-/

namespace A358360.P603606278871448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 ⌊(n + 1 : ℚ) / 2⌋.toNat + A168570 (n + 1)

end

end A358360.P603606278871448

noncomputable section

/-- A358360: The 3-adic valuation of the central Delannoy numbers (sequence A001850).

Offset 0, canonical program `A358360.P603606278871448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A168570, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358360 (n : ℕ) : ℤ :=
  A358360.P603606278871448.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A168570, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358877.P15176719959387656287

`ceil(ratio[A074909(n)])^3`
-/

namespace A358877.P15176719959387656287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ ^ 3

end

end A358877.P15176719959387656287

noncomputable section

/-- A358877: Triangle read by rows: T(n,k) is the number of cubes of side length k that can be placed inside a cube of side length n without overlap, 1 <= k <= n.

Offset 1, canonical program `A358877.P15176719959387656287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358877 (n : ℕ) : ℤ :=
  A358877.P15176719959387656287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358977.P3842764694478648946

`eq[1, gcd(n, A276150(n))]`
-/

namespace A358977.P3842764694478648946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276150 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358977.P3842764694478648946

noncomputable section

/-- A358977: Numbers that are coprime to the sum of their primorial base digits (A276150).

Offset 1, canonical program `A358977.P3842764694478648946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358977 (n : ℕ) : ℤ :=
  (A358977.P3842764694478648946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359352.P14078753108705027464

`A026430(1+A026430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359352.P14078753108705027464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (1 + A026430 (n + 1)).toNat

end

end A359352.P14078753108705027464

noncomputable section

/-- A359352: a(n) = A026430(1 + A026430(n)).

Offset 1, canonical program `A359352.P14078753108705027464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359352 (n : ℕ) : ℤ :=
  A359352.P14078753108705027464.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359352.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360136.P4184868371155148676

`1+A026430(A026430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360136.P4184868371155148676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A026430 (A026430 (n + 1)).toNat

end

end A360136.P4184868371155148676

noncomputable section

/-- A360136: a(n) = 1 + A026430(A026430(n)).

Offset 1, canonical program `A360136.P4184868371155148676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360136 (n : ℕ) : ℤ :=
  A360136.P4184868371155148676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360392.P6145566539357259399

`2+A026430(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360392.P6145566539357259399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A026430 (n + 1)

end

end A360392.P6145566539357259399

noncomputable section

/-- A360392: a(n) = 2 + A026430(n); complement of A360393.

Offset 1, canonical program `A360392.P6145566539357259399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360392 (n : ℕ) : ℤ :=
  A360392.P6145566539357259399.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360445.P439609881080055747

`∑[A178244(n)]-A178244(n)`
-/

namespace A360445.P439609881080055747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178244 n

end

end A360445.P439609881080055747

noncomputable section

/-- A360445: a(n) = Sum_{k=1..n} A178244(k-1).

Offset 0, canonical program `A360445.P439609881080055747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360445 (n : ℕ) : ℤ :=
  A360445.P439609881080055747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360610.P9311282744771957275

`ceil(ratio[A074909(n)])²`
-/

namespace A360610.P9311282744771957275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ ^ 2

end

end A360610.P9311282744771957275

noncomputable section

/-- A360610: Triangle read by rows: T(n,k) is the number of squares of side length k that can be placed inside a square of side length n without overlap, 1 <= k <= n.

Offset 1, canonical program `A360610.P9311282744771957275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360610 (n : ℕ) : ℤ :=
  A360610.P9311282744771957275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361122.P3369539810080432684

`Δ[A053767(n)]²%3`
-/

namespace A361122.P3369539810080432684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) ^ 2) 3

end

end A361122.P3369539810080432684

noncomputable section

/-- A361122: 0 if n-th composite number A002808(n) is divisible by 3, otherwise 1.

Offset 1, canonical program `A361122.P3369539810080432684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361122 (n : ℕ) : ℤ :=
  A361122.P3369539810080432684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361145.P6887436568620065037

`A117973(n)-A048896(n)`
-/

namespace A361145.P6887436568620065037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 n - A048896 n

end

end A361145.P6887436568620065037

noncomputable section

/-- A361145: Number of downwards peaks in row 2*n-1 of the Sierpinski triangle.

Offset 1, canonical program `A361145.P6887436568620065037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361145 (n : ℕ) : ℤ :=
  A361145.P6887436568620065037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361226.P9806622768199314781

`A004736(n+1)*A143844(n)-A112367(n)`
-/

namespace A361226.P9806622768199314781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A143844 n - A112367 n

end

end A361226.P9806622768199314781

noncomputable section

/-- A361226: Square array T(n,k) = k*((1+2*n)*k - 1)/2; n>=0, k>=0, read by antidiagonals upwards.

Offset 0, canonical program `A361226.P9806622768199314781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361226 (n : ℕ) : ℤ :=
  A361226.P9806622768199314781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361464.P557628188156379608

`lt[0, A361463(n+1)]+1`
-/

namespace A361464.P557628188156379608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A361464.P557628188156379608

noncomputable section

/-- A361464: Numbers k such that A135504(k+1) / A135504(k) is a multiple of 4.

Offset 1, canonical program `A361464.P557628188156379608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A361464 (n : ℕ) : ℤ :=
  (A361464.P557628188156379608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A361464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362195.P3919212362460993078

`A008860(n)-n`
-/

namespace A362195.P3919212362460993078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n - (n : ℤ)

end

end A362195.P3919212362460993078

noncomputable section

/-- A362195: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 8 with exactly one descent.

Offset 0, canonical program `A362195.P3919212362460993078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362195 (n : ℕ) : ℤ :=
  A362195.P3919212362460993078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362595.P1441981575621675091

`A194590(A004275(n))+A126120(2*n)`
-/

namespace A362595.P1441981575621675091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194590 (A004275 n).toNat + A126120 (2 * n)

end

end A362595.P1441981575621675091

noncomputable section

/-- A362595: Number of parking functions of size n avoiding the patterns 132 and 321.

Offset 0, canonical program `A362595.P1441981575621675091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A362595 (n : ℕ) : ℤ :=
  A362595.P1441981575621675091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A362595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363022.P8132570921243997596

`(A002129(n+1)-A321543(n+1))/2`
-/

namespace A363022.P8132570921243997596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002129 (n + 1) - A321543 (n + 1) : ℚ) / 2

end

end A363022.P8132570921243997596

noncomputable section

/-- A363022: Expansion of Sum_{k>0} x^(2*k)/(1+x^k)^3.

Offset 1, canonical program `A363022.P8132570921243997596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363022 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363022.P8132570921243997596.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363329.P11768281149440784561

`∏{e}[n+1, A038573(#)]`
-/

namespace A363329.P11768281149440784561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A038573 (Nat.factorization (f1 n) p)

end

end A363329.P11768281149440784561

noncomputable section

/-- A363329: a(n) is the number of divisors of n that are both coreful and infinitary.

Offset 1, canonical program `A363329.P11768281149440784561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363329 (n : ℕ) : ℤ :=
  A363329.P11768281149440784561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363570.P11081120696578831770

`(A069835(n)-1)/3`
-/

namespace A363570.P11081120696578831770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069835 n - 1 : ℚ) / 3

end

end A363570.P11081120696578831770

noncomputable section

/-- A363570: Expansion of (1 / sqrt(1 - 8*x + 4*x^2) - 1 / (1 - x)) / 3.

Offset 0, canonical program `A363570.P11081120696578831770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363570 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363570.P11081120696578831770.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363828.P14035750330722355806

`A363827(A048671(n+1))`
-/

namespace A363828.P14035750330722355806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363827 (A048671 (n + 1)).toNat

end

end A363828.P14035750330722355806

noncomputable section

/-- A363828: Highest power of 2 dividing n which is < sqrt(n), for n >= 2; a(1) = 1.

Offset 1, canonical program `A363828.P14035750330722355806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A363828 (n : ℕ) : ℤ :=
  A363828.P14035750330722355806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A363828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364067.P12319574783518078769

`A103627(A363891(n+1)+∑{d}[9*n+3, C(#, 2)%3])`
-/

namespace A364067.P12319574783518078769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A363891 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), Nat.choose d 2 % 3 : ℕ) : ℤ)).toNat

end

end A364067.P12319574783518078769

noncomputable section

/-- A364067: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(3*k-1)).

Offset 1, canonical program `A364067.P12319574783518078769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3173 terms. -/
def A364067 (n : ℕ) : ℤ :=
  A364067.P12319574783518078769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3173 terms. -/
def A364067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364205.P2014408668369465084

`A364204(n+1)-A122860(n+1)`
-/

namespace A364205.P2014408668369465084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364204 (n + 1) - A122860 (n + 1)

end

end A364205.P2014408668369465084

noncomputable section

/-- A364205: Expansion of Sum_{k>=0} x^(3*k+2) / (1 + x^(3*k+2)).

Offset 1, canonical program `A364205.P2014408668369465084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364205 (n : ℕ) : ℤ :=
  A364205.P2014408668369465084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364411.P4113167057820616581

`a(n-1)+A191472(n)` with `a(0)=8`
-/

namespace A364411.P4113167057820616581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + A191472 n

end

end A364411.P4113167057820616581

noncomputable section

/-- A364411: a(n) = prime(n) + 2*prime(n+1).

Offset 1, canonical program `A364411.P4113167057820616581`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A191472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364411 (n : ℕ) : ℤ :=
  A364411.P4113167057820616581.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A191472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364699.P5284075010875007829

`∩[A111333(n+1), A360927(n)]`
-/

namespace A364699.P5284075010875007829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360927 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364699.P5284075010875007829

noncomputable section

/-- A364699: Numbers k such that 1 + 2^k + 3^k is divisible by 2*k-1.

Offset 1, canonical program `A364699.P5284075010875007829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A364699 (n : ℕ) : ℤ :=
  (A364699.P5284075010875007829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A364699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365173.P512538171508930422

`∏{e}[n+1, A073425(#)]`
-/

namespace A365173.P512538171508930422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A073425 (Nat.factorization (f1 n) p)

end

end A365173.P512538171508930422

noncomputable section

/-- A365173: The number of divisors d of n such that gcd(d, n/d) is an exponentially odd number (A268335).

Offset 1, canonical program `A365173.P512538171508930422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365173 (n : ℕ) : ℤ :=
  A365173.P512538171508930422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365582.P10913562028929217488

`2-A049777(n+1)+n`
-/

namespace A365582.P10913562028929217488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A049777 (n + 1) + (n : ℤ)

end

end A365582.P10913562028929217488

noncomputable section

/-- A365582: a(n) is the number at the third vertex of an equilateral triangle whose first and second vertices are at the numbers 1 and n, respectively, on a triangular array of integers.

Offset 1, canonical program `A365582.P10913562028929217488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365582 (n : ℕ) : ℤ :=
  A365582.P10913562028929217488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365618.P11364698970973671119

`val(A067804(n), 2)`
-/

namespace A365618.P11364698970973671119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067804 n).toNat 2

end

end A365618.P11364698970973671119

noncomputable section

/-- A365618: Table read by antidiagonals: T(n, k) = A000120(n) + A000120(k).

Offset 0, canonical program `A365618.P11364698970973671119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365618 (n : ℕ) : ℤ :=
  (A365618.P11364698970973671119.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365649.P18263235050208563119

`∑{d}[n+1, A034761(#)*A271102((n+1)/#)]`
-/

namespace A365649.P18263235050208563119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A365649.P18263235050208563119

noncomputable section

/-- A365649: Dirichlet convolution of sigma with Dedekind psi function.

Offset 1, canonical program `A365649.P18263235050208563119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365649 (n : ℕ) : ℤ :=
  A365649.P18263235050208563119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365771.P5740291251164711934

`A000108(n)*A165817(n)`
-/

namespace A365771.P5740291251164711934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A165817 n

end

end A365771.P5740291251164711934

noncomputable section

/-- A365771: a(n) = binomial(2*n+1, n)/(2*n+1) * binomial(3*n-1, n) for n >= 0.

Offset 0, canonical program `A365771.P5740291251164711934`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365771 (n : ℕ) : ℤ :=
  A365771.P5740291251164711934.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365771.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365904.P11970627133866236320

`A057944(n)+A049777(n+1)`
-/

namespace A365904.P11970627133866236320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A049777 (n + 1)

end

end A365904.P11970627133866236320

noncomputable section

/-- A365904: Triangle read by rows T(n,k) = n^2 - binomial(k+1,2), n>=1, k

Offset 1, canonical program `A365904.P11970627133866236320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365904 (n : ℕ) : ℤ :=
  A365904.P11970627133866236320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366813.P13812225395229694479

`∑{d}[n+1, A230074(#)*A338046((n+1)/#)]`
-/

namespace A366813.P13812225395229694479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230074 d * A338046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366813.P13812225395229694479

noncomputable section

/-- A366813: a(n) = Sum_{d|n} (-1)^(n/d-1) * binomial(d+2,3).

Offset 1, canonical program `A366813.P13812225395229694479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366813 (n : ℕ) : ℤ :=
  A366813.P13812225395229694479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366814.P6493619483422513450

`∑{d}[n+1, A117212(#)*A343545((n+1)/#)]`
-/

namespace A366814.P6493619483422513450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A343545 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366814.P6493619483422513450

noncomputable section

/-- A366814: a(n) = Sum_{d|n} (-1)^(n/d-1) * binomial(d+3,4).

Offset 1, canonical program `A366814.P6493619483422513450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366814 (n : ℕ) : ℤ :=
  A366814.P6493619483422513450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366902.P10509626406814896750

`∏{e}[A159481(2*n+1), A159481(#)]`
-/

namespace A366902.P10509626406814896750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A159481 (Nat.factorization (f1 n).natAbs p)

end

end A366902.P10509626406814896750

noncomputable section

/-- A366902: The number of exponentially evil divisors of n.

Offset 1, canonical program `A366902.P10509626406814896750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A366902 (n : ℕ) : ℤ :=
  A366902.P10509626406814896750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A366902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367515.P13637258747578568205

`2^A293439(n+1)`
-/

namespace A367515.P13637258747578568205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A293439 (n + 1) : ℤ)

end

end A367515.P13637258747578568205

noncomputable section

/-- A367515: The number of unitary divisors of n that are exponentially odious numbers (A270428).

Offset 1, canonical program `A367515.P13637258747578568205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367515.P13637258747578568205.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367564.P6431556321484000451

`A002965(A099375(n))*A074909(A056943(n))`
-/

namespace A367564.P6431556321484000451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A099375 n).toNat * A074909 (A056943 n).toNat

end

end A367564.P6431556321484000451

noncomputable section

/-- A367564: Triangular array read by rows: T(n, k) = binomial(n, k) * A001333(n - k).

Offset 0, canonical program `A367564.P6431556321484000451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367564 (n : ℕ) : ℤ :=
  A367564.P6431556321484000451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368405.P11135542014781809674

`∑[∏{e}[n+1, A106400(#)]]`
-/

namespace A368405.P11135542014781809674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A106400 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368405.P11135542014781809674

noncomputable section

/-- A368405: Infinitary version of Mertens's function: a(n) = Sum_{k=1..n} A064179(k).

Offset 1, canonical program `A368405.P11135542014781809674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368405 (n : ℕ) : ℤ :=
  A368405.P11135542014781809674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368736.P13188846224572175554

`A000034(n)*A255655(n+1)`
-/

namespace A368736.P13188846224572175554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A255655 (n + 1)

end

end A368736.P13188846224572175554

noncomputable section

/-- A368736: a(n) = Sum_{k = 1..n} gcd(2*k+1, n).

Offset 1, canonical program `A368736.P13188846224572175554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368736 (n : ℕ) : ℤ :=
  A368736.P13188846224572175554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368745.P15289978267782018387

`A074909(n)*A168256(n)`
-/

namespace A368745.P15289978267782018387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n * A168256 n

end

end A368745.P15289978267782018387

noncomputable section

/-- A368745: Triangular array read by rows: T(n, k) is the number of n X 2 Young tableaux with k vertical walls.

Offset 0, canonical program `A368745.P15289978267782018387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6836 terms. -/
def A368745 (n : ℕ) : ℤ :=
  A368745.P15289978267782018387.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6836 terms. -/
def A368745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369100.P3381107726307047957

`∑{d}[n+1, A115607(#)*A130054((n+1)/#)]`
-/

namespace A369100.P3381107726307047957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115607 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369100.P3381107726307047957

noncomputable section

/-- A369100: Dirichlet g.f.: zeta(s)^3 * (1 - 2^(1-s))^2.

Offset 1, canonical program `A369100.P3381107726307047957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369100 (n : ℕ) : ℤ :=
  A369100.P3381107726307047957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369936.P10217003281748854646

`sqrt(A369935(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369936.P10217003281748854646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A369935 (n + 1) : ℝ)

end

end A369936.P10217003281748854646

noncomputable section

/-- A369936: a(n) = sqrt(A369935(n)).

Offset 1, canonical program `A369936.P10217003281748854646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369936 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369936.P10217003281748854646.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369965.P8685250262723553120

`A353558(A301293(n))`
-/

namespace A369965.P8685250262723553120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (A301293 n).toNat

end

end A369965.P8685250262723553120

noncomputable section

/-- A369965: a(n) = 1 if n is of the form 4m+2 and it has an even number of prime factors with multiplicity, otherwise 0.

Offset 0, canonical program `A369965.P8685250262723553120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369965 (n : ℕ) : ℤ :=
  A369965.P8685250262723553120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370173.P7127620840381726044

`Δ[-A026729(n)]`
-/

namespace A370173.P7127620840381726044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370173.P7127620840381726044

noncomputable section

/-- A370173: Riordan array (1-x-x^2, x*(1+x)).

Offset 0, canonical program `A370173.P7127620840381726044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A370173 (n : ℕ) : ℤ :=
  A370173.P7127620840381726044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A370173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371767.P2734306466527776873

`A008279(n)*A233543(n)`
-/

namespace A371767.P2734306466527776873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A233543 n

end

end A371767.P2734306466527776873

noncomputable section

/-- A371767: Triangle read by rows: T(n, k) = (k! * n!)/(n - k)!.

Offset 0, canonical program `A371767.P2734306466527776873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 944 terms. -/
def A371767 (n : ℕ) : ℤ :=
  A371767.P2734306466527776873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 944 terms. -/
def A371767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372239.P17364523708032955431

`2*a(n-1)+A028283(n)` with `a(0)=1`
-/

namespace A372239.P17364523708032955431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A028283 n

end

end A372239.P17364523708032955431

noncomputable section

/-- A372239: Expansion of (1 + 2*x) / ((1 - 2*x)*sqrt(1 - 4*x)).

Offset 0, canonical program `A372239.P17364523708032955431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372239 (n : ℕ) : ℤ :=
  A372239.P17364523708032955431.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372516.P8084116944890719171

`A014499(n+1)-A035103(n+1)`
-/

namespace A372516.P8084116944890719171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1) - A035103 (n + 1)

end

end A372516.P8084116944890719171

noncomputable section

/-- A372516: Number of ones minus number of zeros in the binary expansion of the n-th prime number.

Offset 1, canonical program `A372516.P8084116944890719171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014499, A035103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372516 (n : ℕ) : ℤ :=
  A372516.P8084116944890719171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014499, A035103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373187.P18015203837873108425

`∑{d}[n+1, A154269(#)*A338046((n+1)/#)]`
-/

namespace A373187.P18015203837873108425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154269 d * A338046 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373187.P18015203837873108425

noncomputable section

/-- A373187: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^4.

Offset 1, canonical program `A373187.P18015203837873108425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373187 (n : ℕ) : ℤ :=
  A373187.P18015203837873108425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373189.P2339985558679468875

`∑{d}[n+1, A023896(#)*A373188((n+1)/#)]`
-/

namespace A373189.P2339985558679468875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A373188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373189.P2339985558679468875

noncomputable section

/-- A373189: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^3.

Offset 1, canonical program `A373189.P2339985558679468875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373189 (n : ℕ) : ℤ :=
  A373189.P2339985558679468875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373347.P5073638856647458269

`comp[A335063(n)]`
-/

namespace A373347.P5073638856647458269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A373347.P5073638856647458269

noncomputable section

/-- A373347: Positive integers k such that A000120(k) > A001511(k).

Offset 1, canonical program `A373347.P5073638856647458269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373347 (n : ℕ) : ℤ :=
  (A373347.P5073638856647458269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373710.P6586249079354997292

`A048147(lt[n, A038722(n+1)])`
-/

namespace A373710.P6586249079354997292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A373710.P6586249079354997292

noncomputable section

/-- A373710: Triangle read by rows: T(n,k) is the area of the square whose vertices divide the sides n of a circumscribed square into integer sections k and n - k, 0 <= k <= floor(n/2).

Offset 0, canonical program `A373710.P6586249079354997292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A373710 (n : ℕ) : ℤ :=
  A373710.P6586249079354997292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A373710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373832.P1127002514526717850

`(n+1)%A276150(n+1)`
-/

namespace A373832.P1127002514526717850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A276150 (n + 1))

end

end A373832.P1127002514526717850

noncomputable section

/-- A373832: a(n) = n mod A276150(n), where A276150 is the digit sum in the primorial base.

Offset 1, canonical program `A373832.P1127002514526717850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373832 (n : ℕ) : ℤ :=
  A373832.P1127002514526717850.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373833.P1677573499582523216

`gcd(n, A276150(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373833.P1677573499582523216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276150 n)

end

end A373833.P1677573499582523216

noncomputable section

/-- A373833: a(n) = gcd(n, A276150(n)), where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373833.P1677573499582523216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373833 (n : ℕ) : ℤ :=
  (A373833.P1677573499582523216.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373840.P5142814624606687256

`A079978(A276150(n))`
-/

namespace A373840.P5142814624606687256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A276150 n).toNat

end

end A373840.P5142814624606687256

noncomputable section

/-- A373840: a(n) = 1 if A276150(n) is a multiple of 3, otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373840.P5142814624606687256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373840 (n : ℕ) : ℤ :=
  A373840.P5142814624606687256.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373990.P1245803868984221180

`char[A335063(n)-1]`
-/

namespace A373990.P1245803868984221180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A373990.P1245803868984221180

noncomputable section

/-- A373990: a(n) = 1 if the binary weight of n is not greater than the 2-adic valuation of 2*n, otherwise 0.

Offset 1, canonical program `A373990.P1245803868984221180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373990 (n : ℕ) : ℤ :=
  (A373990.P1245803868984221180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374560.P17619647553025524916

`A005836(A002260(n+1))+A005836(A004736(n+1))`
-/

namespace A374560.P17619647553025524916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A002260 (n + 1)).toNat + A005836 (A004736 (n + 1)).toNat

end

end A374560.P17619647553025524916

noncomputable section

/-- A374560: Square array A(n, k), n, k >= 0, read by antidiagonals; A(n, k) = A005836(n+1) + A005836(k+1).

Offset 0, canonical program `A374560.P17619647553025524916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A374560 (n : ℕ) : ℤ :=
  A374560.P17619647553025524916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8256 terms. -/
def A374560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375097.P16198997814863634870

`A031165(n+1)-A305748(n+1)`
-/

namespace A375097.P16198997814863634870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (n + 1) - A305748 (n + 1)

end

end A375097.P16198997814863634870

noncomputable section

/-- A375097: a(n) = prime(n+2) - (prime(n) + prime(n+1))/2.

Offset 2, canonical program `A375097.P16198997814863634870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375097 (n : ℕ) : ℤ :=
  A375097.P16198997814863634870.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375106.P7559096786302579084

`A363851(n+1)-A363856(n+1)`
-/

namespace A375106.P7559096786302579084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363851 (n + 1) - A363856 (n + 1)

end

end A375106.P7559096786302579084

noncomputable section

/-- A375106: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+3)).

Offset 0, canonical program `A375106.P7559096786302579084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375106 (n : ℕ) : ℤ :=
  A375106.P7559096786302579084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375107.P16653102152346914502

`A363859(n+1)-A363860(n+1)`
-/

namespace A375107.P16653102152346914502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363859 (n + 1) - A363860 (n + 1)

end

end A375107.P16653102152346914502

noncomputable section

/-- A375107: Expansion of Sum_{k in Z} x^(2*k) / (1 - x^(7*k+3)).

Offset 0, canonical program `A375107.P16653102152346914502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375107 (n : ℕ) : ℤ :=
  A375107.P16653102152346914502.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375108.P7246935247640333009

`A363887(n+2)-A363888(n+2)`
-/

namespace A375108.P7246935247640333009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363887 (n + 2) - A363888 (n + 2)

end

end A375108.P7246935247640333009

noncomputable section

/-- A375108: Expansion of Sum_{k in Z} x^(3*k) / (1 - x^(7*k+3)).

Offset 0, canonical program `A375108.P7246935247640333009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375108 (n : ℕ) : ℤ :=
  A375108.P7246935247640333009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375536.P10078658063554449520

`A051903(A355582(n+1))`
-/

namespace A375536.P10078658063554449520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A355582 (n + 1)).toNat

end

end A375536.P10078658063554449520

noncomputable section

/-- A375536: The maximum exponent in the prime factorization of the largest 5-smooth divisor of n.

Offset 1, canonical program `A375536.P10078658063554449520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375536 (n : ℕ) : ℤ :=
  A375536.P10078658063554449520.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376354.P18229745816785603977

`lt[2, or(2, a(A002260(n+1)-1))]` with `a(0)=1, a(1)=2, a(2)=-2`
-/

namespace A376354.P18229745816785603977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -2] fun n f2 =>
  Int.lor 2 (f2 (A002260 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376354.P18229745816785603977

noncomputable section

/-- A376354: Numbers that end in 0 when written in base of triangular numbers (cf. A000462).

Offset 1, canonical program `A376354.P18229745816785603977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4504 terms. -/
def A376354 (n : ℕ) : ℤ :=
  (A376354.P18229745816785603977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4504 terms. -/
def A376354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376885.P9304065174401764500

`∑{e}[n+1, A276150(#)]`
-/

namespace A376885.P9304065174401764500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A276150 (Nat.factorization (f1 n) p)

end

end A376885.P9304065174401764500

noncomputable section

/-- A376885: The number of factors of n of the form p^(k!) counted with multiplicity, where p is a prime and k >= 1, when the factorization is uniquely done using the factorial-base representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A376885.P9304065174401764500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376885 (n : ℕ) : ℤ :=
  A376885.P9304065174401764500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378071.P4414927123568891139

`(2*n+3)*A001790(n)`
-/

namespace A378071.P4414927123568891139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A001790 n

end

end A378071.P4414927123568891139

noncomputable section

/-- A378071: a(n) = denominator((4^(2*n+1)*n!^2)/((2*n+3)*(2*n)!)).

Offset 0, canonical program `A378071.P4414927123568891139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A378071 (n : ℕ) : ℤ :=
  A378071.P4414927123568891139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A378071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378803.P7258404273834306747

`n*A378802(n)`
-/

namespace A378803.P7258404273834306747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A378802 n

end

end A378803.P7258404273834306747

noncomputable section

/-- A378803: a(n) = n^2 * binomial(4*n, n).

Offset 0, canonical program `A378803.P7258404273834306747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378803 (n : ℕ) : ℤ :=
  A378803.P7258404273834306747.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378803.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378804.P16177032303995721285

`2^n*A378802(n)`
-/

namespace A378804.P16177032303995721285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A378802 n

end

end A378804.P16177032303995721285

noncomputable section

/-- A378804: a(n) = n * 2^n * binomial(4*n, n).

Offset 0, canonical program `A378804.P16177032303995721285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378804 (n : ℕ) : ℤ :=
  A378804.P16177032303995721285.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379227.P2007350133702125727

`C(n-A379225(n+1), n)`
-/

namespace A379227.P2007350133702125727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A379225 (n + 1)).toNat n

end

end A379227.P2007350133702125727

noncomputable section

/-- A379227: a(n) = 1 if A113177(n) is a multiple of 5, otherwise 0, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A379227.P2007350133702125727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379227 (n : ℕ) : ℤ :=
  (A379227.P2007350133702125727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380804.P3432496646295256472

`2*A007064(n+1)-(n+1)`
-/

namespace A380804.P3432496646295256472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007064 (n + 1) - (n + 1 : ℤ)

end

end A380804.P3432496646295256472

noncomputable section

/-- A380804: a(n) = floor(A001622*A007064(n)).

Offset 1, canonical program `A380804.P3432496646295256472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380804 (n : ℕ) : ℤ :=
  A380804.P3432496646295256472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382668.P9934936757865442400

`A280891(n+2)-A000108(n)-A000108(n)`
-/

namespace A382668.P9934936757865442400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280891 (n + 2) - A000108 n - A000108 n

end

end A382668.P9934936757865442400

noncomputable section

/-- A382668: a(n) = C(n+1) - C(n-1) - 2*C(n-2) where C(n) = A000108(n) are the Catalan numbers.

Offset 2, canonical program `A382668.P9934936757865442400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A382668 (n : ℕ) : ℤ :=
  A382668.P9934936757865442400.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A382668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382875.P17273073748173241581

`A080425(3*n)+comp[A161790(n+1)]`
-/

namespace A382875.P17273073748173241581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (3 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A382875.P17273073748173241581

noncomputable section

/-- A382875: Numbers which are a multiple of 2^k - 1 for some k > 1.

Offset 1, canonical program `A382875.P17273073748173241581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A382875 (n : ℕ) : ℤ :=
  A382875.P17273073748173241581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A382875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382988.P3704890568810450556

`A298300(n+2)-A189912(n)`
-/

namespace A382988.P3704890568810450556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298300 (n + 2) - A189912 n

end

end A382988.P3704890568810450556

noncomputable section

/-- A382988: a(n) is the total sum of semiperimeters over all (>=,>=)-polyominoes of length n.

Offset 0, canonical program `A382988.P3704890568810450556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A382988 (n : ℕ) : ℤ :=
  A382988.P3704890568810450556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A382988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383427.P11284326733180387964

`comp[∪[A383425(n+1), A383426(n+1)]]`
-/

namespace A383427.P11284326733180387964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383425 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383426 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A383427.P11284326733180387964

noncomputable section

/-- A383427: Indices k such that A003849(k) = A383422(k).

Offset 1, canonical program `A383427.P11284326733180387964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383427 (n : ℕ) : ℤ :=
  (A383427.P11284326733180387964.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383776.P498288519129441269

`A051960(n+1)+A000108(n)-A001791(n)`
-/

namespace A383776.P498288519129441269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051960 (n + 1) + (A000108 n - A001791 n)

end

end A383776.P498288519129441269

noncomputable section

/-- A383776: a(n) = (11*n + 3 + 6/(n+2)) * Catalan(n).

Offset 0, canonical program `A383776.P498288519129441269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A383776 (n : ℕ) : ℤ :=
  A383776.P498288519129441269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A383776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385072.P12514858410014300209

`A360010(∑[n]+1)`
-/

namespace A385072.P12514858410014300209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A385072.P12514858410014300209

noncomputable section

/-- A385072: a(n) = number of tetrahedral numbers <= n-th triangular number.

Offset 0, canonical program `A385072.P12514858410014300209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A385072 (n : ℕ) : ℤ :=
  A385072.P12514858410014300209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A385072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386260.P6511394381099978900

`A051903(A001511(n+1)+1)`
-/

namespace A386260.P6511394381099978900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A001511 (n + 1) + 1).toNat

end

end A386260.P6511394381099978900

noncomputable section

/-- A386260: Maximum exponent in the prime factorization of the exponent of the highest power of 2 dividing 4*n.

Offset 1, canonical program `A386260.P6511394381099978900`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386260 (n : ℕ) : ℤ :=
  A386260.P6511394381099978900.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386260.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386441.P6963524747857182039

`A074909(A056943(n))%27`
-/

namespace A386441.P6963524747857182039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 (A056943 n).toNat) 27

end

end A386441.P6963524747857182039

noncomputable section

/-- A386441: Triangle, read by rows, formed by reading Pascal's triangle (A007318) mod 27.

Offset 0, canonical program `A386441.P6963524747857182039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386441 (n : ℕ) : ℤ :=
  A386441.P6963524747857182039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387348.P10737065631606712067

`A096270(n)-A327174(n)`
-/

namespace A387348.P10737065631606712067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n - A327174 n

end

end A387348.P10737065631606712067

noncomputable section

/-- A387348: a(n) = W(n,2) - S(n,2) where W is the Wythoff array (A035513) and S is the Stolarsky array (A035506).

Offset 1, canonical program `A387348.P10737065631606712067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387348 (n : ℕ) : ℤ :=
  A387348.P10737065631606712067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388974.P5470956650158130436

`log2(A388973(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388974.P5470956650158130436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A388973 (n + 1) : ℝ)

end

end A388974.P5470956650158130436

noncomputable section

/-- A388974: a(n) = log_2(A388973(n)).

Offset 1, canonical program `A388974.P5470956650158130436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A388973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388974 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388974.P5470956650158130436.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A388973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389101.P527784350690185921

`gcd(A002262(n), A003992(n))`
-/

namespace A389101.P527784350690185921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A003992 n)

end

end A389101.P527784350690185921

noncomputable section

/-- A389101: Array read by ascending antidiagonals: A(n, k) = gcd(n^k, k).

Offset 0, canonical program `A389101.P527784350690185921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A389101 (n : ℕ) : ℤ :=
  (A389101.P527784350690185921.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. -/
def A389101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391575.P15759118219380588408

`eq[A286576(n), A293162(n)]`
-/

namespace A391575.P15759118219380588408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391575.P15759118219380588408

noncomputable section

/-- A391575: Numbers k such that 3*k = A048720(3,m) for some m > k, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391575.P15759118219380588408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5568 terms. -/
def A391575 (n : ℕ) : ℤ :=
  (A391575.P15759118219380588408.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5568 terms. -/
def A391575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391577.P11927412629419877182

`eq[A284574(n), A286576(n)]`
-/

namespace A391577.P11927412629419877182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391577.P11927412629419877182

noncomputable section

/-- A391577: Numbers k such that A048720(3,k) = 3*m for some m < k, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391577.P11927412629419877182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A391577 (n : ℕ) : ℤ :=
  (A391577.P11927412629419877182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A391577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391990.P7637229657384781661

`A163865(n)-A372342(n)`
-/

namespace A391990.P7637229657384781661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163865 n - A372342 n

end

end A391990.P7637229657384781661

noncomputable section

/-- A391990: a(n) = Sum_{k=0..floor(n/2)} (k+1) * binomial(n,k) * binomial(n-k,k).

Offset 0, canonical program `A391990.P7637229657384781661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A391990 (n : ℕ) : ℤ :=
  A391990.P7637229657384781661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A391990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392114.P11332587441482956445

`A072570(n+2)/6`
-/

namespace A392114.P11332587441482956445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072570 (n + 2) : ℚ) / 6

end

end A392114.P11332587441482956445

noncomputable section

/-- A392114: Numbers k such that 6*k - (greatest prime < 6*n) = (least prime > 6*n) - 6*k.

Offset 1, canonical program `A392114.P11332587441482956445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392114.P11332587441482956445.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392598.P12361947951948516843

`A268357(n+1)*A392597(n+1)`
-/

namespace A392598.P12361947951948516843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268357 (n + 1) * A392597 (n + 1)

end

end A392598.P12361947951948516843

noncomputable section

/-- A392598: The largest 11-smooth divisor of n.

Offset 1, canonical program `A392598.P12361947951948516843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392598 (n : ℕ) : ℤ :=
  A392598.P12361947951948516843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392841.P10420342193856586966

`val(A165404(n+1), 2)`
-/

namespace A392841.P10420342193856586966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165404 (n + 1)).toNat 2

end

end A392841.P10420342193856586966

noncomputable section

/-- A392841: Number of trailing zeros in a type of Zeckendorf expansion based on the Fibonacci numbers of odd index.

Offset 1, canonical program `A392841.P10420342193856586966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A392841 (n : ℕ) : ℤ :=
  (A392841.P10420342193856586966.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A392841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393608.P4231341936800649805

`A104887(n+1)%(A002260(n+1)+1)`
-/

namespace A393608.P4231341936800649805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104887 (n + 1)) (A002260 (n + 1) + 1)

end

end A393608.P4231341936800649805

noncomputable section

/-- A393608: Rectangular array R read by descending antidiagonals: R(n,k) = prime(k) mod n, for n>=2.

Offset 2, canonical program `A393608.P4231341936800649805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393608 (n : ℕ) : ℤ :=
  A393608.P4231341936800649805.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394783.P5687938633812973995

`A076112(n+1)*A233543(n)`
-/

namespace A394783.P5687938633812973995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A233543 n

end

end A394783.P5687938633812973995

noncomputable section

/-- A394783: Triangle read by rows: T(n,k) = n^(k-1)*(k - 1)! with 1 <= k <= n.

Offset 1, canonical program `A394783.P5687938633812973995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 740 terms. -/
def A394783 (n : ℕ) : ℤ :=
  A394783.P5687938633812973995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 740 terms. -/
def A394783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395253.P18042258813510098844

`Δ[A395251(n+1)]`
-/

namespace A395253.P18042258813510098844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395253.P18042258813510098844

noncomputable section

/-- A395253: Differences of A395251.

Offset 1, canonical program `A395253.P18042258813510098844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395253 (n : ℕ) : ℤ :=
  A395253.P18042258813510098844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395542.P7948443198613962418

`eq[A000120(n), A276134(n)]`
-/

namespace A395542.P7948443198613962418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395542.P7948443198613962418

noncomputable section

/-- A395542: Numbers whose number of nonzero digits is identical in base 2 and 5.

Offset 1, canonical program `A395542.P7948443198613962418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A395542 (n : ℕ) : ℤ :=
  (A395542.P7948443198613962418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A395542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395675.P10573458847951959363

`A339240(n+1)/2`
-/

namespace A395675.P10573458847951959363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339240 (n + 1) : ℚ) / 2

end

end A395675.P10573458847951959363

noncomputable section

/-- A395675: Expansion of g^3/(2-g)^4, where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A395675.P10573458847951959363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395675 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395675.P10573458847951959363.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398446.P9828870896575089077

`A394529(n)+A051960(n)`
-/

namespace A398446.P9828870896575089077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394529 n + A051960 n

end

end A398446.P9828870896575089077

noncomputable section

/-- A398446: Number of permutations of [n] avoiding the pattern 1324 with the maximum element n in position n-2.

Offset 3, canonical program `A398446.P9828870896575089077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A398446 (n : ℕ) : ℤ :=
  A398446.P9828870896575089077.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A398446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318461.P3813051560236741660

`A000203(n+1)-A318463(n+1)`
-/

namespace A318461.P3813051560236741660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A318463 (n + 1)

end

end A318461.P3813051560236741660

noncomputable section

/-- A318461: a(n) = Sum_{d|n, d <= n/d} (d OR n/d), where OR is bitwise-or (A003986).

Offset 1, canonical program `A318461.P3813051560236741660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318461 (n : ℕ) : ℤ :=
  A318461.P3813051560236741660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319613.P13901213373723697006

`A000040(n+1)*A031215(n+1)`
-/

namespace A319613.P13901213373723697006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A031215 (n + 1)

end

end A319613.P13901213373723697006

noncomputable section

/-- A319613: a(n) = prime(n) * prime(2n).

Offset 1, canonical program `A319613.P13901213373723697006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319613 (n : ℕ) : ℤ :=
  A319613.P13901213373723697006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320528.P16363146703979691685

`A056329(n+1)-A304975(n+1)`
-/

namespace A320528.P16363146703979691685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056329 (n + 1) - A304975 (n + 1)

end

end A320528.P16363146703979691685

noncomputable section

/-- A320528: Number of chiral pairs of color patterns (set partitions) in a row of length n using exactly 5 colors (subsets).

Offset 1, canonical program `A320528.P16363146703979691685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056329, A304975, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320528 (n : ℕ) : ℤ :=
  A320528.P16363146703979691685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056329, A304975, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321835.P224170662709353720

`∑{d}[n+1, A013959(#)*A275966((n+1)/#)]`
-/

namespace A321835.P224170662709353720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013959 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321835.P224170662709353720

noncomputable section

/-- A321835: a(n) = Sum_{d|n, n/d==1 mod 4} d^11 - Sum_{d|n, n/d==3 mod 4} d^11.

Offset 1, canonical program `A321835.P224170662709353720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321835 (n : ℕ) : ℤ :=
  A321835.P224170662709353720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321836.P2676894862389954580

`∑{d}[n+1, A013960(#)*A275966((n+1)/#)]`
-/

namespace A321836.P2676894862389954580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013960 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321836.P2676894862389954580

noncomputable section

/-- A321836: a(n) = Sum_{d|n, n/d==1 mod 4} d^12 - Sum_{d|n, n/d==3 mod 4} d^12.

Offset 1, canonical program `A321836.P2676894862389954580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321836 (n : ℕ) : ℤ :=
  A321836.P2676894862389954580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322201.P14556813389480413780

`2*∑{d}[n, A081875(#)]`
-/

namespace A322201.P14556813389480413780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A081875 d)

end

end A322201.P14556813389480413780

noncomputable section

/-- A322201: Main diagonal of square table A322200.

Offset 0, canonical program `A322201.P14556813389480413780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A322201 (n : ℕ) : ℤ :=
  A322201.P14556813389480413780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A322201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322671.P6670530733806521760

`∑{d}[n+1, A007956(#)]`
-/

namespace A322671.P6670530733806521760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007956 d

end

end A322671.P6670530733806521760

noncomputable section

/-- A322671: a(n) = Sum_{d|n} (pod(d)/d), where pod(k) is the product of the divisors of k (A007955).

Offset 1, canonical program `A322671.P6670530733806521760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A322671 (n : ℕ) : ℤ :=
  A322671.P6670530733806521760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A322671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322672.P7673391804805302006

`∏{d}[n+1, A007956(#)]`
-/

namespace A322672.P7673391804805302006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A007956 d

end

end A322672.P7673391804805302006

noncomputable section

/-- A322672: a(n) = Product_{d|n} (pod(d)/d) where pod(k) is the product of the divisors of k (A007955).

Offset 1, canonical program `A322672.P7673391804805302006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A322672 (n : ℕ) : ℤ :=
  A322672.P7673391804805302006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 359 terms. -/
def A322672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323403.P2905685922637902047

`A000203(n+1)+A046692(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323403.P2905685922637902047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A046692 (n + 1)

end

end A323403.P2905685922637902047

noncomputable section

/-- A323403: Sum of sigma and its Dirichlet inverse: a(n) = A000203(n) + A046692(n).

Offset 1, canonical program `A323403.P2905685922637902047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323403 (n : ℕ) : ℤ :=
  A323403.P2905685922637902047.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323641.P1592555987281222169

`A323651(n+3)/4`
-/

namespace A323641.P1592555987281222169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323651 (n + 3) : ℚ) / 4

end

end A323641.P1592555987281222169

noncomputable section

/-- A323641: Triangle read by rows in which row n lists the first 2^n terms of A323642, n >= 1.

Offset 1, canonical program `A323641.P1592555987281222169`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323641 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323641.P1592555987281222169.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323650.P9549203786306784903

`A323651(n)+a(n-1)` with `a(0)=0`
-/

namespace A323650.P9549203786306784903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A323651 n + a (n - 1)

end

end A323650.P9549203786306784903

noncomputable section

/-- A323650: Flower garden sequence (see Comments for precise definition).

Offset 0, canonical program `A323650.P9549203786306784903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323650 (n : ℕ) : ℤ :=
  A323650.P9549203786306784903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324046.P17445629398137156881

`gcd(A324047(n+1)+A094471(n+1), A153152(n))`
-/

namespace A324046.P17445629398137156881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324047 (n + 1) + A094471 (n + 1)) (A153152 n)

end

end A324046.P17445629398137156881

noncomputable section

/-- A324046: a(n) = gcd(n, A106316(n)).

Offset 1, canonical program `A324046.P17445629398137156881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324046 (n : ℕ) : ℤ :=
  (A324046.P17445629398137156881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324505.P18122971594184600049

`∑{d}[n+1, A007956(n+1)/A007956(#)]`
-/

namespace A324505.P18122971594184600049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007956 (n + 1) : ℚ) / (A007956 d : ℚ)

end

end A324505.P18122971594184600049

noncomputable section

/-- A324505: a(n) = numerator of Sum_{d|n} (d/pod(d)) where pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A324505.P18122971594184600049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324505.P18122971594184600049.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324528.P13642510436435348081

`lcm((n+1)*A007956(n+1), ∑{d}[n+1, lcm(#, n+1)-n])`
-/

namespace A324528.P13642510436435348081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) * A007956 (n + 1)) (∑ d ∈ Nat.divisors (f1 n), ((Nat.lcm d (n + 1) : ℤ) - (n : ℤ)))

end

end A324528.P13642510436435348081

noncomputable section

/-- A324528: a(n) = lcm(tau(n), pod(n)) where tau(k) = the number of divisors of k (A000005) and pod(n) = the product of divisors of k (A007955).

Offset 1, canonical program `A324528.P13642510436435348081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324528 (n : ℕ) : ℤ :=
  (A324528.P13642510436435348081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325307.P4090948377986325988

`A036844(n+1)/A001414(A036844(n+1))`
-/

namespace A325307.P4090948377986325988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036844 (n + 1) : ℚ) / (A001414 (A036844 (n + 1)).toNat : ℚ)

end

end A325307.P4090948377986325988

noncomputable section

/-- A325307: a(n) = k / (sum of prime factors of k, counted with multiplicity) where k is the n-th number for which the ratio is an integer.

Offset 1, canonical program `A325307.P4090948377986325988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325307 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325307.P4090948377986325988.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325313.P215450417815666136

`A325314(n+1)-A033879(n+1)`
-/

namespace A325313.P215450417815666136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (n + 1) - A033879 (n + 1)

end

end A325313.P215450417815666136

noncomputable section

/-- A325313: a(n) = A048250(n) - n, where A048250(n) is the sum of squarefree divisors of n.

Offset 1, canonical program `A325313.P215450417815666136`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325313 (n : ℕ) : ℤ :=
  A325313.P215450417815666136.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325313.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325401.P9378557464177393728

`(A055944(n)-abs(A055945(n)))/2`
-/

namespace A325401.P9378557464177393728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055944 n - |A055945 n| : ℚ) / 2

end

end A325401.P9378557464177393728

noncomputable section

/-- A325401: minflip(n) = min(n, r(n)) where r(n) is the binary reverse of n.

Offset 0, canonical program `A325401.P9378557464177393728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325401 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A325401.P9378557464177393728.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326049.P12761554379503345949

`A326050(n+1)+A033879(n+1)`
-/

namespace A326049.P12761554379503345949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326050 (n + 1) + A033879 (n + 1)

end

end A326049.P12761554379503345949

noncomputable section

/-- A326049: a(n) = n - A050449(n), where A050449 is the sum of divisors of the form 4k+1.

Offset 1, canonical program `A326049.P12761554379503345949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326049 (n : ℕ) : ℤ :=
  A326049.P12761554379503345949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326059.P8887039783102292576

`A285309(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326059.P8887039783102292576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285309 (n + 1) - (n + 1 : ℤ)

end

end A326059.P8887039783102292576

noncomputable section

/-- A326059: a(n) = A285309(n) - n, where A285309 gives the sum of nonsquare divisors of n.

Offset 1, canonical program `A326059.P8887039783102292576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326059 (n : ℕ) : ℤ :=
  A326059.P8887039783102292576.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285309, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326060.P2998260433922690749

`gcd(A033879(n+1), A326058(n+1))`
-/

namespace A326060.P2998260433922690749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033879 (n + 1)) (A326058 (n + 1))

end

end A326060.P2998260433922690749

noncomputable section

/-- A326060: a(n) = gcd(n-A035316(n), A285309(n)-n), where A035316 and A285309 give respectively the sums of square and nonsquare divisors of n.

Offset 1, canonical program `A326060.P2998260433922690749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326060 (n : ℕ) : ℤ :=
  (A326060.P2998260433922690749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326415.P3514450629391365891

`∑{d}[n+1, A046692(#)*A074722((n+1)/#)]`
-/

namespace A326415.P3514450629391365891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326415.P3514450629391365891

noncomputable section

/-- A326415: Dirichlet g.f.: zeta(2*s) / zeta(s)^3.

Offset 1, canonical program `A326415.P3514450629391365891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326415 (n : ℕ) : ℤ :=
  A326415.P3514450629391365891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327210.P13644412801249598343

`A190671(n+1)+A005087(Δ[A190671(n+1)])`
-/

namespace A327210.P13644412801249598343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190671 (n + 1) + A005087 (f1 (n + 1) - f1 n).toNat

end

end A327210.P13644412801249598343

noncomputable section

/-- A327210: Positions of 1's in {A327208(n) : n > 0}.

Offset 1, canonical program `A327210.P13644412801249598343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327210 (n : ℕ) : ℤ :=
  A327210.P13644412801249598343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A327210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327220.P13650656345071813810

`lt[n*A327219(n), n]`
-/

namespace A327220.P13650656345071813810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327219 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327220.P13650656345071813810

noncomputable section

/-- A327220: Positions of 0's in {A327219(k) : n > 0}.

Offset 1, canonical program `A327220.P13650656345071813810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327220 (n : ℕ) : ℤ :=
  (A327220.P13650656345071813810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327260.P5995801857761508768

`record[gcd(n+1, A050460(2*n+1))]`
-/

namespace A327260.P5995801857761508768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A050460 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327260.P5995801857761508768

noncomputable section

/-- A327260: Odd numbers not of the form 2*n*k - n - k + 1 where n and k are odd numbers > 1.

Offset 1, canonical program `A327260.P5995801857761508768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1231 terms. -/
def A327260 (n : ℕ) : ℤ :=
  (A327260.P5995801857761508768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1231 terms. -/
def A327260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327703.P3882927055980842099

`A001405(n+4)/A328202(n+4)`
-/

namespace A327703.P3882927055980842099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 4) : ℚ) / (A328202 (n + 4) : ℚ)

end

end A327703.P3882927055980842099

noncomputable section

/-- A327703: a(n) = (binomial(n,floor(n/2)))/(greatest common divisor of all numbers in n-th row of Pascal's triangle excluding 1 and n).

Offset 4, canonical program `A327703.P3882927055980842099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327703 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A327703.P3882927055980842099.a (n - 4))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327703.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327953.P9054110330457496942

`A327952(n+1)-2*(n+1)`
-/

namespace A327953.P9054110330457496942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327952 (n + 1) - (2 * (n + 1) : ℤ)

end

end A327953.P9054110330457496942

noncomputable section

/-- A327953: a(n) is the number of positive integers k such that some nontrivial multiple of sqrt(k) falls strictly between n and n+1.

Offset 1, canonical program `A327953.P9054110330457496942`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327953 (n : ℕ) : ℤ :=
  A327953.P9054110330457496942.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328190.P10977472533607710601

`A328984(n+1)+and(A298468(n), A328979(n+1))`
-/

namespace A328190.P10977472533607710601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328984 (n + 1) + Int.land (A298468 n) (A328979 (n + 1))

end

end A328190.P10977472533607710601

noncomputable section

/-- A328190: Lexicographically earliest infinite sequence of distinct positive integers such that the sequence and its first differences have no values in common.

Offset 1, canonical program `A328190.P10977472533607710601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328190 (n : ℕ) : ℤ :=
  A328190.P10977472533607710601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328254.P15532936558878328748

`∑{d}[n+1, A046692(#)*A334657((n+1)/#)]`
-/

namespace A328254.P15532936558878328748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328254.P15532936558878328748

noncomputable section

/-- A328254: Dirichlet g.f.: 1 / (zeta(s) * zeta(s-1) * zeta(s-2)).

Offset 1, canonical program `A328254.P15532936558878328748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328254 (n : ℕ) : ℤ :=
  A328254.P15532936558878328748.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328652.P14425637367599864737

`A003082(n+1)-A001399(n+1)`
-/

namespace A328652.P14425637367599864737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003082 (n + 1) - A001399 (n + 1)

end

end A328652.P14425637367599864737

noncomputable section

/-- A328652: Number of unlabeled loopless multigraphs with n edges covering four vertices.

Offset 1, canonical program `A328652.P14425637367599864737`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003082, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328652 (n : ℕ) : ℤ :=
  A328652.P14425637367599864737.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003082, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329106.P17407900006589501392

`p?[A118951(n+1)]`
-/

namespace A329106.P17407900006589501392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329106.P17407900006589501392

noncomputable section

/-- A329106: Primes containing at least one of the following digits: 4, 6, 8, or 9.

Offset 1, canonical program `A329106.P17407900006589501392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A329106 (n : ℕ) : ℤ :=
  A329106.P17407900006589501392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A329106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330321.P10903654926725134196

`A330320(n+1)/2`
-/

namespace A330321.P10903654926725134196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330320 (n + 1) : ℚ) / 2

end

end A330321.P10903654926725134196

noncomputable section

/-- A330321: a(n) = Sum_{i=1..n} tau(i)*tau(i+1)/2, where tau(n) = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A330321.P10903654926725134196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A330320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330321 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A330321.P10903654926725134196.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A330320, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330321.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331133.P4944719196915576697

`A331132(n+1)/2`
-/

namespace A331133.P4944719196915576697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331132 (n + 1) : ℚ) / 2

end

end A331133.P4944719196915576697

noncomputable section

/-- A331133: a(n) = Sum_{i=1..n} d(i)^2*d(i+1)/2, where d(n) = A000005(n).

Offset 1, canonical program `A331133.P4944719196915576697`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331133 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331133.P4944719196915576697.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331999.P3156831626282684287

`(n+1)*A067563(n+1)`
-/

namespace A331999.P3156831626282684287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A067563 (n + 1)

end

end A331999.P3156831626282684287

noncomputable section

/-- A331999: a(n) is the product of n, the n-th prime and the n-th composite number.

Offset 1, canonical program `A331999.P3156831626282684287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331999 (n : ℕ) : ℤ :=
  A331999.P3156831626282684287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067563, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331999.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332269.P10183402854127300414

`∪[A030513(n+1), A030514(n+1)]`
-/

namespace A332269.P10183402854127300414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332269.P10183402854127300414

noncomputable section

/-- A332269: Numbers m with only one divisor d such that sqrt(m) < d < m.

Offset 1, canonical program `A332269.P10183402854127300414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332269 (n : ℕ) : ℤ :=
  (A332269.P10183402854127300414.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332684.P8972618175803108793

`∑{d}[n+1, A007428(#)*A143356((n+1)/#)]`
-/

namespace A332684.P8972618175803108793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A143356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332684.P8972618175803108793

noncomputable section

/-- A332684: a(n) = Sum_{k=1..n} mu(gcd(n, k)) * floor(n/k).

Offset 1, canonical program `A332684.P8972618175803108793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332684 (n : ℕ) : ℤ :=
  A332684.P8972618175803108793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332754.P10825314309462176498

`A191790(n)+A000035(n)`
-/

namespace A332754.P10825314309462176498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191790 n + A000035 n

end

end A332754.P10825314309462176498

noncomputable section

/-- A332754: a(n) = Sum_{k=1..n-1} ((-1)^(k+n+1)*binomial(k,floor(k/2))).

Offset 1, canonical program `A332754.P10825314309462176498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A332754 (n : ℕ) : ℤ :=
  A332754.P10825314309462176498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A332754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333168.P11188141478812584799

`∑[A333167(n)]`
-/

namespace A333168.P11188141478812584799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333168.P11188141478812584799

noncomputable section

/-- A333168: a(n) = Sum_{k=0..n} r_2(k^2 + 1), where r_2(k) is the number of ways of writing k as a sum of 2 squares (A004018).

Offset 0, canonical program `A333168.P11188141478812584799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333168 (n : ℕ) : ℤ :=
  A333168.P11188141478812584799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333171.P4309938117730159280

`∑[A333167(n)/A105397(n)]`
-/

namespace A333171.P4309938117730159280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333167 n : ℚ) / (A105397 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333171.P4309938117730159280

noncomputable section

/-- A333171: a(n) = Sum_{k=0..n} d(k^2 + 1), where d(k) is the number of divisors of k (A000005).

Offset 0, canonical program `A333171.P4309938117730159280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333171 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A333171.P4309938117730159280.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333748.P1056566153908479740

`ceil(∏{e}[n+1, #+1]/2)-A063962(n+1)`
-/

namespace A333748.P1056566153908479740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉ - A063962 (n + 1)

end

end A333748.P1056566153908479740

noncomputable section

/-- A333748: Number of nonprime divisors of n that are <= sqrt(n).

Offset 1, canonical program `A333748.P1056566153908479740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333748 (n : ℕ) : ℤ :=
  A333748.P1056566153908479740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333806.P3114427543706526191

`A063962(A048671(n+1))`
-/

namespace A333806.P3114427543706526191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A048671 (n + 1)).toNat

end

end A333806.P3114427543706526191

noncomputable section

/-- A333806: Number of distinct prime divisors of n that are < sqrt(n).

Offset 1, canonical program `A333806.P3114427543706526191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333806 (n : ℕ) : ℤ :=
  A333806.P3114427543706526191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333814.P13105421635871502220

`∩[A062753(n+1), A019557(n)]`
-/

namespace A333814.P13105421635871502220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333814.P13105421635871502220

noncomputable section

/-- A333814: Multiples of 12 whose sum of digits is 12.

Offset 1, canonical program `A333814.P13105421635871502220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 852 terms. -/
def A333814 (n : ℕ) : ℤ :=
  (A333814.P13105421635871502220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 852 terms. -/
def A333814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334163.P14937506091226471622

`A000040(A247515(n+1))`
-/

namespace A334163.P14937506091226471622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A247515 (n + 1)).toNat

end

end A334163.P14937506091226471622

noncomputable section

/-- A334163: Primes p whose continued fraction expansion of sqrt(p) has a 1 in the second position.

Offset 1, canonical program `A334163.P14937506091226471622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A334163 (n : ℕ) : ℤ :=
  A334163.P14937506091226471622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4976 terms. -/
def A334163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335064.P7866728032869003709

`A002378(A024619(n+1))`
-/

namespace A335064.P7866728032869003709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A024619 (n + 1)).toNat

end

end A335064.P7866728032869003709

noncomputable section

/-- A335064: Let m = d*q + r be the Euclidean division of m by d. The terms m of this sequence satisfy that q, r, d are consecutive positive integer terms in a geometric progression with a noninteger common ratio > 1.

Offset 1, canonical program `A335064.P7866728032869003709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335064 (n : ℕ) : ℤ :=
  A335064.P7866728032869003709.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335064.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336375.P132868949489915150

`comp[A336374(n+1)-1]+1`
-/

namespace A336375.P132868949489915150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336374 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A336375.P132868949489915150

noncomputable section

/-- A336375: Numbers k such that gcd(k, prime(k) + prime(k+2)) > 1.

Offset 1, canonical program `A336375.P132868949489915150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336375 (n : ℕ) : ℤ :=
  (A336375.P132868949489915150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336376.P9608865408552650573

`A000040(A336374(n+1))`
-/

namespace A336376.P9608865408552650573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336374 (n + 1)).toNat

end

end A336376.P9608865408552650573

noncomputable section

/-- A336376: Primes p(n) such that gcd(n, prime(n)+prime(n+2)) = 1.

Offset 1, canonical program `A336376.P9608865408552650573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. -/
def A336376 (n : ℕ) : ℤ :=
  A336376.P9608865408552650573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3636 terms. -/
def A336376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336381.P12343124691346730794

`A000040(A336379(n+1))`
-/

namespace A336381.P12343124691346730794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A336379 (n + 1)).toNat

end

end A336381.P12343124691346730794

noncomputable section

/-- A336381: Primes p(n) such that gcd(n, prime(n-1)+prime(n+1)) > 1.

Offset 1, canonical program `A336381.P12343124691346730794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A336381 (n : ℕ) : ℤ :=
  A336381.P12343124691346730794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6322 terms. -/
def A336381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336410.P10465025755564632149

`A049579(n+1)-3`
-/

namespace A336410.P10465025755564632149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049579 (n + 1) - 3

end

end A336410.P10465025755564632149

noncomputable section

/-- A336410: Complement of A336411.

Offset 1, canonical program `A336410.P10465025755564632149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336410 (n : ℕ) : ℤ :=
  A336410.P10465025755564632149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336530.P12884130564443516063

`A000292(A070824(n+1))-A086165(n+1)`
-/

namespace A336530.P12884130564443516063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A070824 (n + 1)).toNat - A086165 (n + 1)

end

end A336530.P12884130564443516063

noncomputable section

/-- A336530: Number of triples of divisors d_i < d_j < d_k of n such that gcd(d_i, d_j, d_k) > 1.

Offset 1, canonical program `A336530.P12884130564443516063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336530 (n : ℕ) : ℤ :=
  A336530.P12884130564443516063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336963.P15058899882861974710

`A057889(A336962(A057889(n)))`
-/

namespace A336963.P15058899882861974710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A336962 (A057889 n).toNat).toNat

end

end A336963.P15058899882861974710

noncomputable section

/-- A336963: Left-rotate run-lengths of consecutive equal digits in binary representation of n.

Offset 0, canonical program `A336963.P15058899882861974710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A336963 (n : ℕ) : ℤ :=
  A336963.P15058899882861974710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A336963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337106.P11641309545225411868

`A153823(n)-A157928(n)`
-/

namespace A337106.P11641309545225411868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 n - A157928 n

end

end A337106.P11641309545225411868

noncomputable section

/-- A337106: Number of nontrivial divisors of n!.

Offset 0, canonical program `A337106.P11641309545225411868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A337106 (n : ℕ) : ℤ :=
  A337106.P11641309545225411868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A337106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337257.P14876870470645707118

`A027423(n)-A336940(n)`
-/

namespace A337257.P14876870470645707118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 n - A336940 n

end

end A337257.P14876870470645707118

noncomputable section

/-- A337257: Number of even divisors of n!.

Offset 0, canonical program `A337257.P14876870470645707118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A337257 (n : ℕ) : ℤ :=
  A337257.P14876870470645707118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A337257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337277.P696928167752070774

`A020951(A062289(n+1))`
-/

namespace A337277.P696928167752070774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A062289 (n + 1)).toNat

end

end A337277.P696928167752070774

noncomputable section

/-- A337277: Stern's triangle read by rows.

Offset 0, canonical program `A337277.P696928167752070774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A337277 (n : ℕ) : ℤ :=
  A337277.P696928167752070774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9987 terms. -/
def A337277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337323.P11801849729673822037

`gcd(∑{d}[n+1, #], A303781(n+1))`
-/

namespace A337323.P11801849729673822037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A303781 (n + 1))

end

end A337323.P11801849729673822037

noncomputable section

/-- A337323: a(n) = gcd(n, tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A337323.P11801849729673822037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337323 (n : ℕ) : ℤ :=
  (A337323.P11801849729673822037.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337480.P8362700632099792972

`eq[1, A075743(2*n+1)+A075743(4*n+1)]`
-/

namespace A337480.P8362700632099792972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * n + 1) + A075743 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A337480.P8362700632099792972

noncomputable section

/-- A337480: Numbers k such that exactly one of 6*k + 5 and 12*k + 5 is prime.

Offset 1, canonical program `A337480.P8362700632099792972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3196 terms. -/
def A337480 (n : ℕ) : ℤ :=
  (A337480.P8362700632099792972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3196 terms. -/
def A337480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338549.P13915775322579867345

`∑{d}[n+1, A321560(#)*A327274((n+1)/#)]`
-/

namespace A338549.P13915775322579867345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321560 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338549.P13915775322579867345

noncomputable section

/-- A338549: a(n) = n^4 * Sum_{d|n} (-1)^(n/d + 1) * mu(d) / d^4.

Offset 1, canonical program `A338549.P13915775322579867345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338549 (n : ℕ) : ℤ :=
  A338549.P13915775322579867345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338976.P3724280392145629394

`p?[A089227(n+1)]`
-/

namespace A338976.P3724280392145629394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338976.P3724280392145629394

noncomputable section

/-- A338976: Primes p such that p*A007953(p)+1 is prime.

Offset 1, canonical program `A338976.P3724280392145629394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A338976 (n : ℕ) : ℤ :=
  A338976.P3724280392145629394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A338976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339308.P326742767543931294

`∑[A007956(n+1)]`
-/

namespace A339308.P326742767543931294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339308.P326742767543931294

noncomputable section

/-- A339308: Partial sums of products of proper divisors of n (A007956).

Offset 1, canonical program `A339308.P326742767543931294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A339308 (n : ℕ) : ℤ :=
  A339308.P326742767543931294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A339308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339638.P3283840874986225576

`∑[A076078(n+1)]`
-/

namespace A339638.P3283840874986225576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339638.P3283840874986225576

noncomputable section

/-- A339638: Number of nonempty sets of distinct positive integers that have a least common multiple <= n.

Offset 1, canonical program `A339638.P3283840874986225576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339638 (n : ℕ) : ℤ :=
  A339638.P3283840874986225576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339667.P11239473250096639083

`A100587(n+1)-A076078(n+1)`
-/

namespace A339667.P11239473250096639083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100587 (n + 1) - A076078 (n + 1)

end

end A339667.P11239473250096639083

noncomputable section

/-- A339667: Number of nonempty subsets of divisors of n having a common factor > 1.

Offset 1, canonical program `A339667.P11239473250096639083`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076078, A100587, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339667 (n : ℕ) : ℤ :=
  A339667.P11239473250096639083.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076078, A100587, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339919.P1107239849684330774

`A339918(n)-3*A006218(n)`
-/

namespace A339919.P1107239849684330774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339918 n - 3 * A006218 n

end

end A339919.P1107239849684330774

noncomputable section

/-- A339919: a(n) = Sum_{k=1..n} (floor(3*n/k) - 3*floor(n/k)).

Offset 0, canonical program `A339919.P1107239849684330774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339919 (n : ℕ) : ℤ :=
  A339919.P1107239849684330774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341002.P16832887161860960795

`eq[1, abs(A071650(n+1))]+1`
-/

namespace A341002.P16832887161860960795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341002.P16832887161860960795

noncomputable section

/-- A341002: Numbers whose sum of even digits and sum of odd digits differ by 1.

Offset 1, canonical program `A341002.P16832887161860960795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A341002 (n : ℕ) : ℤ :=
  (A341002.P16832887161860960795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A341002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341003.P14604439664991033148

`eq[2, abs(A071650(n+1))]+1`
-/

namespace A341003.P14604439664991033148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341003.P14604439664991033148

noncomputable section

/-- A341003: Numbers whose sum of even digits and sum of odd digits differ by 2.

Offset 1, canonical program `A341003.P14604439664991033148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. -/
def A341003 (n : ℕ) : ℤ :=
  (A341003.P14604439664991033148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 922 terms. -/
def A341003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341004.P484656656138415432

`eq[3, abs(A071650(n+1))]+1`
-/

namespace A341004.P484656656138415432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341004.P484656656138415432

noncomputable section

/-- A341004: Numbers whose sum of even digits and sum of odd digits differ by 3.

Offset 1, canonical program `A341004.P484656656138415432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A341004 (n : ℕ) : ℤ :=
  (A341004.P484656656138415432.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A341004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341005.P1029475103496540761

`eq[4, abs(A071650(A028310(n)))]`
-/

namespace A341005.P1029475103496540761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341005.P1029475103496540761

noncomputable section

/-- A341005: Numbers whose sum of even digits and sum of odd digits differ by 4.

Offset 1, canonical program `A341005.P1029475103496540761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 803 terms. -/
def A341005 (n : ℕ) : ℤ :=
  (A341005.P1029475103496540761.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 803 terms. -/
def A341005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341006.P8486897643190546407

`eq[5, abs(A071650(n+1))]+1`
-/

namespace A341006.P8486897643190546407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341006.P8486897643190546407

noncomputable section

/-- A341006: Numbers whose sum of even digits and sum of odd digits differ by 5.

Offset 1, canonical program `A341006.P8486897643190546407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A341006 (n : ℕ) : ℤ :=
  (A341006.P8486897643190546407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A341006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341007.P4711020374910811574

`eq[36, A071650(A028310(n))²]`
-/

namespace A341007.P4711020374910811574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071650 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341007.P4711020374910811574

noncomputable section

/-- A341007: Numbers whose sum of even digits and sum of odd digits differ by 6.

Offset 1, canonical program `A341007.P4711020374910811574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. -/
def A341007 (n : ℕ) : ℤ :=
  (A341007.P4711020374910811574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. -/
def A341007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341008.P8270698989946765103

`eq[7, abs(A071650(A028310(n)))]`
-/

namespace A341008.P8270698989946765103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341008.P8270698989946765103

noncomputable section

/-- A341008: Numbers whose sum of even digits and sum of odd digits differ by 7.

Offset 1, canonical program `A341008.P8270698989946765103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A341008 (n : ℕ) : ℤ :=
  (A341008.P8270698989946765103.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A341008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341009.P6779292514282715490

`eq[8, abs(A071650(A028310(n)))]`
-/

namespace A341009.P6779292514282715490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341009.P6779292514282715490

noncomputable section

/-- A341009: Numbers whose sum of even digits and sum of odd digits differ by 8.

Offset 1, canonical program `A341009.P6779292514282715490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A341009 (n : ℕ) : ℤ :=
  (A341009.P6779292514282715490.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A341009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341010.P431178045612450557

`eq[9, abs(A071650(A028310(n)))]`
-/

namespace A341010.P431178045612450557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071650 (A028310 n).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341010.P431178045612450557

noncomputable section

/-- A341010: Numbers whose sum of even digits and sum of odd digits differ by 9.

Offset 1, canonical program `A341010.P431178045612450557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 644 terms. -/
def A341010 (n : ℕ) : ℤ :=
  (A341010.P431178045612450557.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 644 terms. -/
def A341010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341099.P7728834317984338606

`lt[2, A072627(n+1)]+1`
-/

namespace A341099.P7728834317984338606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341099.P7728834317984338606

noncomputable section

/-- A341099: Numbers divisible by at least three terms of A008864.

Offset 1, canonical program `A341099.P7728834317984338606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A341099 (n : ℕ) : ℤ :=
  (A341099.P7728834317984338606.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A341099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341833.P7490125277756735496

`∑{d}[n+1, A341834(#)]`
-/

namespace A341833.P7490125277756735496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341834 d

end

end A341833.P7490125277756735496

noncomputable section

/-- A341833: Dirichlet g.f.: 1 / zeta(s)^7.

Offset 1, canonical program `A341833.P7490125277756735496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341833 (n : ℕ) : ℤ :=
  A341833.P7490125277756735496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341952.P5326500736965225411

`A102283(A028334(n+2))`
-/

namespace A341952.P5326500736965225411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A028334 (n + 2)).toNat

end

end A341952.P5326500736965225411

noncomputable section

/-- A341952: Let x = (prime(n+1) - prime(n))/2 modulo 3 for n >= 2, then a(n) = -1 if x = 2, otherwise a(n) = x.

Offset 2, canonical program `A341952.P5326500736965225411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028334, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341952 (n : ℕ) : ℤ :=
  A341952.P5326500736965225411.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028334, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342567.P15885445761304597193

`A056221(n+2)/2`
-/

namespace A342567.P15885445761304597193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056221 (n + 2) : ℚ) / 2

end

end A342567.P15885445761304597193

noncomputable section

/-- A342567: a(n) = (prime(n)^2 - prime(n-1)*prime(n+1))/2, n >= 3.

Offset 3, canonical program `A342567.P15885445761304597193`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342567 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342567.P15885445761304597193.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A343109.P14668972200541254521

`lt[A188171(n+1), 1]+1`
-/

namespace A343109.P14668972200541254521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188171 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A343109.P14668972200541254521

noncomputable section

/-- A343109: Numbers having no divisor of the form 8*k + 5.

Offset 1, canonical program `A343109.P14668972200541254521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4042 terms. -/
def A343109 (n : ℕ) : ℤ :=
  (A343109.P14668972200541254521.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4042 terms. -/
def A343109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343113.P7654673107795558321

`eq[1, A188171(n+1)]+1`
-/

namespace A343113.P7654673107795558321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343113.P7654673107795558321

noncomputable section

/-- A343113: Numbers having exactly 1 divisor of the form 8*k + 5.

Offset 1, canonical program `A343113.P7654673107795558321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2903 terms. -/
def A343113 (n : ℕ) : ℤ :=
  (A343113.P7654673107795558321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2903 terms. -/
def A343113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344221.P10470935627830531370

`∑{d}[n+1, A007432(#)*A397549((n+1)/#)]`
-/

namespace A344221.P10470935627830531370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A397549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344221.P10470935627830531370

noncomputable section

/-- A344221: a(n) = Sum_{k=1..n} tau(gcd(k,n)^3), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344221.P10470935627830531370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344221 (n : ℕ) : ℤ :=
  A344221.P10470935627830531370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344222.P16415953736657626465

`∑{d}[n+1, A007432(#)*A062368((n+1)/#)]`
-/

namespace A344222.P16415953736657626465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A062368 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344222.P16415953736657626465

noncomputable section

/-- A344222: a(n) = Sum_{k=1..n} tau(gcd(k,n)^4), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344222.P16415953736657626465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344222 (n : ℕ) : ℤ :=
  A344222.P16415953736657626465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344314.P13255996641734891554

`eq[A048105(n+1), A048105(n+2)]+1`
-/

namespace A344314.P13255996641734891554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344314.P13255996641734891554

noncomputable section

/-- A344314: Number k such that k and k+1 have the same number of nonunitary divisors (A048105).

Offset 1, canonical program `A344314.P13255996641734891554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3460 terms. -/
def A344314 (n : ℕ) : ℤ :=
  (A344314.P13255996641734891554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3460 terms. -/
def A344314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344687.P14717226967310331617

`floor(∑[A038024(n+1)/2])`
-/

namespace A344687.P14717226967310331617
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038024 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A344687.P14717226967310331617

noncomputable section

/-- A344687: a(n) is the lowest nonnegative exponent k such that n!^k is the product of the divisors of n!.

Offset 1, canonical program `A344687.P14717226967310331617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A344687 (n : ℕ) : ℤ :=
  A344687.P14717226967310331617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 928 terms. -/
def A344687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345069.P2385897774581200277

`A155750(n+1)+2*A031215(n+1)`
-/

namespace A345069.P2385897774581200277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1) + 2 * A031215 (n + 1)

end

end A345069.P2385897774581200277

noncomputable section

/-- A345069: Sums of two consecutive even-indexed primes.

Offset 1, canonical program `A345069.P2385897774581200277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345069 (n : ℕ) : ℤ :=
  A345069.P2385897774581200277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345071.P2353007092059445250

`A100479(n+1)+A088680(n+1)`
-/

namespace A345071.P2353007092059445250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) + A088680 (n + 1)

end

end A345071.P2353007092059445250

noncomputable section

/-- A345071: Sums of two consecutive odd-indexed primes.

Offset 1, canonical program `A345071.P2353007092059445250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345071 (n : ℕ) : ℤ :=
  A345071.P2353007092059445250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345281.P10556684959762605774

`∑{p}[n+1, A151800((n+1)/#)]`
-/

namespace A345281.P10556684959762605774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A151800 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A345281.P10556684959762605774

noncomputable section

/-- A345281: a(n) = Sum_{p|n} nextprime(n/p), where nextprime(m) is the smallest prime > m.

Offset 1, canonical program `A345281.P10556684959762605774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345281 (n : ℕ) : ℤ :=
  A345281.P10556684959762605774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345282.P3924199475300037871

`∑{d}[n+1, A061397(#)*A151800((n+1)/#)]`
-/

namespace A345282.P3924199475300037871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d * A151800 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345282.P3924199475300037871

noncomputable section

/-- A345282: a(n) = Sum_{p|n, p prime} p * nextprime(n/p).

Offset 1, canonical program `A345282.P3924199475300037871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345282 (n : ℕ) : ℤ :=
  A345282.P3924199475300037871.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345401.P14238453183397205627

`A145341(A337909(n+1))`
-/

namespace A345401.P14238453183397205627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (A337909 (n + 1)).toNat

end

end A345401.P14238453183397205627

noncomputable section

/-- A345401: a(n) is the unique odd number h such that BCR(h*2^m-1) = 2n (except for BCR(0) = 1) where BCR is bit complement and reverse per A036044.

Offset 0, canonical program `A345401.P14238453183397205627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345401 (n : ℕ) : ℤ :=
  A345401.P14238453183397205627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345927.P11668894418822586614

`(-1)^(A070939(n)-1)*A065359(n)`
-/

namespace A345927.P11668894418822586614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A070939 n - 1 : ℤ) * (A065359 n : ℚ)

end

end A345927.P11668894418822586614

noncomputable section

/-- A345927: Alternating sum of the binary expansion of n (row n of A030190). Replace 2^k with (-1)^(A070939(n)-k) in the binary expansion of n (compare to the definition of A065359).

Offset 0, canonical program `A345927.P11668894418822586614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345927 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345927.P11668894418822586614.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A345927.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346180.P6210635577582370619

`A000040(n+1)+A061397(n+1)`
-/

namespace A346180.P6210635577582370619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A061397 (n + 1)

end

end A346180.P6210635577582370619

noncomputable section

/-- A346180: a(n) = prime(n) + n if n is prime, a(n) = prime(n) otherwise.

Offset 1, canonical program `A346180.P6210635577582370619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346180 (n : ℕ) : ℤ :=
  A346180.P6210635577582370619.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346612.P17658702918821457984

`∑{d}[n+1, A046692(#)*A057670((n+1)/#)]`
-/

namespace A346612.P17658702918821457984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A057670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346612.P17658702918821457984

noncomputable section

/-- A346612: Moebius transform of A019554.

Offset 1, canonical program `A346612.P17658702918821457984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346612 (n : ℕ) : ℤ :=
  A346612.P17658702918821457984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347090.P2915293843078708431

`∑{d}[n+1, A046692(#)*A271102((n+1)/#)]`
-/

namespace A347090.P2915293843078708431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347090.P2915293843078708431

noncomputable section

/-- A347090: Dirichlet inverse of A332844.

Offset 1, canonical program `A347090.P2915293843078708431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347090 (n : ℕ) : ℤ :=
  A347090.P2915293843078708431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347702.P3905593689057913648

`p?[A209871(n+1)]`
-/

namespace A347702.P3905593689057913648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347702.P3905593689057913648

noncomputable section

/-- A347702: Prime numbers that give a remainder of 1 when divided by the sum of their digits.

Offset 1, canonical program `A347702.P3905593689057913648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2152 terms. -/
def A347702 (n : ℕ) : ℤ :=
  A347702.P3905593689057913648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2152 terms. -/
def A347702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348915.P13373623292540873174

`A000593(n+1)+A183063(n+1)`
-/

namespace A348915.P13373623292540873174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + A183063 (n + 1)

end

end A348915.P13373623292540873174

noncomputable section

/-- A348915: a(n) = Sum_{d|n} d^(d mod 2).

Offset 1, canonical program `A348915.P13373623292540873174`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348915 (n : ℕ) : ℤ :=
  A348915.P13373623292540873174.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349360.P4810529674749984531

`A184389(n+1)+A335567(n+1)`
-/

namespace A349360.P4810529674749984531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1) + A335567 (n + 1)

end

end A349360.P4810529674749984531

noncomputable section

/-- A349360: Number of positive integer pairs (s,t), with s,t <= n and s <= t such that either both s and t divide n or both do not.

Offset 1, canonical program `A349360.P4810529674749984531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184389, A335567, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349360 (n : ℕ) : ℤ :=
  A349360.P4810529674749984531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184389, A335567, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349629.P6415063026675190056

`A046692(n+1)/gcd(n+1, A046692(n+1))`
-/

namespace A349629.P6415063026675190056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046692 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A046692 (n + 1)) : ℚ)

end

end A349629.P6415063026675190056

noncomputable section

/-- A349629: Numerators of the Dirichlet inverse of the abundancy index, sigma(n)/n.

Offset 1, canonical program `A349629.P6415063026675190056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349629 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349629.P6415063026675190056.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349630.P15265834467087415735

`(n+1)/gcd(n+1, A046692(n+1))`
-/

namespace A349630.P15265834467087415735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A046692 (n + 1)) : ℚ)

end

end A349630.P15265834467087415735

noncomputable section

/-- A349630: Denominators of the Dirichlet inverse of the abundancy index, sigma(n)/n.

Offset 1, canonical program `A349630.P15265834467087415735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349630 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349630.P15265834467087415735.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351140.P15868147787886378278

`A151800(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A351140.P15868147787886378278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A351140.P15868147787886378278

noncomputable section

/-- A351140: a(1) = 1, a(n) = smallest prime > a(n-1) + n.

Offset 1, canonical program `A351140.P15868147787886378278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A351140 (n : ℕ) : ℤ :=
  A351140.P15868147787886378278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. -/
def A351140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351362.P11704435323759019704

`A351355(n+1)+A069283(n+1)`
-/

namespace A351362.P11704435323759019704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351355 (n + 1) + A069283 (n + 1)

end

end A351362.P11704435323759019704

noncomputable section

/-- A351362: Number of ways the numbers from 1..n do not divide the numbers from n..2n-1.

Offset 1, canonical program `A351362.P11704435323759019704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351362 (n : ℕ) : ℤ :=
  A351362.P11704435323759019704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351414.P15953390987188253325

`A048105(n+1)+A361205(n+1)`
-/

namespace A351414.P15953390987188253325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + A361205 (n + 1)

end

end A351414.P15953390987188253325

noncomputable section

/-- A351414: Number of divisors of n that are either prime or have at least 1 square divisor > 1 and at least two distinct prime factors.

Offset 1, canonical program `A351414.P15953390987188253325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048105, A361205, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351414 (n : ℕ) : ℤ :=
  A351414.P15953390987188253325.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048105, A361205, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351414.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351417.P10622450361574635402

`A048105(n+1)+A001221(n+1)`
-/

namespace A351417.P10622450361574635402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) + A001221 (n + 1)

end

end A351417.P10622450361574635402

noncomputable section

/-- A351417: Number of divisors of n that are either prime or have at least one square divisor > 1.

Offset 1, canonical program `A351417.P10622450361574635402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351417 (n : ℕ) : ℤ :=
  A351417.P10622450361574635402.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351528.P8807216159401882128

`p?[ceil(A145341(n+1)/2)]`
-/

namespace A351528.P8807216159401882128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A145341 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A351528.P8807216159401882128

noncomputable section

/-- A351528: Prime numbers ordered by their binary reversal.

Offset 1, canonical program `A351528.P8807216159401882128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A351528 (n : ℕ) : ℤ :=
  A351528.P8807216159401882128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1900 terms. -/
def A351528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351654.P14786926509315681649

`∑{d}[n+1, #*A046692(#)]`
-/

namespace A351654.P14786926509315681649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A046692 d

end

end A351654.P14786926509315681649

noncomputable section

/-- A351654: Dirichlet g.f.: zeta(s) / (zeta(s-1) * zeta(s-2)).

Offset 1, canonical program `A351654.P14786926509315681649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351654 (n : ℕ) : ℤ :=
  A351654.P14786926509315681649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352167.P833396178534285227

`A001414(n+1)-A061397(n+1)`
-/

namespace A352167.P833396178534285227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A061397 (n + 1)

end

end A352167.P833396178534285227

noncomputable section

/-- A352167: a(n) is the sum of the prime factors of n (with multiplicity) that are less than n.

Offset 1, canonical program `A352167.P833396178534285227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352167 (n : ℕ) : ℤ :=
  A352167.P833396178534285227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A061397, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352777.P13491865834472496179

`∑[∑{p}[n+1, C(#, n)]]*A073837(n+1)`
-/

namespace A352777.P13491865834472496179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A073837 (n + 1)

end

end A352777.P13491865834472496179

noncomputable section

/-- A352777: a(n) = Sum_{p <= n <= q < 2n, p,q prime} (p * q).

Offset 1, canonical program `A352777.P13491865834472496179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1595 terms. -/
def A352777 (n : ℕ) : ℤ :=
  A352777.P13491865834472496179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1595 terms. -/
def A352777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353464.P7528674575556997429

`A353463(A065164(n+1))`
-/

namespace A353464.P7528674575556997429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (A065164 (n + 1)).toNat

end

end A353464.P7528674575556997429

noncomputable section

/-- A353464: Characteristic function of greater twin primes: a(n) = 1 if both n and n-2 are primes, otherwise 0.

Offset 1, canonical program `A353464.P7528674575556997429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353464 (n : ℕ) : ℤ :=
  A353464.P7528674575556997429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354467.P1434315419781372648

`∩[A004611(n+1), A072330(n+1)]`
-/

namespace A354467.P1434315419781372648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354467.P1434315419781372648

noncomputable section

/-- A354467: Positive integers whose prime factors are congruent to 1 (mod 12).

Offset 1, canonical program `A354467.P1434315419781372648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3366 terms. -/
def A354467 (n : ℕ) : ℤ :=
  (A354467.P1434315419781372648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3366 terms. -/
def A354467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355643.P7908360887346496092

`lt[0, A282849(n+1)]+1`
-/

namespace A355643.P7908360887346496092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A355643.P7908360887346496092

noncomputable section

/-- A355643: Numbers k having a divisor d such that d+k/d is prime.

Offset 1, canonical program `A355643.P7908360887346496092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2809 terms. -/
def A355643 (n : ℕ) : ℤ :=
  (A355643.P7908360887346496092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2809 terms. -/
def A355643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355816.P18014603131133608948

`A143731(n+1)*A325964(n+1)`
-/

namespace A355816.P18014603131133608948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) * A325964 (n + 1)

end

end A355816.P18014603131133608948

noncomputable section

/-- A355816: a(n) = 1 if n and sigma(n) are relatively prime, and n has at least two distinct prime factors, otherwise 0.

Offset 1, canonical program `A355816.P18014603131133608948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143731, A325964, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355816 (n : ℕ) : ℤ :=
  A355816.P18014603131133608948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143731, A325964, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356018.P4624671268453047338

`A000005(n+1)-A227872(n+1)`
-/

namespace A356018.P4624671268453047338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A227872 (n + 1)

end

end A356018.P4624671268453047338

noncomputable section

/-- A356018: a(n) is the number of evil divisors (A001969) of n.

Offset 1, canonical program `A356018.P4624671268453047338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A227872, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356018 (n : ℕ) : ℤ :=
  A356018.P4624671268453047338.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A227872, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356018.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356382.P3347831406250475257

`filter[A088827(n+1), A325964(#)]`
-/

namespace A356382.P3347831406250475257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A356382.P3347831406250475257

noncomputable section

/-- A356382: Even terms in A014567.

Offset 1, canonical program `A356382.P3347831406250475257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A356382 (n : ℕ) : ℤ :=
  A356382.P3347831406250475257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A356382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357695.P9882906667997209006

`eq[A050361(n+1), A082551(n+1)]+1`
-/

namespace A357695.P9882906667997209006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357695.P9882906667997209006

noncomputable section

/-- A357695: Cubefree abundant numbers.

Offset 1, canonical program `A357695.P9882906667997209006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7230 terms. -/
def A357695 (n : ℕ) : ℤ :=
  (A357695.P9882906667997209006.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7230 terms. -/
def A357695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359249.P8196808652904358102

`∑{d}[n+1, A010051(#)*A295405((n+1)/#)]`
-/

namespace A359249.P8196808652904358102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A295405 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359249.P8196808652904358102

noncomputable section

/-- A359249: a(n) is the number of primes p such that (n/p)^2 + 1 is prime.

Offset 1, canonical program `A359249.P8196808652904358102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A359249 (n : ℕ) : ℤ :=
  A359249.P8196808652904358102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A359249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359580.P9567122532987640095

`filter[A096033(n+1), A212793(#)]`
-/

namespace A359580.P9567122532987640095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A359580.P9567122532987640095

noncomputable section

/-- A359580: Numbers that are either (an odd squarefree number squared) or twice such a number.

Offset 1, canonical program `A359580.P9567122532987640095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A359580 (n : ℕ) : ℤ :=
  A359580.P9567122532987640095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A359580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359821.P15316925035218251936

`∪[A046337(n+1), A016825(n)]`
-/

namespace A359821.P15316925035218251936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359821.P15316925035218251936

noncomputable section

/-- A359821: Numbers k whose arithmetic derivative, A003415(k), has the opposite parity to k.

Offset 1, canonical program `A359821.P15316925035218251936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359821 (n : ℕ) : ℤ :=
  (A359821.P15316925035218251936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360567.P16353749552312502386

`p?[∑[2-Δ[A143536(n+1)]]+2]`
-/

namespace A360567.P16353749552312502386
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A360567.P16353749552312502386

noncomputable section

/-- A360567: Primes p such that the nearest integer to sqrt(p) is also prime.

Offset 1, canonical program `A360567.P16353749552312502386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A360567 (n : ℕ) : ℤ :=
  A360567.P16353749552312502386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A360567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361022.P13909982394743935794

`A000007(Δ[A054519(n+1)]%∏{e}[n+1, #+1])`
-/

namespace A361022.P13909982394743935794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (f1 (n + 1) - f1 n) ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)).toNat

end

end A361022.P13909982394743935794

noncomputable section

/-- A361022: a(n) = 1 if d(n) divides d(n+1), otherwise 0, where d(n) is number of positive divisors of n.

Offset 1, canonical program `A361022.P13909982394743935794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A361022 (n : ℕ) : ℤ :=
  A361022.P13909982394743935794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A361022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361267.P7495545048524852458

`eq[6, A075527(n)]`
-/

namespace A361267.P7495545048524852458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361267.P7495545048524852458

noncomputable section

/-- A361267: Numbers k such that prime(k+2) - prime(k) = 6.

Offset 1, canonical program `A361267.P7495545048524852458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A361267 (n : ℕ) : ℤ :=
  (A361267.P7495545048524852458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A361267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361338.P12830044282010602030

`A122856(C(floor(n/2), 56))`
-/

namespace A361338.P12830044282010602030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (Nat.choose ⌊(n : ℚ) / 2⌋.toNat 56)

end

end A361338.P12830044282010602030

noncomputable section

/-- A361338: Number of different single-digit numbers that can be reached from n by any permissible sequence of split-and-multiply operations.

Offset 0, canonical program `A361338.P12830044282010602030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A361338 (n : ℕ) : ℤ :=
  A361338.P12830044282010602030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A361338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361743.P17164138405407850184

`A028310(n)*A123164(n)`
-/

namespace A361743.P17164138405407850184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A123164 n

end

end A361743.P17164138405407850184

noncomputable section

/-- A361743: Central circular Delannoy numbers: a(n) is the number of Delannoy loops on an n X n toroidal grid.

Offset 0, canonical program `A361743.P17164138405407850184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A361743 (n : ℕ) : ℤ :=
  A361743.P17164138405407850184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A361743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362625.P11895608257886230771

`A161680(n+1)-A094471(n+1)`
-/

namespace A362625.P11895608257886230771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1) - A094471 (n + 1)

end

end A362625.P11895608257886230771

noncomputable section

/-- A362625: a(n) = Sum_{k not divides n - k, 0 <= k < n} k.

Offset 1, canonical program `A362625.P11895608257886230771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362625 (n : ℕ) : ℤ :=
  A362625.P11895608257886230771.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094471, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362625.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363037.P17593486041959232839

`A188169(n+1)-A188171(n+1)`
-/

namespace A363037.P17593486041959232839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188169 (n + 1) - A188171 (n + 1)

end

end A363037.P17593486041959232839

noncomputable section

/-- A363037: Expansion of Sum_{k>0} x^k / (1 + x^(4*k)).

Offset 1, canonical program `A363037.P17593486041959232839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363037 (n : ℕ) : ℤ :=
  A363037.P17593486041959232839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364104.P2487504402797724395

`A363929(5*n+4)`
-/

namespace A364104.P2487504402797724395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (5 * n + 4)

end

end A364104.P2487504402797724395

noncomputable section

/-- A364104: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-1)).

Offset 1, canonical program `A364104.P2487504402797724395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364104 (n : ℕ) : ℤ :=
  A364104.P2487504402797724395.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364105.P2405935194596214916

`A363929(A016885(n))`
-/

namespace A364105.P2405935194596214916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (A016885 n).toNat

end

end A364105.P2405935194596214916

noncomputable section

/-- A364105: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(5*k-1)).

Offset 1, canonical program `A364105.P2405935194596214916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364105 (n : ℕ) : ℤ :=
  A364105.P2405935194596214916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364106.P16744151301019870473

`A363929(5*n+2)`
-/

namespace A364106.P16744151301019870473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (5 * n + 2)

end

end A364106.P16744151301019870473

noncomputable section

/-- A364106: Expansion of Sum_{k>0} k * x^(3*k) / (1 - x^(5*k-1)).

Offset 1, canonical program `A364106.P16744151301019870473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364106 (n : ℕ) : ℤ :=
  A364106.P16744151301019870473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364107.P1517337436535911303

`A363929(5*n+1)`
-/

namespace A364107.P1517337436535911303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (5 * n + 1)

end

end A364107.P1517337436535911303

noncomputable section

/-- A364107: Expansion of Sum_{k>0} k * x^(4*k) / (1 - x^(5*k-1)).

Offset 1, canonical program `A364107.P1517337436535911303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364107 (n : ℕ) : ℤ :=
  A364107.P1517337436535911303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364307.P8166646294760291665

`∩[A006073(n+1), A074851(n+1)]`
-/

namespace A364307.P8166646294760291665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364307.P8166646294760291665

noncomputable section

/-- A364307: Numbers k such that k, k+1 and k+2 have exactly 2 distinct prime factors.

Offset 1, canonical program `A364307.P8166646294760291665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A364307 (n : ℕ) : ℤ :=
  (A364307.P8166646294760291665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A364307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364834.P5622700448256645935

`∑[(n+1)%A370566(n+1)]`
-/

namespace A364834.P5622700448256645935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A370566 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364834.P5622700448256645935

noncomputable section

/-- A364834: Sum of positive integers <= n which are multiples of 2 or 5.

Offset 1, canonical program `A364834.P5622700448256645935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364834 (n : ℕ) : ℤ :=
  A364834.P5622700448256645935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365208.P1092856368353075175

`A000005(A065331(n+1))*A034444(A065330(n+1))`
-/

namespace A365208.P1092856368353075175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065331 (n + 1)).toNat * A034444 (A065330 (n + 1)).toNat

end

end A365208.P1092856368353075175

noncomputable section

/-- A365208: The number of divisors d of n such that gcd(d, n/d) is a 3-smooth number (A003586).

Offset 1, canonical program `A365208.P1092856368353075175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365208 (n : ℕ) : ℤ :=
  A365208.P1092856368353075175.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365208.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365210.P7966765262049614878

`A000005(A065330(n+1))*A034444(A065331(n+1))`
-/

namespace A365210.P7966765262049614878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065330 (n + 1)).toNat * A034444 (A065331 (n + 1)).toNat

end

end A365210.P7966765262049614878

noncomputable section

/-- A365210: The number of divisors d of n such that gcd(d, n/d) is a 5-rough number (A007310).

Offset 1, canonical program `A365210.P7966765262049614878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365210 (n : ℕ) : ℤ :=
  A365210.P7966765262049614878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365210.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366378.P2407206345280088483

`eq[A010872(n), A010872(A057889(n))]`
-/

namespace A366378.P2407206345280088483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A057889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366378.P2407206345280088483

noncomputable section

/-- A366378: Numbers k such that A057889(k) == k (mod 3), where A057889 is the bijective bit-reverse.

Offset 1, canonical program `A366378.P2407206345280088483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5799 terms. -/
def A366378 (n : ℕ) : ℤ :=
  (A366378.P2407206345280088483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5799 terms. -/
def A366378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366403.P15389599088929656846

`A099323(n)+A057427(n)`
-/

namespace A366403.P15389599088929656846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n + A057427 n

end

end A366403.P15389599088929656846

noncomputable section

/-- A366403: G.f. A(x) satisfies A(x) = (1 + x / sqrt(A(x))) / (1 - x).

Offset 0, canonical program `A366403.P15389599088929656846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A366403 (n : ℕ) : ℤ :=
  A366403.P15389599088929656846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A366403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366990.P7446816452467653986

`∑{d}[n+1, #*A293449(#)]`
-/

namespace A366990.P7446816452467653986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A293449 d

end

end A366990.P7446816452467653986

noncomputable section

/-- A366990: The sum of divisors of n that are terms of A056166.

Offset 1, canonical program `A366990.P7446816452467653986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366990 (n : ℕ) : ℤ :=
  A366990.P7446816452467653986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367512.P6814161711481593875

`A001221(n+1)-A293439(n+1)`
-/

namespace A367512.P6814161711481593875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A293439 (n + 1)

end

end A367512.P6814161711481593875

noncomputable section

/-- A367512: Number of evil exponents in the prime factorization of n.

Offset 1, canonical program `A367512.P6814161711481593875`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A293439, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367512 (n : ℕ) : ℤ :=
  A367512.P6814161711481593875.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A293439, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A367512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368980.P9473977594289059310

`∏{e}[n+1, A183063(#)]`
-/

namespace A368980.P9473977594289059310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A183063 (Nat.factorization (f1 n) p)

end

end A368980.P9473977594289059310

noncomputable section

/-- A368980: The number of exponential divisors of n that are squares (A000290).

Offset 1, canonical program `A368980.P9473977594289059310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368980 (n : ℕ) : ℤ :=
  A368980.P9473977594289059310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369306.P7838133556568546041

`∑{d}[n+1, A212793(#)*A212793((n+1)/#)]`
-/

namespace A369306.P7838133556568546041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A212793 d * A212793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369306.P7838133556568546041

noncomputable section

/-- A369306: The number of cubefree divisors d of n such that n/d is also cubefree.

Offset 1, canonical program `A369306.P7838133556568546041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369306 (n : ℕ) : ℤ :=
  A369306.P7838133556568546041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369749.P2966338414670891840

`∑{d}[n+1, A000040(#)*A061397((n+1)/#)]`
-/

namespace A369749.P2966338414670891840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369749.P2966338414670891840

noncomputable section

/-- A369749: a(n) = Sum_{p|n, p prime} p * prime(n/p).

Offset 1, canonical program `A369749.P2966338414670891840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369749 (n : ℕ) : ℤ :=
  A369749.P2966338414670891840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369934.P13862989399101401455

`log2(A369933(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369934.P13862989399101401455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A369933 (n + 2) : ℝ)

end

end A369934.P13862989399101401455

noncomputable section

/-- A369934: a(n) = log_2(A369933(n)).

Offset 2, canonical program `A369934.P13862989399101401455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369934.P13862989399101401455.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370009.P11224753345839745758

`A151800(A001748(n+1))`
-/

namespace A370009.P11224753345839745758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001748 (n + 1)).toNat

end

end A370009.P11224753345839745758

noncomputable section

/-- A370009: a(n) is the least prime greater than 3*prime(n).

Offset 1, canonical program `A370009.P11224753345839745758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001748, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370009 (n : ℕ) : ℤ :=
  A370009.P11224753345839745758.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001748, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371188.P16600339561144693768

`lt[A368712(n+1), 2]+1`
-/

namespace A371188.P16600339561144693768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368712 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A371188.P16600339561144693768

noncomputable section

/-- A371188: Indices of the squarefree numbers in the sequence of cubefree numbers.

Offset 1, canonical program `A371188.P16600339561144693768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7305 terms. -/
def A371188 (n : ℕ) : ℤ :=
  (A371188.P16600339561144693768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7305 terms. -/
def A371188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372023.P3112973141915195590

`A036453(n+1)*A099323(n)`
-/

namespace A372023.P3112973141915195590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A099323 n

end

end A372023.P3112973141915195590

noncomputable section

/-- A372023: Expansion of ( (1 + 3*x)/(1 - x) )^(1/2).

Offset 0, canonical program `A372023.P3112973141915195590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A372023 (n : ℕ) : ℤ :=
  A372023.P3112973141915195590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A372023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372035.P12237478044521497006

`A036453(n+1)*A371888(n)`
-/

namespace A372035.P12237478044521497006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A371888 n

end

end A372035.P12237478044521497006

noncomputable section

/-- A372035: G.f. A(x) satisfies A(x) = ( 1 + 4*x*A(x)/(1 - x) )^(1/2).

Offset 0, canonical program `A372035.P12237478044521497006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A372035 (n : ℕ) : ℤ :=
  A372035.P12237478044521497006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A372035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372505.P10493546541746876935

`log2(A368473(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372505.P10493546541746876935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A368473 (n + 1) : ℝ)

end

end A372505.P10493546541746876935

noncomputable section

/-- A372505: a(n) = log_2(A368473(n)).

Offset 1, canonical program `A372505.P10493546541746876935`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372505.P10493546541746876935.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372505.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372573.P2519904625794954656

`1-A234045(A065331(n+1))²`
-/

namespace A372573.P2519904625794954656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A234045 (A065331 (n + 1)).toNat ^ 2

end

end A372573.P2519904625794954656

noncomputable section

/-- A372573: a(n) = 1 if A276085(n) is a multiple of 3, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A372573.P2519904625794954656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372573 (n : ℕ) : ℤ :=
  A372573.P2519904625794954656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373153.P13043252029439132361

`A234045(A065331(n+1))`
-/

namespace A373153.P13043252029439132361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234045 (A065331 (n + 1)).toNat

end

end A373153.P13043252029439132361

noncomputable section

/-- A373153: a(n) is -1, 0, or 1 such that a(n) == A276085(n) (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373153.P13043252029439132361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373153 (n : ℕ) : ℤ :=
  A373153.P13043252029439132361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373439.P16901655103107973233

`A017667(sqrt(abs(A358272(n+1))))`
-/

namespace A373439.P16901655103107973233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017667 (SequenceMachineLib.roundAway (Real.sqrt (|A358272 (n + 1)| : ℝ))).toNat

end

end A373439.P16901655103107973233

noncomputable section

/-- A373439: Numerator of sum of reciprocals of square divisors of n.

Offset 1, canonical program `A373439.P16901655103107973233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373439 (n : ℕ) : ℤ :=
  A373439.P16901655103107973233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373575.P9664136363461684318

`record[A048671(A024619(n+1)+1)]`
-/

namespace A373575.P9664136363461684318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A024619 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373575.P9664136363461684318

noncomputable section

/-- A373575: Numbers k such that k and k-1 both have at least two distinct prime factors. First element of the n-th maximal antirun of non-prime-powers.

Offset 1, canonical program `A373575.P9664136363461684318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A373575 (n : ℕ) : ℤ :=
  A373575.P9664136363461684318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A373575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374052.P16324426234516621321

`lt[0, A374051(n+1)]+1`
-/

namespace A374052.P16324426234516621321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374052.P16324426234516621321

noncomputable section

/-- A374052: Numbers k for which A113177(k) is a multiple of 3, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A374052.P16324426234516621321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374052 (n : ℕ) : ℤ :=
  (A374052.P16324426234516621321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374093.P11725955277954229124

`C(A035187(A008574(n)), 2)`
-/

namespace A374093.P11725955277954229124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035187 (A008574 n).toNat).toNat 2

end

end A374093.P11725955277954229124

noncomputable section

/-- A374093: Number of solutions to n = x^2 + 3*x*y + y^2 with 0 < x < y.

Offset 0, canonical program `A374093.P11725955277954229124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374093 (n : ℕ) : ℤ :=
  (A374093.P11725955277954229124.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374183.P5104469556233860384

`filter[A374180(n+1), A011558(#)]`
-/

namespace A374183.P5104469556233860384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A374183.P5104469556233860384

noncomputable section

/-- A374183: Numbers k such that K(15 / k) != K((-1)^floor(k/2)*k / 15), where K(a/b) is the Kronecker symbol. Row 4 of A374188.

Offset 1, canonical program `A374183.P5104469556233860384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8004 terms. -/
def A374183 (n : ℕ) : ℤ :=
  A374183.P5104469556233860384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8004 terms. -/
def A374183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374534.P17728637451671606639

`∑[A111938(n+1)]-A111938(n+1)`
-/

namespace A374534.P17728637451671606639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A111938 (n + 1)

end

end A374534.P17728637451671606639

noncomputable section

/-- A374534: Expansion of (x/(4 * (1-x))) * d/dx(theta_3(x)^2).

Offset 0, canonical program `A374534.P17728637451671606639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374534 (n : ℕ) : ℤ :=
  A374534.P17728637451671606639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375010.P8651243061065902656

`-floor(A036263(n+1)/3)`
-/

namespace A375010.P8651243061065902656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(A036263 (n + 1) : ℚ) / 3⌋

end

end A375010.P8651243061065902656

noncomputable section

/-- A375010: a(n) = prime(n-1) - floor((prime(n-2) + prime(n-1) + prime(n)) / 3).

Offset 3, canonical program `A375010.P8651243061065902656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375010 (n : ℕ) : ℤ :=
  A375010.P8651243061065902656.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375087.P8456723521891746720

`A075526(n)-A036263(n+1)`
-/

namespace A375087.P8456723521891746720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n - A036263 (n + 1)

end

end A375087.P8456723521891746720

noncomputable section

/-- A375087: Numbers added to cumulative correction term in order for prime numbers to resemble a recursive sequence.

Offset 1, canonical program `A375087.P8456723521891746720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375087 (n : ℕ) : ℤ :=
  A375087.P8456723521891746720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375708.P8231475400569183047

`A024619(n+1)-A361102(n+1)`
-/

namespace A375708.P8231475400569183047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1) - A361102 (n + 1)

end

end A375708.P8231475400569183047

noncomputable section

/-- A375708: First differences of non-prime-powers (exclusive, so 1 is not a prime-power).

Offset 1, canonical program `A375708.P8231475400569183047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375708 (n : ℕ) : ℤ :=
  A375708.P8231475400569183047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375962.P14051908958568052838

`∩[A018252(n+1), comp[A375960(n+1)]]`
-/

namespace A375962.P14051908958568052838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A375962.P14051908958568052838

noncomputable section

/-- A375962: Numbers whose product of proper divisors is not a cube.

Offset 1, canonical program `A375962.P14051908958568052838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7193 terms. -/
def A375962 (n : ℕ) : ℤ :=
  (A375962.P14051908958568052838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7193 terms. -/
def A375962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376603.P13156490468514965856

`eq[2, A073784(n+1)+A065310(n+1)]`
-/

namespace A376603.P13156490468514965856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073784 (n + 1) + A065310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376603.P13156490468514965856

noncomputable section

/-- A376603: Points of nonzero curvature in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376603.P13156490468514965856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376603 (n : ℕ) : ℤ :=
  (A376603.P13156490468514965856.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A376603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376652.P17197450697105744310

`A065890(A049579(n+1))`
-/

namespace A376652.P17197450697105744310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (A049579 (n + 1)).toNat

end

end A376652.P17197450697105744310

noncomputable section

/-- A376652: Points of downward concavity in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376652.P17197450697105744310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A376652 (n : ℕ) : ℤ :=
  A376652.P17197450697105744310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A376652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378040.P15613936278681359725

`record[A377783(A100727(n))]`
-/

namespace A378040.P15613936278681359725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (A100727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378040.P15613936278681359725

noncomputable section

/-- A378040: Union of A377783(n) = least nonsquarefree number > prime(n).

Offset 1, canonical program `A378040.P15613936278681359725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378040 (n : ℕ) : ℤ :=
  A378040.P15613936278681359725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378135.P14945920561631951396

`A151800(n*A151800(n))`
-/

namespace A378135.P14945920561631951396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n : ℤ) * A151800 n).toNat

end

end A378135.P14945920561631951396

noncomputable section

/-- A378135: a(n) = p(n*p(n)), where p(x) = least prime > x.

Offset 0, canonical program `A378135.P14945920561631951396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378135 (n : ℕ) : ℤ :=
  A378135.P14945920561631951396.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378137.P1083240671086047846

`A151800(n²*A151800(n))`
-/

namespace A378137.P1083240671086047846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n ^ 2 : ℤ) * A151800 n).toNat

end

end A378137.P1083240671086047846

noncomputable section

/-- A378137: a(n) = p(n^2*p(n)), where p(x) is the least prime > x.

Offset 0, canonical program `A378137.P1083240671086047846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378137 (n : ℕ) : ℤ :=
  A378137.P1083240671086047846.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378535.P6218946312386172264

`(A074722(n+1)+n+1)/2`
-/

namespace A378535.P6218946312386172264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074722 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A378535.P6218946312386172264

noncomputable section

/-- A378535: Möbius transform of A378542, where A378542 is the sum of divisors d of n such that n/d has an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378535.P6218946312386172264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378535 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378535.P6218946312386172264.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378814.P9140415008619509841

`round((n+1)/(A000005(A071904(n+1))-2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378814.P9140415008619509841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000005 (A071904 (n + 1)).toNat - 2 : ℚ))

end

end A378814.P9140415008619509841

noncomputable section

/-- A378814: a(n) = round(n/(A000005(A071904(n))-2)).

Offset 1, canonical program `A378814.P9140415008619509841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A071904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378814 (n : ℕ) : ℤ :=
  A378814.P9140415008619509841.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A071904, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379054.P8796397969431837503

`Δ[A099862(n+1)]`
-/

namespace A379054.P8796397969431837503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379054.P8796397969431837503

noncomputable section

/-- A379054: a(n) = composite(2*n+2) - composite(2*n).

Offset 1, canonical program `A379054.P8796397969431837503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A379054 (n : ℕ) : ℤ :=
  A379054.P8796397969431837503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A379054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379109.P7269606756069471216

`∑{d}[n+1, A046692(#)*A336923((n+1)/#)]`
-/

namespace A379109.P7269606756069471216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A336923 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379109.P7269606756069471216

noncomputable section

/-- A379109: Dirichlet convolution of A046692 (inverse of sigma) with A336923, where A336923(n) = 1 if sigma(2n) - sigma(n) is a power of 2, otherwise 0.

Offset 1, canonical program `A379109.P7269606756069471216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379109 (n : ℕ) : ℤ :=
  A379109.P7269606756069471216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379207.P2947985908837733843

`A072055(n+1)-A046933(n+1)²`
-/

namespace A379207.P2947985908837733843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - A046933 (n + 1) ^ 2

end

end A379207.P2947985908837733843

noncomputable section

/-- A379207: a(n) = 2*prime(n+1) - (prime(n+1) - prime(n))^2.

Offset 1, canonical program `A379207.P2947985908837733843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379207 (n : ℕ) : ℤ :=
  A379207.P2947985908837733843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379405.P17696526180092176553

`A151800(A053024(n+1))`
-/

namespace A379405.P17696526180092176553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A053024 (n + 1)).toNat

end

end A379405.P17696526180092176553

noncomputable section

/-- A379405: a(n) = p((n+1)*p(n)), where p(x) = least prime > x; i.e., p = A151800.

Offset 0, canonical program `A379405.P17696526180092176553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053024, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379405 (n : ℕ) : ℤ :=
  A379405.P17696526180092176553.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053024, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380329.P8351164185332422839

`A151800((A028310(n)-1)*A151800(n))`
-/

namespace A380329.P8351164185332422839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((A028310 n - 1) * A151800 n).toNat

end

end A380329.P8351164185332422839

noncomputable section

/-- A380329: a(n) = A151800((n-1)*A151800(n)).

Offset 0, canonical program `A380329.P8351164185332422839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A380329 (n : ℕ) : ℤ :=
  A380329.P8351164185332422839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A380329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380330.P10363215935538864354

`A151800(A000040(n+1)*A151800(n+1))`
-/

namespace A380330.P10363215935538864354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000040 (n + 1) * A151800 (n + 1)).toNat

end

end A380330.P10363215935538864354

noncomputable section

/-- A380330: a(n) = A151800(prime(n)*A151800(n)).

Offset 1, canonical program `A380330.P10363215935538864354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A380330 (n : ℕ) : ℤ :=
  A380330.P10363215935538864354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A380330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380550.P7718080083690173409

`eq[A079978(n), A095808(n+1)]`
-/

namespace A380550.P7718080083690173409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380550.P7718080083690173409

noncomputable section

/-- A380550: List of numbers not of the form i + 3*j + 4*i*j for i, j >= 1.

Offset 1, canonical program `A380550.P7718080083690173409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2899 terms. -/
def A380550 (n : ℕ) : ℤ :=
  (A380550.P7718080083690173409.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2899 terms. -/
def A380550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381822.P13589790418829358810

`filter[2*n+1, A212793(#)]`
-/

namespace A381822.P13589790418829358810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j) = 1) n)

end

end A381822.P13589790418829358810

noncomputable section

/-- A381822: Odd cubefree numbers: odd numbers that are not divisible by any cube greater than 1.

Offset 1, canonical program `A381822.P13589790418829358810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9508 terms. -/
def A381822 (n : ℕ) : ℤ :=
  (A381822.P13589790418829358810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9508 terms. -/
def A381822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381823.P9333839630862203631

`filter[A053850(n+1), A212793(#)]`
-/

namespace A381823.P9333839630862203631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A381823.P9333839630862203631

noncomputable section

/-- A381823: Odd cubefree numbers that are not squarefree.

Offset 1, canonical program `A381823.P9333839630862203631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7009 terms. -/
def A381823 (n : ℕ) : ℤ :=
  A381823.P9333839630862203631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7009 terms. -/
def A381823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382415.P7885958803409723842

`comp[A023721(n+1)]`
-/

namespace A382415.P7885958803409723842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382415.P7885958803409723842

noncomputable section

/-- A382415: Numbers with at least one zero in their base-5 representation.

Offset 1, canonical program `A382415.P7885958803409723842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382415 (n : ℕ) : ℤ :=
  (A382415.P7885958803409723842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382489.P8206433590181445063

`A034444(A355582(n+1))`
-/

namespace A382489.P8206433590181445063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A355582 (n + 1)).toNat

end

end A382489.P8206433590181445063

noncomputable section

/-- A382489: The number of unitary 5-smooth divisors of n.

Offset 1, canonical program `A382489.P8206433590181445063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382489 (n : ℕ) : ℤ :=
  A382489.P8206433590181445063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382489.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382983.P16864973918105220280

`A004525(A282849(n+1))`
-/

namespace A382983.P16864973918105220280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A282849 (n + 1)).toNat

end

end A382983.P16864973918105220280

noncomputable section

/-- A382983: a(n) is the number of solutions to n = x*y in positive integers x <= y where x + y is prime.

Offset 1, canonical program `A382983.P16864973918105220280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382983 (n : ℕ) : ℤ :=
  A382983.P16864973918105220280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383242.P14757656710033611047

`A383241(n+1)+2`
-/

namespace A383242.P14757656710033611047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383241 (n + 1) + 2

end

end A383242.P14757656710033611047

noncomputable section

/-- A383242: a(n) = p(n)*p(n+1)*(p(n+1) - p(n)) + 1, where p(n) = prime(n).

Offset 1, canonical program `A383242.P14757656710033611047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A383241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383242 (n : ℕ) : ℤ :=
  A383242.P14757656710033611047.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A383241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383278.P11664526587919339867

`∑[A383277(n+1)]`
-/

namespace A383278.P11664526587919339867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383278.P11664526587919339867

noncomputable section

/-- A383278: The number of integers k such that A034444(k) * k <= n.

Offset 1, canonical program `A383278.P11664526587919339867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383278 (n : ℕ) : ℤ :=
  A383278.P11664526587919339867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384039.P10188407723644566643

`∑{d}[n+1, A074722(#)*A368248((n+1)/#)]`
-/

namespace A384039.P10188407723644566643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A368248 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384039.P10188407723644566643

noncomputable section

/-- A384039: The number of integers k from 1 to n such that gcd(n,k) is a powerful number.

Offset 1, canonical program `A384039.P10188407723644566643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384039 (n : ℕ) : ℤ :=
  A384039.P10188407723644566643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385186.P4786045568556836293

`2*A147846(n+1)`
-/

namespace A385186.P4786045568556836293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147846 (n + 1)

end

end A385186.P4786045568556836293

noncomputable section

/-- A385186: Oblong numbers of the form k*(k + 1) such that at least one of k and k + 1 is prime.

Offset 1, canonical program `A385186.P4786045568556836293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385186 (n : ℕ) : ℤ :=
  A385186.P4786045568556836293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385349.P6182123105730510131

`gcd(A007956(n+1), A136655(n+1))`
-/

namespace A385349.P6182123105730510131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007956 (n + 1)) (A136655 (n + 1))

end

end A385349.P6182123105730510131

noncomputable section

/-- A385349: Product of odd proper divisors of n.

Offset 1, canonical program `A385349.P6182123105730510131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A385349 (n : ℕ) : ℤ :=
  (A385349.P6182123105730510131.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A385349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385640.P9288820387589926577

`filter[A385656(n+1), A188641(#)]`
-/

namespace A385640.P9288820387589926577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A385640.P9288820387589926577

noncomputable section

/-- A385640: Numbers k such that the sum of the digits of k divides k and the sum of the digits of k^2 divides k^2.

Offset 1, canonical program `A385640.P9288820387589926577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A385640 (n : ℕ) : ℤ :=
  A385640.P9288820387589926577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A385640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386013.P6399974458162219242

`(n+1)*A386012(n+1)`
-/

namespace A386013.P6399974458162219242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386012 (n + 1)

end

end A386013.P6399974458162219242

noncomputable section

/-- A386013: a(n) = n^4*tau(n).

Offset 1, canonical program `A386013.P6399974458162219242`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A386012, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386013 (n : ℕ) : ℤ :=
  A386013.P6399974458162219242.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A386012, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386596.P2721160456246764298

`∑{d}[n+1, A333699(#)]`
-/

namespace A386596.P2721160456246764298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A333699 d

end

end A386596.P2721160456246764298

noncomputable section

/-- A386596: a(n) = Sum_{d|n} d * pi(n/d).

Offset 1, canonical program `A386596.P2721160456246764298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386596 (n : ℕ) : ℤ :=
  A386596.P2721160456246764298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387335.P18233147024188934057

`∪[A024619(n+1), A000123(n)]`
-/

namespace A387335.P18233147024188934057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P18233147024188934057

noncomputable section

/-- A387335: 1, 2, 4, along with numbers divisible by at least two distinct primes.

Offset 1, canonical program `A387335.P18233147024188934057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387335 (n : ℕ) : ℤ :=
  (A387335.P18233147024188934057.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389115.P8667954685780618499

`A104629(n)-A114495(n+1)`
-/

namespace A389115.P8667954685780618499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104629 n - A114495 (n + 1)

end

end A389115.P8667954685780618499

noncomputable section

/-- A389115: Expansion of g^3/(1 + x*g)^2, where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A389115.P8667954685780618499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A389115 (n : ℕ) : ℤ :=
  A389115.P8667954685780618499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A389115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389836.P17345097124898425646

`log2(A278908(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389836.P17345097124898425646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A278908 (n + 1) : ℝ)

end

end A389836.P17345097124898425646

noncomputable section

/-- A389836: a(n) = log_2(A278908(n)).

Offset 1, canonical program `A389836.P17345097124898425646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389836 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389836.P17345097124898425646.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389836.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390289.P3249589091214432495

`∩[A004709(n+1), A024619(n+1)]`
-/

namespace A390289.P3249589091214432495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390289.P3249589091214432495

noncomputable section

/-- A390289: Cubefree numbers that are not prime powers.

Offset 1, canonical program `A390289.P3249589091214432495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8106 terms. -/
def A390289 (n : ℕ) : ℤ :=
  (A390289.P3249589091214432495.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8106 terms. -/
def A390289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390582.P9712316944901875088

`A033879(n+1)/A009194(n+1)`
-/

namespace A390582.P9712316944901875088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A390582.P9712316944901875088

noncomputable section

/-- A390582: a(n) = (2*n - sigma(n))/gcd(n, sigma(n)).

Offset 1, canonical program `A390582.P9712316944901875088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390582 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390582.P9712316944901875088.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390582.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390808.P15368856780448354872

`∑{d}[n+1, A125287(#)*A351600((n+1)/#)]`
-/

namespace A390808.P15368856780448354872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A125287 d * A351600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390808.P15368856780448354872

noncomputable section

/-- A390808: The sum of the integers k from 1 to n such that gcd(n, k) is a square.

Offset 1, canonical program `A390808.P15368856780448354872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390808 (n : ℕ) : ℤ :=
  A390808.P15368856780448354872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391804.P2522922692948596025

`A151800(A006094(n+1))`
-/

namespace A391804.P2522922692948596025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006094 (n + 1)).toNat

end

end A391804.P2522922692948596025

noncomputable section

/-- A391804: a(n) = least prime greater than prime(n)*prime(n+1).

Offset 1, canonical program `A391804.P2522922692948596025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391804 (n : ℕ) : ℤ :=
  A391804.P2522922692948596025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006094, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392014.P1818538271184462039

`A278908(A138302(n+1))`
-/

namespace A392014.P1818538271184462039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (A138302 (n + 1)).toNat

end

end A392014.P1818538271184462039

noncomputable section

/-- A392014: The number of exponential unitary divisors of the exponentially-2^n numbers.

Offset 1, canonical program `A392014.P1818538271184462039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392014 (n : ℕ) : ℤ :=
  A392014.P1818538271184462039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392034.P3707045700656422187

`A291463(n+1)/2`
-/

namespace A392034.P3707045700656422187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291463 (n + 1) : ℚ) / 2

end

end A392034.P3707045700656422187

noncomputable section

/-- A392034: a(n) = prime(n)*(prime(n+1) - prime(n))/2.

Offset 1, canonical program `A392034.P3707045700656422187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392034 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392034.P3707045700656422187.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A291463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392341.P17720603421166545301

`A370905(n+1)-A000196(n+1)`
-/

namespace A392341.P17720603421166545301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370905 (n + 1) - A000196 (n + 1)

end

end A392341.P17720603421166545301

noncomputable section

/-- A392341: Number of pairs (x, y) with 1 <= x < y <= n such that gcd(x, y) is a perfect square.

Offset 1, canonical program `A392341.P17720603421166545301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392341 (n : ℕ) : ℤ :=
  A392341.P17720603421166545301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392359.P2113602717843569055

`(n+1)/A087267(n+1)`
-/

namespace A392359.P2113602717843569055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A087267 (n + 1) : ℚ)

end

end A392359.P2113602717843569055

noncomputable section

/-- A392359: Denominators of the reduced fractions of the ratios of the number of primes less than n over n.

Offset 1, canonical program `A392359.P2113602717843569055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392359 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392359.P2113602717843569055.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392630.P18032150745144184290

`∏{e}[(n+1)/∏{p}[n+1, #], A060236(#)]`
-/

namespace A392630.P18032150745144184290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A060236 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A392630.P18032150745144184290

noncomputable section

/-- A392630: The number of exponential divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A392630.P18032150745144184290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392630 (n : ℕ) : ℤ :=
  A392630.P18032150745144184290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395817.P11063103629399214891

`A135210(n+1)+1`
-/

namespace A395817.P11063103629399214891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (n + 1) + 1

end

end A395817.P11063103629399214891

noncomputable section

/-- A395817: Strictly increasing minimal sequence where consecutive terms can be added digit-by-digit without carrying in base 10.

Offset 1, canonical program `A395817.P11063103629399214891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A395817 (n : ℕ) : ℤ :=
  A395817.P11063103629399214891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A395817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396548.P9291011898899936861

`A005361(n+1)-A278908(n+1)`
-/

namespace A396548.P9291011898899936861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - A278908 (n + 1)

end

end A396548.P9291011898899936861

noncomputable section

/-- A396548: The number of coreful divisors of n that are not exponential unitary divisors of n.

Offset 1, canonical program `A396548.P9291011898899936861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396548 (n : ℕ) : ℤ :=
  A396548.P9291011898899936861.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A396548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396571.P6988239857056960462

`(A071904(n+1)+A071904(n+2))/2`
-/

namespace A396571.P6988239857056960462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071904 (n + 1) + A071904 (n + 2) : ℚ) / 2

end

end A396571.P6988239857056960462

noncomputable section

/-- A396571: Averages of adjacent odd composite numbers.

Offset 1, canonical program `A396571.P6988239857056960462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396571 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396571.P6988239857056960462.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397645.P309890179960751511

`∑{d}[n+1, A358380(#)]`
-/

namespace A397645.P309890179960751511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358380 d

end

end A397645.P309890179960751511

noncomputable section

/-- A397645: Multiplicative with a(p^e) = (e+1)*(e+2)*(5*e+3)/6.

Offset 1, canonical program `A397645.P309890179960751511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397645 (n : ℕ) : ℤ :=
  A397645.P309890179960751511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397754.P18151342160138794166

`∩[A209932(n+1), A259315(n+1)]`
-/

namespace A397754.P18151342160138794166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397754.P18151342160138794166

noncomputable section

/-- A397754: Numbers that don't contain digit 0 but have a divisor that does.

Offset 1, canonical program `A397754.P18151342160138794166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3190 terms. -/
def A397754 (n : ℕ) : ℤ :=
  (A397754.P18151342160138794166.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3190 terms. -/
def A397754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398169.P3202459588062377713

`filter[A367695(n+1), A212793(#)]`
-/

namespace A398169.P3202459588062377713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A398169.P3202459588062377713

noncomputable section

/-- A398169: Squarefree numbers k such that k+1 is an exponentially odd number.

Offset 1, canonical program `A398169.P3202459588062377713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8348 terms. -/
def A398169 (n : ℕ) : ℤ :=
  A398169.P3202459588062377713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8348 terms. -/
def A398169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320900.P17696305435880861285

`A000593(n+1)+A050999(n+1)-(A000203(n+1)+A001157(n+1))/2`
-/

namespace A320900.P17696305435880861285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) + A050999 (n + 1) : ℚ) - (A000203 (n + 1) + A001157 (n + 1) : ℚ) / 2

end

end A320900.P17696305435880861285

noncomputable section

/-- A320900: Expansion of Sum_{k>=1} x^k/(1 + x^k)^3.

Offset 1, canonical program `A320900.P17696305435880861285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A050999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320900.P17696305435880861285.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A050999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320900.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320901.P2796526842798435949

`(4*A000593(n+1)+6*A050999(n+1)+2*A051000(n+1)-2*A000203(n+1)-3*A001157(n+1)-A001158(n+1))/6`
-/

namespace A320901.P2796526842798435949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A000593 (n + 1) + 6 * A050999 (n + 1) + 2 * A051000 (n + 1) - 2 * A000203 (n + 1) - 3 * A001157 (n + 1) - A001158 (n + 1) : ℚ) / 6

end

end A320901.P2796526842798435949

noncomputable section

/-- A320901: Expansion of Sum_{k>=1} x^k/(1 + x^k)^4.

Offset 1, canonical program `A320901.P2796526842798435949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, A050999, A051000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320901.P2796526842798435949.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, A050999, A051000, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320941.P11750252740358871811

`(A000203(n+1)+3*A001157(n+1)+2*A001158(n+1))/6`
-/

namespace A320941.P11750252740358871811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + 3 * A001157 (n + 1) + 2 * A001158 (n + 1) : ℚ) / 6

end

end A320941.P11750252740358871811

noncomputable section

/-- A320941: Expansion of Sum_{k>=1} x^k*(1 + x^k)/(1 - x^k)^4.

Offset 1, canonical program `A320941.P11750252740358871811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320941.P11750252740358871811.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321826.P12390080085549705837

`Δ[xor(n, 2*n)]%2*A321834((n+1)/2^val(n+1, 2))`
-/

namespace A321826.P12390080085549705837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 * A321834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A321826.P12390080085549705837

noncomputable section

/-- A321826: a(n) = Sum_{d|n, d==1 mod 4} d^10 - Sum_{d|n, d==3 mod 4} d^10.

Offset 1, canonical program `A321826.P12390080085549705837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321826 (n : ℕ) : ℤ :=
  A321826.P12390080085549705837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322812.P11194875774676953615

`A001221(A048675(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322812.P11194875774676953615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048675 (n + 2)).toNat

end

end A322812.P11194875774676953615

noncomputable section

/-- A322812: a(n) = A001221(A048675(n)).

Offset 2, canonical program `A322812.P11194875774676953615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322812 (n : ℕ) : ℤ :=
  A322812.P11194875774676953615.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322821.P8922676155250871452

`A048675(n+1)/gcd(A000079(n), A048675(n+1))`
-/

namespace A322821.P8922676155250871452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048675 (n + 1) : ℚ) / (Int.gcd (A000079 n) (A048675 (n + 1)) : ℚ)

end

end A322821.P8922676155250871452

noncomputable section

/-- A322821: a(1) = 0; for n > 1, a(n) = A000265(A048675(n)).

Offset 1, canonical program `A322821.P8922676155250871452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A322821 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322821.P8922676155250871452.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A322821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322869.P13858766443451224919

`A000120(A048675(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322869.P13858766443451224919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048675 (n + 1)).toNat

end

end A322869.P13858766443451224919

noncomputable section

/-- A322869: a(n) = A000120(A048675(n)).

Offset 1, canonical program `A322869.P13858766443451224919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322869 (n : ℕ) : ℤ :=
  A322869.P13858766443451224919.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322869.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323741.P16006173371429215656

`A049711(A016754(n+1))`
-/

namespace A323741.P16006173371429215656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A016754 (n + 1)).toNat

end

end A323741.P16006173371429215656

noncomputable section

/-- A323741: a(n) = m-p where m = (2n+1)^2 and p is the largest prime < m.

Offset 1, canonical program `A323741.P16006173371429215656`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323741 (n : ℕ) : ℤ :=
  A323741.P16006173371429215656.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323741.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324286.P15965892089874497265

`A002487(A048675(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324286.P15965892089874497265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A048675 (n + 1)).toNat

end

end A324286.P15965892089874497265

noncomputable section

/-- A324286: a(n) = A002487(A048675(n)).

Offset 1, canonical program `A324286.P15965892089874497265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324286 (n : ℕ) : ℤ :=
  A324286.P15965892089874497265.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327303.P4551057521544503163

`(A268922(n)+A048899(n))%A000351(n)`
-/

namespace A327303.P4551057521544503163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268922 n + A048899 n) (A000351 n)

end

end A327303.P4551057521544503163

noncomputable section

/-- A327303: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-9). This is the 4 (mod 5) case (except for n = 0).

Offset 0, canonical program `A327303.P4551057521544503163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A327303 (n : ℕ) : ℤ :=
  A327303.P4551057521544503163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A327303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327972.P3607971557437902118

`xor(A038184(n), A110240(n))`
-/

namespace A327972.P3607971557437902118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038184 n) (A110240 n)

end

end A327972.P3607971557437902118

noncomputable section

/-- A327972: Bitwise XOR of trajectories of rule 30 and rule 150, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A038184(n).

Offset 0, canonical program `A327972.P3607971557437902118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A327972 (n : ℕ) : ℤ :=
  A327972.P3607971557437902118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A327972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327973.P1696469239648925767

`xor(2*A110240(n), A110240(n+1))`
-/

namespace A327973.P1696469239648925767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A110240 n) (A110240 (n + 1))

end

end A327973.P1696469239648925767

noncomputable section

/-- A327973: Bitwise XOR of two successive generations (centrally aligned) in the trajectory of rule 30 started from a lone 1 cell: a(n) = A110240(n) XOR 2*A110240(n-1).

Offset 1, canonical program `A327973.P1696469239648925767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A327973 (n : ℕ) : ℤ :=
  A327973.P1696469239648925767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A327973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328104.P17298012771272886420

`A163617(A110240(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328104.P17298012771272886420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A110240 n).toNat

end

end A328104.P17298012771272886420

noncomputable section

/-- A328104: a(n) = A163617(A110240(n)) = A110240(n) OR 2*A110240(n).

Offset 0, canonical program `A328104.P17298012771272886420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328104 (n : ℕ) : ℤ :=
  A328104.P17298012771272886420.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328104.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A328490.P16825988426646783064

`∑{d}[n+1, A001157((n+1)/#)*A001157(#)]`
-/

namespace A328490.P16825988426646783064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A001157 d

end

end A328490.P16825988426646783064

noncomputable section

/-- A328490: Dirichlet g.f.: zeta(s)^2 * zeta(s-2)^2.

Offset 1, canonical program `A328490.P16825988426646783064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328490 (n : ℕ) : ℤ :=
  A328490.P16825988426646783064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329402.P5940628190842439666

`A038548(4*(n+1)²)`
-/

namespace A329402.P5940628190842439666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (4 * (n + 1) ^ 2)

end

end A329402.P5940628190842439666

noncomputable section

/-- A329402: Number of rectangles (w X h, w <= h) with integer side lengths w and h having area = n * perimeter.

Offset 1, canonical program `A329402.P5940628190842439666`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329402 (n : ℕ) : ℤ :=
  A329402.P5940628190842439666.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329586.P2238239881953716898

`(A057427(n)+1)*A086669(n+1)`
-/

namespace A329586.P2238239881953716898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A086669 (n + 1)

end

end A329586.P2238239881953716898

noncomputable section

/-- A329586: Row lengths of A329585: number of solutions of the congruences x^2 == +1 (mod n) or (inclusive) x^2 == -1 (mod n), for n >= 1.

Offset 1, canonical program `A329586.P2238239881953716898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329586 (n : ℕ) : ℤ :=
  A329586.P2238239881953716898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329929.P12316207208201997715

`A336723(n+1)/A336722(n+1)`
-/

namespace A329929.P12316207208201997715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336723 (n + 1) : ℚ) / (A336722 (n + 1) : ℚ)

end

end A329929.P12316207208201997715

noncomputable section

/-- A329929: a(n) = lcm(tau(n), sigma(n), pod(n)) / gcd(tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A329929.P12316207208201997715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336722, A336723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329929 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A329929.P12316207208201997715.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336722, A336723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331079.P2155090531484907639

`∑[A038548(n+1)*A038548(n+2)]`
-/

namespace A331079.P2155090531484907639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) * A038548 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331079.P2155090531484907639

noncomputable section

/-- A331079: a(n) = Sum_{i=1..n} u_2(i)*u_2(i+1), where u_2(n) = A038548(n).

Offset 1, canonical program `A331079.P2155090531484907639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331079 (n : ℕ) : ℤ :=
  A331079.P2155090531484907639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331750.P157088168861994408

`A048675(A000203(n+1))`
-/

namespace A331750.P157088168861994408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A000203 (n + 1)).toNat

end

end A331750.P157088168861994408

noncomputable section

/-- A331750: a(n) = A048675(sigma(n)).

Offset 1, canonical program `A331750.P157088168861994408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331750 (n : ℕ) : ℤ :=
  A331750.P157088168861994408.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A331750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332813.P5944924483194597877

`A010872(A048675(n+1))`
-/

namespace A332813.P5944924483194597877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A048675 (n + 1)).toNat

end

end A332813.P5944924483194597877

noncomputable section

/-- A332813: a(n) = A048675(n) mod 3.

Offset 1, canonical program `A332813.P5944924483194597877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332813 (n : ℕ) : ℤ :=
  A332813.P5944924483194597877.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332823.P6707942267644391447

`A102283(A048675(n+1))`
-/

namespace A332823.P6707942267644391447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A048675 (n + 1)).toNat

end

end A332823.P6707942267644391447

noncomputable section

/-- A332823: A 3-way classification indicator generated by the products of two consecutive primes and the cubes of primes. a(n) is -1, 0, or 1 such that a(n) == A048675(n) (mod 3).

Offset 1, canonical program `A332823.P6707942267644391447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332823 (n : ℕ) : ℤ :=
  A332823.P6707942267644391447.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332823.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A333199.P5004072551827767386

`p?[A049441(n+1)+1]`
-/

namespace A333199.P5004072551827767386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049441 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333199.P5004072551827767386

noncomputable section

/-- A333199: Primes in A180646.

Offset 1, canonical program `A333199.P5004072551827767386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1256 terms. -/
def A333199 (n : ℕ) : ℤ :=
  A333199.P5004072551827767386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1256 terms. -/
def A333199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335328.P9024646742360157798

`∩[A048109(n+1)-1, A048109(n+1)]`
-/

namespace A335328.P9024646742360157798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335328.P9024646742360157798

noncomputable section

/-- A335328: Number k such that both k and k+1 have an equal number of unitary and nonunitary divisors.

Offset 1, canonical program `A335328.P9024646742360157798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A335328 (n : ℕ) : ℤ :=
  (A335328.P9024646742360157798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A335328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335402.P11597769619180646528

`A185013(n)+A158611(n+1)`
-/

namespace A335402.P11597769619180646528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 n + A158611 (n + 1)

end

end A335402.P11597769619180646528

noncomputable section

/-- A335402: Numbers m such that the only normal integer partition of m whose run-lengths are a palindrome is (1)^m.

Offset 1, canonical program `A335402.P11597769619180646528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335402 (n : ℕ) : ℤ :=
  A335402.P11597769619180646528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335647.P9265258860300362603

`A000260(n)*A060544(n+1)`
-/

namespace A335647.P9265258860300362603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 n * A060544 (n + 1)

end

end A335647.P9265258860300362603

noncomputable section

/-- A335647: a(n) = binomial(4*n+1,n+1).

Offset 0, canonical program `A335647.P9265258860300362603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A335647 (n : ℕ) : ℤ :=
  A335647.P9265258860300362603.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A335647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336415.P15157755128090898253

`A048675(n)+a(n-1)` with `a(0)=1`
-/

namespace A336415.P15157755128090898253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048675 n + a (n - 1)

end

end A336415.P15157755128090898253

noncomputable section

/-- A336415: Number of divisors of n! with equal prime multiplicities.

Offset 0, canonical program `A336415.P15157755128090898253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A336415 (n : ℕ) : ℤ :=
  A336415.P15157755128090898253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A336415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337156.P7925351017222445069

`A008784(eq[1, A008784(n+2)-A008784(n+1)]+1)`
-/

namespace A337156.P7925351017222445069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2) - A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A337156.P7925351017222445069

noncomputable section

/-- A337156: Numbers k such that the k-th triangular number has all its prime factors congruent to 1 mod 4.

Offset 1, canonical program `A337156.P7925351017222445069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A337156 (n : ℕ) : ℤ :=
  A337156.P7925351017222445069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A337156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337175.P3535412205708800651

`A337174(n+1)-A038548(n+1)`
-/

namespace A337175.P3535412205708800651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337174 (n + 1) - A038548 (n + 1)

end

end A337175.P3535412205708800651

noncomputable section

/-- A337175: Number of pairs of divisors of n, (d1,d2), such that d1 <= d2 and d1*d2 < n.

Offset 1, canonical program `A337175.P3535412205708800651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, A337174, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337175 (n : ℕ) : ℤ :=
  A337175.P3535412205708800651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, A337174, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337175.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338090.P15372758782362634063

`comp[A037477(n)]%A000969(2*n+3)`
-/

namespace A338090.P15372758782362634063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A000969 (2 * n + 3))

end

end A338090.P15372758782362634063

noncomputable section

/-- A338090: Numbers having at least one 8 in their representation in base 9.

Offset 1, canonical program `A338090.P15372758782362634063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A338090 (n : ℕ) : ℤ :=
  A338090.P15372758782362634063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A338090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338164.P17006398966591208624

`∑{d}[n+1, A007427(#)*A034714((n+1)/#)]`
-/

namespace A338164.P17006398966591208624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034714 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338164.P17006398966591208624

noncomputable section

/-- A338164: Dirichlet g.f.: (zeta(s-2) / zeta(s))^2.

Offset 1, canonical program `A338164.P17006398966591208624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338164 (n : ℕ) : ℤ :=
  A338164.P17006398966591208624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338361.P5965664958947979086

`A369610(n+1)+Δ[n²]`
-/

namespace A338361.P5965664958947979086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369610 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A338361.P5965664958947979086

noncomputable section

/-- A338361: Indices of primes in A283312.

Offset 1, canonical program `A338361.P5965664958947979086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7099 terms. -/
def A338361 (n : ℕ) : ℤ :=
  A338361.P5965664958947979086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7099 terms. -/
def A338361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338521.P3726486366841375083

`A230980(n)-A230980(∑[A005171(n+1)])`
-/

namespace A338521.P3726486366841375083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A230980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338521.P3726486366841375083

noncomputable section

/-- A338521: The number of primes between n-primepi(n) and n.

Offset 1, canonical program `A338521.P3726486366841375083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338521 (n : ℕ) : ℤ :=
  A338521.P3726486366841375083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339370.P8095257519437507950

`(n+1)*A002541(n+1)-A153485(n+1)`
-/

namespace A339370.P8095257519437507950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002541 (n + 1) - A153485 (n + 1)

end

end A339370.P8095257519437507950

noncomputable section

/-- A339370: a(n) = Sum_{k=1..floor(n/2)} (n-k) * floor((n-k)/k).

Offset 1, canonical program `A339370.P8095257519437507950`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002541, A153485, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339370 (n : ℕ) : ℤ :=
  A339370.P8095257519437507950.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002541, A153485, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A339370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342350.P14229369727761926340

`A139506(gcd(n, n+1)+1)^3+n`
-/

namespace A342350.P14229369727761926340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139506 (Nat.gcd n (n + 1) + 1) ^ 3 + (n : ℤ)

end

end A342350.P14229369727761926340

noncomputable section

/-- A342350: Numbers k such that lcm(1,2,3,...,k)/21 equals the denominator of the k-th harmonic number H(k).

Offset 1, canonical program `A342350.P14229369727761926340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342350 (n : ℕ) : ℤ :=
  A342350.P14229369727761926340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346759.P7376657440773786324

`(A001157(n+1)-A001227(n+1))/4`
-/

namespace A346759.P7376657440773786324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) - A001227 (n + 1) : ℚ) / 4

end

end A346759.P7376657440773786324

noncomputable section

/-- A346759: a(n) = Sum_{d|n} floor(d^2/4).

Offset 1, canonical program `A346759.P7376657440773786324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346759 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346759.P7376657440773786324.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349005.P15599194683630198262

`A060866(n+1)+A038548(n+1)`
-/

namespace A349005.P15599194683630198262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) + A038548 (n + 1)

end

end A349005.P15599194683630198262

noncomputable section

/-- A349005: a(n) = Sum_{d|n, d^2>=n} 1+d+n/d.

Offset 1, canonical program `A349005.P15599194683630198262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, A060866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349005 (n : ℕ) : ℤ :=
  A349005.P15599194683630198262.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, A060866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353350.P17688933372676458567

`A079978(A048675(n+1))`
-/

namespace A353350.P17688933372676458567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A048675 (n + 1)).toNat

end

end A353350.P17688933372676458567

noncomputable section

/-- A353350: a(n) = 1 if A048675(n) is a multiple of 3, otherwise 0.

Offset 1, canonical program `A353350.P17688933372676458567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353350 (n : ℕ) : ℤ :=
  A353350.P17688933372676458567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353350.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353360.P3063535457221817968

`A006047(A048675(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353360.P3063535457221817968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A048675 (n + 1)).toNat

end

end A353360.P3063535457221817968

noncomputable section

/-- A353360: a(n) = A006047(A048675(n)).

Offset 1, canonical program `A353360.P3063535457221817968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353360 (n : ℕ) : ℤ :=
  A353360.P3063535457221817968.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356345.P3854360656098395106

`∑[A000984(n+1)*A001157(n+1)]`
-/

namespace A356345.P3854360656098395106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) * A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356345.P3854360656098395106

noncomputable section

/-- A356345: a(n) = Sum_{k=1..n} binomial(2*k, k) * sigma_2(k).

Offset 1, canonical program `A356345.P3854360656098395106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A356345 (n : ℕ) : ℤ :=
  A356345.P3854360656098395106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A356345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356533.P11774335523977616474

`A001157(n+1)²`
-/

namespace A356533.P11774335523977616474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) ^ 2

end

end A356533.P11774335523977616474

noncomputable section

/-- A356533: a(n) = sigma_2(n)^2.

Offset 1, canonical program `A356533.P11774335523977616474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356533 (n : ℕ) : ℤ :=
  A356533.P11774335523977616474.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356533.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359832.P2867967108972259624

`A000035(n+1+A048675(n+1))`
-/

namespace A359832.P2867967108972259624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n + 1 : ℤ) + A048675 (n + 1)).toNat

end

end A359832.P2867967108972259624

noncomputable section

/-- A359832: a(n) = 1 if the 2-adic valuation of n is either 0 or odd, otherwise 0.

Offset 1, canonical program `A359832.P2867967108972259624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359832 (n : ℕ) : ℤ :=
  A359832.P2867967108972259624.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360429.P5562470391516954265

`∑{d}[n+1, A034714(#)]`
-/

namespace A360429.P5562470391516954265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034714 d

end

end A360429.P5562470391516954265

noncomputable section

/-- A360429: Inverse Mobius transformation of A034714.

Offset 1, canonical program `A360429.P5562470391516954265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360429 (n : ℕ) : ℤ :=
  A360429.P5562470391516954265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361063.P1577983195630285595

`∏{e}[n+1, A001157(#)]`
-/

namespace A361063.P1577983195630285595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001157 (Nat.factorization (f1 n) p)

end

end A361063.P1577983195630285595

noncomputable section

/-- A361063: Multiplicative with a(p^e) = sigma_2(e), where sigma_2 = A001157.

Offset 1, canonical program `A361063.P1577983195630285595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361063 (n : ℕ) : ℤ :=
  A361063.P1577983195630285595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361822.P6850116414336837406

`∩[A038604(n+1), A038613(n+1)]`
-/

namespace A361822.P6850116414336837406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361822.P6850116414336837406

noncomputable section

/-- A361822: Primes without {2, 5} as digits.

Offset 1, canonical program `A361822.P6850116414336837406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6069 terms. -/
def A361822 (n : ℕ) : ℤ :=
  (A361822.P6850116414336837406.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6069 terms. -/
def A361822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362030.P1231653781431482654

`A062050(A258410(n+1))`
-/

namespace A362030.P1231653781431482654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A258410 (n + 1)).toNat

end

end A362030.P1231653781431482654

noncomputable section

/-- A362030: Irregular triangle read by rows where row n contains the balanced binary words of length 2n interpreted as binary numbers.

Offset 1, canonical program `A362030.P1231653781431482654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A362030 (n : ℕ) : ℤ :=
  A362030.P1231653781431482654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A362030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369253.P11097286628827511262

`A000035(A038548(n+1))`
-/

namespace A369253.P11097286628827511262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A038548 (n + 1)).toNat

end

end A369253.P11097286628827511262

noncomputable section

/-- A369253: Parity of A038548, where A038548(n) is the number of divisors of n that are at most sqrt(n).

Offset 1, canonical program `A369253.P11097286628827511262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369253 (n : ℕ) : ℤ :=
  A369253.P11097286628827511262.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371672.P8531591036181247015

`floor(log2(A105425(n+1)))`
-/

namespace A371672.P8531591036181247015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A105425 (n + 1)).toNat

end

end A371672.P8531591036181247015

noncomputable section

/-- A371672: a(n) = floor(log_phi(n)) with phi = A001622.

Offset 1, canonical program `A371672.P8531591036181247015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371672 (n : ℕ) : ℤ :=
  (A371672.P8531591036181247015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372466.P16049166336239421302

`A051903(A036537(n+1))`
-/

namespace A372466.P16049166336239421302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A036537 (n + 1)).toNat

end

end A372466.P16049166336239421302

noncomputable section

/-- A372466: The maximal exponent in the prime factorization of the numbers whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372466.P16049166336239421302`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372466 (n : ℕ) : ℤ :=
  A372466.P16049166336239421302.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036537, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372468.P1330154070991715833

`A000005(A036537(n+1))`
-/

namespace A372468.P1330154070991715833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036537 (n + 1)).toNat

end

end A372468.P1330154070991715833

noncomputable section

/-- A372468: The number of divisors of the numbers whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372468.P1330154070991715833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A036537, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372468 (n : ℕ) : ℤ :=
  A372468.P1330154070991715833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A036537, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372690.P6818816879152483449

`A036537(record[n/Δ[A036537(n+1)]]+1)`
-/

namespace A372690.P6818816879152483449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A372690.P6818816879152483449

noncomputable section

/-- A372690: Numbers k such that k and k+1 are both numbers whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372690.P6818816879152483449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6469 terms. -/
def A372690 (n : ℕ) : ℤ :=
  A372690.P6818816879152483449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6469 terms. -/
def A372690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372691.P3029882331532059219

`∩[A175496(n+1)-1, A175496(n+1)]`
-/

namespace A372691.P3029882331532059219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372691.P3029882331532059219

noncomputable section

/-- A372691: Numbers k such that k and k+1 are both nonsquarefree numbers whose number of divisors is a power of 2 (A175496).

Offset 1, canonical program `A372691.P3029882331532059219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A372691 (n : ℕ) : ℤ :=
  (A372691.P3029882331532059219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 508 terms. -/
def A372691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373059.P5067458892054263835

`∑{d}[n+1, A034714(#)*A101035((n+1)/#)]`
-/

namespace A373059.P5067458892054263835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034714 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373059.P5067458892054263835

noncomputable section

/-- A373059: a(n) = Sum_{1 <= x_1, x_2 <= n} gcd(x_1, n)/gcd(x_1, x_2, n).

Offset 1, canonical program `A373059.P5067458892054263835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373059 (n : ℕ) : ℤ :=
  A373059.P5067458892054263835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379812.P10955070158037639960

`A000203(n+1)*A001157(n+1)`
-/

namespace A379812.P10955070158037639960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001157 (n + 1)

end

end A379812.P10955070158037639960

noncomputable section

/-- A379812: a(n) = sigma_1(n) * sigma_2(n).

Offset 1, canonical program `A379812.P10955070158037639960`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379812 (n : ℕ) : ℤ :=
  A379812.P10955070158037639960.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379814.P16691352175471226694

`A001157(n+1)*A001158(n+1)`
-/

namespace A379814.P16691352175471226694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) * A001158 (n + 1)

end

end A379814.P16691352175471226694

noncomputable section

/-- A379814: a(n) = sigma_2(n) * sigma_3(n).

Offset 1, canonical program `A379814.P16691352175471226694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379814 (n : ℕ) : ℤ :=
  A379814.P16691352175471226694.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A001158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380906.P1124574358086231309

`∩[A038611(n+1), A038613(n+1)]`
-/

namespace A380906.P1124574358086231309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380906.P1124574358086231309

noncomputable section

/-- A380906: Primes without {3, 5} as digits.

Offset 1, canonical program `A380906.P1124574358086231309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A380906 (n : ℕ) : ℤ :=
  (A380906.P1124574358086231309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A380906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381608.P6073522075897922791

`eq[A005812(n), A053735(n)]`
-/

namespace A381608.P6073522075897922791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381608.P6073522075897922791

noncomputable section

/-- A381608: Nonnegative integers whose ternary expansion does not contain pairs of 2's only separated by (zero or more) 1's, with offset 0.

Offset 0, canonical program `A381608.P6073522075897922791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381608 (n : ℕ) : ℤ :=
  (A381608.P6073522075897922791.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383276.P8145180257487964334

`filter[n+1, A383277(#)]`
-/

namespace A383276.P8145180257487964334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383277 (f1 j) = 1) n)

end

end A383276.P8145180257487964334

noncomputable section

/-- A383276: Numbers of the form A034444(k) * k.

Offset 1, canonical program `A383276.P8145180257487964334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A383276 (n : ℕ) : ℤ :=
  (A383276.P8145180257487964334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A383276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385056.P8356949584126606895

`∩[A038618(n+1), A062372(n+1)]`
-/

namespace A385056.P8356949584126606895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385056.P8356949584126606895

noncomputable section

/-- A385056: Prime numbers whose digit product is a positive cube.

Offset 1, canonical program `A385056.P8356949584126606895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A385056 (n : ℕ) : ℤ :=
  (A385056.P8356949584126606895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A385056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386032.P1209115764652298695

`∩[A160337(n+1), A386335(n+1)]`
-/

namespace A386032.P1209115764652298695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386032.P1209115764652298695

noncomputable section

/-- A386032: Primes having only {0, 1, 5, 7} as digits.

Offset 1, canonical program `A386032.P1209115764652298695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A386032 (n : ℕ) : ℤ :=
  (A386032.P1209115764652298695.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A386032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386133.P16322278265495054683

`∩[A030096(n+1), A386335(n+1)]`
-/

namespace A386133.P16322278265495054683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P16322278265495054683

noncomputable section

/-- A386133: Primes having only {1, 5, 7, 9} as digits.

Offset 1, canonical program `A386133.P16322278265495054683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A386133 (n : ℕ) : ℤ :=
  (A386133.P16322278265495054683.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A386133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386320.P14006571934998227672

`∩[A038604(n+1), A038618(n+1)]`
-/

namespace A386320.P14006571934998227672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386320.P14006571934998227672

noncomputable section

/-- A386320: Primes without {0, 2} as digits.

Offset 1, canonical program `A386320.P14006571934998227672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A386320 (n : ℕ) : ℤ :=
  (A386320.P14006571934998227672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A386320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386321.P12129189404841943891

`∩[A038611(n+1), A038618(n+1)]`
-/

namespace A386321.P12129189404841943891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386321.P12129189404841943891

noncomputable section

/-- A386321: Primes without {0, 3} as digits.

Offset 1, canonical program `A386321.P12129189404841943891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4539 terms. -/
def A386321 (n : ℕ) : ℤ :=
  (A386321.P12129189404841943891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4539 terms. -/
def A386321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386323.P16520229065117616976

`∩[A038613(n+1), A195943(n+1)]`
-/

namespace A386323.P16520229065117616976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P16520229065117616976

noncomputable section

/-- A386323: Primes without {0, 5} as digits.

Offset 1, canonical program `A386323.P16520229065117616976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6265 terms. -/
def A386323 (n : ℕ) : ℤ :=
  (A386323.P16520229065117616976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6265 terms. -/
def A386323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386324.P16760202649174605299

`∩[A038614(n+1), A038618(n+1)]`
-/

namespace A386324.P16760202649174605299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386324.P16760202649174605299

noncomputable section

/-- A386324: Primes without {0, 6} as digits.

Offset 1, canonical program `A386324.P16760202649174605299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6574 terms. -/
def A386324 (n : ℕ) : ℤ :=
  (A386324.P16760202649174605299.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6574 terms. -/
def A386324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386326.P17139648770102794594

`∩[A038616(n+1), A038618(n+1)]`
-/

namespace A386326.P17139648770102794594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386326.P17139648770102794594

noncomputable section

/-- A386326: Primes without {0, 8} as digits.

Offset 1, canonical program `A386326.P17139648770102794594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6650 terms. -/
def A386326 (n : ℕ) : ℤ :=
  (A386326.P17139648770102794594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6650 terms. -/
def A386326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386337.P5423590144065966214

`∩[A038604(n+1), A038614(n+1)]`
-/

namespace A386337.P5423590144065966214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386337.P5423590144065966214

noncomputable section

/-- A386337: Primes without {2, 6} as digits.

Offset 1, canonical program `A386337.P5423590144065966214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6055 terms. -/
def A386337 (n : ℕ) : ℤ :=
  (A386337.P5423590144065966214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6055 terms. -/
def A386337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386338.P12113303320728621064

`∩[A038604(n+1), A038616(n+1)]`
-/

namespace A386338.P12113303320728621064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386338.P12113303320728621064

noncomputable section

/-- A386338: Primes without {2, 8} as digits.

Offset 1, canonical program `A386338.P12113303320728621064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386338 (n : ℕ) : ℤ :=
  (A386338.P12113303320728621064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386341.P11111794436961837809

`∩[A038611(n+1), A038614(n+1)]`
-/

namespace A386341.P11111794436961837809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386341.P11111794436961837809

noncomputable section

/-- A386341: Primes without {3, 6} as digits.

Offset 1, canonical program `A386341.P11111794436961837809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4574 terms. -/
def A386341 (n : ℕ) : ℤ :=
  (A386341.P11111794436961837809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4574 terms. -/
def A386341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386343.P17130214579981136633

`∩[A038611(n+1), A038616(n+1)]`
-/

namespace A386343.P17130214579981136633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386343.P17130214579981136633

noncomputable section

/-- A386343: Primes without {3, 8} as digits.

Offset 1, canonical program `A386343.P17130214579981136633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386343 (n : ℕ) : ℤ :=
  (A386343.P17130214579981136633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386350.P2011497625234474322

`∩[A038613(n+1), A038614(n+1)]`
-/

namespace A386350.P2011497625234474322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386350.P2011497625234474322

noncomputable section

/-- A386350: Primes without {5, 6} as digits.

Offset 1, canonical program `A386350.P2011497625234474322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6138 terms. -/
def A386350 (n : ℕ) : ℤ :=
  (A386350.P2011497625234474322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6138 terms. -/
def A386350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386352.P14653844485856961628

`∩[A038613(n+1), A038616(n+1)]`
-/

namespace A386352.P14653844485856961628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386352.P14653844485856961628

noncomputable section

/-- A386352: Primes without {5, 8} as digits.

Offset 1, canonical program `A386352.P14653844485856961628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6176 terms. -/
def A386352 (n : ℕ) : ℤ :=
  (A386352.P14653844485856961628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6176 terms. -/
def A386352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386355.P6323683761705395638

`∩[A038614(n+1), A038616(n+1)]`
-/

namespace A386355.P6323683761705395638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386355.P6323683761705395638

noncomputable section

/-- A386355: Primes without {6, 8} as digits.

Offset 1, canonical program `A386355.P6323683761705395638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6573 terms. -/
def A386355 (n : ℕ) : ℤ :=
  (A386355.P6323683761705395638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6573 terms. -/
def A386355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389065.P446033477229377007

`filter[A052485(n+1), A005171(#)]`
-/

namespace A389065.P446033477229377007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A389065.P446033477229377007

noncomputable section

/-- A389065: Numbers that are neither prime powers nor powerful.

Offset 1, canonical program `A389065.P446033477229377007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8749 terms. -/
def A389065 (n : ℕ) : ℤ :=
  A389065.P446033477229377007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8749 terms. -/
def A389065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391958.P4973106280450321391

`A187059(n)+A187059(n)+A011371(n)`
-/

namespace A391958.P4973106280450321391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187059 n + (A187059 n + A011371 n)

end

end A391958.P4973106280450321391

noncomputable section

/-- A391958: First column of A391957.

Offset 0, canonical program `A391958.P4973106280450321391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391958 (n : ℕ) : ℤ :=
  A391958.P4973106280450321391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366960.P14113807688568308762

`eq[3, A037904(n+1)]+1`
-/

namespace A366960.P14113807688568308762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366960.P14113807688568308762

noncomputable section

/-- A366960: Numbers whose difference between the largest and smallest digits is equal to 3.

Offset 1, canonical program `A366960.P14113807688568308762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A366960 (n : ℕ) : ℤ :=
  (A366960.P14113807688568308762.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 865 terms. -/
def A366960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366961.P17753619816558675089

`eq[4, A037904(n+1)]+1`
-/

namespace A366961.P17753619816558675089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366961.P17753619816558675089

noncomputable section

/-- A366961: Numbers whose difference between the largest and smallest digits is equal to 4.

Offset 1, canonical program `A366961.P17753619816558675089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A366961 (n : ℕ) : ℤ :=
  (A366961.P17753619816558675089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A366961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366963.P13437376339825858114

`eq[6, A037904(n+1)]+1`
-/

namespace A366963.P13437376339825858114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366963.P13437376339825858114

noncomputable section

/-- A366963: Numbers whose difference between the largest and smallest digits is equal to 6.

Offset 1, canonical program `A366963.P13437376339825858114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1747 terms. -/
def A366963 (n : ℕ) : ℤ :=
  (A366963.P13437376339825858114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1747 terms. -/
def A366963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366964.P211205205802012678

`eq[7, A037904(n+1)]+1`
-/

namespace A366964.P211205205802012678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366964.P211205205802012678

noncomputable section

/-- A366964: Numbers whose difference between the largest and smallest digits is equal to 7.

Offset 1, canonical program `A366964.P211205205802012678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1717 terms. -/
def A366964 (n : ℕ) : ℤ :=
  (A366964.P211205205802012678.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1717 terms. -/
def A366964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366965.P15368654095798603801

`eq[8, A037904(n+1)]+1`
-/

namespace A366965.P15368654095798603801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366965.P15368654095798603801

noncomputable section

/-- A366965: Numbers whose difference between the largest and smallest digits is equal to 8.

Offset 1, canonical program `A366965.P15368654095798603801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. -/
def A366965 (n : ℕ) : ℤ :=
  (A366965.P15368654095798603801.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. -/
def A366965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318512.P17152244906020944566

`ceil(A299150(n+1)/A006519(n+1))`
-/

namespace A318512.P17152244906020944566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299150 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)⌉

end

end A318512.P17152244906020944566

noncomputable section

/-- A318512: Denominators (in their lowest terms) of the sequence whose Dirichlet convolution with itself yields squares (A000290), or equally A064549.

Offset 1, canonical program `A318512.P17152244906020944566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512 (n : ℕ) : ℤ :=
  A318512.P17152244906020944566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319713.P11183865929377716110

`∑{d}[n+1, A276150(#%(n+1))]`
-/

namespace A319713.P11183865929377716110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276150 (d % (n + 1))

end

end A319713.P11183865929377716110

noncomputable section

/-- A319713: Sum of A276150(d) over proper divisors d of n, where A276150 gives the sum of digits in primorial base.

Offset 1, canonical program `A319713.P11183865929377716110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319713 (n : ℕ) : ℤ :=
  A319713.P11183865929377716110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320015.P7908202895752596579

`A320001(n+1)+A320005(n+1)`
-/

namespace A320015.P7908202895752596579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (n + 1) + A320005 (n + 1)

end

end A320015.P7908202895752596579

noncomputable section

/-- A320015: Number of proper divisors of n that are either of the form 6*k+1 or 6*k + 5.

Offset 1, canonical program `A320015.P7908202895752596579`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320001, A320005, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320015 (n : ℕ) : ℤ :=
  A320015.P7908202895752596579.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A320001, A320005, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A320015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322966.P13519530522843253695

`A007947(n+1)/A008473(n+1)*A322965(n+1)`
-/

namespace A322966.P13519530522843253695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A008473 (n + 1) : ℚ) * (A322965 (n + 1) : ℚ)

end

end A322966.P13519530522843253695

noncomputable section

/-- A322966: Denominator of Sum_{d | n} 1/rad(d) where rad = A007947.

Offset 1, canonical program `A322966.P13519530522843253695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322966 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322966.P13519530522843253695.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322978.P16968695254368812252

`A322977(2*(n+1))`
-/

namespace A322978.P16968695254368812252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322977 (2 * (n + 1))

end

end A322978.P16968695254368812252

noncomputable section

/-- A322978: Number of even divisors d of 2n such that d-1 is prime.

Offset 1, canonical program `A322978.P16968695254368812252`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322978 (n : ℕ) : ℤ :=
  A322978.P16968695254368812252.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322977, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324122.P6437590254037711062

`A000203(n+1)-A324121(n+1)`
-/

namespace A324122.P6437590254037711062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A324121 (n + 1)

end

end A324122.P6437590254037711062

noncomputable section

/-- A324122: a(n) = sigma(n) - gcd(n*d(n), sigma(n)), where d(n) = number of divisors of n (A000005) and sigma(n) = sum of divisors of n (A000203).

Offset 1, canonical program `A324122.P6437590254037711062`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324122 (n : ℕ) : ℤ :=
  A324122.P6437590254037711062.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324121, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326052.P4438226606935639787

`n+1-A050452(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326052.P4438226606935639787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A050452 (n + 1)

end

end A326052.P4438226606935639787

noncomputable section

/-- A326052: a(n) = n - A050452(n), where A050452 is the sum of divisors of the form 4k+3.

Offset 1, canonical program `A326052.P4438226606935639787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326052 (n : ℕ) : ℤ :=
  A326052.P4438226606935639787.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326144.P5316826382340096579

`gcd(A033879(n+1), A066503(n+1))`
-/

namespace A326144.P5316826382340096579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033879 (n + 1)) (A066503 (n + 1))

end

end A326144.P5316826382340096579

noncomputable section

/-- A326144: a(n) = gcd(A066503(n), A326143(n)) = gcd(n - A007947(n), sigma(n) - A007947(n) - n).

Offset 1, canonical program `A326144.P5316826382340096579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326144 (n : ℕ) : ℤ :=
  (A326144.P5316826382340096579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327142.P4142766222678673659

`A327141(n+1)-A000217(n+1)`
-/

namespace A327142.P4142766222678673659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327141 (n + 1) - A000217 (n + 1)

end

end A327142.P4142766222678673659

noncomputable section

/-- A327142: a(n) is the number of different sizes of integer-sided rectangles which can be placed inside an n X n square and with length greater than n.

Offset 1, canonical program `A327142.P4142766222678673659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327141, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327142 (n : ℕ) : ℤ :=
  A327142.P4142766222678673659.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327141, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327142.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A329119.P13011440153290457078

`A007531(A246655(n+1)+1)`
-/

namespace A329119.P13011440153290457078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A246655 (n + 1) + 1).toNat

end

end A329119.P13011440153290457078

noncomputable section

/-- A329119: Orders of the finite groups SL_2(K) when K is a finite field with q = A246655(n) elements.

Offset 1, canonical program `A329119.P13011440153290457078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329119 (n : ℕ) : ℤ :=
  A329119.P13011440153290457078.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246655, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A329119.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330415.P2332703762766219287

`∑{d}[n+1, A049084(#)*A355939((n+1)/#)]`
-/

namespace A330415.P2332703762766219287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049084 d * A355939 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330415.P2332703762766219287

noncomputable section

/-- A330415: Coefficient of h(y) in Sum_{k > 0, i > 0} x_i^k = p(1) + p(2) + p(3) + ..., where h is the basis of homogeneous symmetric functions, p is the basis of power-sum symmetric functions, and y is the integer partition with Heinz number n.

Offset 1, canonical program `A330415.P2332703762766219287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330415 (n : ℕ) : ℤ :=
  A330415.P2332703762766219287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333777.P17376492726482821964

`A053644(n)+a(A030109(n))` with `a(0)=0`
-/

namespace A333777.P17376492726482821964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053644 n + a (A030109 n).toNat

end

end A333777.P17376492726482821964

noncomputable section

/-- A333777: Inverse permutation to A333776.

Offset 0, canonical program `A333777.P17376492726482821964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A333777 (n : ℕ) : ℤ :=
  A333777.P17376492726482821964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A333777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334051.P2829152517033935229

`1+A331677(n+1)`
-/

namespace A334051.P2829152517033935229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A331677 (n + 1)

end

end A334051.P2829152517033935229

noncomputable section

/-- A334051: The difference between the number of prime numbers in the ranges (1, p_n] and (p_n, 2*p_n], where p_n is the n-th prime.

Offset 1, canonical program `A334051.P2829152517033935229`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334051 (n : ℕ) : ℤ :=
  A334051.P2829152517033935229.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335135.P17570870546430476822

`A053683(n+2)-A053683(n+1)`
-/

namespace A335135.P17570870546430476822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053683 (n + 2) - A053683 (n + 1)

end

end A335135.P17570870546430476822

noncomputable section

/-- A335135: Number of composite numbers between prime(n)^2 and prime(n + 1)^2 - 1.

Offset 1, canonical program `A335135.P17570870546430476822`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335135 (n : ℕ) : ℤ :=
  A335135.P17570870546430476822.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344931.P13007748442361514407

`∑{p}[n+1, #]-A344908(n+1)`
-/

namespace A344931.P13007748442361514407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - A344908 (n + 1)

end

end A344931.P13007748442361514407

noncomputable section

/-- A344931: Sum of the distinct even-indexed prime divisors, p_{2k}, of n.

Offset 1, canonical program `A344931.P13007748442361514407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344931 (n : ℕ) : ℤ :=
  A344931.P13007748442361514407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345278.P16777163800638418964

`A344908(n+1)+A324967(n+1)`
-/

namespace A345278.P16777163800638418964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (n + 1) + A324967 (n + 1)

end

end A345278.P16777163800638418964

noncomputable section

/-- A345278: a(n) = Sum_{p|n} p^(pi(p) mod 2).

Offset 1, canonical program `A345278.P16777163800638418964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345278 (n : ℕ) : ℤ :=
  A345278.P16777163800638418964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347103.P14813398538784636058

`∑{d}[n+1, A033999(#-1)*A049084((n+1)/#)]`
-/

namespace A347103.P14813398538784636058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A049084 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347103.P14813398538784636058

noncomputable section

/-- A347103: G.f.: Sum_{k>=1} k * x^prime(k) / (1 + x^prime(k)).

Offset 1, canonical program `A347103.P14813398538784636058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347103 (n : ℕ) : ℤ :=
  A347103.P14813398538784636058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348341.P11276104296330033514

`A000005(n+1)-A037445(n+1)`
-/

namespace A348341.P11276104296330033514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A037445 (n + 1)

end

end A348341.P11276104296330033514

noncomputable section

/-- A348341: a(n) is the number of noninfinitary divisors of n.

Offset 1, canonical program `A348341.P11276104296330033514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A037445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348341 (n : ℕ) : ℤ :=
  A348341.P11276104296330033514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A037445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348510.P5400953250786089322

`A038040(n+1)/A324121(n+1)-(n+1)`
-/

namespace A348510.P5400953250786089322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A324121 (n + 1) : ℚ) - (n + 1 : ℚ)

end

end A348510.P5400953250786089322

noncomputable section

/-- A348510: a(n) = A099377(n) - n, where A099377(n) is the numerator of the harmonic mean of the divisors of n.

Offset 1, canonical program `A348510.P5400953250786089322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348510 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348510.P5400953250786089322.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348952.P11377291942820923715

`A010052(n+1)-A305152(n+1)`
-/

namespace A348952.P11377291942820923715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) - A305152 (n + 1)

end

end A348952.P11377291942820923715

noncomputable section

/-- A348952: a(n) = -Sum_{d|n, d < sqrt(n)} (-1)^(d + n/d).

Offset 1, canonical program `A348952.P11377291942820923715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A305152, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348952 (n : ℕ) : ℤ :=
  A348952.P11377291942820923715.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A305152, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351746.P13626312203566205031

`A351711(n+1)-A248577(n+1)`
-/

namespace A351746.P13626312203566205031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351711 (n + 1) - A248577 (n + 1)

end

end A351746.P13626312203566205031

noncomputable section

/-- A351746: a(n) = Sum_{p|n, p prime} (p-1) * tau(n/p).

Offset 1, canonical program `A351746.P13626312203566205031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248577, A351711, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351746 (n : ℕ) : ℤ :=
  A351746.P13626312203566205031.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248577, A351711, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352754.P7186785389553064570

`A000720(n+1)*A073837(n+1)`
-/

namespace A352754.P7186785389553064570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A073837 (n + 1)

end

end A352754.P7186785389553064570

noncomputable section

/-- A352754: a(n) = pi(n) * Sum_{n <= q < 2n, q prime} q.

Offset 1, canonical program `A352754.P7186785389553064570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A073837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352754 (n : ℕ) : ℤ :=
  A352754.P7186785389553064570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A073837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A352754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353556.P11551021480269532198

`A066829(n+1)-A353558(n+1)`
-/

namespace A353556.P11551021480269532198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) - A353558 (n + 1)

end

end A353556.P11551021480269532198

noncomputable section

/-- A353556: a(n) = 1 if n is an even number with an odd number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A353556.P11551021480269532198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A353558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353556 (n : ℕ) : ℤ :=
  A353556.P11551021480269532198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066829, A353558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353556.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354036.P7262506403534622663

`A000035(n+1)-A354035(n+1)`
-/

namespace A354036.P7262506403534622663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) - A354035 (n + 1)

end

end A354036.P7262506403534622663

noncomputable section

/-- A354036: a(n) = 1 if n is odd and sigma(n^2) == 1 (mod 4), otherwise 0.

Offset 1, canonical program `A354036.P7262506403534622663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A354035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354036 (n : ℕ) : ℤ :=
  A354036.P7262506403534622663.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A354035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356451.P11012535178385442677

`A356448(n+1)/2`
-/

namespace A356451.P11012535178385442677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356448 (n + 1) : ℚ) / 2

end

end A356451.P11012535178385442677

noncomputable section

/-- A356451: Numbers k such that 4*k^2 is in A014567.

Offset 1, canonical program `A356451.P11012535178385442677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356451 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356451.P11012535178385442677.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356454.P58692963208807662

`A356452(n+1)/2`
-/

namespace A356454.P58692963208807662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356452 (n + 1) : ℚ) / 2

end

end A356454.P58692963208807662

noncomputable section

/-- A356454: Numbers k such that 4*k^2 is not in A014567; complement of A356451.

Offset 1, canonical program `A356454.P58692963208807662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356454 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356454.P58692963208807662.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359151.P11123410445715459201

`filter[A077425(n+1), A354035(#)]`
-/

namespace A359151.P11123410445715459201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A359151.P11123410445715459201

noncomputable section

/-- A359151: Numbers of the form 4u+1 with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A359151.P11123410445715459201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5058 terms. -/
def A359151 (n : ℕ) : ℤ :=
  A359151.P11123410445715459201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5058 terms. -/
def A359151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359152.P7216444529102150674

`A353558(n+1)-A359150(n+1)`
-/

namespace A359152.P7216444529102150674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (n + 1) - A359150 (n + 1)

end

end A359152.P7216444529102150674

noncomputable section

/-- A359152: a(n) = 1 if n is a number of the form 4u+3 with an odd number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A359152.P7216444529102150674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353558, A359150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359152 (n : ℕ) : ℤ :=
  A359152.P7216444529102150674.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353558, A359150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359372.P10350618056396225445

`and(∑{e}[n+1, #], A274179(and(n, -(n+2))))`
-/

namespace A359372.P10350618056396225445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A274179 (Int.land (n : ℤ) (-(n + 2 : ℤ))).toNat)

end

end A359372.P10350618056396225445

noncomputable section

/-- A359372: a(n) = 1 if n is not a multiple of 4 and has an odd number of prime factors (with multiplicity), otherwise a(n) = 0.

Offset 1, canonical program `A359372.P10350618056396225445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359372 (n : ℕ) : ℤ :=
  A359372.P10350618056396225445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359378.P8655727792828051139

`A359170(n+1)-A359172(n+1)`
-/

namespace A359378.P8655727792828051139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359170 (n + 1) - A359172 (n + 1)

end

end A359378.P8655727792828051139

noncomputable section

/-- A359378: Dirichlet inverse of A359377, where A359377(n) = 1 if 3*n is squarefree, otherwise 0.

Offset 1, canonical program `A359378.P8655727792828051139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359170, A359172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359378 (n : ℕ) : ℤ :=
  A359378.P8655727792828051139.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359170, A359172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359381.P4166977693379255214

`lt[0, A359172(n+1)]+1`
-/

namespace A359381.P4166977693379255214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359381.P4166977693379255214

noncomputable section

/-- A359381: Nonmultiples of 3 that have an odd number of prime factors (with multiplicity).

Offset 1, canonical program `A359381.P4166977693379255214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359381 (n : ℕ) : ℤ :=
  (A359381.P4166977693379255214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359495.P14356946249672535810

`A230877(n)-A029931(n)`
-/

namespace A359495.P14356946249672535810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n - A029931 n

end

end A359495.P14356946249672535810

noncomputable section

/-- A359495: Sum of positions of 1's in binary expansion minus sum of positions of 1's in reversed binary expansion, where positions in a sequence are read starting with 1 from the left.

Offset 0, canonical program `A359495.P14356946249672535810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A230877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359495 (n : ℕ) : ℤ :=
  A359495.P14356946249672535810.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A230877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359495.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360128.P10742742717207604320

`A000007(A088722(n+1))`
-/

namespace A360128.P10742742717207604320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A088722 (n + 1)).toNat

end

end A360128.P10742742717207604320

noncomputable section

/-- A360128: a(n) = 1 if there are no divisors d>1 of n such that also d+1 is a divisor of n, otherwise 0.

Offset 1, canonical program `A360128.P10742742717207604320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360128 (n : ℕ) : ℤ :=
  A360128.P10742742717207604320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362883.P10543237193728473399

`A055498(n)-A055500(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A362883.P10543237193728473399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 n - A055500 n

end

end A362883.P10543237193728473399

noncomputable section

/-- A362883: a(n) = A055498(n) - A055500(n).

Offset 0, canonical program `A362883.P10543237193728473399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055498, A055500, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362883 (n : ℕ) : ℤ :=
  A362883.P10543237193728473399.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055498, A055500, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362883.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362965.P6810263641172725990

`A000720(A246655(n+1))`
-/

namespace A362965.P6810263641172725990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A246655 (n + 1)).toNat

end

end A362965.P6810263641172725990

noncomputable section

/-- A362965: Number of primes <= the n-th prime power.

Offset 1, canonical program `A362965.P6810263641172725990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A246655, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362965 (n : ℕ) : ℤ :=
  A362965.P6810263641172725990.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A246655, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363359.P5416786752996279757

`A050452(4*(n+1)-1)`
-/

namespace A363359.P5416786752996279757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (4 * (n + 1) - 1)

end

end A363359.P5416786752996279757

noncomputable section

/-- A363359: Sum of divisors of 4*n-1 of form 4*k+3.

Offset 1, canonical program `A363359.P5416786752996279757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363359 (n : ℕ) : ℤ :=
  A363359.P5416786752996279757.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363392.P17888585954708400925

`A050452(4*(n+1)-2)`
-/

namespace A363392.P17888585954708400925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (4 * (n + 1) - 2)

end

end A363392.P17888585954708400925

noncomputable section

/-- A363392: Sum of divisors of 4*n-2 of form 4*k+3.

Offset 1, canonical program `A363392.P17888585954708400925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363392 (n : ℕ) : ℤ :=
  A363392.P17888585954708400925.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363407.P16355104600949627013

`A050452(4*n+1)`
-/

namespace A363407.P16355104600949627013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (4 * n + 1)

end

end A363407.P16355104600949627013

noncomputable section

/-- A363407: Sum of divisors of 4*n-3 of form 4*k+3.

Offset 1, canonical program `A363407.P16355104600949627013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363407 (n : ℕ) : ℤ :=
  A363407.P16355104600949627013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363895.P17868009645910452837

`floor(A323171(n+2)/A323172(n+2))`
-/

namespace A363895.P17868009645910452837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323171 (n + 2) : ℚ) / (A323172 (n + 2) : ℚ)⌋

end

end A363895.P17868009645910452837

noncomputable section

/-- A363895: Floor of the average of the distinct prime factors of n.

Offset 2, canonical program `A363895.P17868009645910452837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323171, A323172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363895 (n : ℕ) : ℤ :=
  A363895.P17868009645910452837.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323171, A323172, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363904.P4106271239872733580

`(A001842(n+1)+A050452(n+1))/4`
-/

namespace A363904.P4106271239872733580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001842 (n + 1) + A050452 (n + 1) : ℚ) / 4

end

end A363904.P4106271239872733580

noncomputable section

/-- A363904: Expansion of Sum_{k>0} x^(3*k) / (1 - x^(4*k))^2.

Offset 1, canonical program `A363904.P4106271239872733580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001842, A050452, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363904 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363904.P4106271239872733580.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001842, A050452, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364014.P12076871723784190955

`A002324(n+1)-A364204(n+1)`
-/

namespace A364014.P12076871723784190955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) - A364204 (n + 1)

end

end A364014.P12076871723784190955

noncomputable section

/-- A364014: Expansion of Sum_{k>0} x^(2*k) / (1 + x^(3*k)).

Offset 1, canonical program `A364014.P12076871723784190955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364014 (n : ℕ) : ℤ :=
  A364014.P12076871723784190955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364082.P5750381891829572794

`A363903(3*(n+1)+n)`
-/

namespace A364082.P5750381891829572794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 (3 * (n + 1) + n)

end

end A364082.P5750381891829572794

noncomputable section

/-- A364082: Expansion of Sum_{k>0} k * x^(3*k-2) / (1 - x^(4*k-3)).

Offset 1, canonical program `A364082.P5750381891829572794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364082 (n : ℕ) : ℤ :=
  A364082.P5750381891829572794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364083.P15159461776881463796

`A363903(4*n+1)`
-/

namespace A364083.P15159461776881463796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 (4 * n + 1)

end

end A364083.P15159461776881463796

noncomputable section

/-- A364083: Expansion of Sum_{k>0} k * x^k / (1 - x^(4*k-3)).

Offset 1, canonical program `A364083.P15159461776881463796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364083 (n : ℕ) : ℤ :=
  A364083.P15159461776881463796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365216.P10045536079749454059

`or(1, A246655(n+1))+1`
-/

namespace A365216.P10045536079749454059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A246655 (n + 1)) + 1

end

end A365216.P10045536079749454059

noncomputable section

/-- A365216: Maximal k such that there exists a k-arc on the projective plane over GF(q), where q = A246655(n) is the n-th prime power > 1.

Offset 1, canonical program `A365216.P10045536079749454059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365216 (n : ℕ) : ℤ :=
  A365216.P10045536079749454059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366274.P11829202406764329078

`A000720(A076273(n+2))-(n+1)`
-/

namespace A366274.P11829202406764329078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A076273 (n + 2)).toNat - (n + 1 : ℤ)

end

end A366274.P11829202406764329078

noncomputable section

/-- A366274: a(n) is the least k such that prime(n+1+k) >= prime(n)+prime(n+1).

Offset 1, canonical program `A366274.P11829202406764329078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A076273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366274 (n : ℕ) : ℤ :=
  A366274.P11829202406764329078.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A076273, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366421.P2566327463954372035

`floor(A138099(n+1)/(A216607(n+1)+1))`
-/

namespace A366421.P2566327463954372035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138099 (n + 1) : ℚ) / (A216607 (n + 1) + 1 : ℚ)⌋

end

end A366421.P2566327463954372035

noncomputable section

/-- A366421: a(n) is the floor of the n-th improper fraction (including the ones of the type n/n) sorted by increasing numerator+denominator, then by numerator.

Offset 1, canonical program `A366421.P2566327463954372035`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A216607, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366421 (n : ℕ) : ℤ :=
  A366421.P2566327463954372035.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A216607, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366502.P7678879035562133223

`round(A246655(n+2)/4)-1`
-/

namespace A366502.P7678879035562133223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A246655 (n + 2) : ℚ) / 4) - 1

end

end A366502.P7678879035562133223

noncomputable section

/-- A366502: Let q = A246655(n) for n >= 2, then a(n) = (q - Kronecker(-4,q))/4 - 1.

Offset 2, canonical program `A366502.P7678879035562133223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366502 (n : ℕ) : ℤ :=
  A366502.P7678879035562133223.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367013.P15774676469551048142

`A201629(A246655(n+1))`
-/

namespace A367013.P15774676469551048142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A246655 (n + 1)).toNat

end

end A367013.P15774676469551048142

noncomputable section

/-- A367013: Let q be the n-th prime power (A246655), then a(n) = q - Kronecker(-4,q).

Offset 1, canonical program `A367013.P15774676469551048142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A367013 (n : ℕ) : ℤ :=
  A367013.P15774676469551048142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A367013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367076.P8374161418526432458

`abs(∑[A365968(n)])`
-/

namespace A367076.P8374161418526432458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A367076.P8374161418526432458

noncomputable section

/-- A367076: Irregular triangle read by rows: T(n,k) (0 <= n, 0 <= k < 2^n). T(n,k) = -Sum_{i=0..k} A365968(n,i).

Offset 0, canonical program `A367076.P8374161418526432458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A367076 (n : ℕ) : ℤ :=
  A367076.P8374161418526432458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A367076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367419.P12918767703216555889

`sqrt(A367418(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367419.P12918767703216555889
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A367418 (n + 1) : ℝ)

end

end A367419.P12918767703216555889

noncomputable section

/-- A367419: a(n) = sqrt(A367418(n)).

Offset 1, canonical program `A367419.P12918767703216555889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367418, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367419 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367419.P12918767703216555889.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367418, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367419.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368058.P11609945365760646763

`(n+1)*A294602(n+1)-A294487(n+1)`
-/

namespace A368058.P11609945365760646763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294602 (n + 1) - A294487 (n + 1)

end

end A368058.P11609945365760646763

noncomputable section

/-- A368058: Sum of the smaller parts of the partitions of n into two distinct parts with larger part prime.

Offset 1, canonical program `A368058.P11609945365760646763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294487, A294602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368058 (n : ℕ) : ℤ :=
  A368058.P11609945365760646763.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294487, A294602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368641.P10387616186859536638

`A368616(n+1)-A048865(n+1)`
-/

namespace A368641.P10387616186859536638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368616 (n + 1) - A048865 (n + 1)

end

end A368641.P10387616186859536638

noncomputable section

/-- A368641: a(n) = Sum_{k=2..n} pi(k-1) * (ceiling(n/k) - floor(n/k)).

Offset 1, canonical program `A368641.P10387616186859536638`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048865, A368616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368641 (n : ℕ) : ℤ :=
  A368641.P10387616186859536638.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048865, A368616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369032.P9747696111945326450

`A105560(n+1)^A304438(n+1)²`
-/

namespace A369032.P9747696111945326450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105560 (n + 1) : ℚ) ^ (A304438 (n + 1) ^ 2 : ℤ)

end

end A369032.P9747696111945326450

noncomputable section

/-- A369032: LCM-transform of permutation A241909.

Offset 1, canonical program `A369032.P9747696111945326450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369032 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369032.P9747696111945326450.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372684.P14779655988470059317

`A000720(A104080(n+1))`
-/

namespace A372684.P14779655988470059317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104080 (n + 1)).toNat

end

end A372684.P14779655988470059317

noncomputable section

/-- A372684: Least k such that prime(k) >= 2^n.

Offset 1, canonical program `A372684.P14779655988470059317`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A104080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372684 (n : ℕ) : ℤ :=
  A372684.P14779655988470059317.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A104080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374151.P5800413158960378192

`A132090(2^n)`
-/

namespace A374151.P5800413158960378192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (2 ^ n)

end

end A374151.P5800413158960378192

noncomputable section

/-- A374151: The number of prime-indexed primes below 2^n.

Offset 0, canonical program `A374151.P5800413158960378192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374151 (n : ℕ) : ℤ :=
  A374151.P5800413158960378192.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376596.P3065979362946494423

`Δ[A057820(n+1)]`
-/

namespace A376596.P3065979362946494423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376596.P3065979362946494423

noncomputable section

/-- A376596: Second differences of consecutive prime-powers inclusive (A000961). First differences of A057820.

Offset 1, canonical program `A376596.P3065979362946494423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376596 (n : ℕ) : ℤ :=
  A376596.P3065979362946494423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378549.P13326407963315648607

`A000203(n+1)-A378548(n+1)`
-/

namespace A378549.P13326407963315648607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378548 (n + 1)

end

end A378549.P13326407963315648607

noncomputable section

/-- A378549: Sum of divisors d of n such that n/d is not an odd number with an even number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378549.P13326407963315648607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378549 (n : ℕ) : ℤ :=
  A378549.P13326407963315648607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378548, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378620.P6069083703779704707

`∩[A068360(n+1), A270192(n+1)]`
-/

namespace A378620.P6069083703779704707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378620.P6069083703779704707

noncomputable section

/-- A378620: Lesser prime index of twin primes with nonsquarefree mean.

Offset 1, canonical program `A378620.P6069083703779704707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378620 (n : ℕ) : ℤ :=
  (A378620.P6069083703779704707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379155.P15562892955624155800

`eq[1, A366835(n+1)]+1`
-/

namespace A379155.P15562892955624155800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379155.P15562892955624155800

noncomputable section

/-- A379155: Numbers k such that there is a unique prime between the k-th and (k+1)-th prime powers (A246655).

Offset 1, canonical program `A379155.P15562892955624155800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A379155 (n : ℕ) : ℤ :=
  (A379155.P15562892955624155800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A379155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379444.P1698995234905750944

`(A007491(n+3)-A053001(n+2))/2`
-/

namespace A379444.P1698995234905750944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007491 (n + 3) - A053001 (n + 2) : ℚ) / 2

end

end A379444.P1698995234905750944

noncomputable section

/-- A379444: a(n) is the difference between the least prime > (n+1)^2 and the largest prime < n^2, divided by 2.

Offset 2, canonical program `A379444.P1698995234905750944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, A053001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379444 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379444.P1698995234905750944.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, A053001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382490.P15041511037275720396

`A037445(A065331(n+1))`
-/

namespace A382490.P15041511037275720396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A065331 (n + 1)).toNat

end

end A382490.P15041511037275720396

noncomputable section

/-- A382490: The number of infinitary 3-smooth divisors of n.

Offset 1, canonical program `A382490.P15041511037275720396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382490 (n : ℕ) : ℤ :=
  A382490.P15041511037275720396.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382490.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382889.P8393808026600234868

`(A004709(n+1)/A382888(n+1))²`
-/

namespace A382889.P8393808026600234868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A004709 (n + 1) : ℚ) / (A382888 (n + 1) : ℚ)) ^ 2

end

end A382889.P8393808026600234868

noncomputable section

/-- A382889: The largest square dividing the n-th cubefree number.

Offset 1, canonical program `A382889.P8393808026600234868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382888, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382889 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382889.P8393808026600234868.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382888, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383008.P10745250568338898044

`A013928(A160785(n+1))`
-/

namespace A383008.P10745250568338898044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A160785 (n + 1)).toNat

end

end A383008.P10745250568338898044

noncomputable section

/-- A383008: Indices of the even terms in the sequence of squarefree numbers.

Offset 1, canonical program `A383008.P10745250568338898044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383008 (n : ℕ) : ℤ :=
  A383008.P10745250568338898044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385859.P8395933161954360156

`A227428(3*n+1)+A227428(A000027(3*n+2))`
-/

namespace A385859.P8395933161954360156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (3 * n + 1) + A227428 (A000027 (3 * n + 2)).toNat

end

end A385859.P8395933161954360156

noncomputable section

/-- A385859: a(n) = Sum_{k=0..n} (C(n,k) mod 3)^2.

Offset 0, canonical program `A385859.P8395933161954360156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A385859 (n : ℕ) : ℤ :=
  A385859.P8395933161954360156.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A385859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386963.P9105300058504622331

`Δ[A153043(n+1)]+1`
-/

namespace A386963.P9105300058504622331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A386963.P9105300058504622331

noncomputable section

/-- A386963: Gaps between positions of odd terms in A065090.

Offset 1, canonical program `A386963.P9105300058504622331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A386963 (n : ℕ) : ℤ :=
  A386963.P9105300058504622331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A386963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391014.P13528269181693746114

`A000720(A038618(n+1))`
-/

namespace A391014.P13528269181693746114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038618 (n + 1)).toNat

end

end A391014.P13528269181693746114

noncomputable section

/-- A391014: Indices of zeroless primes.

Offset 1, canonical program `A391014.P13528269181693746114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A038618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391014 (n : ℕ) : ℤ :=
  A391014.P13528269181693746114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A038618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318464.P588851004892053715

`∑{e}[n+1, A007895(#)]`
-/

namespace A318464.P588851004892053715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A007895 (Nat.factorization (f1 n) p)

end

end A318464.P588851004892053715

noncomputable section

/-- A318464: Additive with a(p^e) = A007895(e), where A007895(n) gives the number of terms in Zeckendorf representation of n.

Offset 1, canonical program `A318464.P588851004892053715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318464 (n : ℕ) : ℤ :=
  A318464.P588851004892053715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318675.P6460778612345656945

`A048250(n+1)-A318674(n+1)`
-/

namespace A318675.P6460778612345656945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A318674 (n + 1)

end

end A318675.P6460778612345656945

noncomputable section

/-- A318675: Sum of squarefree divisors of n that have an odd number of prime factors.

Offset 1, canonical program `A318675.P6460778612345656945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A318674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318675 (n : ℕ) : ℤ :=
  A318675.P6460778612345656945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A318674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319281.P15976617881653790280

`record[and(A097262(n)+1, n+1)]`
-/

namespace A319281.P15976617881653790280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097262 n + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319281.P15976617881653790280

noncomputable section

/-- A319281: Numbers of the form 16^i*(16*j + 1).

Offset 1, canonical program `A319281.P15976617881653790280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A319281 (n : ℕ) : ℤ :=
  A319281.P15976617881653790280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A319281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319697.P10360673897274092248

`A048250(n+1)-A206787(n+1)`
-/

namespace A319697.P10360673897274092248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A206787 (n + 1)

end

end A319697.P10360673897274092248

noncomputable section

/-- A319697: Sum of even squarefree divisors of n.

Offset 1, canonical program `A319697.P10360673897274092248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A206787, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319697 (n : ℕ) : ℤ :=
  A319697.P10360673897274092248.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A206787, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319697.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323511.P13166536761734004681

`A008966(n+1)*A079559(A048675(n+1))`
-/

namespace A323511.P13166536761734004681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A079559 (A048675 (n + 1)).toNat

end

end A323511.P13166536761734004681

noncomputable section

/-- A323511: a(n) = 1 if n is squarefree and A079559(A048675(n)) = 1, otherwise a(n) = 0.

Offset 1, canonical program `A323511.P13166536761734004681`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323511 (n : ℕ) : ℤ :=
  A323511.P13166536761734004681.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A048675, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324337.P2577203300185584379

`A002487(A006068(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324337.P2577203300185584379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A006068 n).toNat

end

end A324337.P2577203300185584379

noncomputable section

/-- A324337: a(n) = A002487(A006068(n)).

Offset 0, canonical program `A324337.P2577203300185584379`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A006068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324337 (n : ℕ) : ℤ :=
  A324337.P2577203300185584379.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A006068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324338.P10012383172274989098

`A002487(1+A006068(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324338.P10012383172274989098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A006068 n).toNat

end

end A324338.P10012383172274989098

noncomputable section

/-- A324338: a(n) = A002487(1+A006068(n)).

Offset 0, canonical program `A324338.P10012383172274989098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A006068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324338 (n : ℕ) : ℤ :=
  A324338.P10012383172274989098.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, A006068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A324338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326674.P12564829722531985873

`A356352(A006068(n+1))`
-/

namespace A326674.P12564829722531985873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356352 (A006068 (n + 1)).toNat

end

end A326674.P12564829722531985873

noncomputable section

/-- A326674: GCD of the set of positions of 1's in the reversed binary expansion of n.

Offset 1, canonical program `A326674.P12564829722531985873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A326674 (n : ℕ) : ℤ :=
  A326674.P12564829722531985873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A326674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326814.P16037789110182484349

`∑{d}[n+1, A046692(#)*A058026((n+1)/#)]`
-/

namespace A326814.P16037789110182484349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A058026 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326814.P16037789110182484349

noncomputable section

/-- A326814: Dirichlet g.f.: (1/zeta(s)) * Product_{p prime} (1 - 2 * p^(-s)).

Offset 1, canonical program `A326814.P16037789110182484349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326814 (n : ℕ) : ℤ :=
  A326814.P16037789110182484349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328749.P17846108739945119774

`A289814(n)-A289813(n)`
-/

namespace A328749.P17846108739945119774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n - A289813 n

end

end A328749.P17846108739945119774

noncomputable section

/-- A328749: a(n) = Sum_{k = 0..w and t_k > 0} (-1)^t_k * 2^k, where Sum_{k = 0..w} t_k * 3^k is the ternary representation of n.

Offset 0, canonical program `A328749.P17846108739945119774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A328749 (n : ℕ) : ℤ :=
  A328749.P17846108739945119774.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A328749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332498.P11951412772554313620

`A006068(A289814(n))`
-/

namespace A332498.P11951412772554313620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A289814 n).toNat

end

end A332498.P11951412772554313620

noncomputable section

/-- A332498: a(n) = y(w+1) where y(0) = 0 and y(k+1) = 2^(k+1)-1-y(k) (resp. y(k)) when d_k = 2 (resp. d_k <> 2) and Sum_{k=0..w} d_k*3^k is the ternary representation of n. Sequence A332497 gives corresponding x's.

Offset 0, canonical program `A332498.P11951412772554313620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A332498 (n : ℕ) : ℤ :=
  A332498.P11951412772554313620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A332498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332785.P15938896357927830426

`lt[gcd(n, A326186(n+1)), n]+1`
-/

namespace A332785.P15938896357927830426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A326186 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A332785.P15938896357927830426

noncomputable section

/-- A332785: Nonsquarefree numbers that are not squareful.

Offset 1, canonical program `A332785.P15938896357927830426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7574 terms. -/
def A332785 (n : ℕ) : ℤ :=
  (A332785.P15938896357927830426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7574 terms. -/
def A332785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333415.P142928759278303053

`A007088(A145341(n+1))`
-/

namespace A333415.P142928759278303053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A145341 (n + 1)).toNat

end

end A333415.P142928759278303053

noncomputable section

/-- A333415: Odd positive integers in base 2 read backwards.

Offset 1, canonical program `A333415.P142928759278303053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A145341, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333415 (n : ℕ) : ℤ :=
  A333415.P142928759278303053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A145341, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A333415.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335182.P8782257902307896353

`A349322(n+1)-A349658(n+1)`
-/

namespace A335182.P8782257902307896353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349322 (n + 1) - A349658 (n + 1)

end

end A335182.P8782257902307896353

noncomputable section

/-- A335182: Sum of the refactorable divisors of n.

Offset 1, canonical program `A335182.P8782257902307896353`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349322, A349658, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335182 (n : ℕ) : ℤ :=
  A335182.P8782257902307896353.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349322, A349658, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A335182.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A335294.P7381510664905925885

`1-Δ[A335660(C(n, n²)+n)]`
-/

namespace A335294.P7381510664905925885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335660 (Nat.choose n (n ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A335294.P7381510664905925885

noncomputable section

/-- A335294: a(n) = pi(n) - pi(Sum_{k=1..n-1} a(k)) with a(1) = 1, where pi() is the prime counting function A000720.

Offset 1, canonical program `A335294.P7381510664905925885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335294 (n : ℕ) : ℤ :=
  A335294.P7381510664905925885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336465.P4910938732238570745

`∑{d}[A261969(A003557(n+1)), (n+1)/#]`
-/

namespace A336465.P4910938732238570745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (A003557 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A336465.P4910938732238570745

noncomputable section

/-- A336465: Recursive variant of A057723: If n is cubefree, then a(n) = A057723(n), otherwise a(n) = A007947(n) * a(n/A007947(n)).

Offset 1, canonical program `A336465.P4910938732238570745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336465 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336465.P4910938732238570745.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336564.P7523591857433776956

`n+1-A308135(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336564.P7523591857433776956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A308135 (n + 1)

end

end A336564.P7523591857433776956

noncomputable section

/-- A336564: a(n) = n - A308135(n), where A308135(n) is the sum of non-coreful divisors of n.

Offset 1, canonical program `A336564.P7523591857433776956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A308135, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336564 (n : ℕ) : ℤ :=
  A336564.P7523591857433776956.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A308135, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338524.P14576734370194940708

`A006068(A000040(n+1))`
-/

namespace A338524.P14576734370194940708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A000040 (n + 1)).toNat

end

end A338524.P14576734370194940708

noncomputable section

/-- A338524: prime(n) Gray code decoding.

Offset 1, canonical program `A338524.P14576734370194940708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338524 (n : ℕ) : ℤ :=
  A338524.P14576734370194940708.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338691.P3970477865839426901

`∪[A343500(n+1), A004767(n)]`
-/

namespace A338691.P3970477865839426901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338691.P3970477865839426901

noncomputable section

/-- A338691: Positions of (-1)'s in A209615.

Offset 1, canonical program `A338691.P3970477865839426901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338691 (n : ℕ) : ℤ :=
  (A338691.P3970477865839426901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340674.P16491084588076078124

`∩[A062770(n+1), A138302(n+1)]²`
-/

namespace A340674.P16491084588076078124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A340674.P16491084588076078124

noncomputable section

/-- A340674: Numbers of the form s^(2^e), where s is a squarefree number, and e >= 1.

Offset 1, canonical program `A340674.P16491084588076078124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7036 terms. -/
def A340674 (n : ℕ) : ℤ :=
  (A340674.P16491084588076078124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7036 terms. -/
def A340674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342036.P14204125781141140411

`A007088(A048701(n))`
-/

namespace A342036.P14204125781141140411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A048701 n).toNat

end

end A342036.P14204125781141140411

noncomputable section

/-- A342036: Palindromes of even length only using 0 or 1.

Offset 0, canonical program `A342036.P14204125781141140411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342036 (n : ℕ) : ℤ :=
  A342036.P14204125781141140411.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A048701, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344137.P296871737562835172

`A048250(n+1)-A295295(n+1)`
-/

namespace A344137.P296871737562835172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A295295 (n + 1)

end

end A344137.P296871737562835172

noncomputable section

/-- A344137: Sum of the squarefree divisors of n whose square does not divide n.

Offset 1, canonical program `A344137.P296871737562835172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A295295, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344137 (n : ℕ) : ℤ :=
  A344137.P296871737562835172.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A295295, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344705.P11814210103337563169

`A033879(n+1)+A306927(n+1)`
-/

namespace A344705.P11814210103337563169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A306927 (n + 1)

end

end A344705.P11814210103337563169

noncomputable section

/-- A344705: a(n) = n + A001615(n) - sigma(n), where A001615 is the Dedekind psi-function, and sigma(n) gives the sum of divisors of n; difference between psi and the sum of proper divisors.

Offset 1, canonical program `A344705.P11814210103337563169`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306927, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344705 (n : ℕ) : ℤ :=
  A344705.P11814210103337563169.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306927, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344705.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344997.P7955148698695542917

`A173557(n+1)*A344753(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344997.P7955148698695542917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A344753 (n + 1)

end

end A344997.P7955148698695542917

noncomputable section

/-- A344997: a(n) = A173557(n) * A344753(n).

Offset 1, canonical program `A344997.P7955148698695542917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A344753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344997 (n : ℕ) : ℤ :=
  A344997.P7955148698695542917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A344753, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A344997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345371.P15943345332420559631

`A034444(n+1)-A323308(n+1)`
-/

namespace A345371.P15943345332420559631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A323308 (n + 1)

end

end A345371.P15943345332420559631

noncomputable section

/-- A345371: Number of squarefree divisors of n whose square does not divide n.

Offset 1, canonical program `A345371.P15943345332420559631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A323308, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345371 (n : ℕ) : ℤ :=
  A345371.P15943345332420559631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A323308, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A345447.P7254054826736061183

`∪[A047845(n+2)+2, A047845(n+2)]`
-/

namespace A345447.P7254054826736061183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345447.P7254054826736061183

noncomputable section

/-- A345447: Numbers of the form i+j+2*i*j and 2+i+j+2*i*j for i,j >= 1.

Offset 1, canonical program `A345447.P7254054826736061183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345447 (n : ℕ) : ℤ :=
  (A345447.P7254054826736061183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347935.P14454853274330969859

`lt[n, A294889(n+1)]+1`
-/

namespace A347935.P14454853274330969859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347935.P14454853274330969859

noncomputable section

/-- A347935: Numbers k such that A187795(k) > 2*k.

Offset 1, canonical program `A347935.P14454853274330969859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1284 terms. -/
def A347935 (n : ℕ) : ℤ :=
  (A347935.P14454853274330969859.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1284 terms. -/
def A347935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348119.P17000233484595236640

`∩[A328014(n+1)-1, A328014(n+1)]`
-/

namespace A348119.P17000233484595236640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328014 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348119.P17000233484595236640

noncomputable section

/-- A348119: Numbers k such that k and k+1 are both numbers whose powerful part is larger than their powerfree part (A328014).

Offset 1, canonical program `A348119.P17000233484595236640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A348119 (n : ℕ) : ℤ :=
  (A348119.P17000233484595236640.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A348119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349374.P2436747337903792946

`∑{d}[n+1, A332618(#)*A349431((n+1)/#)]`
-/

namespace A349374.P2436747337903792946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332618 d * A349431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349374.P2436747337903792946

noncomputable section

/-- A349374: Dirichlet convolution of Kimberling's paraphrase, A003602, with squarefree part of n (A007913).

Offset 1, canonical program `A349374.P2436747337903792946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349374 (n : ℕ) : ℤ :=
  A349374.P2436747337903792946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351408.P16840462470180952888

`A048105(n+1)-A046951(n+1)+2`
-/

namespace A351408.P16840462470180952888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) - A046951 (n + 1) + 2

end

end A351408.P16840462470180952888

noncomputable section

/-- A351408: Number of divisors of n that are either trivial or are nonsquares with a square divisor > 1.

Offset 1, canonical program `A351408.P16840462470180952888`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351408 (n : ℕ) : ℤ :=
  A351408.P16840462470180952888.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A048105, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351521.P4143436504143602524

`A008966(n+1)*A035116(n+1)`
-/

namespace A351521.P4143436504143602524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A035116 (n + 1)

end

end A351521.P4143436504143602524

noncomputable section

/-- A351521: Dirichlet g.f.: Product_{p prime} (1 + 4*p^(-s)).

Offset 1, canonical program `A351521.P4143436504143602524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A035116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351521 (n : ℕ) : ℤ :=
  A351521.P4143436504143602524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A035116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A351521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356248.P4382023687688512763

`A289813(n)+1`
-/

namespace A356248.P4382023687688512763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n + 1

end

end A356248.P4382023687688512763

noncomputable section

/-- A356248: Image of 1 under repeated application of the map k -> (2k-1,2k,2k-1).

Offset 0, canonical program `A356248.P4382023687688512763`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356248 (n : ℕ) : ℤ :=
  A356248.P4382023687688512763.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357460.P2237439147357638215

`eq[A080226(n+1), A341620(n+1)]+1`
-/

namespace A357460.P2237439147357638215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357460.P2237439147357638215

noncomputable section

/-- A357460: Numbers whose number of deficient divisors is equal to their number of nondeficient divisors.

Offset 1, canonical program `A357460.P2237439147357638215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A357460 (n : ℕ) : ℤ :=
  (A357460.P2237439147357638215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A357460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358978.P4910650545126068101

`eq[1, gcd(n, A007895(n))]`
-/

namespace A358978.P4910650545126068101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007895 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358978.P4910650545126068101

noncomputable section

/-- A358978: Numbers that are coprime to the number of terms in their Zeckendorf representation (A007895).

Offset 1, canonical program `A358978.P4910650545126068101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6028 terms. -/
def A358978 (n : ℕ) : ℤ :=
  (A358978.P4910650545126068101.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6028 terms. -/
def A358978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359429.P17076319737236321028

`A212793(n+1)-A008966(n+1)`
-/

namespace A359429.P17076319737236321028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) - A008966 (n + 1)

end

end A359429.P17076319737236321028

noncomputable section

/-- A359429: a(n) = 1 if n is cubefree, but not squarefree, otherwise 0.

Offset 1, canonical program `A359429.P17076319737236321028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A212793, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359429 (n : ℕ) : ℤ :=
  A359429.P17076319737236321028.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A212793, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360525.P13636672009762808303

`lt[2*n+3, A360522(n+1)]+1`
-/

namespace A360525.P13636672009762808303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A360525.P13636672009762808303

noncomputable section

/-- A360525: Numbers k such that A360522(k) > 2*k.

Offset 1, canonical program `A360525.P13636672009762808303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1135 terms. -/
def A360525 (n : ℕ) : ℤ :=
  (A360525.P13636672009762808303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1135 terms. -/
def A360525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360639.P11777009454422486410

`∩[A175522(n+1)-2, A175522(n+1)]`
-/

namespace A360639.P11777009454422486410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175522 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360639.P11777009454422486410

noncomputable section

/-- A360639: Numbers k such that k and k+2 are both A000120-perfect numbers (A175522).

Offset 1, canonical program `A360639.P11777009454422486410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A360639 (n : ℕ) : ℤ :=
  (A360639.P11777009454422486410.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A360639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363258.P12380158314372331947

`A363903(Δ[n²])`
-/

namespace A363258.P12380158314372331947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A363258.P12380158314372331947

noncomputable section

/-- A363258: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(4*k-3)).

Offset 1, canonical program `A363258.P12380158314372331947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363258 (n : ℕ) : ℤ :=
  A363258.P12380158314372331947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366833.P13396481099192282929

`Δ[A024620(n+1)]`
-/

namespace A366833.P13396481099192282929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366833.P13396481099192282929

noncomputable section

/-- A366833: Number of times n appears in A362965 (number of primes <= the n-th prime power).

Offset 1, canonical program `A366833.P13396481099192282929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366833 (n : ℕ) : ℤ :=
  A366833.P13396481099192282929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367407.P18083013825818049361

`sqrt(A367406(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367407.P18083013825818049361
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A367406 (n + 1) : ℝ)

end

end A367407.P18083013825818049361

noncomputable section

/-- A367407: a(n) = sqrt(A367406(n)).

Offset 1, canonical program `A367407.P18083013825818049361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367407 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367407.P18083013825818049361.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368105.P6887596357651866009

`∑{d}[n+1, A227291(#)*A325837((n+1)/#)]`
-/

namespace A368105.P6887596357651866009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A227291 d * A325837 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368105.P6887596357651866009

noncomputable section

/-- A368105: The number of bi-unitary divisors of n that are powerful (A001694).

Offset 1, canonical program `A368105.P6887596357651866009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368105 (n : ℕ) : ℤ :=
  A368105.P6887596357651866009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368106.P645412121077292751

`A037445(A057521(n+1))`
-/

namespace A368106.P645412121077292751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A057521 (n + 1)).toNat

end

end A368106.P645412121077292751

noncomputable section

/-- A368106: The number of infinitary divisors of the powerful part of n.

Offset 1, canonical program `A368106.P645412121077292751`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368106 (n : ℕ) : ℤ :=
  A368106.P645412121077292751.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368106.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368610.P12539630653234803959

`A368616(n+1)+A368611(n+1)`
-/

namespace A368610.P12539630653234803959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368616 (n + 1) + A368611 (n + 1)

end

end A368610.P12539630653234803959

noncomputable section

/-- A368610: a(n) = Sum_{k=1..n} pi(k) * ceiling(n/k).

Offset 1, canonical program `A368610.P12539630653234803959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368610 (n : ℕ) : ℤ :=
  A368610.P12539630653234803959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368642.P2583294438814666232

`A013928(n+1)+A008966(n+1)+A064608(n+1)-A034444(n+1)`
-/

namespace A368642.P2583294438814666232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) + A008966 (n + 1) + A064608 (n + 1) - A034444 (n + 1)

end

end A368642.P2583294438814666232

noncomputable section

/-- A368642: a(n) = Sum_{k=1..n} mu(k)^2 * ceiling(n/k), where mu is the Möbius function (A008683).

Offset 1, canonical program `A368642.P2583294438814666232`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A013928, A034444, A064608, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368642 (n : ℕ) : ℤ :=
  A368642.P2583294438814666232.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A013928, A034444, A064608, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369255.P8598601348355343696

`A000035(A140773(n+1))`
-/

namespace A369255.P8598601348355343696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A140773 (n + 1)).toNat

end

end A369255.P8598601348355343696

noncomputable section

/-- A369255: Parity of A140773, where A140773 is the inverse Möbius transform of A038548.

Offset 1, canonical program `A369255.P8598601348355343696`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369255 (n : ℕ) : ℤ :=
  A369255.P8598601348355343696.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370239.P6596085643419210641

`∑{d}[A071773(n+1), #²]`
-/

namespace A370239.P6596085643419210641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A370239.P6596085643419210641

noncomputable section

/-- A370239: The sum of divisors of n that are squares of squarefree numbers.

Offset 1, canonical program `A370239.P6596085643419210641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370239 (n : ℕ) : ℤ :=
  (A370239.P6596085643419210641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370783.P9884989495501341942

`A332880(A057521(n+1))`
-/

namespace A370783.P9884989495501341942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (A057521 (n + 1)).toNat

end

end A370783.P9884989495501341942

noncomputable section

/-- A370783: a(n) is the numerator of the sum of the reciprocals of the squarefree divisors of the powerful part of n.

Offset 1, canonical program `A370783.P9884989495501341942`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, A332880, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370783 (n : ℕ) : ℤ :=
  A370783.P9884989495501341942.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, A332880, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370783.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370784.P17196978018823182147

`A332881(A057521(n+1))`
-/

namespace A370784.P17196978018823182147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (A057521 (n + 1)).toNat

end

end A370784.P17196978018823182147

noncomputable section

/-- A370784: a(n) is the denominator of the sum of the reciprocals of the squarefree divisors of the powerful part of n.

Offset 1, canonical program `A370784.P17196978018823182147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, A332881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370784 (n : ℕ) : ℤ :=
  A370784.P17196978018823182147.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, A332881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A370784.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371256.P3370008578592475256

`A006068(A060585(n))`
-/

namespace A371256.P3370008578592475256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A060585 n).toNat

end

end A371256.P3370008578592475256

noncomputable section

/-- A371256: The run lengths transform of the ternary expansion of n corresponds to the run lengths transform of the binary expansion of a(n).

Offset 0, canonical program `A371256.P3370008578592475256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A371256 (n : ℕ) : ℤ :=
  A371256.P3370008578592475256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A371256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373319.P7142569383289786764

`(n+1)*∏{p}[n+1, #]/A126864((n+1)*∏{p}[n+1, #])`
-/

namespace A373319.P7142569383289786764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℚ) / (A126864 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)) : ℚ)

end

end A373319.P7142569383289786764

noncomputable section

/-- A373319: Denominator of the asymptotic density of numbers that are unitarily divided by n.

Offset 1, canonical program `A373319.P7142569383289786764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A373319 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373319.P7142569383289786764.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A373319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374352.P10560180475903247223

`∑[A061884(n+1)]`
-/

namespace A374352.P10560180475903247223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374352.P10560180475903247223

noncomputable section

/-- A374352: a(n) = [n>1] * a(n-1) + Sum_{d|n} phi(lcm(d,n/d)) where [] is an Iverson bracket.

Offset 1, canonical program `A374352.P10560180475903247223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374352 (n : ℕ) : ℤ :=
  A374352.P10560180475903247223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375931.P9740495412486584682

`A261969(n+1)^A051903(n+1)`
-/

namespace A375931.P9740495412486584682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261969 (n + 1) : ℚ) ^ (A051903 (n + 1) : ℤ)

end

end A375931.P9740495412486584682

noncomputable section

/-- A375931: The product of the prime powers in the prime factorization of n that have an exponent that is equal to the maximum exponent in this factorization.

Offset 1, canonical program `A375931.P9740495412486584682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A261969, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375931.P9740495412486584682.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A261969, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378299.P15957382925163367627

`A006068(A030101(n))`
-/

namespace A378299.P15957382925163367627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A030101 n).toNat

end

end A378299.P15957382925163367627

noncomputable section

/-- A378299: Read the binary representation of n from the most to least significant bit then perform a cumulative XOR and store by reading from least to most significant bit.

Offset 0, canonical program `A378299.P15957382925163367627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A030101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378299 (n : ℕ) : ℤ :=
  A378299.P15957382925163367627.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A030101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378366.P5705427883801254966

`n+1-A378367(n+1)`
-/

namespace A378366.P5705427883801254966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A378367 (n + 1)

end

end A378366.P5705427883801254966

noncomputable section

/-- A378366: Difference between n and the greatest non prime power <= n (allowing 1).

Offset 1, canonical program `A378366.P5705427883801254966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378367, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378366 (n : ℕ) : ℤ :=
  A378366.P5705427883801254966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378367, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379851.P2408517926029222728

`lt[2, A332881(n+1)]+1`
-/

namespace A379851.P2408517926029222728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A379851.P2408517926029222728

noncomputable section

/-- A379851: Numbers k such that phi(k) does not divide k. Complement of A007694.

Offset 1, canonical program `A379851.P2408517926029222728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379851 (n : ℕ) : ℤ :=
  (A379851.P2408517926029222728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384517.P2524242939913956237

`A062770(n+1)²`
-/

namespace A384517.P2524242939913956237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1) ^ 2

end

end A384517.P2524242939913956237

noncomputable section

/-- A384517: Nonsquarefree numbers that are squarefree numbers raised to an even power.

Offset 1, canonical program `A384517.P2524242939913956237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384517 (n : ℕ) : ℤ :=
  A384517.P2524242939913956237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385113.P9615886296806253472

`A106469(A309307(n+1))-A008966(n+1)`
-/

namespace A385113.P9615886296806253472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106469 (A309307 (n + 1)).toNat - A008966 (n + 1)

end

end A385113.P9615886296806253472

noncomputable section

/-- A385113: a(1) = 0, a(n) = 1 + 2*[omega(n) > 1] + [bigomega(n) > omega(n)], Iverson brackets, where omega = A001221 and bigomega = A001222.

Offset 1, canonical program `A385113.P9615886296806253472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385113 (n : ℕ) : ℤ :=
  A385113.P9615886296806253472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387728.P1733724163278442984

`lt[A387726(n+1), n+1]+1`
-/

namespace A387728.P1733724163278442984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387726 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387728.P1733724163278442984

noncomputable section

/-- A387728: Numbers k such that the powerful part of the sum of divisors of k (A387726) is less than k.

Offset 1, canonical program `A387728.P1733724163278442984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9195 terms. -/
def A387728 (n : ℕ) : ℤ :=
  (A387728.P1733724163278442984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9195 terms. -/
def A387728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387944.P5952151805390949890

`n-∑[A106743(n+1)²]`
-/

namespace A387944.P5952151805390949890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106743 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387944.P5952151805390949890

noncomputable section

/-- A387944: Number of squarefree composites <= n.

Offset 1, canonical program `A387944.P5952151805390949890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387944 (n : ℕ) : ℤ :=
  A387944.P5952151805390949890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389447.P10658135204883957213

`A000203(n+1)/A389446(n+1)`
-/

namespace A389447.P10658135204883957213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389447.P10658135204883957213

noncomputable section

/-- A389447: Numerator of ratio sigma(n) / A057723(n), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

Offset 1, canonical program `A389447.P10658135204883957213`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389446, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389447 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389447.P10658135204883957213.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389446, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389447.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389448.P4992283218641598864

`A057723(n+1)/A389446(n+1)`
-/

namespace A389448.P4992283218641598864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057723 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P4992283218641598864

noncomputable section

/-- A389448: Denominator of ratio sigma(n) / A057723(n), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

Offset 1, canonical program `A389448.P4992283218641598864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057723, A389446, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389448.P4992283218641598864.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057723, A389446, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391025.P17647453908498382360

`filter[A053850(n+1), A389905(#)]`
-/

namespace A391025.P17647453908498382360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A391025.P17647453908498382360

noncomputable section

/-- A391025: Odd numbers that are neither powerful nor squarefree.

Offset 1, canonical program `A391025.P17647453908498382360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6012 terms. -/
def A391025 (n : ℕ) : ℤ :=
  A391025.P17647453908498382360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6012 terms. -/
def A391025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392236.P3767480464349034148

`eq[A145037(n), A393336(n)]`
-/

namespace A392236.P3767480464349034148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392236.P3767480464349034148

noncomputable section

/-- A392236: Positions of zeros in A309983.

Offset 1, canonical program `A392236.P3767480464349034148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A392236 (n : ℕ) : ℤ :=
  (A392236.P3767480464349034148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A392236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393924.P12806141696084150267

`record[gcd(n, A326186(n+1))+1]`
-/

namespace A393924.P12806141696084150267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A326186 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393924.P12806141696084150267

noncomputable section

/-- A393924: Numbers that are either squarefree or squareful.

Offset 1, canonical program `A393924.P12806141696084150267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393924 (n : ℕ) : ℤ :=
  (A393924.P12806141696084150267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397238.P14966536247982268415

`A046692(A057521(n+1))`
-/

namespace A397238.P14966536247982268415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A057521 (n + 1)).toNat

end

end A397238.P14966536247982268415

noncomputable section

/-- A397238: Dirichlet g.f.: Product_{p prime} (1 + 1/p^s + 1/p^(2*s-1)).

Offset 1, canonical program `A397238.P14966536247982268415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397238 (n : ℕ) : ℤ :=
  A397238.P14966536247982268415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397412.P16519194348179518311

`A071773(n+1)*A112526(n+1)`
-/

namespace A397412.P16519194348179518311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1) * A112526 (n + 1)

end

end A397412.P16519194348179518311

noncomputable section

/-- A397412: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 - 1/p^s + 1/p^(2*s-1)).

Offset 1, canonical program `A397412.P16519194348179518311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397412 (n : ℕ) : ℤ :=
  A397412.P16519194348179518311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322360.P129739376014566701

`abs(A046970(n+1))`
-/

namespace A322360.P129739376014566701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046970 (n + 1)|

end

end A322360.P129739376014566701

noncomputable section

/-- A322360: Multiplicative with a(p^e) = p^2 - 1.

Offset 1, canonical program `A322360.P129739376014566701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322360 (n : ℕ) : ℤ :=
  A322360.P129739376014566701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322483.P9877640992746448261

`A000005(A019554(n+1))`
-/

namespace A322483.P9877640992746448261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019554 (n + 1)).toNat

end

end A322483.P9877640992746448261

noncomputable section

/-- A322483: The number of semi-unitary divisors of n.

Offset 1, canonical program `A322483.P9877640992746448261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322483 (n : ℕ) : ℤ :=
  A322483.P9877640992746448261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326053.P16383788461503311404

`A000203(n+1)-A008833(n+1)`
-/

namespace A326053.P16383788461503311404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008833 (n + 1)

end

end A326053.P16383788461503311404

noncomputable section

/-- A326053: Sum of all other divisors of n except the largest square divisor: a(n) = sigma(n) - A008833(n).

Offset 1, canonical program `A326053.P16383788461503311404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326053 (n : ℕ) : ℤ :=
  A326053.P16383788461503311404.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326127.P6827603046472699184

`A326126(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326127.P6827603046472699184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) - (n + 1 : ℤ)

end

end A326127.P6827603046472699184

noncomputable section

/-- A326127: a(n) = A326126(n) - n, where A326126 gives the sum of all other divisors of n except the squarefree part of n.

Offset 1, canonical program `A326127.P6827603046472699184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326127 (n : ℕ) : ℤ :=
  A326127.P6827603046472699184.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326127.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331078.P2556841124686977371

`∑[ceil(∏{e}[n+1, #+1]/2)*A034836(n+1)]`
-/

namespace A331078.P2556841124686977371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌉ * A034836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331078.P2556841124686977371

noncomputable section

/-- A331078: a(n) = Sum_{k = 1..n} [u_2(k)*u_3(k)], where u_2 = A038548, u_3 = A034836.

Offset 1, canonical program `A331078.P2556841124686977371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331078 (n : ℕ) : ℤ :=
  A331078.P2556841124686977371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331130.P5600848552238636263

`∑[A034836(n+1)*A034836(n+2)]`
-/

namespace A331130.P5600848552238636263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) * A034836 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331130.P5600848552238636263

noncomputable section

/-- A331130: a(n) = Sum_{i=1..n} u_3(i)*u_3(i+1), where u_3(n) = A034836(n).

Offset 1, canonical program `A331130.P5600848552238636263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331130 (n : ℕ) : ℤ :=
  A331130.P5600848552238636263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334109.P1143459477839108207

`A048675(A019554((n+1)/A019554(n+1)))`
-/

namespace A334109.P1143459477839108207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A019554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat).toNat

end

end A334109.P1143459477839108207

noncomputable section

/-- A334109: a(n) = A329697(A225546(n)).

Offset 1, canonical program `A334109.P1143459477839108207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334109 (n : ℕ) : ℤ :=
  A334109.P1143459477839108207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336642.P17825345798901579858

`A008833(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336642.P17825345798901579858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) - 1

end

end A336642.P17825345798901579858

noncomputable section

/-- A336642: One less than the largest square dividing n: a(n) = A008833(n)-1.

Offset 1, canonical program `A336642.P17825345798901579858`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336642 (n : ℕ) : ℤ :=
  A336642.P17825345798901579858.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338234.P15734799249778123728

`A338231(n+1)-(n+1)%Δ[n²]`
-/

namespace A338234.P15734799249778123728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338231 (n + 1) - Int.tmod (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A338234.P15734799249778123728

noncomputable section

/-- A338234: Sum of the numbers less than n whose square does not divide n.

Offset 1, canonical program `A338234.P15734799249778123728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338234 (n : ℕ) : ℤ :=
  A338234.P15734799249778123728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338242.P14287517740341381952

`-A338241(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A338242.P14287517740341381952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A338241 (2 * n)

end

end A338242.P14287517740341381952

noncomputable section

/-- A338242: a(n) = -A338241(2*n) for any n >= 0.

Offset 0, canonical program `A338242.P14287517740341381952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338242 (n : ℕ) : ℤ :=
  A338242.P14287517740341381952.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338241, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338243.P15957865261195193101

`abs(A338241(A004273(n)))`
-/

namespace A338243.P15957865261195193101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A338241 (A004273 n).toNat|

end

end A338243.P15957865261195193101

noncomputable section

/-- A338243: a(0) = 0, a(n) = A338241(2*n-1) for any n > 0.

Offset 0, canonical program `A338243.P15957865261195193101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A338243 (n : ℕ) : ℤ :=
  A338243.P15957865261195193101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A338243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341619.P13364510289438970610

`A063524(A341620(n+1))`
-/

namespace A341619.P13364510289438970610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A341620 (n + 1)).toNat

end

end A341619.P13364510289438970610

noncomputable section

/-- A341619: Characteristic function of primitive nondeficient numbers (A006039): a(n) = 1 if proper multiples of n are all abundant, and proper divisors of n are all deficient, 0 otherwise.

Offset 1, canonical program `A341619.P13364510289438970610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341619 (n : ℕ) : ℤ :=
  A341619.P13364510289438970610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344584.P9009511371490729863

`A319684(n+1)-A001065(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344584.P9009511371490729863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319684 (n + 1) - A001065 (n + 1)

end

end A344584.P9009511371490729863

noncomputable section

/-- A344584: Difference between the inverse Möbius transform of the arithmetic derivative of n and the sum of the proper divisors of n: a(n) = A319684(n) - A001065(n).

Offset 1, canonical program `A344584.P9009511371490729863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344584 (n : ℕ) : ℤ :=
  A344584.P9009511371490729863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346613.P3183661306633961935

`∑{d}[n+1, A019554(#)]`
-/

namespace A346613.P3183661306633961935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019554 d

end

end A346613.P3183661306633961935

noncomputable section

/-- A346613: Inverse Moebius transform of A019554.

Offset 1, canonical program `A346613.P3183661306633961935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346613 (n : ℕ) : ℤ :=
  A346613.P3183661306633961935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350390.P13215210150180200115

`(n+1)/A336643(n+1)`
-/

namespace A350390.P13215210150180200115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A336643 (n + 1) : ℚ)

end

end A350390.P13215210150180200115

noncomputable section

/-- A350390: a(n) is the largest exponentially odd divisor of n.

Offset 1, canonical program `A350390.P13215210150180200115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350390 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350390.P13215210150180200115.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351310.P1649813851265808387

`A013958((n+1)/A019554(n+1))`
-/

namespace A351310.P1649813851265808387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A351310.P1649813851265808387

noncomputable section

/-- A351310: Sum of the 5th powers of the square divisors of n.

Offset 1, canonical program `A351310.P1649813851265808387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351310 (n : ℕ) : ℤ :=
  A351310.P1649813851265808387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351605.P10268499449878988978

`∑{d}[sqrt(A008833(n+1)), A001015((n+1)/#)]`
-/

namespace A351605.P10268499449878988978
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001015 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351605.P10268499449878988978

noncomputable section

/-- A351605: a(n) = n^7 * Sum_{d^2|n} 1 / d^7.

Offset 1, canonical program `A351605.P10268499449878988978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351605 (n : ℕ) : ℤ :=
  A351605.P10268499449878988978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353798.P2681432505353467180

`val(A000040(A034836(n+1)), 7)`
-/

namespace A353798.P2681432505353467180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A034836 (n + 1)).toNat).toNat 7

end

end A353798.P2681432505353467180

noncomputable section

/-- A353798: a(n) = 1 if n is either 4th power of a prime (A030514), or product of a prime and the square of a different prime (A054753), otherwise 0.

Offset 1, canonical program `A353798.P2681432505353467180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353798 (n : ℕ) : ℤ :=
  (A353798.P2681432505353467180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355929.P18162260943095803448

`A355928(n+1)-A007913(n+1)`
-/

namespace A355929.P18162260943095803448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355928 (n + 1) - A007913 (n + 1)

end

end A355929.P18162260943095803448

noncomputable section

/-- A355929: Difference between the squarefree part of the sum of divisors of n and the squarefree part of n.

Offset 1, canonical program `A355929.P18162260943095803448`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A355928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355929 (n : ℕ) : ℤ :=
  A355929.P18162260943095803448.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A355928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A355929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358089.P6226920074506255654

`Δ[A126706(n+1)]`
-/

namespace A358089.P6226920074506255654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358089.P6226920074506255654

noncomputable section

/-- A358089: First differences of A126706.

Offset 1, canonical program `A358089.P6226920074506255654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A358089 (n : ℕ) : ℤ :=
  A358089.P6226920074506255654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A358089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358821.P15868055063124338799

`A008833((n+2)²-1)`
-/

namespace A358821.P15868055063124338799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 ((n + 2) ^ 2 - 1)

end

end A358821.P15868055063124338799

noncomputable section

/-- A358821: a(n) is the largest square dividing n^2 - 1.

Offset 2, canonical program `A358821.P15868055063124338799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358821 (n : ℕ) : ℤ :=
  A358821.P15868055063124338799.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360125.P8640991440014561384

`A319684(gcd(xor(1, n²), ∑[n]))%2`
-/

namespace A360125.P8640991440014561384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319684 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))) 2

end

end A360125.P8640991440014561384

noncomputable section

/-- A360125: Parity of A359425, where A359425 is Dirichlet convolution of the arithmetic derivative with the primorial base exp-function.

Offset 1, canonical program `A360125.P8640991440014561384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360125 (n : ℕ) : ℤ :=
  A360125.P8640991440014561384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365331.P9498320090856852280

`A000005(A008833(n+1))`
-/

namespace A365331.P9498320090856852280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008833 (n + 1)).toNat

end

end A365331.P9498320090856852280

noncomputable section

/-- A365331: The number of divisors of the largest square dividing n.

Offset 1, canonical program `A365331.P9498320090856852280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A008833, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365331 (n : ℕ) : ℤ :=
  A365331.P9498320090856852280.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A008833, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365332.P7111243968687331237

`A000203(A008833(n+1))`
-/

namespace A365332.P7111243968687331237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A008833 (n + 1)).toNat

end

end A365332.P7111243968687331237

noncomputable section

/-- A365332: The sum of divisors of the largest square dividing n.

Offset 1, canonical program `A365332.P7111243968687331237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365332 (n : ℕ) : ℤ :=
  A365332.P7111243968687331237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365332.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365333.P16754517503052846213

`A325837(A008833(n+1))`
-/

namespace A365333.P16754517503052846213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A008833 (n + 1)).toNat

end

end A365333.P16754517503052846213

noncomputable section

/-- A365333: The number of exponentially odd coreful divisors of the largest square dividing n.

Offset 1, canonical program `A365333.P16754517503052846213`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, A325837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365333 (n : ℕ) : ℤ :=
  A365333.P16754517503052846213.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, A325837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365333.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365334.P7348562216077771551

`A033634(A008833(n+1))`
-/

namespace A365334.P7348562216077771551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A008833 (n + 1)).toNat

end

end A365334.P7348562216077771551

noncomputable section

/-- A365334: The sum of exponentially odd divisors of the largest square dividing n.

Offset 1, canonical program `A365334.P7348562216077771551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, A033634, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365334 (n : ℕ) : ℤ :=
  A365334.P7348562216077771551.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, A033634, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365334.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365347.P15432224358011895387

`A000203(A019554(n+1))`
-/

namespace A365347.P15432224358011895387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A019554 (n + 1)).toNat

end

end A365347.P15432224358011895387

noncomputable section

/-- A365347: The sum of divisors of the smallest number whose square is divisible by n.

Offset 1, canonical program `A365347.P15432224358011895387`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365347 (n : ℕ) : ℤ :=
  A365347.P15432224358011895387.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365347.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365348.P17779330658801885884

`A000005(A356191(n+1))`
-/

namespace A365348.P17779330658801885884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A356191 (n + 1)).toNat

end

end A365348.P17779330658801885884

noncomputable section

/-- A365348: The number of divisors of the smallest exponentially odd number divisible by n.

Offset 1, canonical program `A365348.P17779330658801885884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365348 (n : ℕ) : ℤ :=
  A365348.P17779330658801885884.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365348.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365349.P11526077117599832562

`A000203(A356191(n+1))`
-/

namespace A365349.P11526077117599832562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A356191 (n + 1)).toNat

end

end A365349.P11526077117599832562

noncomputable section

/-- A365349: The sum of divisors of the smallest exponentially odd number divisible by n.

Offset 1, canonical program `A365349.P11526077117599832562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356191, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365349 (n : ℕ) : ℤ :=
  A365349.P11526077117599832562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356191, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365783.P2702609335400610260

`A007947(A126706(n+1))`
-/

namespace A365783.P2702609335400610260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A126706 (n + 1)).toNat

end

end A365783.P2702609335400610260

noncomputable section

/-- A365783: a(n) = squarefree kernel of A126706(n).

Offset 1, canonical program `A365783.P2702609335400610260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A126706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365783 (n : ℕ) : ℤ :=
  A365783.P2702609335400610260.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A126706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365783.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367455.P9702420708223161966

`filter[A126706(n+1), A097325(#)]`
-/

namespace A367455.P9702420708223161966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A367455.P9702420708223161966

noncomputable section

/-- A367455: Numbers not divisible by 6 that are neither squarefree nor prime powers.

Offset 1, canonical program `A367455.P9702420708223161966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A367455 (n : ℕ) : ℤ :=
  A367455.P9702420708223161966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7021 terms. -/
def A367455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367990.P363802912855232684

`A000203(A336643(n+1))`
-/

namespace A367990.P363802912855232684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A336643 (n + 1)).toNat

end

end A367990.P363802912855232684

noncomputable section

/-- A367990: Sum of the squarefree divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367990.P363802912855232684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367990 (n : ℕ) : ℤ :=
  A367990.P363802912855232684.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367990.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374537.P5043610287241406847

`∑{d}[A019554(n+1), A102631(#)²]`
-/

namespace A374537.P5043610287241406847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A102631 d ^ 2

end

end A374537.P5043610287241406847

noncomputable section

/-- A374537: a(n) is the sum of the squares of the divisors of n that are exponentially odd numbers.

Offset 1, canonical program `A374537.P5043610287241406847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374537 (n : ℕ) : ℤ :=
  A374537.P5043610287241406847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375360.P7444135275151362843

`A051903(A356191(n+1))`
-/

namespace A375360.P7444135275151362843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A356191 (n + 1)).toNat

end

end A375360.P7444135275151362843

noncomputable section

/-- A375360: The maximum exponent in the prime factorization of the smallest exponentially odd number that is divisible by n.

Offset 1, canonical program `A375360.P7444135275151362843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375360 (n : ℕ) : ℤ :=
  A375360.P7444135275151362843.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A356191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376216.P15355088566132048219

`lt[2, A336643(n+1)]+1`
-/

namespace A376216.P15355088566132048219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A376216.P15355088566132048219

noncomputable section

/-- A376216: Numbers whose sum of powerful divisors (including 1) is even.

Offset 1, canonical program `A376216.P15355088566132048219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A376216 (n : ℕ) : ℤ :=
  (A376216.P15355088566132048219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A376216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378480.P8315309591831248702

`filter[A007304(n+1), A294934(#)]`
-/

namespace A378480.P8315309591831248702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A378480.P8315309591831248702

noncomputable section

/-- A378480: Products of 3 distinct prime numbers (or sphenics) that are deficient.

Offset 1, canonical program `A378480.P8315309591831248702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8934 terms. -/
def A378480 (n : ℕ) : ℤ :=
  A378480.P8315309591831248702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8934 terms. -/
def A378480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380857.P17828759353417711251

`A126706(n+1)²`
-/

namespace A380857.P17828759353417711251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) ^ 2

end

end A380857.P17828759353417711251

noncomputable section

/-- A380857: Squares of numbers that are neither squarefree nor prime powers.

Offset 1, canonical program `A380857.P17828759353417711251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380857 (n : ℕ) : ℤ :=
  A380857.P17828759353417711251.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380857.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384210.P9000503329095324649

`∑[A358769(n+1)]`
-/

namespace A384210.P9000503329095324649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384210.P9000503329095324649

noncomputable section

/-- A384210: Number of numbers <= n of the form p * m^2, where p is a prime and m is an integer >= 1.

Offset 1, canonical program `A384210.P9000503329095324649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384210 (n : ℕ) : ℤ :=
  A384210.P9000503329095324649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388980.P7749532260466869095

`filter[A229125(n+1), A354034(#)]`
-/

namespace A388980.P7749532260466869095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A388980.P7749532260466869095

noncomputable section

/-- A388980: Even numbers of the form p * m^2, where p is prime and m > 0.

Offset 1, canonical program `A388980.P7749532260466869095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3042 terms. -/
def A388980 (n : ℕ) : ℤ :=
  A388980.P7749532260466869095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3042 terms. -/
def A388980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389136.P1117857567589598408

`2*sqrt((n+1)/A037449(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389136.P1117857567589598408
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt ((n + 1 : ℚ) / (A037449 (n + 1) : ℚ) : ℝ)

end

end A389136.P1117857567589598408

noncomputable section

/-- A389136: a(n) = 2*sqrt(n/A037449(n)).

Offset 1, canonical program `A389136.P1117857567589598408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389136 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389136.P1117857567589598408.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392166.P416411638160611915

`A001615(A019554(n+1))`
-/

namespace A392166.P416411638160611915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A019554 (n + 1)).toNat

end

end A392166.P416411638160611915

noncomputable section

/-- A392166: The Dedekind psi function value of the smallest number whose square is divisible by n.

Offset 1, canonical program `A392166.P416411638160611915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392166 (n : ℕ) : ℤ :=
  A392166.P416411638160611915.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392166.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394619.P12031009564495718433

`A391713(A126706(n+1))`
-/

namespace A394619.P12031009564495718433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391713 (A126706 (n + 1)).toNat

end

end A394619.P12031009564495718433

noncomputable section

/-- A394619: Number of divisors d | k such that d is neither squarefree nor squareful (in A332785) and k = A126706(n).

Offset 1, canonical program `A394619.P12031009564495718433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3866 terms. -/
def A394619 (n : ℕ) : ℤ :=
  A394619.P12031009564495718433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3866 terms. -/
def A394619.provenance : SequenceMachineLib.Provenance := .conjectured

