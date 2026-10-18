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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A128806.P9737040730051066089

`A001316(n)+A046092(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128806.P9737040730051066089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + A046092 n

end

end A128806.P9737040730051066089

noncomputable section

/-- A128806: a(n) = A001316(n) + A046092(n).

Offset 0, canonical program `A128806.P9737040730051066089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128806 (n : ℕ) : ℤ :=
  A128806.P9737040730051066089.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129195.P4035285138527206210

`2^A092391(n)`
-/

namespace A129195.P4035285138527206210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A092391 n : ℤ)

end

end A129195.P4035285138527206210

noncomputable section

/-- A129195: a(n) = denominator(n!/4^n).

Offset 0, canonical program `A129195.P4035285138527206210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129195 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A129195.P4035285138527206210.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131766.P8582196171941111563

`A131668(n)-(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131766.P8582196171941111563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131668 n - (2 * n + 1 : ℤ)

end

end A131766.P8582196171941111563

noncomputable section

/-- A131766: a(n) = A131668(n) - (2*n+1).

Offset 0, canonical program `A131766.P8582196171941111563`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131766 (n : ℕ) : ℤ :=
  A131766.P8582196171941111563.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131766.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134079.P11608522256276491607

`(-1)^n*A033686(n)`
-/

namespace A134079.P11608522256276491607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A033686 n

end

end A134079.P11608522256276491607

noncomputable section

/-- A134079: Expansion of q^(-2/3) * c(-q)^2 / 9 in powers of q where c(q) is a cubic AGM theta function.

Offset 0, canonical program `A134079.P11608522256276491607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134079 (n : ℕ) : ℤ :=
  A134079.P11608522256276491607.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134079.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135517.P346222672956229891

`2^(A091090(n)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135517.P346222672956229891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A091090 n - 1 : ℤ)

end

end A135517.P346222672956229891

noncomputable section

/-- A135517: a(n) = 2^(A091090(n)-1).

Offset 0, canonical program `A135517.P346222672956229891`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135517 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135517.P346222672956229891.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135521.P8154613990211312420

`2^A091090(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135521.P8154613990211312420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A091090 (n + 1) : ℤ) - 1

end

end A135521.P8154613990211312420

noncomputable section

/-- A135521: a(n) = 2^(A091090(n)) - 1.

Offset 1, canonical program `A135521.P8154613990211312420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135521 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135521.P8154613990211312420.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135521.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136004.P9778736345928845388

`A005811(n)+4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136004.P9778736345928845388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n + 4

end

end A136004.P9778736345928845388

noncomputable section

/-- A136004: a(n) = A005811(n) + 4.

Offset 0, canonical program `A136004.P9778736345928845388`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136004 (n : ℕ) : ℤ :=
  A136004.P9778736345928845388.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136004.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140514.P16181118793688981694

`A000931(n+4)-A010060(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140514.P16181118793688981694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 4) - A010060 n

end

end A140514.P16181118793688981694

noncomputable section

/-- A140514: a(n) = A000931(n+4) - A010060(n).

Offset 0, canonical program `A140514.P16181118793688981694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140514 (n : ℕ) : ℤ :=
  A140514.P16181118793688981694.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140514.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143238.P14069403323471333184

`A000203(n+1)*A024916(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143238.P14069403323471333184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A024916 (n + 1)

end

end A143238.P14069403323471333184

noncomputable section

/-- A143238: a(n) = A000203(n) * A024916(n).

Offset 1, canonical program `A143238.P14069403323471333184`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143238 (n : ℕ) : ℤ :=
  A143238.P14069403323471333184.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144485.P11574501166754988567

`2*A090763(n)`
-/

namespace A144485.P11574501166754988567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090763 n

end

end A144485.P11574501166754988567

noncomputable section

/-- A144485: a(n) = (3n + 2)*binomial(3n + 1,n).

Offset 0, canonical program `A144485.P11574501166754988567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144485 (n : ℕ) : ℤ :=
  A144485.P11574501166754988567.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145600.P14114066443938343505

`A135389(n)/(n+2)`
-/

namespace A145600.P14114066443938343505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135389 n : ℚ) / (n + 2 : ℚ)

end

end A145600.P14114066443938343505

noncomputable section

/-- A145600: a(n) is the number of walks from (0,0) to (0,1) that remain in the upper half-plane y >= 0 using (2*n - 1) unit steps either up (U), down (D), left (L) or right (R).

Offset 1, canonical program `A145600.P14114066443938343505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145600 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145600.P14114066443938343505.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147610.P10893262607184918980

`3^A048881(n)`
-/

namespace A147610.P10893262607184918980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A048881 n : ℤ)

end

end A147610.P10893262607184918980

noncomputable section

/-- A147610: a(n) = 3^(wt(n-1)-1), where wt() = A000120().

Offset 2, canonical program `A147610.P10893262607184918980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147610 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A147610.P10893262607184918980.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147610.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A151786.P9554746056082427030

`8^A048881(n)`
-/

namespace A151786.P9554746056082427030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A048881 n : ℤ)

end

end A151786.P9554746056082427030

noncomputable section

/-- A151786: a(n) = 8^(wt(n)-1) where wt(n) is the binary weight of n (A000120).

Offset 1, canonical program `A151786.P9554746056082427030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151786 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151786.P9554746056082427030.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151786.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159481.P15800552810572042263

`n+1-A115384(n)`
-/

namespace A159481.P15800552810572042263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 - A115384 n)

end

end A159481.P15800552810572042263

noncomputable section

/-- A159481: Number of evil numbers <= n, see A001969.

Offset 0, canonical program `A159481.P15800552810572042263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159481 (n : ℕ) : ℤ :=
  A159481.P15800552810572042263.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160713.P13545516001355508578

`A001316(n)*3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160713.P13545516001355508578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * 3

end

end A160713.P13545516001355508578

noncomputable section

/-- A160713: 3 times numbers of Gould's sequence: a(n) = A001316(n)*3.

Offset 0, canonical program `A160713.P13545516001355508578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160713 (n : ℕ) : ℤ :=
  A160713.P13545516001355508578.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160713.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160723.P3417646803809005033

`3*A001316(n)-2`
-/

namespace A160723.P3417646803809005033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001316 n - 2

end

end A160723.P3417646803809005033

noncomputable section

/-- A160723: First differences of A160722.

Offset 1, canonical program `A160723.P3417646803809005033`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160723 (n : ℕ) : ℤ :=
  A160723.P3417646803809005033.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166456.P6034457580141109105

`2^(n+1)-A001316(n)`
-/

namespace A166456.P6034457580141109105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A001316 n

end

end A166456.P6034457580141109105

noncomputable section

/-- A166456: Row sums of triangle A166455.

Offset 0, canonical program `A166456.P6034457580141109105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166456 (n : ℕ) : ℤ :=
  A166456.P6034457580141109105.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166456.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168013.P6271669954771012062

`A024916((n+1)²+2*(n+1))`
-/

namespace A168013.P6271669954771012062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 ((n + 1) ^ 2 + 2 * (n + 1))

end

end A168013.P6271669954771012062

noncomputable section

/-- A168013: a(n) = Sum of all divisors of all numbers < (n+1)^2.

Offset 1, canonical program `A168013.P6271669954771012062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168013 (n : ℕ) : ℤ :=
  A168013.P6271669954771012062.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168013.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168313.P8669837144017909273

`2*A101688(n)-A023531(n)`
-/

namespace A168313.P8669837144017909273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101688 n - A023531 n

end

end A168313.P8669837144017909273

noncomputable section

/-- A168313: Triangle read by rows, retain 1's as rightmost diagonal of A101688 and replace all other 1's with 2's.

Offset 1, canonical program `A168313.P8669837144017909273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168313 (n : ℕ) : ℤ :=
  A168313.P8669837144017909273.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168313.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A173384.P18329896187983106844

`A001803(n)-A046161(n)`
-/

namespace A173384.P18329896187983106844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n - A046161 n

end

end A173384.P18329896187983106844

noncomputable section

/-- A173384: a(n) = 2^(2*n - HammingWeight(n)) * [x^n] ((x-1)^(-1) + (1-x)^(-3/2)).

Offset 0, canonical program `A173384.P18329896187983106844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173384 (n : ℕ) : ℤ :=
  A173384.P18329896187983106844.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173396.P12524725615118793413

`A046161(n)+A001803(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173396.P12524725615118793413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n + A001803 n

end

end A173396.P12524725615118793413

noncomputable section

/-- A173396: a(n) = A046161(n) + A001803(n).

Offset 0, canonical program `A173396.P12524725615118793413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173396 (n : ℕ) : ℤ :=
  A173396.P12524725615118793413.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173396.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A186032.P2427232051721781939

`(-1)^A048881(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186032.P2427232051721781939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A048881 n : ℤ)

end

end A186032.P2427232051721781939

noncomputable section

/-- A186032: a(n) = (-1)^A048881(n).

Offset 0, canonical program `A186032.P2427232051721781939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186032 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186032.P2427232051721781939.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186032.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186420.P10304265513462547972

`A002894(n)²`
-/

namespace A186420.P10304265513462547972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002894 n ^ 2

end

end A186420.P10304265513462547972

noncomputable section

/-- A186420: a(n) = binomial(2n,n)^4.

Offset 0, canonical program `A186420.P10304265513462547972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186420 (n : ℕ) : ℤ :=
  A186420.P10304265513462547972.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186420.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192655.P14527991431701777898

`sqrt(A065738(n))`
-/

namespace A192655.P14527991431701777898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065738 n : ℝ)

end

end A192655.P14527991431701777898

noncomputable section

/-- A192655: Floor-Sqrt transform of central binomial coefficients (A000984).

Offset 0, canonical program `A192655.P14527991431701777898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192655 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A192655.P14527991431701777898.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123135.P8286442411414064837

`A062028(A000578(n+1))`
-/

namespace A123135.P8286442411414064837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A000578 (n + 1)).toNat

end

end A123135.P8286442411414064837

noncomputable section

/-- A123135: a(n) = n^3 plus sum of digits of n^3.

Offset 1, canonical program `A123135.P8286442411414064837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123135 (n : ℕ) : ℤ :=
  A123135.P8286442411414064837.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128309.P14442768980274460626

`2*A000069(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128309.P14442768980274460626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000069 (n + 1)

end

end A128309.P14442768980274460626

noncomputable section

/-- A128309: a(n) = 2*A000069(n).

Offset 1, canonical program `A128309.P14442768980274460626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128309 (n : ℕ) : ℤ :=
  A128309.P14442768980274460626.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128309.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132680.P17101137498062770525

`A000120(A000069(n+1))`
-/

namespace A132680.P17101137498062770525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000069 (n + 1)).toNat

end

end A132680.P17101137498062770525

noncomputable section

/-- A132680: Number of ones in binary representation of odious numbers.

Offset 1, canonical program `A132680.P17101137498062770525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132680 (n : ℕ) : ℤ :=
  A132680.P17101137498062770525.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135481.P9711204985532032738

`A006519(n+1)-1`
-/

namespace A135481.P9711204985532032738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) - 1

end

end A135481.P9711204985532032738

noncomputable section

/-- A135481: a(n) = 2^A007814(n+1) - 1.

Offset 0, canonical program `A135481.P9711204985532032738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135481 (n : ℕ) : ℤ :=
  A135481.P9711204985532032738.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139329.P7958588769808554264

`A000142(A023416(n))`
-/

namespace A139329.P7958588769808554264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A023416 n).toNat

end

end A139329.P7958588769808554264

noncomputable section

/-- A139329: a(n) = (factorial of the number of 0's in the binary expansion of n).

Offset 0, canonical program `A139329.P7958588769808554264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139329 (n : ℕ) : ℤ :=
  A139329.P7958588769808554264.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140580.P10077258810956911756

`(n+1)²/A048671(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140580.P10077258810956911756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A048671 (n + 1) : ℚ)

end

end A140580.P10077258810956911756

noncomputable section

/-- A140580: a(n) = (n^2)/A048671(n), = n*A014963(n) = A140579 * [1, 2, 3, ...].

Offset 1, canonical program `A140580.P10077258810956911756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140580 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140580.P10077258810956911756.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140670.P15032429316490350293

`A006519(n+1)-A059841(n+1)`
-/

namespace A140670.P15032429316490350293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) - A059841 (n + 1)

end

end A140670.P15032429316490350293

noncomputable section

/-- A140670: a(n) = 1 if n is odd; otherwise, a(n) = 2^k - 1 where 2^k is the largest power of 2 that divides n.

Offset 1, canonical program `A140670.P15032429316490350293`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140670 (n : ℕ) : ℤ :=
  A140670.P15032429316490350293.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A147761.P3441028777115545332

`(n+1)*2^(n+1-A023416(n+1))`
-/

namespace A147761.P3441028777115545332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ ((n + 1 : ℤ) - A023416 (n + 1) : ℤ)

end

end A147761.P3441028777115545332

noncomputable section

/-- A147761: a(n) is the smallest positive integer m with exactly n zeros in its binary representation and with n represented in binary as a substring of the binary representation of m.

Offset 1, canonical program `A147761.P3441028777115545332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147761 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A147761.P3441028777115545332.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147761.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A152761.P10007199758081199607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152761 (n : ℕ) : ℤ :=
  A152761.P10007199758081199607.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158405.P17637820199145196077

`2*A002262(n)+1`
-/

namespace A158405.P17637820199145196077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002262 n + 1

end

end A158405.P17637820199145196077

noncomputable section

/-- A158405: Triangle T(n,m) = 1+2*m of odd numbers read along rows, 0<=m

Offset 1, canonical program `A158405.P17637820199145196077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158405 (n : ℕ) : ℤ :=
  A158405.P17637820199145196077.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158405.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160939.P10335950988782502839

`A062028(n)+1`
-/

namespace A160939.P10335950988782502839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n + 1

end

end A160939.P10335950988782502839

noncomputable section

/-- A160939: a(n) = n + digital sum (n-1).

Offset 1, canonical program `A160939.P10335950988782502839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160939 (n : ℕ) : ℤ :=
  A160939.P10335950988782502839.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161560.P15052176189256135490

`floor(A000069(n+1)/2-1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161560.P15052176189256135490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000069 (n + 1) : ℚ) / 2 - (1 : ℚ) / 2⌋

end

end A161560.P15052176189256135490

noncomputable section

/-- A161560: a(n) = floor(A000069(n)/2-1/2).

Offset 1, canonical program `A161560.P15052176189256135490`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161560 (n : ℕ) : ℤ :=
  A161560.P15052176189256135490.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162784.P6167208712163994257

`A151712(n)/2`
-/

namespace A162784.P6167208712163994257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151712 n : ℚ) / 2

end

end A162784.P6167208712163994257

noncomputable section

/-- A162784: a(n) = (A048883(n)+1)/2.

Offset 0, canonical program `A162784.P6167208712163994257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162784 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A162784.P6167208712163994257.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174574.P9281296430949688215

`a(n-1)+A065363(n)` with `a(0)=0`
-/

namespace A174574.P9281296430949688215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A065363 n

end

end A174574.P9281296430949688215

noncomputable section

/-- A174574: Partial sums of A065363.

Offset 0, canonical program `A174574.P9281296430949688215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174574 (n : ℕ) : ℤ :=
  A174574.P9281296430949688215.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174574.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176893.P2873570301173375857

`2^A023416(n)*3^A000120(n)`
-/

namespace A176893.P2873570301173375857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A023416 n : ℤ) * (3 : ℚ) ^ (A000120 n : ℤ)

end

end A176893.P2873570301173375857

noncomputable section

/-- A176893: a(n) = 2^(number of zeros in binary expansion of n) * 3^(numbers of ones in binary expansion of n).

Offset 0, canonical program `A176893.P2873570301173375857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176893.P2873570301173375857.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176893.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178244.P17051318547944785483

`C(A000120(n)+A023416(n), A000120(n))`
-/

namespace A178244.P17051318547944785483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n + A023416 n).toNat (A000120 n).toNat

end

end A178244.P17051318547944785483

noncomputable section

/-- A178244: Number of distinct permutations of binary digits (0's and 1's) in n.

Offset 0, canonical program `A178244.P17051318547944785483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178244 (n : ℕ) : ℤ :=
  (A178244.P17051318547944785483.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181155.P6532656100866929133

`A000069(n+1)+1`
-/

namespace A181155.P6532656100866929133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + 1

end

end A181155.P6532656100866929133

noncomputable section

/-- A181155: Odious numbers (A000069) plus one; complement of A026147.

Offset 1, canonical program `A181155.P6532656100866929133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181155 (n : ℕ) : ℤ :=
  A181155.P6532656100866929133.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186690.P18402101191840386599

`(-1)^n*A002131(n+1)`
-/

namespace A186690.P18402101191840386599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002131 (n + 1)

end

end A186690.P18402101191840386599

noncomputable section

/-- A186690: Expansion of - (1/8) theta_3''(0, q) / theta_3(0, q) in powers of q.

Offset 1, canonical program `A186690.P18402101191840386599`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186690 (n : ℕ) : ℤ :=
  A186690.P18402101191840386599.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193336.P7441199582202554829

`A146076(A000203(n+1))`
-/

namespace A193336.P7441199582202554829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A000203 (n + 1)).toNat

end

end A193336.P7441199582202554829

noncomputable section

/-- A193336: Sum of even divisors of sigma(n).

Offset 1, canonical program `A193336.P7441199582202554829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193336 (n : ℕ) : ℤ :=
  A193336.P7441199582202554829.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122431.P16038384963788621526

`C(3, A025581(n))`
-/

namespace A122431.P16038384963788621526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A025581 n).toNat

end

end A122431.P16038384963788621526

noncomputable section

/-- A122431: Riordan array ((1+x)^3,x).

Offset 0, canonical program `A122431.P16038384963788621526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122431 (n : ℕ) : ℤ :=
  (A122431.P16038384963788621526.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122737.P5352890692816768516

`record[Δ[2*A055879(n+1)]]`
-/

namespace A122737.P5352890692816768516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122737.P5352890692816768516

noncomputable section

/-- A122737: Expansion of 1 - 3*x - sqrt(1 - 6*x + 5*x^2).

Offset 1, canonical program `A122737.P5352890692816768516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A122737 (n : ℕ) : ℤ :=
  A122737.P5352890692816768516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A122737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122754.P1087166714470174862

`10*(n+1)-A101306(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122754.P1087166714470174862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) : ℤ) - A101306 (n + 1)

end

end A122754.P1087166714470174862

noncomputable section

/-- A122754: a(n) = 10*n - A101306(n).

Offset 1, canonical program `A122754.P1087166714470174862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122754 (n : ℕ) : ℤ :=
  A122754.P1087166714470174862.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122758.P11142805967211740618

`A003056(n)²*A122756(A002262(n)+1)`
-/

namespace A122758.P11142805967211740618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 * A122756 (A002262 n + 1).toNat

end

end A122758.P11142805967211740618

noncomputable section

/-- A122758: Triangle read by rows: T(n,m) = 2*n^2*A084221(n) (n>=0, 0 <= m <= n).

Offset 1, canonical program `A122758.P11142805967211740618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122758 (n : ℕ) : ℤ :=
  A122758.P11142805967211740618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122760.P12700755839112312451

`A008776(A002262(n))*A057212(n+1)`
-/

namespace A122760.P12700755839112312451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 (A002262 n).toNat * A057212 (n + 1)

end

end A122760.P12700755839112312451

noncomputable section

/-- A122760: Triangle read by rows: t(n,m) = 2*3^m*(n mod 2).

Offset 1, canonical program `A122760.P12700755839112312451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122760 (n : ℕ) : ℤ :=
  A122760.P12700755839112312451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123163.P13801651006854553114

`C(A025581(n)², A002262(n)²)`
-/

namespace A123163.P13801651006854553114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n ^ 2).toNat (A002262 n ^ 2).toNat

end

end A123163.P13801651006854553114

noncomputable section

/-- A123163: Triangle T(n, k) = binomial((n-k)^2, k^2) read by rows.

Offset 0, canonical program `A123163.P13801651006854553114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A123163 (n : ℕ) : ℤ :=
  (A123163.P13801651006854553114.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A123163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123579.P3370401837568714296

`∑[char[∑[A002262(n)]+1]]`
-/

namespace A123579.P3370401837568714296
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123579.P3370401837568714296

noncomputable section

/-- A123579: The Kruskal-Macaulay function M_3(n).

Offset 0, canonical program `A123579.P3370401837568714296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123579 (n : ℕ) : ℤ :=
  (A123579.P3370401837568714296.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123635.P11455475426760564630

`A024675(n+1)%3`
-/

namespace A123635.P11455475426760564630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024675 (n + 1)) 3

end

end A123635.P11455475426760564630

noncomputable section

/-- A123635: Residue mod 3 of average of n-th and (n+1)st odd primes.

Offset 1, canonical program `A123635.P11455475426760564630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123635 (n : ℕ) : ℤ :=
  A123635.P11455475426760564630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123746.P16894433032032204393

`A091520(n)/A001316(n)`
-/

namespace A123746.P16894433032032204393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091520 n : ℚ) / (A001316 n : ℚ)

end

end A123746.P16894433032032204393

noncomputable section

/-- A123746: Numerators of partial sums of a series for 1/sqrt(2).

Offset 0, canonical program `A123746.P16894433032032204393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A123746 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123746.P16894433032032204393.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A123746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124788.P14755828261857917216

`C(A004526(A002262(n)), A025581(n))`
-/

namespace A124788.P14755828261857917216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (A002262 n).toNat).toNat (A025581 n).toNat

end

end A124788.P14755828261857917216

noncomputable section

/-- A124788: Triangle read by rows: expansion of (1+x*y)/(1-x^2*y^2-x^3*y^2).

Offset 0, canonical program `A124788.P14755828261857917216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124788 (n : ℕ) : ℤ :=
  (A124788.P14755828261857917216.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124819.P1078954329039168482

`C(A005408(n)-A003056(n)², A025581(n))`
-/

namespace A124819.P1078954329039168482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005408 n - A003056 n ^ 2).toNat (A025581 n).toNat

end

end A124819.P1078954329039168482

noncomputable section

/-- A124819: Number triangle T(n,k)=C(n+2k+1,3k+1).

Offset 0, canonical program `A124819.P1078954329039168482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124819 (n : ℕ) : ℤ :=
  (A124819.P1078954329039168482.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124825.P846435702103164471

`∩[A102342(n+1), A111250(n+1)]`
-/

namespace A124825.P846435702103164471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124825.P846435702103164471

noncomputable section

/-- A124825: Numbers k such that 10k + 7 and 7k + 10 are primes.

Offset 1, canonical program `A124825.P846435702103164471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1561 terms. -/
def A124825 (n : ℕ) : ℤ :=
  (A124825.P846435702103164471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1561 terms. -/
def A124825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125498.P12583085300510792170

`record[(n*n²)^and(1, A192085(n))]`
-/

namespace A125498.P12583085300510792170
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℚ) ^ (Int.land 1 (A192085 n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125498.P12583085300510792170

noncomputable section

/-- A125498: Odious cubes.

Offset 1, canonical program `A125498.P12583085300510792170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4949 terms. -/
def A125498 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A125498.P12583085300510792170.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4949 terms. -/
def A125498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126020.P12431073891398574633

`A079028(n)+A079028(n)-A002457(n)`
-/

namespace A126020.P12431073891398574633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079028 n + (A079028 n - A002457 n)

end

end A126020.P12431073891398574633

noncomputable section

/-- A126020: Number of convex permutominoes of size n.

Offset 1, canonical program `A126020.P12431073891398574633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A126020 (n : ℕ) : ℤ :=
  A126020.P12431073891398574633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A126020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126120.P11676298334808492124

`A097331(n+1)`
-/

namespace A126120.P11676298334808492124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1)

end

end A126120.P11676298334808492124

noncomputable section

/-- A126120: Catalan numbers (A000108) interpolated with 0's.

Offset 0, canonical program `A126120.P11676298334808492124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A126120 (n : ℕ) : ℤ :=
  A126120.P11676298334808492124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A126120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126205.P8861598925400809168

`∑{digits}[3^n, A075897(#+21)]`
-/

namespace A126205.P8861598925400809168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A075897 (x + 21)).sum

end

end A126205.P8861598925400809168

noncomputable section

/-- A126205: Number of 3's in decimal expansion of 3^n, with n>=0.

Offset 0, canonical program `A126205.P8861598925400809168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A126205 (n : ℕ) : ℤ :=
  A126205.P8861598925400809168.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A126205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126228.P1914049352165075312

`∩[10*n+5, A024675(n+2)]`
-/

namespace A126228.P1914049352165075312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A126228.P1914049352165075312

noncomputable section

/-- A126228: Odd interprimes divisible by 5.

Offset 1, canonical program `A126228.P1914049352165075312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1187 terms. -/
def A126228 (n : ℕ) : ℤ :=
  (A126228.P1914049352165075312.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1187 terms. -/
def A126228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126324.P3611906249858251984

`gcd(3*A097331(n), A097331(n+1))`
-/

namespace A126324.P3611906249858251984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * A097331 n) (A097331 (n + 1))

end

end A126324.P3611906249858251984

noncomputable section

/-- A126324: a(2n) = Cat(n), a(2n+1) = 3*Cat(n), where Cat(n) = binomial(2n,n)/(n+1) are the Catalan numbers (A000108).

Offset 0, canonical program `A126324.P3611906249858251984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A126324 (n : ℕ) : ℤ :=
  (A126324.P3611906249858251984.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A126324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126332.P1973723424677393430

`floor(A111225(n+1)/2)`
-/

namespace A126332.P1973723424677393430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111225 (n + 1) : ℚ) / 2⌋

end

end A126332.P1973723424677393430

noncomputable section

/-- A126332: Numbers k such that 10k + 13 is prime.

Offset 1, canonical program `A126332.P1973723424677393430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126332 (n : ℕ) : ℤ :=
  A126332.P1973723424677393430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126332.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127246.P14720288942938943665

`A127245(n)+2*A010060(n)`
-/

namespace A127246.P14720288942938943665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127245 n + 2 * A010060 n

end

end A127246.P14720288942938943665

noncomputable section

/-- A127246: Row sums of a Thue-Morse related triangle.

Offset 0, canonical program `A127246.P14720288942938943665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127246 (n : ℕ) : ℤ :=
  A127246.P14720288942938943665.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127245, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127246.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127322.P8390602753419418213

`A023416(A006257(eq[4, A000120(n)]))`
-/

namespace A127322.P8390602753419418213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A006257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A127322.P8390602753419418213

noncomputable section

/-- A127322: Second 4-dimensional hyper-tetrahedral coordinate; 4-D analog of A056557.

Offset 0, canonical program `A127322.P8390602753419418213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A127322 (n : ℕ) : ℤ :=
  A127322.P8390602753419418213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A127322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127324.P10851335711510860639

`val(A038466(n+1), 3)`
-/

namespace A127324.P10851335711510860639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038466 (n + 1)).toNat 3

end

end A127324.P10851335711510860639

noncomputable section

/-- A127324: Fourth 4-dimensional hyper-tetrahedral coordinate; 4-D analog of A056558.

Offset 0, canonical program `A127324.P10851335711510860639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127324 (n : ℕ) : ℤ :=
  (A127324.P10851335711510860639.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127640.P1363589885829058691

`A005145(n+1)*A023531(n)`
-/

namespace A127640.P1363589885829058691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) * A023531 n

end

end A127640.P1363589885829058691

noncomputable section

/-- A127640: Triangle read by rows in which row n contains n-1 0's followed by prime(n).

Offset 1, canonical program `A127640.P1363589885829058691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127640 (n : ℕ) : ℤ :=
  A127640.P1363589885829058691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127648.P14273563626416826954

`Δ[A061885(n)]-1`
-/

namespace A127648.P14273563626416826954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A127648.P14273563626416826954

noncomputable section

/-- A127648: Triangle read by rows: row n consists of n zeros followed by n+1.

Offset 0, canonical program `A127648.P14273563626416826954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127648 (n : ℕ) : ℤ :=
  A127648.P14273563626416826954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127773.P3035698408442550692

`C(Δ[A061885(n)], 2)`
-/

namespace A127773.P3035698408442550692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A127773.P3035698408442550692

noncomputable section

/-- A127773: Triangle read by rows: row n consists of n-1 zeros followed by n(n+1)/2.

Offset 1, canonical program `A127773.P3035698408442550692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127773 (n : ℕ) : ℤ :=
  (A127773.P3035698408442550692.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127846.P14279537381663799616

`floor(A086871(n)/2)`
-/

namespace A127846.P14279537381663799616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086871 n : ℚ) / 2⌋

end

end A127846.P14279537381663799616

noncomputable section

/-- A127846: Series reversion of x/(1+5x+4x^2).

Offset 0, canonical program `A127846.P14279537381663799616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A127846 (n : ℕ) : ℤ :=
  A127846.P14279537381663799616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A127846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127920.P1899935215268348754

`A127918(n+1)/3`
-/

namespace A127920.P1899935215268348754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127918 (n + 1) : ℚ) / 3

end

end A127920.P1899935215268348754

noncomputable section

/-- A127920: 1/6 of product of three numbers: n-th prime, previous and following number.

Offset 1, canonical program `A127920.P1899935215268348754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127920 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127920.P1899935215268348754.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127920.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A128137.P5492606734270784235

`Δ[A025581(n)]+2*A112367(n)`
-/

namespace A128137.P5492606734270784235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A112367 n

end

end A128137.P5492606734270784235

noncomputable section

/-- A128137: A002260 * A128132.

Offset 1, canonical program `A128137.P5492606734270784235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128137 (n : ℕ) : ℤ :=
  A128137.P5492606734270784235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128177.P4062566833816821859

`floor((A025581(n)/2+1)²)`
-/

namespace A128177.P4062566833816821859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A025581 n : ℚ) / 2 + 1) ^ 2⌋

end

end A128177.P4062566833816821859

noncomputable section

/-- A128177: A128174 * A004736 as infinite lower triangular matrices.

Offset 1, canonical program `A128177.P4062566833816821859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128177 (n : ℕ) : ℤ :=
  A128177.P4062566833816821859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128219.P490409223823792249

`A002262(n)+A023532(n)+1`
-/

namespace A128219.P490409223823792249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A023532 n + 1)

end

end A128219.P490409223823792249

noncomputable section

/-- A128219: A000012 * A127701. a(1) = 1, a(2) = 2, a(3) = 2; by rows, n-1 terms of 2, 3, 4, ... followed by "n".

Offset 1, canonical program `A128219.P490409223823792249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128219 (n : ℕ) : ℤ :=
  A128219.P490409223823792249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128746.P14051206347353493942

`A045445(n+1)+∑[A045890(n)]`
-/

namespace A128746.P14051206347353493942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128746.P14051206347353493942

noncomputable section

/-- A128746: Height of the last peak summed over all skew Dyck paths of semilength n.

Offset 1, canonical program `A128746.P14051206347353493942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A128746 (n : ℕ) : ℤ :=
  A128746.P14051206347353493942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A128746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129069.P4766735713249215201

`A089241(n+1)+1`
-/

namespace A129069.P4766735713249215201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) + 1

end

end A129069.P4766735713249215201

noncomputable section

/-- A129069: Numbers k such that (k-3)/2 is prime.

Offset 1, canonical program `A129069.P4766735713249215201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129069 (n : ℕ) : ℤ :=
  A129069.P4766735713249215201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129071.P295643258149290770

`3*A089241(n+1)+1`
-/

namespace A129071.P295643258149290770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A089241 (n + 1) + 1

end

end A129071.P295643258149290770

noncomputable section

/-- A129071: Numbers k such that (k-7)/6 is prime.

Offset 1, canonical program `A129071.P295643258149290770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129071 (n : ℕ) : ℤ :=
  A129071.P295643258149290770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129143.P15988714660412797946

`A137688(n)+A002262(n)`
-/

namespace A129143.P15988714660412797946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n + A002262 n

end

end A129143.P15988714660412797946

noncomputable section

/-- A129143: Start with the empty sequence and append in step k the consecutive numbers 2^(k-1) to 2^(k-1)+k-1.

Offset 1, canonical program `A129143.P15988714660412797946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A129143 (n : ℕ) : ℤ :=
  A129143.P15988714660412797946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A129143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129366.P3653991172376187017

`∑[A000912(n)]`
-/

namespace A129366.P3653991172376187017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129366.P3653991172376187017

noncomputable section

/-- A129366: a(n) = Sum_{k=0..floor(n/2)} A000108(n-k).

Offset 0, canonical program `A129366.P3653991172376187017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A129366 (n : ℕ) : ℤ :=
  A129366.P3653991172376187017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A129366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129631.P433838894207889531

`eq[A032741(A004157(n))+n-1, A028310(n)]`
-/

namespace A129631.P433838894207889531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004157 n).toNat + ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129631.P433838894207889531

noncomputable section

/-- A129631: Numbers k such that sum of digits of binomial(k+1, k-1) is a prime.

Offset 1, canonical program `A129631.P433838894207889531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129631 (n : ℕ) : ℤ :=
  (A129631.P433838894207889531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129688.P1941488576816125634

`1-A062157(A025581(n))`
-/

namespace A129688.P1941488576816125634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062157 (A025581 n).toNat

end

end A129688.P1941488576816125634

noncomputable section

/-- A129688: A129686 * A128174.

Offset 1, canonical program `A129688.P1941488576816125634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129688 (n : ℕ) : ℤ :=
  A129688.P1941488576816125634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129809.P16380635724625305868

`A065091(eq[2, A129750(n+1)])`
-/

namespace A129809.P16380635724625305868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129809.P16380635724625305868

noncomputable section

/-- A129809: Lesser of consecutive prime pairs whose last digits differ by 2.

Offset 1, canonical program `A129809.P16380635724625305868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2713 terms. -/
def A129809 (n : ℕ) : ℤ :=
  A129809.P16380635724625305868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2713 terms. -/
def A129809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130054.P881181456311237944

`∑{d}[n+1, A038712(#)*A117212((n+1)/#)]`
-/

namespace A130054.P881181456311237944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P881181456311237944

noncomputable section

/-- A130054: Inverse Moebius transform of A023900.

Offset 1, canonical program `A130054.P881181456311237944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130054 (n : ℕ) : ℤ :=
  A130054.P881181456311237944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130248.P17937413160944975329

`∑[A130247(n+1)]`
-/

namespace A130248.P17937413160944975329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130248.P17937413160944975329

noncomputable section

/-- A130248: Partial sums of the Lucas Inverse A130247.

Offset 1, canonical program `A130248.P17937413160944975329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130248 (n : ℕ) : ℤ :=
  A130248.P17937413160944975329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130269.P4089145140288437489

`A127739(n+1)+A112367(n)`
-/

namespace A130269.P4089145140288437489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + A112367 n

end

end A130269.P4089145140288437489

noncomputable section

/-- A130269: A002260 * A051340.

Offset 1, canonical program `A130269.P4089145140288437489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130269 (n : ℕ) : ℤ :=
  A130269.P4089145140288437489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130303.P17992843340813991066

`floor(A004736(n+1)+A025581(n)/a(n-1))` with `a(0)=1`
-/

namespace A130303.P17992843340813991066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A004736 (n + 1) : ℚ) + (A025581 n : ℚ) / (a (n - 1) : ℚ)⌋

end

end A130303.P17992843340813991066

noncomputable section

/-- A130303: A130296 * A000012.

Offset 1, canonical program `A130303.P17992843340813991066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130303 (n : ℕ) : ℤ :=
  A130303.P17992843340813991066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130321.P6740187654358347306

`A000079(A025581(n))`
-/

namespace A130321.P6740187654358347306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat

end

end A130321.P6740187654358347306

noncomputable section

/-- A130321: Triangle, (2^0, 2^1, 2^2, ...) in every column.

Offset 0, canonical program `A130321.P6740187654358347306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130321 (n : ℕ) : ℤ :=
  A130321.P6740187654358347306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130322.P15441670076918703928

`A171647(A099375(n))`
-/

namespace A130322.P15441670076918703928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171647 (A099375 n).toNat

end

end A130322.P15441670076918703928

noncomputable section

/-- A130322: A130321^2.

Offset 0, canonical program `A130322.P15441670076918703928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130322 (n : ℕ) : ℤ :=
  A130322.P15441670076918703928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130330.P178834876588586868

`A090988(n+1)-1`
-/

namespace A130330.P178834876588586868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1) - 1

end

end A130330.P178834876588586868

noncomputable section

/-- A130330: Triangle read by rows, the matrix product A130321 * A000012, both taken as infinite lower triangular matrices.

Offset 0, canonical program `A130330.P178834876588586868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130330 (n : ℕ) : ℤ :=
  A130330.P178834876588586868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130330.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130855.P3617134350545637610

`A123578(A057212(n+1)+n)`
-/

namespace A130855.P3617134350545637610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A057212 (n + 1) + (n : ℤ)).toNat

end

end A130855.P3617134350545637610

noncomputable section

/-- A130855: 2n appears 2n+1 times, 2n+1 appears 2n times.

Offset 0, canonical program `A130855.P3617134350545637610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130855 (n : ℕ) : ℤ :=
  A130855.P3617134350545637610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131019.P15986658586892712231

`(∑[A031166(n+1)]+1)/2+8`
-/

namespace A131019.P15986658586892712231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031166 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2 + 8

end

end A131019.P15986658586892712231

noncomputable section

/-- A131019: Semiperimeters of quadrilaterals whose sides are 4 consecutive odd primes.

Offset 1, canonical program `A131019.P15986658586892712231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131019 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131019.P15986658586892712231.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131021.P14456359531846804988

`p?[A024675(n+1)+A024675(n+3)]`
-/

namespace A131021.P14456359531846804988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) + A024675 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A131021.P14456359531846804988

noncomputable section

/-- A131021: Prime semiperimeters of quadrilaterals with sides which are four consecutive primes.

Offset 1, canonical program `A131021.P14456359531846804988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A131021 (n : ℕ) : ℤ :=
  A131021.P14456359531846804988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 630 terms. -/
def A131021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131137.P15076297547464346448

`gcd(n, A125824(n))*A125824(n)`
-/

namespace A131137.P15076297547464346448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A125824 n) : ℤ) * A125824 n

end

end A131137.P15076297547464346448

noncomputable section

/-- A131137: Denominator of (exponential) expansion of log((2*x/3-1)/(x-1)).

Offset 0, canonical program `A131137.P15076297547464346448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A131137 (n : ℕ) : ℤ :=
  A131137.P15076297547464346448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A131137.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131422.P7219812161266444625

`A112367(n)+A007401(n+1)`
-/

namespace A131422.P7219812161266444625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A007401 (n + 1)

end

end A131422.P7219812161266444625

noncomputable section

/-- A131422: (A000012 * A127773) + (A127773 * A000012) - A000012.

Offset 1, canonical program `A131422.P7219812161266444625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131422 (n : ℕ) : ℤ :=
  A131422.P7219812161266444625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131422.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131522.P12999787802712979154

`Δ[Δ[A004739(n+2)]]`
-/

namespace A131522.P12999787802712979154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A131522.P12999787802712979154

noncomputable section

/-- A131522: Expansions of p(x,n)=(x^n - 1)*(x^(n + 1) - 1) for n >= 1, triangle read by rows.

Offset 1, canonical program `A131522.P12999787802712979154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A131522 (n : ℕ) : ℤ :=
  A131522.P12999787802712979154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A131522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131609.P5672711036197391040

`A108037(n)^A002262(n)`
-/

namespace A131609.P5672711036197391040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108037 n : ℚ) ^ (A002262 n : ℤ)

end

end A131609.P5672711036197391040

noncomputable section

/-- A131609: Mirror image of triangle in A131606.

Offset 0, canonical program `A131609.P5672711036197391040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A131609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131609.P5672711036197391040.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A131609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131740.P10215158765622913185

`∑[A100479(n+1)-A000040(n+1)]`
-/

namespace A131740.P10215158765622913185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131740.P10215158765622913185

noncomputable section

/-- A131740: a(n) = sum of n successive primes after the n-th prime.

Offset 1, canonical program `A131740.P10215158765622913185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131740 (n : ℕ) : ℤ :=
  A131740.P10215158765622913185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131782.P7183273397705194591

`A028387(A025581(n))`
-/

namespace A131782.P7183273397705194591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A025581 n).toNat

end

end A131782.P7183273397705194591

noncomputable section

/-- A131782: Triangle read by rows: (A004736 * A000012) + (A000012 * A004736) - A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A131782.P7183273397705194591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131782 (n : ℕ) : ℤ :=
  A131782.P7183273397705194591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132729.P10036753158710648265

`abs(2*(C(A003056(n), A025581(n))-1)-1)`
-/

namespace A132729.P10036753158710648265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((Nat.choose (A003056 n).toNat (A025581 n).toNat : ℤ) - 1) - 1|

end

end A132729.P10036753158710648265

noncomputable section

/-- A132729: Triangle T(n, k) = 2*binomial(n, k) - 3 with T(n, 0) = T(n, n) = 1, read by rows.

Offset 0, canonical program `A132729.P10036753158710648265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132729 (n : ℕ) : ℤ :=
  A132729.P10036753158710648265.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132729.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A132919.P4593387891919540197

`A131410(n+1)+A002262(n)`
-/

namespace A132919.P4593387891919540197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1) + A002262 n

end

end A132919.P4593387891919540197

noncomputable section

/-- A132919: Triangle read by rows: T(n,k) = Fibonacci(n) + k - 1.

Offset 1, canonical program `A132919.P4593387891919540197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132919 (n : ℕ) : ℤ :=
  A132919.P4593387891919540197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133089.P8798939129705993137

`(-1)^n*A010816(n)`
-/

namespace A133089.P8798939129705993137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A010816 n

end

end A133089.P8798939129705993137

noncomputable section

/-- A133089: Expansion of f(x)^3 in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A133089.P8798939129705993137`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133089 (n : ℕ) : ℤ :=
  A133089.P8798939129705993137.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133100.P12141735553406694000

`A023531(5*n)`
-/

namespace A133100.P12141735553406694000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (5 * n)

end

end A133100.P12141735553406694000

noncomputable section

/-- A133100: Expansion of f(x, x^4) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A133100.P12141735553406694000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133100 (n : ℕ) : ℤ :=
  A133100.P12141735553406694000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133109.P15034252738295428665

`A042965(Δ[A061885(n)])`
-/

namespace A133109.P15034252738295428665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (f1 (n + 1) - f1 n).toNat

end

end A133109.P15034252738295428665

noncomputable section

/-- A133109: Triangle read by rows, A042965 on the diagonal, 0 elsewhere.

Offset 1, canonical program `A133109.P15034252738295428665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133109 (n : ℕ) : ℤ :=
  A133109.P15034252738295428665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133109.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A133548.P7794647710270492703

`A098999(n+2)-8`
-/

namespace A133548.P7794647710270492703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098999 (n + 2) - 8

end

end A133548.P7794647710270492703

noncomputable section

/-- A133548: a(n) = sum of cubes of first n odd primes.

Offset 1, canonical program `A133548.P7794647710270492703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133548 (n : ℕ) : ℤ :=
  A133548.P7794647710270492703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133549.P4699963464634886654

`A122102(n+2)-16`
-/

namespace A133549.P4699963464634886654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122102 (n + 2) - 16

end

end A133549.P4699963464634886654

noncomputable section

/-- A133549: Sum of the fourth powers of the first n odd primes.

Offset 1, canonical program `A133549.P4699963464634886654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133549 (n : ℕ) : ℤ :=
  A133549.P4699963464634886654.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133550.P10196551962089254403

`A122103(n+2)-32`
-/

namespace A133550.P10196551962089254403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122103 (n + 2) - 32

end

end A133550.P10196551962089254403

noncomputable section

/-- A133550: Sum of fifth powers of n odd primes.

Offset 1, canonical program `A133550.P10196551962089254403`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133550 (n : ℕ) : ℤ :=
  A133550.P10196551962089254403.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133770.P4488727926712049331

`A005811(eq[(n%2)^n, and(n, floor(n/2))])`
-/

namespace A133770.P4488727926712049331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133770.P4488727926712049331

noncomputable section

/-- A133770: Number of runs (of equal bits) in the minimal Lucas binary (A130310) representation of n.

Offset 1, canonical program `A133770.P4488727926712049331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A133770 (n : ℕ) : ℤ :=
  A133770.P4488727926712049331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A133770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133824.P3351664802800838771

`A124258(n+1)²`
-/

namespace A133824.P3351664802800838771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124258 (n + 1) ^ 2

end

end A133824.P3351664802800838771

noncomputable section

/-- A133824: Triangle whose rows are sequences of increasing and decreasing fourth powers: 1; 1,16,1; 1,16,81,16,1; ... .

Offset 0, canonical program `A133824.P3351664802800838771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133824 (n : ℕ) : ℤ :=
  A133824.P3351664802800838771.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124258, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133824.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133881.P5486026362602944694

`filter[A133630(n+1), A121262(#)]`
-/

namespace A133881.P5486026362602944694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A133881.P5486026362602944694

noncomputable section

/-- A133881: Even numbers k such that binomial(k+p,k) mod k = 1, where p=10.

Offset 1, canonical program `A133881.P5486026362602944694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 916 terms. -/
def A133881 (n : ℕ) : ℤ :=
  A133881.P5486026362602944694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 916 terms. -/
def A133881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133988.P925296802653209893

`(-1)^n*A089812(n)`
-/

namespace A133988.P925296802653209893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A089812 n

end

end A133988.P925296802653209893

noncomputable section

/-- A133988: Expansion of phi(x) / chi(x^3) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A133988.P925296802653209893`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133988 (n : ℕ) : ℤ :=
  A133988.P925296802653209893.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134099.P11301646531831205665

`A045319(lt[1, A100820(n+1)])+2`
-/

namespace A134099.P11301646531831205665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 2

end

end A134099.P11301646531831205665

noncomputable section

/-- A134099: Odd nonprimes np such that np-2 is a prime number but np+2 is not.

Offset 1, canonical program `A134099.P11301646531831205665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134099 (n : ℕ) : ℤ :=
  A134099.P11301646531831205665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134099.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134444.P9215337130777568354

`or(1, A025581(n))`
-/

namespace A134444.P9215337130777568354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A025581 n)

end

end A134444.P9215337130777568354

noncomputable section

/-- A134444: (A000012 * A128174 + A128174 * A000012) - A000012.

Offset 0, canonical program `A134444.P9215337130777568354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134444 (n : ℕ) : ℤ :=
  A134444.P9215337130777568354.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134516.P11675418983147709240

`lt[A007953(n), gcd(n, A169805(n))]`
-/

namespace A134516.P11675418983147709240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A169805 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134516.P11675418983147709240

noncomputable section

/-- A134516: Numbers that are divisible by 2*(sum of their digits).

Offset 1, canonical program `A134516.P11675418983147709240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A134516 (n : ℕ) : ℤ :=
  (A134516.P11675418983147709240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A134516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134591.P13784663667261059065

`A014689(n+1)+A000040(n+1)`
-/

namespace A134591.P13784663667261059065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + A000040 (n + 1)

end

end A134591.P13784663667261059065

noncomputable section

/-- A134591: a(n) is n reflected in n-th prime: distance between a(n) and prime(n) equals distance between prime(n) and n.

Offset 1, canonical program `A134591.P13784663667261059065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A014689, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134591 (n : ℕ) : ℤ :=
  A134591.P13784663667261059065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A014689, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134591.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A134859.P11589362847468601687

`A035336(n+1)-1`
-/

namespace A134859.P11589362847468601687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) - 1

end

end A134859.P11589362847468601687

noncomputable section

/-- A134859: Wythoff AAA numbers.

Offset 1, canonical program `A134859.P11589362847468601687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134859 (n : ℕ) : ℤ :=
  A134859.P11589362847468601687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134919.P3606243963732666470

`A134918(n+1)-Δ[A064524(n)]`
-/

namespace A134919.P3606243963732666470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134918 (n + 1) - (f1 (n + 1) - f1 n)

end

end A134919.P3606243963732666470

noncomputable section

/-- A134919: Floor(n^(5/3)).

Offset 1, canonical program `A134919.P3606243963732666470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134919 (n : ℕ) : ℤ :=
  A134919.P3606243963732666470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135076.P11264756244026486480

`p?[A001370(n)]`
-/

namespace A135076.P11264756244026486480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135076.P11264756244026486480

noncomputable section

/-- A135076: Primes appearing in A001370.

Offset 1, canonical program `A135076.P11264756244026486480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1788 terms. -/
def A135076 (n : ℕ) : ℤ :=
  A135076.P11264756244026486480.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1788 terms. -/
def A135076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135110.P13140174536284070670

`eq[A008574(A000120(n)), A180018(n)]`
-/

namespace A135110.P13140174536284070670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135110.P13140174536284070670

noncomputable section

/-- A135110: Positive numbers such that the digital sum base 2 and the digital sum base 10 are in a ratio of 2:10.

Offset 1, canonical program `A135110.P13140174536284070670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A135110 (n : ℕ) : ℤ :=
  (A135110.P13140174536284070670.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A135110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135123.P16247896730909029180

`∩[A037304(n+1), A037311(n+1)]`
-/

namespace A135123.P16247896730909029180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135123.P16247896730909029180

noncomputable section

/-- A135123: Numbers such that the digital sum base 2 and the digital sum base 3 and the digital sum base 6 all are equal.

Offset 1, canonical program `A135123.P16247896730909029180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. -/
def A135123 (n : ℕ) : ℤ :=
  (A135123.P16247896730909029180.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. -/
def A135123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135125.P7973860443630960552

`∩[A037303(n+1), A037326(n+1)]`
-/

namespace A135125.P7973860443630960552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135125.P7973860443630960552

noncomputable section

/-- A135125: Numbers such that the digital sum base 2 and the digital sum base 5 and the digital sum base 10 all are equal.

Offset 1, canonical program `A135125.P7973860443630960552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A135125 (n : ℕ) : ℤ :=
  (A135125.P7973860443630960552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A135125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135133.P13033452460133963726

`and(1, val(A001316(n), 8))`
-/

namespace A135133.P13033452460133963726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (A001316 n).toNat 8)

end

end A135133.P13033452460133963726

noncomputable section

/-- A135133: a(n) = floor(S2(n)/3) mod 2, where S2(n) denotes the binary weight of n.

Offset 0, canonical program `A135133.P13033452460133963726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135133 (n : ℕ) : ℤ :=
  (A135133.P13033452460133963726.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135136.P11582502789863798801

`A011658(A001316(n))`
-/

namespace A135136.P11582502789863798801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011658 (A001316 n).toNat

end

end A135136.P11582502789863798801

noncomputable section

/-- A135136: a(n) = floor(S2(n)/2) mod 2, where S2(n) is the binary weight of n.

Offset 0, canonical program `A135136.P11582502789863798801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135136 (n : ℕ) : ℤ :=
  A135136.P11582502789863798801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135152.P7420640362526774959

`A092038(A099375(n))`
-/

namespace A135152.P7420640362526774959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A099375 n).toNat

end

end A135152.P7420640362526774959

noncomputable section

/-- A135152: A004736 + A128174 - I, I = Identity matrix.

Offset 1, canonical program `A135152.P7420640362526774959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135152 (n : ℕ) : ℤ :=
  A135152.P7420640362526774959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135180.P11010931225065724081

`A135179(n+1)+A079704(n+1)`
-/

namespace A135180.P11010931225065724081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135179 (n + 1) + A079704 (n + 1)

end

end A135180.P11010931225065724081

noncomputable section

/-- A135180: a(n) = p^5 - p^3 + p^2, where p = prime(n).

Offset 1, canonical program `A135180.P11010931225065724081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135180 (n : ℕ) : ℤ :=
  A135180.P11010931225065724081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135181.P6699023682953178213

`A135177(n+1)+A050997(n+1)`
-/

namespace A135181.P6699023682953178213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135177 (n + 1) + A050997 (n + 1)

end

end A135181.P6699023682953178213

noncomputable section

/-- A135181: p^5 + p^3 - p^2. Exponents are the prime numbers in decreasing order and p is the n-th prime.

Offset 1, canonical program `A135181.P6699023682953178213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135181 (n : ℕ) : ℤ :=
  A135181.P6699023682953178213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135223.P14742202444666781604

`A008805(A198954(n))+A002262(n)`
-/

namespace A135223.P14742202444666781604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A198954 n).toNat + A002262 n

end

end A135223.P14742202444666781604

noncomputable section

/-- A135223: Triangle A000012 * A127648 * A103451, read by rows.

Offset 1, canonical program `A135223.P14742202444666781604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135223 (n : ℕ) : ℤ :=
  A135223.P14742202444666781604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135275.P3525010006064753465

`A096379(2*n+1)`
-/

namespace A135275.P3525010006064753465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096379 (2 * n + 1)

end

end A135275.P3525010006064753465

noncomputable section

/-- A135275: a(n) = prime(2n-1) + prime(2n) - prime(2n+1).

Offset 1, canonical program `A135275.P3525010006064753465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096379, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135275 (n : ℕ) : ℤ :=
  A135275.P3525010006064753465.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096379, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135277.P10565709097119796957

`A034961(2*n+1)`
-/

namespace A135277.P10565709097119796957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (2 * n + 1)

end

end A135277.P10565709097119796957

noncomputable section

/-- A135277: a(n) = prime(2n-1) + prime(2n) + prime(2n+1).

Offset 1, canonical program `A135277.P10565709097119796957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135277 (n : ℕ) : ℤ :=
  A135277.P10565709097119796957.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135277.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135322.P17508792323229128620

`gcd(A000984(n), A366368(n))`
-/

namespace A135322.P17508792323229128620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000984 n) (A366368 n)

end

end A135322.P17508792323229128620

noncomputable section

/-- A135322: a(n) = gcd(n!, binomial(2n,n)).

Offset 0, canonical program `A135322.P17508792323229128620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A135322 (n : ℕ) : ℤ :=
  (A135322.P17508792323229128620.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A135322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135570.P7925513415246481314

`∑[A135569(n)]+1`
-/

namespace A135570.P7925513415246481314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135570.P7925513415246481314

noncomputable section

/-- A135570: a(n) = 1 + Sum_{i=1..n} S2(i)*2^i, where S2(n) is digit sum of n, n in binary notation.

Offset 0, canonical program `A135570.P7925513415246481314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A135570 (n : ℕ) : ℤ :=
  A135570.P7925513415246481314.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A135570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135620.P7501931609771001337

`A061286(n+1)/2`
-/

namespace A135620.P7501931609771001337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061286 (n + 1) : ℚ) / 2

end

end A135620.P7501931609771001337

noncomputable section

/-- A135620: a(n) = 2^(prime(n) - 2).

Offset 1, canonical program `A135620.P7501931609771001337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135620 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135620.P7501931609771001337.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135620.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135630.P7109827776379492340

`A061286(n+1)/2-1`
-/

namespace A135630.P7109827776379492340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061286 (n + 1) : ℚ) / 2 - 1

end

end A135630.P7109827776379492340

noncomputable section

/-- A135630: 2^(prime(n) - 2) - 1.

Offset 1, canonical program `A135630.P7109827776379492340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135630 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135630.P7109827776379492340.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135630.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135678.P4157119123375053992

`A135676(n+1)+2*(n+1)`
-/

namespace A135678.P4157119123375053992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135676 (n + 1) + (2 * (n + 1) : ℤ)

end

end A135678.P4157119123375053992

noncomputable section

/-- A135678: Floor(n^(4/3)+n).

Offset 1, canonical program `A135678.P4157119123375053992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135678 (n : ℕ) : ℤ :=
  A135678.P4157119123375053992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135993.P10611808160087165424

`a(A135941(n)%2)` with `a(0)=0, a(1)=1`
-/

namespace A135993.P10611808160087165424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (Int.tmod (A135941 n) 2).toNat

end

end A135993.P10611808160087165424

noncomputable section

/-- A135993: a(0) = 0; a(n) = (floor(n/S2(n))) mod 2 for n >= 1, where S2(n) is the binary weight of n.

Offset 0, canonical program `A135993.P10611808160087165424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135993 (n : ℕ) : ℤ :=
  (A135993.P10611808160087165424.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136087.P18288110956482578539

`floor(A136079(n+1)/21)`
-/

namespace A136087.P18288110956482578539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136079 (n + 1) : ℚ) / 21⌋

end

end A136087.P18288110956482578539

noncomputable section

/-- A136087: Son primes of order 10.

Offset 1, canonical program `A136087.P18288110956482578539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136087 (n : ℕ) : ℤ :=
  A136087.P18288110956482578539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136157.P7779191601585148338

`C(3, A099375(n))`
-/

namespace A136157.P7779191601585148338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A099375 n).toNat

end

end A136157.P7779191601585148338

noncomputable section

/-- A136157: Triangle by columns, (3, 1, 0, 0, 0, ...) in every column.

Offset 0, canonical program `A136157.P7779191601585148338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136157 (n : ℕ) : ℤ :=
  (A136157.P7779191601585148338.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137263.P10830162275430257195

`∩[3*n+2, A024675(n+1)]`
-/

namespace A137263.P10830162275430257195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137263.P10830162275430257195

noncomputable section

/-- A137263: Interprimes (A024675) == 2 (mod 3).

Offset 1, canonical program `A137263.P10830162275430257195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A137263 (n : ℕ) : ℤ :=
  (A137263.P10830162275430257195.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A137263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137331.P2086045150003382942

`A101436(A001316(n))`
-/

namespace A137331.P2086045150003382942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (A001316 n).toNat

end

end A137331.P2086045150003382942

noncomputable section

/-- A137331: a(n) = 1 if the binary weight of n is prime, otherwise 0.

Offset 0, canonical program `A137331.P2086045150003382942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137331 (n : ℕ) : ℤ :=
  A137331.P2086045150003382942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137558.P15771038239932581240

`A137521(n+1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A137558.P15771038239932581240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137521 (n + 1) : ℚ) / 5

end

end A137558.P15771038239932581240

noncomputable section

/-- A137558: A137521(n)/5.

Offset 1, canonical program `A137558.P15771038239932581240`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137558 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137558.P15771038239932581240.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137781.P3937855502889474483

`A137389(n+1)/4`
-/

namespace A137781.P3937855502889474483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137389 (n + 1) : ℚ) / 4

end

end A137781.P3937855502889474483

noncomputable section

/-- A137781: a(n) = (2^prime(n) + 2^prime(n+1)) / 4.

Offset 1, canonical program `A137781.P3937855502889474483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137781.P3937855502889474483.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137781.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137831.P7284090837143405087

`(A001248(n+1)-A137807(n+1))/20`
-/

namespace A137831.P7284090837143405087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 1) - A137807 (n + 1) : ℚ) / 20

end

end A137831.P7284090837143405087

noncomputable section

/-- A137831: a(n) = (prime(n)^2 minus its last digit)/20.

Offset 1, canonical program `A137831.P7284090837143405087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A137807, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137831 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137831.P7284090837143405087.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, A137807, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137831.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137893.P5279872751976216164

`1-A080846(n+1)`
-/

namespace A137893.P5279872751976216164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080846 (n + 1)

end

end A137893.P5279872751976216164

noncomputable section

/-- A137893: Fixed point of the morphism 0->100, 1->101, starting from a(1) = 1.

Offset 1, canonical program `A137893.P5279872751976216164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137893 (n : ℕ) : ℤ :=
  A137893.P5279872751976216164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137948.P13154399146745911954

`A002262(n)!*A004736(n+1)`
-/

namespace A137948.P13154399146745911954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A004736 (n + 1)

end

end A137948.P13154399146745911954

noncomputable section

/-- A137948: Triangle read by rows, A000012 * A136579.

Offset 0, canonical program `A137948.P13154399146745911954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A137948 (n : ℕ) : ℤ :=
  A137948.P13154399146745911954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. -/
def A137948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138057.P8115732758806525968

`-A062157(A002262(n))*A123578(n)`
-/

namespace A138057.P8115732758806525968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A062157 (A002262 n).toNat * A123578 n)

end

end A138057.P8115732758806525968

noncomputable section

/-- A138057: Triangle read by rows: row n consists of 0 followed by n (n+1)'s with alternating signs.

Offset 0, canonical program `A138057.P8115732758806525968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A138057 (n : ℕ) : ℤ :=
  A138057.P8115732758806525968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A138057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138073.P14236269972961341865

`A095713(A133825(n)+2)`
-/

namespace A138073.P14236269972961341865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (A133825 n + 2).toNat

end

end A138073.P14236269972961341865

noncomputable section

/-- A138073: Triangle read by rows: row n lists the digits of A135699(n), the palindromic number with odd number of digits formed from the reflected decimal expansion of golden ratio phi.

Offset 1, canonical program `A138073.P14236269972961341865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A138073 (n : ℕ) : ℤ :=
  A138073.P14236269972961341865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A138073.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138143.P5194370615714979143

`A005145(A133825(n))`
-/

namespace A138143.P5194370615714979143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A133825 n).toNat

end

end A138143.P5194370615714979143

noncomputable section

/-- A138143: Triangle read by rows in which row n lists p(1), p(2), ..., p(n), p(n-1), ..., p(1), where p(i) = i-th prime.

Offset 1, canonical program `A138143.P5194370615714979143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A138143 (n : ℕ) : ℤ :=
  A138143.P5194370615714979143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A138143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138156.P2513437671335943333

`2*A006419(n)`
-/

namespace A138156.P2513437671335943333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006419 n

end

end A138156.P2513437671335943333

noncomputable section

/-- A138156: Sum of the path lengths of all binary trees with n edges.

Offset 0, canonical program `A138156.P2513437671335943333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A138156 (n : ℕ) : ℤ :=
  A138156.P2513437671335943333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A138156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138190.P14612047088116699715

`gcd(A000292(n), A054563(n))`
-/

namespace A138190.P14612047088116699715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000292 n) (A054563 n)

end

end A138190.P14612047088116699715

noncomputable section

/-- A138190: Numerator of (n-1)*n*(n+1)/12.

Offset 1, canonical program `A138190.P14612047088116699715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138190 (n : ℕ) : ℤ :=
  (A138190.P14612047088116699715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138349.P6024967281071450729

`Δ[ratio[A005817(n)]]*A005817(n)`
-/

namespace A138349.P6024967281071450729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005817 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A005817 n : ℚ)

end

end A138349.P6024967281071450729

noncomputable section

/-- A138349: Moment sequence of tr(A) in USp(4).

Offset 0, canonical program `A138349.P6024967281071450729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A138349 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138349.P6024967281071450729.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A138349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138364.P9887947875911683220

`n*A097331(n)`
-/

namespace A138364.P9887947875911683220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097331 n

end

end A138364.P9887947875911683220

noncomputable section

/-- A138364: The number of Motzkin n-paths with exactly one flat step.

Offset 0, canonical program `A138364.P9887947875911683220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A138364 (n : ℕ) : ℤ :=
  A138364.P9887947875911683220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A138364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138402.P2862729920963490813

`A036689(n+1)*A036690(n+1)`
-/

namespace A138402.P2862729920963490813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) * A036690 (n + 1)

end

end A138402.P2862729920963490813

noncomputable section

/-- A138402: a(n) = (n-th prime)^4-(n-th prime)^2.

Offset 1, canonical program `A138402.P2862729920963490813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036689, A036690, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138402 (n : ℕ) : ℤ :=
  A138402.P2862729920963490813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036689, A036690, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138406.P9529549165846394037

`A135179(n+1)+A001248(n+1)`
-/

namespace A138406.P9529549165846394037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135179 (n + 1) + A001248 (n + 1)

end

end A138406.P9529549165846394037

noncomputable section

/-- A138406: a(n) = prime(n)^5 - prime(n)^3.

Offset 1, canonical program `A138406.P9529549165846394037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138406 (n : ℕ) : ℤ :=
  A138406.P9529549165846394037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138416.P16017585133365700482

`A127918(n+1)-A008837(n+1)`
-/

namespace A138416.P16017585133365700482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127918 (n + 1) - A008837 (n + 1)

end

end A138416.P16017585133365700482

noncomputable section

/-- A138416: a(n) = (p^3 - p^2)/2, where p = prime(n).

Offset 1, canonical program `A138416.P16017585133365700482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138416 (n : ℕ) : ℤ :=
  A138416.P16017585133365700482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138417.P6610939322627036311

`A138401(n+1)/2`
-/

namespace A138417.P6610939322627036311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138401 (n + 1) : ℚ) / 2

end

end A138417.P6610939322627036311

noncomputable section

/-- A138417: a(n) = (prime(n)^4 - prime(n))/2.

Offset 1, canonical program `A138417.P6610939322627036311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138417 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138417.P6610939322627036311.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138401, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138423.P15059397808005163054

`A138403(n+1)/2`
-/

namespace A138423.P15059397808005163054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138403 (n + 1) : ℚ) / 2

end

end A138423.P15059397808005163054

noncomputable section

/-- A138423: a(n) = (prime(n)^4 - prime(n)^3)/2.

Offset 1, canonical program `A138423.P15059397808005163054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138403, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138423 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138423.P15059397808005163054.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138403, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138423.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138424.P9846473390818304069

`A138404(n+1)/2`
-/

namespace A138424.P9846473390818304069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 2

end

end A138424.P9846473390818304069

noncomputable section

/-- A138424: a(n) = (prime(n)^5 - prime(n))/2.

Offset 1, canonical program `A138424.P9846473390818304069`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138424.P9846473390818304069.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138424.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138425.P15250996574324139531

`A138404(n+1)/3`
-/

namespace A138425.P15250996574324139531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 3

end

end A138425.P15250996574324139531

noncomputable section

/-- A138425: a(n) = (prime(n)^5 - prime(n))/3.

Offset 1, canonical program `A138425.P15250996574324139531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138425 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138425.P15250996574324139531.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138426.P573586868514180922

`A138404(n+1)/5`
-/

namespace A138426.P573586868514180922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 5

end

end A138426.P573586868514180922

noncomputable section

/-- A138426: a(n) = ((prime(n))^5-prime(n))/5.

Offset 1, canonical program `A138426.P573586868514180922`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138426 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138426.P573586868514180922.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138426.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138427.P16097215975981541627

`A138404(n+1)/6`
-/

namespace A138427.P16097215975981541627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 6

end

end A138427.P16097215975981541627

noncomputable section

/-- A138427: a(n) = (prime(n)^5 - prime(n))/6.

Offset 1, canonical program `A138427.P16097215975981541627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138427 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138427.P16097215975981541627.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138427.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138428.P16215702972878224398

`A138404(n+1)/10`
-/

namespace A138428.P16215702972878224398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 10

end

end A138428.P16215702972878224398

noncomputable section

/-- A138428: a(n) = (prime(n)^5 - prime(n))/10.

Offset 1, canonical program `A138428.P16215702972878224398`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138428 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138428.P16215702972878224398.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138428.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138429.P2386023419108001403

`A138404(n+1)/15`
-/

namespace A138429.P2386023419108001403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) : ℚ) / 15

end

end A138429.P2386023419108001403

noncomputable section

/-- A138429: a(n) = (prime(n)^5 - prime(n))/15.

Offset 1, canonical program `A138429.P2386023419108001403`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138429 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138429.P2386023419108001403.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138404, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138431.P2547013115861901951

`A138405(n+1)/2`
-/

namespace A138431.P2547013115861901951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138405 (n + 1) : ℚ) / 2

end

end A138431.P2547013115861901951

noncomputable section

/-- A138431: a(n) = ((n-th prime)^5-(n-th prime)^2)/2.

Offset 1, canonical program `A138431.P2547013115861901951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138405, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138431 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138431.P2547013115861901951.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138405, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138431.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138439.P6352298735939435582

`A138407(n+1)/2`
-/

namespace A138439.P6352298735939435582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138407 (n + 1) : ℚ) / 2

end

end A138439.P6352298735939435582

noncomputable section

/-- A138439: a(n) = (prime(n)^5 - prime(n)^4)/2.

Offset 1, canonical program `A138439.P6352298735939435582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138439 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138439.P6352298735939435582.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138407, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138440.P18082488222228574981

`A138408(n+1)/2`
-/

namespace A138440.P18082488222228574981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138408 (n + 1) : ℚ) / 2

end

end A138440.P18082488222228574981

noncomputable section

/-- A138440: a(n) = ((n-th prime)^6-(n-th prime))/2.

Offset 1, canonical program `A138440.P18082488222228574981`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138408, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138440 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138440.P18082488222228574981.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138408, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138440.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138441.P11845817333899223938

`A138409(n+1)/2`
-/

namespace A138441.P11845817333899223938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 2

end

end A138441.P11845817333899223938

noncomputable section

/-- A138441: a(n) = ((n-th prime)^6-(n-th prime^2))/2.

Offset 1, canonical program `A138441.P11845817333899223938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138441 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138441.P11845817333899223938.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138441.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138442.P6492284779242872051

`A138409(n+1)/3`
-/

namespace A138442.P6492284779242872051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 3

end

end A138442.P6492284779242872051

noncomputable section

/-- A138442: a(n) = ((n-th prime)^6-(n-th prime^2))/3.

Offset 1, canonical program `A138442.P6492284779242872051`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138442 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138442.P6492284779242872051.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138443.P2759808841860568747

`A138409(n+1)/4`
-/

namespace A138443.P2759808841860568747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 4

end

end A138443.P2759808841860568747

noncomputable section

/-- A138443: a(n) = ((n-th prime)^6-(n-th prime^2))/4.

Offset 1, canonical program `A138443.P2759808841860568747`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138443 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138443.P2759808841860568747.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138443.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138444.P17809889728788974870

`A138409(n+1)/5`
-/

namespace A138444.P17809889728788974870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 5

end

end A138444.P17809889728788974870

noncomputable section

/-- A138444: a(n) = ((n-th prime)^6-(n-th prime^2))/5.

Offset 1, canonical program `A138444.P17809889728788974870`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138444 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138444.P17809889728788974870.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138445.P4192572878039783319

`A138409(n+1)/6`
-/

namespace A138445.P4192572878039783319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138409 (n + 1) : ℚ) / 6

end

end A138445.P4192572878039783319

noncomputable section

/-- A138445: a(n) = ((n-th prime)^6-(n-th prime^2))/6.

Offset 1, canonical program `A138445.P4192572878039783319`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138445 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138445.P4192572878039783319.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138446.P14776877047564728891

`2*A122220(n+1)`
-/

namespace A138446.P14776877047564728891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122220 (n + 1)

end

end A138446.P14776877047564728891

noncomputable section

/-- A138446: a(n) = ((n-th prime)^6-(n-th prime)^2)/10.

Offset 1, canonical program `A138446.P14776877047564728891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138446 (n : ℕ) : ℤ :=
  A138446.P14776877047564728891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138672.P13453583101781817498

`A129701(n+1)%A000040(n+1)`
-/

namespace A138672.P13453583101781817498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129701 (n + 1)) (A000040 (n + 1))

end

end A138672.P13453583101781817498

noncomputable section

/-- A138672: a(n) = prime(n)^3 mod prime(n-1).

Offset 2, canonical program `A138672.P13453583101781817498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138672 (n : ℕ) : ℤ :=
  A138672.P13453583101781817498.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138673.P13662131802977014439

`A133535(n+1)%A000040(n+1)`
-/

namespace A138673.P13662131802977014439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133535 (n + 1)) (A000040 (n + 1))

end

end A138673.P13662131802977014439

noncomputable section

/-- A138673: a(n) = prime(n)^4 mod prime(n-1).

Offset 2, canonical program `A138673.P13662131802977014439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138673 (n : ℕ) : ℤ :=
  A138673.P13662131802977014439.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138674.P18389301819403337778

`A133536(n+1)%A000040(n+1)`
-/

namespace A138674.P18389301819403337778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133536 (n + 1)) (A000040 (n + 1))

end

end A138674.P18389301819403337778

noncomputable section

/-- A138674: a(n) = prime(n)^5 mod prime(n-1).

Offset 2, canonical program `A138674.P18389301819403337778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138674 (n : ℕ) : ℤ :=
  A138674.P18389301819403337778.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138675.P18377254725840946739

`A133537(n+1)%A000040(n+1)`
-/

namespace A138675.P18377254725840946739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133537 (n + 1)) (A000040 (n + 1))

end

end A138675.P18377254725840946739

noncomputable section

/-- A138675: a(n) = prime(n)^6 mod prime(n-1).

Offset 2, canonical program `A138675.P18377254725840946739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138675 (n : ℕ) : ℤ :=
  A138675.P18377254725840946739.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138678.P13571776916045374750

`(A038702(n+2)*A138676(n+2))%A000040(n+1)`
-/

namespace A138678.P13571776916045374750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038702 (n + 2) * A138676 (n + 2)) (A000040 (n + 1))

end

end A138678.P13571776916045374750

noncomputable section

/-- A138678: Prime(n)^9 mod prime(n-1).

Offset 2, canonical program `A138678.P13571776916045374750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138678 (n : ℕ) : ℤ :=
  A138678.P13571776916045374750.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138694.P473450987914299284

`3*A059325(n+2)-2`
-/

namespace A138694.P473450987914299284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059325 (n + 2) - 2

end

end A138694.P473450987914299284

noncomputable section

/-- A138694: Numbers n such that the set {2*n+p^2, p any prime} contains exactly one prime.

Offset 1, canonical program `A138694.P473450987914299284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138694 (n : ℕ) : ℤ :=
  A138694.P473450987914299284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A138694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138969.P667284554888184623

`A091177(n+1)+A057428(n)`
-/

namespace A138969.P667284554888184623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091177 (n + 1) + A057428 n

end

end A138969.P667284554888184623

noncomputable section

/-- A138969: Positions of the primes congruent to 2 mod 3 when all primes except 3 are listed in order.

Offset 1, canonical program `A138969.P667284554888184623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138969 (n : ℕ) : ℤ :=
  A138969.P667284554888184623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139190.P14554345620365022831

`(A139189(n+1)-1)/2`
-/

namespace A139190.P14554345620365022831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139189 (n + 1) - 1 : ℚ) / 2

end

end A139190.P14554345620365022831

noncomputable section

/-- A139190: a(n) = (prime(n)!-2)/2.

Offset 1, canonical program `A139190.P14554345620365022831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139189, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139190 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139190.P14554345620365022831.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139189, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139190.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139191.P8556745552501629682

`(A139189(n+2)-2)/3`
-/

namespace A139191.P8556745552501629682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139189 (n + 2) - 2 : ℚ) / 3

end

end A139191.P8556745552501629682

noncomputable section

/-- A139191: Natural numbers of the form (prime(n)!-3)/3.

Offset 1, canonical program `A139191.P8556745552501629682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139189, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139191 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139191.P8556745552501629682.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139189, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139192.P8602614665101011949

`(A139189(n+3)-3)/4`
-/

namespace A139192.P8602614665101011949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139189 (n + 3) - 3 : ℚ) / 4

end

end A139192.P8602614665101011949

noncomputable section

/-- A139192: a(n) = (prime(n)! - 4)/4.

Offset 3, canonical program `A139192.P8602614665101011949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139189, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139192.P8602614665101011949.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139189, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139239.P5695854646472699783

`A139238(n+1)/2`
-/

namespace A139239.P5695854646472699783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139238 (n + 1) : ℚ) / 2

end

end A139239.P5695854646472699783

noncomputable section

/-- A139239: First differences of Mersenne numbers A001348, divided by 2.

Offset 1, canonical program `A139239.P5695854646472699783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139238, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139239 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139239.P5695854646472699783.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139238, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139353.P5602205039564721936

`A139351(n)*A139352(n)`
-/

namespace A139353.P5602205039564721936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n * A139352 n

end

end A139353.P5602205039564721936

noncomputable section

/-- A139353: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives e(n)*o(n).

Offset 0, canonical program `A139353.P5602205039564721936`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139353 (n : ℕ) : ℤ :=
  A139353.P5602205039564721936.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139351, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139353.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139844.P13747838189349687796

`∩[A106927(n+1), A122487(n+1)]`
-/

namespace A139844.P13747838189349687796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P13747838189349687796

noncomputable section

/-- A139844: Primes of the form 2x^2 + 2xy + 53y^2.

Offset 1, canonical program `A139844.P13747838189349687796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A139844 (n : ℕ) : ℤ :=
  (A139844.P13747838189349687796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A139844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139990.P3953884192149250198

`∩[A139849(n+1), A139919(n+1)]`
-/

namespace A139990.P3953884192149250198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139990.P3953884192149250198

noncomputable section

/-- A139990: Primes of the form 12*x^2+12*x*y+73*y^2.

Offset 1, canonical program `A139990.P3953884192149250198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4964 terms. -/
def A139990 (n : ℕ) : ℤ :=
  (A139990.P3953884192149250198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4964 terms. -/
def A139990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139994.P12283442162161992640

`∩[A139859(n+1), A139874(n+1)]`
-/

namespace A139994.P12283442162161992640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139994.P12283442162161992640

noncomputable section

/-- A139994: Primes of the form 24x^2+35y^2.

Offset 1, canonical program `A139994.P12283442162161992640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A139994 (n : ℕ) : ℤ :=
  (A139994.P12283442162161992640.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. -/
def A139994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139997.P868393966600918844

`∩[A139856(n+1), A139877(n+1)]`
-/

namespace A139997.P868393966600918844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139997.P868393966600918844

noncomputable section

/-- A139997: Primes of the form 29x^2+2xy+29y^2.

Offset 1, canonical program `A139997.P868393966600918844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. -/
def A139997 (n : ℕ) : ℤ :=
  (A139997.P868393966600918844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. -/
def A139997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140038.P13603714832296326735

`∩[A107201(n+1), A139874(n+1)]`
-/

namespace A140038.P13603714832296326735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140038.P13603714832296326735

noncomputable section

/-- A140038: Primes of the form 24x^2+24xy+83y^2.

Offset 1, canonical program `A140038.P13603714832296326735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A140038 (n : ℕ) : ℤ :=
  (A140038.P13603714832296326735.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2523 terms. -/
def A140038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140111.P4700793734949317072

`p?[A065091(n+1)+A024675(n+1)]`
-/

namespace A140111.P4700793734949317072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140111.P4700793734949317072

noncomputable section

/-- A140111: Primes of the form prime(x) + prime(x+1) - (prime(x+1) - prime(x))/2.

Offset 1, canonical program `A140111.P4700793734949317072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140111 (n : ℕ) : ℤ :=
  A140111.P4700793734949317072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140112.P13939740293674947011

`p?[A045344(n+2)+A024675(n+1)]`
-/

namespace A140112.P13939740293674947011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) + A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140112.P13939740293674947011

noncomputable section

/-- A140112: Primes of the form prime(x) + prime(x+1) + (prime(x+1)-prime(x))/2.

Offset 1, canonical program `A140112.P13939740293674947011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140112 (n : ℕ) : ℤ :=
  A140112.P13939740293674947011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A140112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140191.P1113677549070139326

`A008611(A001316(n)-(n+1)%3)`
-/

namespace A140191.P1113677549070139326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A001316 n - (((n + 1) % 3 : ℕ) : ℤ)).toNat

end

end A140191.P1113677549070139326

noncomputable section

/-- A140191: Fix e = 3; a(n) gives number of multiples ke (0 <= k <= n/e) which are children of n.

Offset 0, canonical program `A140191.P1113677549070139326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A140191 (n : ℕ) : ℤ :=
  A140191.P1113677549070139326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A140191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140228.P395581750922971096

`A059174(n)+A132366(n)-A000125(n)`
-/

namespace A140228.P395581750922971096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 n + (A132366 n - A000125 n)

end

end A140228.P395581750922971096

noncomputable section

/-- A140228: Binomial transform of [1, 5, 10, 10, 5, 1, 1, -1, 1, -1, 1, ...].

Offset 0, canonical program `A140228.P395581750922971096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140228 (n : ℕ) : ℤ :=
  A140228.P395581750922971096.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140303.P5150997837901414989

`A000244(A025581(n))`
-/

namespace A140303.P5150997837901414989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat

end

end A140303.P5150997837901414989

noncomputable section

/-- A140303: Triangle T(n,k) = 3^(n-k) read by rows.

Offset 0, canonical program `A140303.P5150997837901414989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140303 (n : ℕ) : ℤ :=
  A140303.P5150997837901414989.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141079.P5694863447518529765

`abs(A117301(n+1))`
-/

namespace A141079.P5694863447518529765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117301 (n + 1)|

end

end A141079.P5694863447518529765

noncomputable section

/-- A141079: a(n)=abs(p(n)*p(n+3)-p(n+1)*p(n+2)), where p(n)=n-th prime.

Offset 1, canonical program `A141079.P5694863447518529765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141079 (n : ℕ) : ℤ :=
  A141079.P5694863447518529765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A141079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141086.P12193542011769711524

`A014689(A001105(n+1))`
-/

namespace A141086.P12193542011769711524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A001105 (n + 1)).toNat

end

end A141086.P12193542011769711524

noncomputable section

/-- A141086: a(n) = prime(2*n^2) - 2*n^2.

Offset 1, canonical program `A141086.P12193542011769711524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141086 (n : ℕ) : ℤ :=
  A141086.P12193542011769711524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141086.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141101.P12205522960712551337

`A014689(A005843(n+1))`
-/

namespace A141101.P12205522960712551337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A005843 (n + 1)).toNat

end

end A141101.P12205522960712551337

noncomputable section

/-- A141101: a(n) = prime(2*n) - 2*n.

Offset 1, canonical program `A141101.P12205522960712551337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141101 (n : ℕ) : ℤ :=
  A141101.P12205522960712551337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141129.P11126076675905361379

`A014689((n+1)²)`
-/

namespace A141129.P11126076675905361379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 ((n + 1) ^ 2)

end

end A141129.P11126076675905361379

noncomputable section

/-- A141129: a(n) = prime(n^2) - n^2.

Offset 1, canonical program `A141129.P11126076675905361379`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141129 (n : ℕ) : ℤ :=
  A141129.P11126076675905361379.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141169.P645474415276948061

`A000045(A002262(n))`
-/

namespace A141169.P645474415276948061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n).toNat

end

end A141169.P645474415276948061

noncomputable section

/-- A141169: Triangle of Fibonacci numbers, read by rows: T(n,k) = A000045(k), 0<=k<=n.

Offset 0, canonical program `A141169.P645474415276948061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141169 (n : ℕ) : ℤ :=
  A141169.P645474415276948061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141364.P16742336055309194620

`abs(2-A141351(n))`
-/

namespace A141364.P16742336055309194620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A141351 n|

end

end A141364.P16742336055309194620

noncomputable section

/-- A141364: a(n) = C(n)-1+0^n where C(n) = A000108(n).

Offset 0, canonical program `A141364.P16742336055309194620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A141364 (n : ℕ) : ℤ :=
  A141364.P16742336055309194620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A141364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141396.P1544682609068793782

`A000244(A002262(n))*A001651(A004736(n+1))`
-/

namespace A141396.P1544682609068793782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A001651 (A004736 (n + 1)).toNat

end

end A141396.P1544682609068793782

noncomputable section

/-- A141396: Triangle read by rows, antidiagonals of a multiplication table: 3^n * (numbers not multiples of 3).

Offset 0, canonical program `A141396.P1544682609068793782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141396 (n : ℕ) : ℤ :=
  A141396.P1544682609068793782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141419.P13935125868249528284

`n+1-C(A025581(n), 2)`
-/

namespace A141419.P13935125868249528284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (A025581 n).toNat 2 : ℤ)

end

end A141419.P13935125868249528284

noncomputable section

/-- A141419: Triangle read by rows: T(n, k) = A000217(n) - A000217(n - k) with 1 <= k <= n.

Offset 1, canonical program `A141419.P13935125868249528284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141419 (n : ℕ) : ℤ :=
  A141419.P13935125868249528284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141437.P18245047897130633086

`comp[A141436(n+1)-1]+1`
-/

namespace A141437.P18245047897130633086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141436 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A141437.P18245047897130633086

noncomputable section

/-- A141437: Complement of A141436.

Offset 1, canonical program `A141437.P18245047897130633086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141437 (n : ℕ) : ℤ :=
  (A141437.P18245047897130633086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141544.P1087422406127598241

`A087915(n+2)-1`
-/

namespace A141544.P1087422406127598241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087915 (n + 2) - 1

end

end A141544.P1087422406127598241

noncomputable section

/-- A141544: Odd numbers k such that 2k+5 is a prime.

Offset 1, canonical program `A141544.P1087422406127598241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141544 (n : ℕ) : ℤ :=
  A141544.P1087422406127598241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141544.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141663.P1637337102375107408

`abs(A005145(n+1)-A002262(n)²)`
-/

namespace A141663.P1637337102375107408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005145 (n + 1) - A002262 n ^ 2|

end

end A141663.P1637337102375107408

noncomputable section

/-- A141663: Regular triangle T(n,m) = abs(prime(n) - m^2), 0 <= m <= n-1.

Offset 1, canonical program `A141663.P1637337102375107408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141663 (n : ℕ) : ℤ :=
  A141663.P1637337102375107408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141679.P12256375055810763874

`A004442(round(3/A099375(n)))-1`
-/

namespace A141679.P12256375055810763874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway (3 / (A099375 n : ℚ))).toNat - 1

end

end A141679.P12256375055810763874

noncomputable section

/-- A141679: Triangle of coefficients of the inverse of A058071.

Offset 1, canonical program `A141679.P12256375055810763874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141679 (n : ℕ) : ℤ :=
  A141679.P12256375055810763874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141811.P3259145335164185282

`A000108(A002262(n))*A001700(A025581(n))`
-/

namespace A141811.P3259145335164185282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A001700 (A025581 n).toNat

end

end A141811.P3259145335164185282

noncomputable section

/-- A141811: Partial Catalan numbers: triangle read by rows n = 1, 2, 3, ... and columns k = 0, 1, ..., n-1.

Offset 1, canonical program `A141811.P3259145335164185282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141811 (n : ℕ) : ℤ :=
  A141811.P3259145335164185282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143071.P10370426072631450913

`eq[1, A000120(log2(A001316(n)))]`
-/

namespace A143071.P10370426072631450913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A143071.P10370426072631450913

noncomputable section

/-- A143071: A positive integer n is included if the number of 1's in the binary representation of n is a power of 2 (including being possibly 1).

Offset 1, canonical program `A143071.P10370426072631450913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143071 (n : ℕ) : ℤ :=
  (A143071.P10370426072631450913.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143122.P9967688263514722923

`A003422(A002024(n+1))-A003422(A002262(n))`
-/

namespace A143122.P9967688263514722923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (A002024 (n + 1)).toNat - A003422 (A002262 n).toNat

end

end A143122.P9967688263514722923

noncomputable section

/-- A143122: Triangle read by rows, T(n,k) = Sum_{j=k..n} j!, 0 <= k <= n.

Offset 0, canonical program `A143122.P9967688263514722923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A143122 (n : ℕ) : ℤ :=
  A143122.P9967688263514722923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A143122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143198.P13248187139293175718

`A112367(n)*A123578(n)-1`
-/

namespace A143198.P13248187139293175718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n * A123578 n - 1

end

end A143198.P13248187139293175718

noncomputable section

/-- A143198: Triangle read by rows T(n, k) = n + (n+1)*(k-1)*(k+2)/2.

Offset 0, canonical program `A143198.P13248187139293175718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143198 (n : ℕ) : ℤ :=
  A143198.P13248187139293175718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143254.P10504582063666441600

`A016813(A002262(n))*A016813(A003056(n))`
-/

namespace A143254.P10504582063666441600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A002262 n).toNat * A016813 (A003056 n).toNat

end

end A143254.P10504582063666441600

noncomputable section

/-- A143254: Triangle read by rows, T(n,k) = (4n-3)*(4k-3); 1<=k<=n.

Offset 1, canonical program `A143254.P10504582063666441600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143254 (n : ℕ) : ℤ :=
  A143254.P10504582063666441600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143360.P13854882612011219664

`A037955(n+1)+A026023(n)`
-/

namespace A143360.P13854882612011219664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (n + 1) + A026023 n

end

end A143360.P13854882612011219664

noncomputable section

/-- A143360: Sum of root degrees of all symmetric ordered trees with n edges.

Offset 1, canonical program `A143360.P13854882612011219664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A143360 (n : ℕ) : ℤ :=
  A143360.P13854882612011219664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A143360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143667.P402733352228964657

`3-A123564(n+1)`
-/

namespace A143667.P402733352228964657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A123564 (n + 1)

end

end A143667.P402733352228964657

noncomputable section

/-- A143667: Digits of the infinite Fibonacci word A003849 grouped 2 by 2 and interpreted as a binary value.

Offset 1, canonical program `A143667.P402733352228964657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A143667 (n : ℕ) : ℤ :=
  A143667.P402733352228964657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A143667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143844.P5543645372277359281

`A002262(n)²`
-/

namespace A143844.P5543645372277359281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2

end

end A143844.P5543645372277359281

noncomputable section

/-- A143844: Triangle T(n,k) = k^2 read by rows.

Offset 0, canonical program `A143844.P5543645372277359281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143844 (n : ℕ) : ℤ :=
  A143844.P5543645372277359281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143928.P14190391261956861434

`A079704(n+2)`
-/

namespace A143928.P14190391261956861434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 2)

end

end A143928.P14190391261956861434

noncomputable section

/-- A143928: 2*p^2, for p an odd prime.

Offset 1, canonical program `A143928.P14190391261956861434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143928 (n : ℕ) : ℤ :=
  A143928.P14190391261956861434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143928.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143929.P90318685514600081

`A004736(n+1)*A088305(A002262(n))`
-/

namespace A143929.P90318685514600081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A088305 (A002262 n).toNat

end

end A143929.P90318685514600081

noncomputable section

/-- A143929: Eigentriangle by rows, termwise products of the natural numbers decrescendo and the bisected Fibonacci series.

Offset 1, canonical program `A143929.P90318685514600081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143929 (n : ℕ) : ℤ :=
  A143929.P90318685514600081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143971.P13153355682087978447

`3*A025581(n)+1`
-/

namespace A143971.P13153355682087978447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A025581 n + 1

end

end A143971.P13153355682087978447

noncomputable section

/-- A143971: Triangle read by rows, (3n-2) subsequences decrescendo.

Offset 1, canonical program `A143971.P13153355682087978447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143971 (n : ℕ) : ℤ :=
  A143971.P13153355682087978447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144083.P2540652518003233177

`A164965(A025581(n))`
-/

namespace A144083.P2540652518003233177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 (A025581 n).toNat

end

end A144083.P2540652518003233177

noncomputable section

/-- A144083: Triangle read by rows: partial sums from the right of an A010892 subsequences decrescendo triangle.

Offset 0, canonical program `A144083.P2540652518003233177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144083 (n : ℕ) : ℤ :=
  A144083.P2540652518003233177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144083.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144224.P11886496695467561451

`A122367(A002262(n))`
-/

namespace A144224.P11886496695467561451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (A002262 n).toNat

end

end A144224.P11886496695467561451

noncomputable section

/-- A144224: T(n,k) is the number of idempotent order-preserving full transformations (of an n-element chain) of waist k (waist(alpha) = max(Im(alpha))).

Offset 1, canonical program `A144224.P11886496695467561451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144224 (n : ℕ) : ℤ :=
  A144224.P11886496695467561451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144302.P15425808234958730441

`A049445(eq[1, A049445(n+1)%2]+1)`
-/

namespace A144302.P15425808234958730441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049445 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A144302.P15425808234958730441

noncomputable section

/-- A144302: Odd members of A049445.

Offset 1, canonical program `A144302.P15425808234958730441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4201 terms. -/
def A144302 (n : ℕ) : ℤ :=
  A144302.P15425808234958730441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4201 terms. -/
def A144302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144816.P2801218708024354472

`A046161(A002262(n))*A046161(A025581(n))`
-/

namespace A144816.P2801218708024354472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (A002262 n).toNat * A046161 (A025581 n).toNat

end

end A144816.P2801218708024354472

noncomputable section

/-- A144816: Denominators of triangle T(n,k), n>=0, 0<=k<=n, read by rows: T(n,k) is the coefficient of x^(2*k+1) in polynomial t_n(x), used to define continuous and n times differentiable sigmoidal transfer functions.

Offset 0, canonical program `A144816.P2801218708024354472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144816 (n : ℕ) : ℤ :=
  A144816.P2801218708024354472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145137.P8579127292406980359

`∑[A145136(n)]`
-/

namespace A145137.P8579127292406980359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145137.P8579127292406980359

noncomputable section

/-- A145137: Expansion of x/((1 - x - x^4)*(1 - x)^8).

Offset 0, canonical program `A145137.P8579127292406980359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 686 terms. -/
def A145137 (n : ℕ) : ℤ :=
  A145137.P8579127292406980359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 686 terms. -/
def A145137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145489.P2407978232716720199

`(A145475(n+1)-5)/12`
-/

namespace A145489.P2407978232716720199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145475 (n + 1) - 5 : ℚ) / 12

end

end A145489.P2407978232716720199

noncomputable section

/-- A145489: Numbers k such that 6k + 11 is prime and 12k + 5 is also prime.

Offset 1, canonical program `A145489.P2407978232716720199`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145489 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145489.P2407978232716720199.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145489.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145907.P71648537022638446

`p?[A133280(A102781(n+1))]`
-/

namespace A145907.P71648537022638446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 (A102781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145907.P71648537022638446

noncomputable section

/-- A145907: Primes p such that p + ceiling(sqrt(p)) is also prime.

Offset 1, canonical program `A145907.P71648537022638446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A145907 (n : ℕ) : ℤ :=
  A145907.P71648537022638446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A145907.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A147586.P18346588282080735820

`A142710(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147586.P18346588282080735820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142710 n : ℚ) / 2

end

end A147586.P18346588282080735820

noncomputable section

/-- A147586: a(n) = A142710(n)/2.

Offset 0, canonical program `A147586.P18346588282080735820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142710, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147586 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A147586.P18346588282080735820.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142710, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147843.P2798583379545073813

`-n*Δ[A078616(abs(1-n))]`
-/

namespace A147843.P2798583379545073813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (f1 (n + 1) - f1 n))

end

end A147843.P2798583379545073813

noncomputable section

/-- A147843: a(n) = -n*A010815(n).

Offset 0, canonical program `A147843.P2798583379545073813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147843 (n : ℕ) : ℤ :=
  A147843.P2798583379545073813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151669.P3956910495585048482

`A001316(n)*A151666(n)`
-/

namespace A151669.P3956910495585048482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A151666 n

end

end A151669.P3956910495585048482

noncomputable section

/-- A151669: G.f.: Product_{k>=0} (1 + 2*x^(4^k)).

Offset 0, canonical program `A151669.P3956910495585048482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151669 (n : ℕ) : ℤ :=
  A151669.P3956910495585048482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151739.P9308025043198049379

`p?[A051349(n+10)-A051349(n)]`
-/

namespace A151739.P9308025043198049379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 10) - A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151739.P9308025043198049379

noncomputable section

/-- A151739: Primes which are the sum of ten consecutive composite numbers.

Offset 1, canonical program `A151739.P9308025043198049379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. -/
def A151739 (n : ℕ) : ℤ :=
  A151739.P9308025043198049379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. -/
def A151739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151781.P6933814142392635971

`∑[A151779(n+1)]`
-/

namespace A151781.P6933814142392635971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151781.P6933814142392635971

noncomputable section

/-- A151781: Partial sums of A151779.

Offset 1, canonical program `A151781.P6933814142392635971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151781 (n : ℕ) : ℤ :=
  A151781.P6933814142392635971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151904.P13386682430961133461

`(3^A151902(n)-1)/2`
-/

namespace A151904.P13386682430961133461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (A151902 n : ℤ) - 1) / 2

end

end A151904.P13386682430961133461

noncomputable section

/-- A151904: a(n) = (3^(wt(k)+f(j))-1)/2 if n = 6k+j, 0 <= j < 6, where wt = A000120, f = A151899.

Offset 0, canonical program `A151904.P13386682430961133461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151904 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151904.P13386682430961133461.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A151921.P9708646044920363871

`A147582(n)-a(n-1)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A151921.P9708646044920363871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  A147582 n - a (n - 1)

end

end A151921.P9708646044920363871

noncomputable section

/-- A151921: Net gain in number of ON cells at stage n of the cellular automaton described in A079317.

Offset 0, canonical program `A151921.P9708646044920363871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1468 terms. -/
def A151921 (n : ℕ) : ℤ :=
  A151921.P9708646044920363871.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1468 terms. -/
def A151921.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A152192.P12291486857146043710

`A000045(A026741(n))^A134451(n)`
-/

namespace A152192.P12291486857146043710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (A026741 n).toNat : ℚ) ^ (A134451 n : ℤ)

end

end A152192.P12291486857146043710

noncomputable section

/-- A152192: a(n) = Product_{k=1..floor((n-1)/2)} (1 + 4*cos(2*Pi*k/n)^2).

Offset 0, canonical program `A152192.P12291486857146043710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A152192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152192.P12291486857146043710.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A152192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152527.P9049603254915990332

`A111071(n+2)/2`
-/

namespace A152527.P9049603254915990332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111071 (n + 2) : ℚ) / 2

end

end A152527.P9049603254915990332

noncomputable section

/-- A152527: a(n) = (p(n)*p(n+1)-p(n+2))/2, where p(n) is the n-th odd prime.

Offset 1, canonical program `A152527.P9049603254915990332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152527 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152527.P9049603254915990332.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152527.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152567.P4256859840278819106

`eq[1, A049445(n+1)%2]+1`
-/

namespace A152567.P4256859840278819106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049445 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A152567.P4256859840278819106

noncomputable section

/-- A152567: Numbers k such that A049445(k) is odd.

Offset 1, canonical program `A152567.P4256859840278819106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4201 terms. -/
def A152567 (n : ℕ) : ℤ :=
  (A152567.P4256859840278819106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4201 terms. -/
def A152567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152571.P12656702999726682672

`abs(A152568(n))*A152568(n)`
-/

namespace A152571.P12656702999726682672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152568 n| * A152568 n

end

end A152571.P12656702999726682672

noncomputable section

/-- A152571: Triangle T(n,k) read by rows: T(n,n) = -1, T(n,0) = 4^(n - 1), T(n,k) = -4^(n - k - 1), 1 <= k <= n - 1.

Offset 0, canonical program `A152571.P12656702999726682672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152571 (n : ℕ) : ℤ :=
  A152571.P12656702999726682672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152671.P5270819374685445221

`A152670(n+1)/2`
-/

namespace A152671.P5270819374685445221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152670 (n + 1) : ℚ) / 2

end

end A152671.P5270819374685445221

noncomputable section

/-- A152671: Even Catalan numbers divided by 2.

Offset 1, canonical program `A152671.P5270819374685445221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152671.P5270819374685445221.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152670, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152671.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152679.P11876912117743683288

`A152678(n+1)/2`
-/

namespace A152679.P11876912117743683288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152678 (n + 1) : ℚ) / 2

end

end A152679.P11876912117743683288

noncomputable section

/-- A152679: Even members of A000203, divided by 2.

Offset 1, canonical program `A152679.P11876912117743683288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152678, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152679 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152679.P11876912117743683288.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152678, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152723.P1073179501699945785

`A023416(gcd(2^A023416(n+1), A001316(n+1)))`
-/

namespace A152723.P1073179501699945785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.gcd (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A023416 (n + 1) : ℤ))) (A001316 (n + 1)))

end

end A152723.P1073179501699945785

noncomputable section

/-- A152723: In binary, count of least frequent bit of n.

Offset 1, canonical program `A152723.P1073179501699945785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152723 (n : ℕ) : ℤ :=
  A152723.P1073179501699945785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152815.P5566439542825391343

`C(A004526(A003056(n)), A002262(n))`
-/

namespace A152815.P5566439542825391343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (A003056 n).toNat).toNat (A002262 n).toNat

end

end A152815.P5566439542825391343

noncomputable section

/-- A152815: Triangle T(n,k), read by rows given by [1,0,-1,0,0,0,0,0,0,...] DELTA [0,1,-1,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A152815.P5566439542825391343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152815 (n : ℕ) : ℤ :=
  (A152815.P5566439542825391343.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153036.P15641331792470478746

`A090996(n)-A043545(n)`
-/

namespace A153036.P15641331792470478746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n - A043545 n

end

end A153036.P15641331792470478746

noncomputable section

/-- A153036: Integer parts of the full Stern-Brocot tree.

Offset 0, canonical program `A153036.P15641331792470478746`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153036 (n : ℕ) : ℤ :=
  A153036.P15641331792470478746.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153135.P6228416679283072176

`p?[A153134(n+1)]`
-/

namespace A153135.P6228416679283072176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153135.P6228416679283072176

noncomputable section

/-- A153135: Primes p such that 6*p - 7 is also prime.

Offset 1, canonical program `A153135.P6228416679283072176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1132 terms. -/
def A153135 (n : ℕ) : ℤ :=
  A153135.P6228416679283072176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1132 terms. -/
def A153135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153143.P16912639068039424333

`A153081(n+3)-3`
-/

namespace A153143.P16912639068039424333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 3) - 3

end

end A153143.P16912639068039424333

noncomputable section

/-- A153143: Nonnegative numbers k such that 2k + 19 is prime.

Offset 1, canonical program `A153143.P16912639068039424333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A153143 (n : ℕ) : ℤ :=
  A153143.P16912639068039424333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A153143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153210.P15842624019466504602

`p?[2*A049098(n+1)+1]`
-/

namespace A153210.P15842624019466504602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049098 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153210.P15842624019466504602

noncomputable section

/-- A153210: Primes of the form 2*p+1 where p is prime and p+1 is not squarefree.

Offset 1, canonical program `A153210.P15842624019466504602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1328 terms. -/
def A153210 (n : ℕ) : ℤ :=
  A153210.P15842624019466504602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1328 terms. -/
def A153210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153307.P790128835309383341

`comp[A090614(n+1)]`
-/

namespace A153307.P790128835309383341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153307.P790128835309383341

noncomputable section

/-- A153307: Numbers k such that 14*k+3 is not prime.

Offset 1, canonical program `A153307.P790128835309383341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153307 (n : ℕ) : ℤ :=
  (A153307.P790128835309383341.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153336.P3079689303355594554

`A153334(2*(n+1))`
-/

namespace A153336.P3079689303355594554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 (2 * (n + 1))

end

end A153336.P3079689303355594554

noncomputable section

/-- A153336: Number of zig-zag paths from top to bottom of a 2n by 2n square whose color is that of the top right corner.

Offset 1, canonical program `A153336.P3079689303355594554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A153336 (n : ℕ) : ℤ :=
  A153336.P3079689303355594554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A153336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153337.P14754354263964999723

`A153334(Δ[n²])`
-/

namespace A153337.P14754354263964999723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153337.P14754354263964999723

noncomputable section

/-- A153337: Number of zig-zag paths from top to bottom of a 2n-1 by 2n-1 square whose color is that of the top right corner.

Offset 1, canonical program `A153337.P14754354263964999723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A153337 (n : ℕ) : ℤ :=
  A153337.P14754354263964999723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A153337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153403.P824357136833044113

`comp[A102338(n+1)]`
-/

namespace A153403.P824357136833044113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153403.P824357136833044113

noncomputable section

/-- A153403: Numbers k such that 10*k+3 is not prime.

Offset 1, canonical program `A153403.P824357136833044113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153403 (n : ℕ) : ℤ :=
  (A153403.P824357136833044113.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153480.P781182470284605165

`2*A049001(n+1)`
-/

namespace A153480.P781182470284605165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049001 (n + 1)

end

end A153480.P781182470284605165

noncomputable section

/-- A153480: a(n) = 2*prime(n)^2 - 4.

Offset 0, canonical program `A153480.P781182470284605165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153480 (n : ℕ) : ℤ :=
  A153480.P781182470284605165.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153480.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153638.P5475355786844467178

`A050493(n)%2`
-/

namespace A153638.P5475355786844467178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050493 n) 2

end

end A153638.P5475355786844467178

noncomputable section

/-- A153638: Odiousness of triangular numbers.

Offset 0, canonical program `A153638.P5475355786844467178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153638 (n : ℕ) : ℤ :=
  A153638.P5475355786844467178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154311.P8823212996274224899

`lt[A007605(n+1), A007953(n+1)]+1`
-/

namespace A154311.P8823212996274224899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A154311.P8823212996274224899

noncomputable section

/-- A154311: Numbers n such that sum of digits of n > sum of digits of prime(n).

Offset 1, canonical program `A154311.P8823212996274224899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154311 (n : ℕ) : ℤ :=
  (A154311.P8823212996274224899.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154438.P677058482357628311

`A092569(A153153(n))`
-/

namespace A154438.P677058482357628311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A153153 n).toNat

end

end A154438.P677058482357628311

noncomputable section

/-- A154438: Permutation of nonnegative integers: A059893-conjugate of A154436.

Offset 0, canonical program `A154438.P677058482357628311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154438 (n : ℕ) : ℤ :=
  A154438.P677058482357628311.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154448.P8908131328963230006

`xor(A004526(n), A153142(A003188(n)))`
-/

namespace A154448.P8908131328963230006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 n) (A153142 (A003188 n).toNat)

end

end A154448.P8908131328963230006

noncomputable section

/-- A154448: Permutation of nonnegative integers induced by wreath recursion a=s(b,c), b=s(c,a), c=(c,c), starting from state a, rewriting bits from the second most significant bit toward the least significant end.

Offset 0, canonical program `A154448.P8908131328963230006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154448 (n : ℕ) : ℤ :=
  A154448.P8908131328963230006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154611.P2357276127298579042

`A153347(n+1)-1`
-/

namespace A154611.P2357276127298579042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153347 (n + 1) - 1

end

end A154611.P2357276127298579042

noncomputable section

/-- A154611: Numbers n such that 7*n+3 is not prime.

Offset 1, canonical program `A154611.P2357276127298579042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154611 (n : ℕ) : ℤ :=
  A154611.P2357276127298579042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155038.P358977146080396517

`abs(A152568(n))`
-/

namespace A155038.P358977146080396517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152568 n|

end

end A155038.P358977146080396517

noncomputable section

/-- A155038: Triangle read by rows: T(n,k) is the number of compositions of n with first part k.

Offset 1, canonical program `A155038.P358977146080396517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155038 (n : ℕ) : ℤ :=
  A155038.P358977146080396517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155051.P17278447736844472372

`∑[A097331(or(1, n))]`
-/

namespace A155051.P17278447736844472372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155051.P17278447736844472372

noncomputable section

/-- A155051: Expansion of c(x^2)*(1+x)/(1-x), c(x) the g.f. of A000108.

Offset 0, canonical program `A155051.P17278447736844472372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A155051 (n : ℕ) : ℤ :=
  A155051.P17278447736844472372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A155051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155587.P7484894017318581983

`∑[A120588(n)]`
-/

namespace A155587.P7484894017318581983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155587.P7484894017318581983

noncomputable section

/-- A155587: Expansion of (1 + x*c(x))/(1 - x), where c(x) is the g.f. of A000108.

Offset 0, canonical program `A155587.P7484894017318581983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A155587 (n : ℕ) : ℤ :=
  A155587.P7484894017318581983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A155587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155786.P8875892173280878446

`A045344(eq[1, A040164(n+1)])`
-/

namespace A155786.P8875892173280878446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A155786.P8875892173280878446

noncomputable section

/-- A155786: Primes whose first and last digits differ by 1.

Offset 1, canonical program `A155786.P8875892173280878446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1579 terms. -/
def A155786 (n : ℕ) : ℤ :=
  A155786.P8875892173280878446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1579 terms. -/
def A155786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156014.P3371744540738237812

`∩[A023216(n+1), A156004(n+1)]`
-/

namespace A156014.P3371744540738237812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156014.P3371744540738237812

noncomputable section

/-- A156014: Primes p such that 4*p+9, 8*p+21 are both prime.

Offset 1, canonical program `A156014.P3371744540738237812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156014 (n : ℕ) : ℤ :=
  (A156014.P3371744540738237812.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156095.P11980629005903725937

`A124297(2*n)`
-/

namespace A156095.P11980629005903725937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124297 (2 * n)

end

end A156095.P11980629005903725937

noncomputable section

/-- A156095: 5 F(2n) (F(2n) + 1) + 1 where F(n) denotes the n-th Fibonacci number.

Offset 0, canonical program `A156095.P11980629005903725937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A156095 (n : ℕ) : ℤ :=
  A156095.P11980629005903725937.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A156095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156112.P4814909740814716344

`p?[A156104(n+1)-36]`
-/

namespace A156112.P4814909740814716344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156112.P4814909740814716344

noncomputable section

/-- A156112: Primes p such that p+36 and p+72 are both prime.

Offset 1, canonical program `A156112.P4814909740814716344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. -/
def A156112 (n : ℕ) : ℤ :=
  A156112.P4814909740814716344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. -/
def A156112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156300.P3226959070886368059

`p?[A156287(n+1)]`
-/

namespace A156300.P3226959070886368059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156300.P3226959070886368059

noncomputable section

/-- A156300: Primes p such that 4*p - 5 is also prime.

Offset 1, canonical program `A156300.P3226959070886368059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 889 terms. -/
def A156300 (n : ℕ) : ℤ :=
  A156300.P3226959070886368059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 889 terms. -/
def A156300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156595.P4549591963331449160

`and(1, Δ[A081603(n)])`
-/

namespace A156595.P4549591963331449160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A156595.P4549591963331449160

noncomputable section

/-- A156595: Fixed point of the morphism 0->011, 1->010.

Offset 0, canonical program `A156595.P4549591963331449160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156595 (n : ℕ) : ℤ :=
  A156595.P4549591963331449160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156663.P8756800367634588388

`A077957(A025581(n))`
-/

namespace A156663.P8756800367634588388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A025581 n).toNat

end

end A156663.P8756800367634588388

noncomputable section

/-- A156663: Triangle by columns, powers of 2 interleaved with zeros.

Offset 0, canonical program `A156663.P8756800367634588388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156663 (n : ℕ) : ℤ :=
  A156663.P8756800367634588388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156735.P3441470020431776995

`floor(A156721(n+1)/A156639(n+1)*A156640(n))`
-/

namespace A156735.P3441470020431776995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156721 (n + 1) : ℚ) / (A156639 (n + 1) : ℚ) * (A156640 n : ℚ)⌋

end

end A156735.P3441470020431776995

noncomputable section

/-- A156735: a(n) = 57122*n^2 + 47320*n + 9801.

Offset 0, canonical program `A156735.P3441470020431776995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156735 (n : ℕ) : ℤ :=
  A156735.P3441470020431776995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156915.P11372308438492800137

`val(eq[3, A023416(n)], 2)+1`
-/

namespace A156915.P11372308438492800137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) 2 + 1

end

end A156915.P11372308438492800137

noncomputable section

/-- A156915: Fixed point of: 4-->1234, 3->123, 2-->12, 1->1.

Offset 1, canonical program `A156915.P11372308438492800137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156915 (n : ℕ) : ℤ :=
  (A156915.P11372308438492800137.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158195.P13663355669615472388

`p?[(n+1)*(A091090(A007953(n))-1)]`
-/

namespace A158195.P13663355669615472388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A091090 (A007953 n).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158195.P13663355669615472388

noncomputable section

/-- A158195: Prime numbers such that sum of digits is even semiprime.

Offset 1, canonical program `A158195.P13663355669615472388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A158195 (n : ℕ) : ℤ :=
  A158195.P13663355669615472388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A158195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158196.P7128410409804886233

`A076035(n)+A076035(n)-A076025(n+1)`
-/

namespace A158196.P7128410409804886233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076035 n + (A076035 n - A076025 (n + 1))

end

end A158196.P7128410409804886233

noncomputable section

/-- A158196: Expansion of (1-x^2*c(x)^4)/(1-3*x*c(x)^2), c(x) the g.f. of A000108.

Offset 0, canonical program `A158196.P7128410409804886233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A158196 (n : ℕ) : ℤ :=
  A158196.P7128410409804886233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A158196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158753.P15673460882241045828

`A002878(A025581(n))`
-/

namespace A158753.P15673460882241045828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (A025581 n).toNat

end

end A158753.P15673460882241045828

noncomputable section

/-- A158753: Triangle T(n, k) = A000032(2*(n-k) + 1), read by rows.

Offset 2, canonical program `A158753.P15673460882241045828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158753 (n : ℕ) : ℤ :=
  A158753.P15673460882241045828.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158822.P11905004217678079225

`A066182(n+1)-A112367(n)`
-/

namespace A158822.P11905004217678079225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - A112367 n

end

end A158822.P11905004217678079225

noncomputable section

/-- A158822: Triangle read by rows, matrix triple product A000012 * A145677 * A000012.

Offset 0, canonical program `A158822.P11905004217678079225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158822 (n : ℕ) : ℤ :=
  A158822.P11905004217678079225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158860.P13075608006886010800

`ceil(3/a(n-1))*A025581(n)+1` with `a(0)=1`
-/

namespace A158860.P13075608006886010800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈3 / (a (n - 1) : ℚ)⌉ * A025581 n + 1

end

end A158860.P13075608006886010800

noncomputable section

/-- A158860: Triangle T(n,k)= ( 1 +T(n-1,k)*T(n,k-1) ) / T(n-1,k-1) initialized by T(n,0)=3n-2, T(n,k)=0 if k>=n, read by rows 0<=k

Offset 1, canonical program `A158860.P13075608006886010800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158860 (n : ℕ) : ℤ :=
  A158860.P13075608006886010800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158926.P3164738659012844026

`Δ[A158916(n)]`
-/

namespace A158926.P3164738659012844026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158926.P3164738659012844026

noncomputable section

/-- A158926: First differences of A158916.

Offset 0, canonical program `A158926.P3164738659012844026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A158926 (n : ℕ) : ℤ :=
  A158926.P3164738659012844026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A158926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158944.P8822807303414981029

`A027656(A025581(n))`
-/

namespace A158944.P8822807303414981029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A025581 n).toNat

end

end A158944.P8822807303414981029

noncomputable section

/-- A158944: Triangle by columns: the natural numbers interleaved with zeros in every column: (1, 0, 2, 0, 3, 0, 4, ...)

Offset 1, canonical program `A158944.P8822807303414981029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158944 (n : ℕ) : ℤ :=
  A158944.P8822807303414981029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159841.P9862850718435713169

`C(A008585(A003056(n))+1, A025581(n))`
-/

namespace A159841.P9862850718435713169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008585 (A003056 n).toNat + 1).toNat (A025581 n).toNat

end

end A159841.P9862850718435713169

noncomputable section

/-- A159841: Triangle T(n,k) = binomial(3*n+1, 2*n+k+1), read by rows.

Offset 0, canonical program `A159841.P9862850718435713169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A159841 (n : ℕ) : ℤ :=
  (A159841.P9862850718435713169.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A159841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159879.P5677806131023891219

`eq[A004159(n), A169805(n)]`
-/

namespace A159879.P5677806131023891219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159879.P5677806131023891219

noncomputable section

/-- A159879: Numbers n such that digit sum of n^2 is 2*(digit sum of n).

Offset 1, canonical program `A159879.P5677806131023891219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. -/
def A159879 (n : ℕ) : ℤ :=
  (A159879.P5677806131023891219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 642 terms. -/
def A159879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159958.P5388450425677827811

`A053838(n)-n%3+n`
-/

namespace A159958.P5388450425677827811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n - ((n % 3 : ℕ) : ℤ) + (n : ℤ)

end

end A159958.P5388450425677827811

noncomputable section

/-- A159958: Lodumo_3 of A053838 .

Offset 0, canonical program `A159958.P5388450425677827811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159958 (n : ℕ) : ℤ :=
  A159958.P5388450425677827811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159972.P10557294459438984683

`A099324(n)-A062157(n)`
-/

namespace A159972.P10557294459438984683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099324 n - A062157 n

end

end A159972.P10557294459438984683

noncomputable section

/-- A159972: Row sums of number triangle A159971.

Offset 0, canonical program `A159972.P10557294459438984683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A159972 (n : ℕ) : ℤ :=
  A159972.P10557294459438984683.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A159972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160007.P3271446756844872376

`A023196(n+1)+A000035(A002659(2*n+5))`
-/

namespace A160007.P3271446756844872376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1) + A000035 (A002659 (2 * n + 5)).toNat

end

end A160007.P3271446756844872376

noncomputable section

/-- A160007: Deficient numbers more than 1 unit away from their predecessors.

Offset 1, canonical program `A160007.P3271446756844872376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1400 terms. -/
def A160007 (n : ℕ) : ℤ :=
  A160007.P3271446756844872376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1400 terms. -/
def A160007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160096.P17903727192882003524

`∑[-Δ[A078616(n)]]`
-/

namespace A160096.P17903727192882003524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160096.P17903727192882003524

noncomputable section

/-- A160096: Partial sums of A010815 starting with offset 1, and signed (+ + - - + + ...).

Offset 1, canonical program `A160096.P17903727192882003524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A160096 (n : ℕ) : ℤ :=
  A160096.P17903727192882003524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A160096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160383.P16037544533340552410

`A139352(and(n, 2*n))`
-/

namespace A160383.P16037544533340552410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (Nat.land n (2 * n))

end

end A160383.P16037544533340552410

noncomputable section

/-- A160383: Number of 3's in base-4 representation of n.

Offset 0, canonical program `A160383.P16037544533340552410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160383 (n : ℕ) : ℤ :=
  A160383.P16037544533340552410.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160385.P9288660522988789958

`A160381(n)+A139352(n)`
-/

namespace A160385.P9288660522988789958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n + A139352 n

end

end A160385.P9288660522988789958

noncomputable section

/-- A160385: Number of nonzero digits in base-4 representation of n.

Offset 0, canonical program `A160385.P9288660522988789958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160385 (n : ℕ) : ℤ :=
  A160385.P9288660522988789958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160412.P11058933196610822851

`A160410(n)*3/4`
-/

namespace A160412.P11058933196610822851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160410 n : ℚ) * ((3 : ℚ) / 4)

end

end A160412.P11058933196610822851

noncomputable section

/-- A160412: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

Offset 0, canonical program `A160412.P11058933196610822851`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160412.P11058933196610822851.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160412.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160428.P12855854113436876490

`∑[A160429(n+1)]-A160429(n+1)`
-/

namespace A160428.P12855854113436876490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160429 (n + 1)

end

end A160428.P12855854113436876490

noncomputable section

/-- A160428: Number of ON cells at n-th stage of three-dimensional version of the cellular automaton A160410, using cubes.

Offset 0, canonical program `A160428.P12855854113436876490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160428 (n : ℕ) : ℤ :=
  A160428.P12855854113436876490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160720.P4472755102912290844

`∑[A001316(A008574(n)-1)]-A008574(n)`
-/

namespace A160720.P4472755102912290844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A008574 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008574 n

end

end A160720.P4472755102912290844

noncomputable section

/-- A160720: Number of "ON" cells at n-th stage in 2-dimensional cellular automaton (see Comments for precise definition).

Offset 0, canonical program `A160720.P4472755102912290844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A160720 (n : ℕ) : ℤ :=
  A160720.P4472755102912290844.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A160720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160772.P11829451033604453223

`2*A087397(n+3)+1`
-/

namespace A160772.P11829451033604453223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087397 (n + 3) + 1

end

end A160772.P11829451033604453223

noncomputable section

/-- A160772: Number of nodes (or order) of a graph model obtained using an automata scheme on sets of order prime(n) >= 5 and in which all not halt states are linked by arcs (edges).

Offset 3, canonical program `A160772.P11829451033604453223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A160772 (n : ℕ) : ℤ :=
  A160772.P11829451033604453223.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A160772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160799.P12754781986334410166

`∑[A160410(n)]`
-/

namespace A160799.P12754781986334410166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160799.P12754781986334410166

noncomputable section

/-- A160799: Partial sums of A160410.

Offset 1, canonical program `A160799.P12754781986334410166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160799 (n : ℕ) : ℤ :=
  A160799.P12754781986334410166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160833.P15780145902120907609

`A160831(n)-∑[A161680(n)]²`
-/

namespace A160833.P15780145902120907609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160831 n - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A160833.P15780145902120907609

noncomputable section

/-- A160833: G.f.: (1+62*x+569*x^2+1086*x^3+521*x^4+56*x^5+x^6)/(1-x)^7.

Offset 0, canonical program `A160833.P15780145902120907609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160833 (n : ℕ) : ℤ :=
  A160833.P15780145902120907609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161199.P11902296088430852582

`A000108(n)/A001316(n)*∑[A016754(n)]`
-/

namespace A161199.P11902296088430852582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A001316 n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A161199.P11902296088430852582

noncomputable section

/-- A161199: Numerators in expansion of (1-x)^(-5/2).

Offset 0, canonical program `A161199.P11902296088430852582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A161199 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161199.P11902296088430852582.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A161199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161202.P1779684718391485559

`A002422(n)/A001316(n)`
-/

namespace A161202.P1779684718391485559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002422 n : ℚ) / (A001316 n : ℚ)

end

end A161202.P1779684718391485559

noncomputable section

/-- A161202: Numerators in expansion of (1-x)^(5/2).

Offset 0, canonical program `A161202.P1779684718391485559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A161202 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161202.P1779684718391485559.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A161202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161382.P17829671909695505750

`A057212(A000217(A074279(n+1)))`
-/

namespace A161382.P17829671909695505750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (A000217 (A074279 (n + 1)).toNat).toNat

end

end A161382.P17829671909695505750

noncomputable section

/-- A161382: (0,1)-sequence where n-th run has length n^2.

Offset 1, canonical program `A161382.P17829671909695505750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161382 (n : ℕ) : ℤ :=
  A161382.P17829671909695505750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161673.P1088043651261816536

`eq[1, A010060(xor(n, n+8))]`
-/

namespace A161673.P1088043651261816536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.xor n (n + 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161673.P1088043651261816536

noncomputable section

/-- A161673: Positions n such that A010060(n) + A010060(n+8) = 1.

Offset 1, canonical program `A161673.P1088043651261816536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161673 (n : ℕ) : ℤ :=
  (A161673.P1088043651261816536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161720.P8614735749128950071

`A024675(n+1)-A089192(n+1)`
-/

namespace A161720.P8614735749128950071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A089192 (n + 1)

end

end A161720.P8614735749128950071

noncomputable section

/-- A161720: a(n) = (prime(n) - 7)/2.

Offset 3, canonical program `A161720.P8614735749128950071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161720 (n : ℕ) : ℤ :=
  A161720.P8614735749128950071.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161720.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161824.P16062857071686495012

`eq[A010060(n+6), A010060(n)]`
-/

namespace A161824.P16062857071686495012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161824.P16062857071686495012

noncomputable section

/-- A161824: Numbers such that A010060(n) = A010060(n+6).

Offset 1, canonical program `A161824.P16062857071686495012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161824 (n : ℕ) : ℤ :=
  (A161824.P16062857071686495012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161989.P17124297221809156559

`eq[4, A001316(A001316(n)+4)]`
-/

namespace A161989.P17124297221809156559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161989.P17124297221809156559

noncomputable section

/-- A161989: Numbers having more than 2 or fewer than 2 ones in their binary representation.

Offset 1, canonical program `A161989.P17124297221809156559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161989 (n : ℕ) : ℤ :=
  (A161989.P17124297221809156559.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162326.P6298705676017396747

`A086871(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A162326.P6298705676017396747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A086871 (n - 1) + a (n - 1)

end

end A162326.P6298705676017396747

noncomputable section

/-- A162326: Let a(0) = a(1) = 1, and n*a(n) = 2*(-7+5*n)*a(n-1) + 9*(2-n)*a(n-2) for n >= 2.

Offset 0, canonical program `A162326.P6298705676017396747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A162326 (n : ℕ) : ℤ :=
  A162326.P6298705676017396747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A162326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162345.P16599755805380939880

`round(Δ[A011974(n+1)/2])`
-/

namespace A162345.P16599755805380939880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011974 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A162345.P16599755805380939880

noncomputable section

/-- A162345: Length of n-th edge in the graph of the zig-zag function for prime numbers.

Offset 1, canonical program `A162345.P16599755805380939880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162345 (n : ℕ) : ℤ :=
  A162345.P16599755805380939880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162345.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A162775.P15991706861221470785

`A141042(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162775.P15991706861221470785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141042 (n + 2) : ℚ) / 2

end

end A162775.P15991706861221470785

noncomputable section

/-- A162775: a(n) = A141042(n+1)/2.

Offset 1, canonical program `A162775.P15991706861221470785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162775 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A162775.P15991706861221470785.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162775.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162802.P1911416847344321322

`floor(A100479(n+1)/2)`
-/

namespace A162802.P1911416847344321322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100479 (n + 1) : ℚ) / 2⌋

end

end A162802.P1911416847344321322

noncomputable section

/-- A162802: Bisection of A162800.

Offset 1, canonical program `A162802.P1911416847344321322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162802 (n : ℕ) : ℤ :=
  A162802.P1911416847344321322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162917.P5952952200221241721

`A066182(a(n-1)+2)` with `a(0)=1`
-/

namespace A162917.P5952952200221241721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066182 (a (n - 1) + 2).toNat

end

end A162917.P5952952200221241721

noncomputable section

/-- A162917: Numbers n which are not in A161983.

Offset 1, canonical program `A162917.P5952952200221241721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162917 (n : ℕ) : ℤ :=
  A162917.P5952952200221241721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163058.P17793405762297747335

`p?[A163057(n+1)]`
-/

namespace A163058.P17793405762297747335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163058.P17793405762297747335

noncomputable section

/-- A163058: Primes in A163057.

Offset 1, canonical program `A163058.P17793405762297747335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1004 terms. -/
def A163058 (n : ℕ) : ℤ :=
  A163058.P17793405762297747335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1004 terms. -/
def A163058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163140.P8912314780080089725

`eq[2*A023416(n), A145037(n)]`
-/

namespace A163140.P8912314780080089725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163140.P8912314780080089725

noncomputable section

/-- A163140: Integers n such that in base 2, 3 `1`'s for each `0`.

Offset 1, canonical program `A163140.P8912314780080089725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A163140 (n : ℕ) : ℤ :=
  (A163140.P8912314780080089725.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A163140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163249.P10892811305809316567

`A018252(n+1)+A014689(n+1)`
-/

namespace A163249.P10892811305809316567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + A014689 (n + 1)

end

end A163249.P10892811305809316567

noncomputable section

/-- A163249: Sum of prime(n) and number of numbers from this set less than n-th nonprime number (A018252(n)).

Offset 1, canonical program `A163249.P10892811305809316567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163249 (n : ℕ) : ℤ :=
  A163249.P10892811305809316567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163292.P8227225209679286486

`A000040(n+1)-A163291(n+1)`
-/

namespace A163292.P8227225209679286486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A163291 (n + 1)

end

end A163292.P8227225209679286486

noncomputable section

/-- A163292: a(n) = n-th prime minus (number of digits of n-th prime written in base 4).

Offset 1, canonical program `A163292.P8227225209679286486`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A163291, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163292 (n : ℕ) : ℤ :=
  A163292.P8227225209679286486.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A163291, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163292.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163624.P2636095778930404415

`(A163623(n+1)-1)/120`
-/

namespace A163624.P2636095778930404415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163623 (n + 1) - 1 : ℚ) / 120

end

end A163624.P2636095778930404415

noncomputable section

/-- A163624: Numbers k such that 120*k+1 is prime.

Offset 1, canonical program `A163624.P2636095778930404415`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163623, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163624 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163624.P2636095778930404415.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163623, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163624.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163865.P5899914044909555635

`2*A092690(n)-A109188(n+1)`
-/

namespace A163865.P5899914044909555635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092690 n - A109188 (n + 1)

end

end A163865.P5899914044909555635

noncomputable section

/-- A163865: The binomial transform of the swinging factorial (A056040).

Offset 0, canonical program `A163865.P5899914044909555635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A163865 (n : ℕ) : ℤ :=
  A163865.P5899914044909555635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A163865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163935.P16843162133888820864

`3*A027802(n+2)-A027790(n+2)`
-/

namespace A163935.P16843162133888820864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027802 (n + 2) - A027790 (n + 2)

end

end A163935.P16843162133888820864

noncomputable section

/-- A163935: Third right hand column of triangle A163934.

Offset 3, canonical program `A163935.P16843162133888820864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163935 (n : ℕ) : ℤ :=
  A163935.P16843162133888820864.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164056.P15299414648682255323

`ceil(Δ[1/A154436(2*n+1)])`
-/

namespace A164056.P15299414648682255323
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A154436 (2 * n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A164056.P15299414648682255323

noncomputable section

/-- A164056: Triangle of 2^n terms by rows, derived from A088696 as to length of continued fractions, lengths increase = 1, decrease = 0. A088696 can be generated using the following algorithm: Rows 0 and 1 begin 1; 1,2; then for all further rows, bring down current row then append to the right: (1 added to each term in current row). Row 2 (1, 2, 3, 2) then becomes: (1, 2, 3, 2, 3, 4, 3, 2).

Offset 0, canonical program `A164056.P15299414648682255323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A164056 (n : ℕ) : ℤ :=
  A164056.P15299414648682255323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A164056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164487.P18355013799103951156

`∑[A079981(C(2, n))+A068921(n)]`
-/

namespace A164487.P18355013799103951156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079981 (Nat.choose 2 n) + A068921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164487.P18355013799103951156

noncomputable section

/-- A164487: Number of binary strings of length n with no substrings equal to 0001, 1010, or 1100.

Offset 0, canonical program `A164487.P18355013799103951156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A164487 (n : ℕ) : ℤ :=
  A164487.P18355013799103951156.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. -/
def A164487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164557.P4242385317693302178

`eq[A002131(n+1), A002131(n+2)]+1`
-/

namespace A164557.P4242385317693302178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A164557.P4242385317693302178

noncomputable section

/-- A164557: Numbers k such that s(k) = s(k+1), where s(k) is the sum of divisors d of k such that k/d is odd (A002131).

Offset 1, canonical program `A164557.P4242385317693302178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A164557 (n : ℕ) : ℤ :=
  (A164557.P4242385317693302178.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A164557.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A165404.P15223557212356883423

`a(n-1)+A010060(a(n-1))+A006519(a(n-1)+1)` with `a(0)=0`
-/

namespace A165404.P15223557212356883423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A010060 (a (n - 1)).toNat + A006519 (a (n - 1) + 1).toNat)

end

end A165404.P15223557212356883423

noncomputable section

/-- A165404: The positions of zeros in the top row of A163898 (and A163899).

Offset 0, canonical program `A165404.P15223557212356883423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A165404 (n : ℕ) : ℤ :=
  A165404.P15223557212356883423.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A165404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165502.P13417243480787722624

`p?[eq[31, A004159(n)]]`
-/

namespace A165502.P13417243480787722624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165502.P13417243480787722624

noncomputable section

/-- A165502: Primes p where the digital sum of p^2 is equal to 31.

Offset 1, canonical program `A165502.P13417243480787722624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A165502 (n : ℕ) : ℤ :=
  (A165502.P13417243480787722624.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A165502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165503.P17759622746799329389

`p?[eq[37, A004159(n)]]`
-/

namespace A165503.P17759622746799329389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165503.P17759622746799329389

noncomputable section

/-- A165503: Primes p with a digits sum of p^2 equal to 37.

Offset 1, canonical program `A165503.P17759622746799329389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A165503 (n : ℕ) : ℤ :=
  (A165503.P17759622746799329389.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A165503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165513.P4193173009747102375

`eq[1, A000045(a(A136107(n)))]` with `a(0)=4`
-/

namespace A165513.P4193173009747102375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000045 (f2 (A136107 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165513.P4193173009747102375

noncomputable section

/-- A165513: Trapezoidal numbers.

Offset 1, canonical program `A165513.P4193173009747102375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165513 (n : ℕ) : ℤ :=
  (A165513.P4193173009747102375.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165721.P5437165114375339253

`A154293(n+2)+A108752(n+2)`
-/

namespace A165721.P5437165114375339253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154293 (n + 2) + A108752 (n + 2)

end

end A165721.P5437165114375339253

noncomputable section

/-- A165721: Integers of the form k*(k+13)/12.

Offset 1, canonical program `A165721.P5437165114375339253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A165721 (n : ℕ) : ℤ :=
  A165721.P5437165114375339253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A165721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165817.P16725315346370292687

`A005809(n)-A025174(n)`
-/

namespace A165817.P16725315346370292687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A025174 n

end

end A165817.P16725315346370292687

noncomputable section

/-- A165817: Number of compositions (= ordered integer partitions) of n into 2n parts.

Offset 0, canonical program `A165817.P16725315346370292687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A165817 (n : ℕ) : ℤ :=
  A165817.P16725315346370292687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A165817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165981.P15510311723054699555

`p?[A034961(n+1)+2]`
-/

namespace A165981.P15510311723054699555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165981.P15510311723054699555

noncomputable section

/-- A165981: Primes p which are equal to 2 plus the sum of three consecutive primes.

Offset 1, canonical program `A165981.P15510311723054699555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165981 (n : ℕ) : ℤ :=
  A165981.P15510311723054699555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165982.P7822805712144647645

`p?[A034961(n+1)+4]`
-/

namespace A165982.P7822805712144647645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165982.P7822805712144647645

noncomputable section

/-- A165982: Primes that are 4 plus the sum of three consecutive primes.

Offset 1, canonical program `A165982.P7822805712144647645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165982 (n : ℕ) : ℤ :=
  A165982.P7822805712144647645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165985.P12541880626013702028

`p?[A034961(n+1)+8]`
-/

namespace A165985.P12541880626013702028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165985.P12541880626013702028

noncomputable section

/-- A165985: Primes that are 8 plus the sum of three consecutive primes.

Offset 1, canonical program `A165985.P12541880626013702028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165985 (n : ℕ) : ℤ :=
  A165985.P12541880626013702028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166009.P17457192223862783149

`7+2*A023206(n+1)`
-/

namespace A166009.P17457192223862783149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 + 2 * A023206 (n + 1)

end

end A166009.P17457192223862783149

noncomputable section

/-- A166009: Primes of the form 7 + 2*p, where p is a prime.

Offset 1, canonical program `A166009.P17457192223862783149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023206, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166009 (n : ℕ) : ℤ :=
  A166009.P17457192223862783149.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023206, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166034.P4358169721997023842

`p?[A034961(n+1)-2]`
-/

namespace A166034.P4358169721997023842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166034.P4358169721997023842

noncomputable section

/-- A166034: Primes which are equal to the sum of three consecutive primes minus 2.

Offset 1, canonical program `A166034.P4358169721997023842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166034 (n : ℕ) : ℤ :=
  A166034.P4358169721997023842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166124.P10325063162919866577

`floor(ratio[A035214(n)])`
-/

namespace A166124.P10325063162919866577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A166124.P10325063162919866577

noncomputable section

/-- A166124: Triangle, read by rows, given by [0,1/2,1/2,0,0,0,0,0,0,0,...] DELTA [2,-1,0,0,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A166124.P10325063162919866577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166124 (n : ℕ) : ℤ :=
  A166124.P10325063162919866577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166257.P1728091732200163006

`A139270(n+1)-1`
-/

namespace A166257.P1728091732200163006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1) - 1

end

end A166257.P1728091732200163006

noncomputable section

/-- A166257: Odd numbers not of the form prime(k) + phi(prime(k)).

Offset 1, canonical program `A166257.P1728091732200163006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166257 (n : ℕ) : ℤ :=
  A166257.P1728091732200163006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166373.P3011373036703658375

`floor((A002262(n)+1)²/(A002024(n+1)+1))`
-/

namespace A166373.P3011373036703658375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A002262 n + 1) ^ 2 : ℚ) / (A002024 (n + 1) + 1 : ℚ)⌋

end

end A166373.P3011373036703658375

noncomputable section

/-- A166373: Triangle read by rows for floor(j^2 / n) with n >= 2 and 1<=j

Offset 2, canonical program `A166373.P3011373036703658375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A166373 (n : ℕ) : ℤ :=
  A166373.P3011373036703658375.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A166373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166496.P5723234111422910770

`A089241(n+1)+A057428(n)`
-/

namespace A166496.P5723234111422910770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) + A057428 n

end

end A166496.P5723234111422910770

noncomputable section

/-- A166496: Prime plus the next composite.

Offset 1, canonical program `A166496.P5723234111422910770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166496 (n : ℕ) : ℤ :=
  A166496.P5723234111422910770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166550.P9048680061311345364

`eq[A004159(n+1), A007605(n+1)]+1`
-/

namespace A166550.P9048680061311345364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A166550.P9048680061311345364

noncomputable section

/-- A166550: Numbers n with property that n^2 and n-th prime have the same sum of digits.

Offset 1, canonical program `A166550.P9048680061311345364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A166550 (n : ℕ) : ℤ :=
  (A166550.P9048680061311345364.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A166550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166588.P6229897388527750775

`∑[A097331(n)]`
-/

namespace A166588.P6229897388527750775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166588.P6229897388527750775

noncomputable section

/-- A166588: Partial sums of A097331; binomial transform of A166587.

Offset 0, canonical program `A166588.P6229897388527750775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A166588 (n : ℕ) : ℤ :=
  A166588.P6229897388527750775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A166588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166743.P12621067664972699570

`(A034785(n+3)-A066872(n+3))/6`
-/

namespace A166743.P12621067664972699570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034785 (n + 3) - A066872 (n + 3) : ℚ) / 6

end

end A166743.P12621067664972699570

noncomputable section

/-- A166743: a(n) = (2^p - p^2 - 1)/6 where p = prime(n).

Offset 3, canonical program `A166743.P12621067664972699570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034785, A066872, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166743 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166743.P12621067664972699570.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034785, A066872, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167194.P2776312929900063332

`C(2, A025581(n))`
-/

namespace A167194.P2776312929900063332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A025581 n).toNat

end

end A167194.P2776312929900063332

noncomputable section

/-- A167194: Triangle read by rows. A130713 in the columns.

Offset 1, canonical program `A167194.P2776312929900063332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167194 (n : ℕ) : ℤ :=
  (A167194.P2776312929900063332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167878.P4017670017708560408

`A167877(n)+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167878.P4017670017708560408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n + (n : ℤ)

end

end A167878.P4017670017708560408

noncomputable section

/-- A167878: A167877(n) + n.

Offset 0, canonical program `A167878.P4017670017708560408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167878 (n : ℕ) : ℤ :=
  A167878.P4017670017708560408.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168060.P1286338243596023875

`lt[A010816(A142150(n)), A010816(n)]`
-/

namespace A168060.P1286338243596023875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (A142150 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A168060.P1286338243596023875

noncomputable section

/-- A168060: Denominators of ((n+2)/(n+1)/n) (sorted with no repeats) for n >= 1.

Offset 1, canonical program `A168060.P1286338243596023875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A168060 (n : ℕ) : ℤ :=
  (A168060.P1286338243596023875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A168060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168255.P269391709555101397

`∑[char[A051349(n)]]`
-/

namespace A168255.P269391709555101397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168255.P269391709555101397

noncomputable section

/-- A168255: n appears n-th nonprime number times.

Offset 1, canonical program `A168255.P269391709555101397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168255 (n : ℕ) : ℤ :=
  (A168255.P269391709555101397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169703.P13390613285210414476

`A160410(A110654(n))+A147582(A029579(n))`
-/

namespace A169703.P13390613285210414476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 (A110654 n).toNat + A147582 (A029579 n).toNat

end

end A169703.P13390613285210414476

noncomputable section

/-- A169703: Total number of ON cells at stage n of two-dimensional cellular automaton defined by "Rule 174".

Offset 0, canonical program `A169703.P13390613285210414476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4050 terms. -/
def A169703 (n : ℕ) : ℤ :=
  A169703.P13390613285210414476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4050 terms. -/
def A169703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169803.P13265818388148329398

`C(A004736(n+1), A002262(n))`
-/

namespace A169803.P13265818388148329398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1)).toNat (A002262 n).toNat

end

end A169803.P13265818388148329398

noncomputable section

/-- A169803: Triangle read by rows: T(n,k) = binomial(n+1-k,k) (n >= 0, 0 <= k <= n).

Offset 0, canonical program `A169803.P13265818388148329398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169803 (n : ℕ) : ℤ :=
  (A169803.P13265818388148329398.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169900.P3190041805646799674

`A003418(n)*A048671(n+1)`
-/

namespace A169900.P3190041805646799674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A048671 (n + 1)

end

end A169900.P3190041805646799674

noncomputable section

/-- A169900: Earliest sequence such that xy | a(x+y) for all x>=1, y>=1.

Offset 1, canonical program `A169900.P3190041805646799674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A169900 (n : ℕ) : ℤ :=
  A169900.P3190041805646799674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A169900.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171152.P12159337980299993144

`A000217(n+1)+A060432(n+1)+A000217(n+1)`
-/

namespace A171152.P12159337980299993144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A060432 (n + 1) + A000217 (n + 1))

end

end A171152.P12159337980299993144

noncomputable section

/-- A171152: Partial sums of A118011.

Offset 1, canonical program `A171152.P12159337980299993144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171152 (n : ℕ) : ℤ :=
  A171152.P12159337980299993144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171176.P17322365115208506390

`A253515(n+1)+A053186(n*A005369(n))`
-/

namespace A171176.P17322365115208506390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253515 (n + 1) + A053186 ((n : ℤ) * A005369 n).toNat

end

end A171176.P17322365115208506390

noncomputable section

/-- A171176: Triangle read by rows in which row n lists 3n-1 together with the first 2n-1 positive integers, in reverse order.

Offset 1, canonical program `A171176.P17322365115208506390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A171176 (n : ℕ) : ℤ :=
  A171176.P17322365115208506390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A171176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171523.P12339869199135669520

`(n+1)*Δ[A051349(n)]`
-/

namespace A171523.P12339869199135669520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A171523.P12339869199135669520

noncomputable section

/-- A171523: a(n) = n*(n-th nonprime number).

Offset 1, canonical program `A171523.P12339869199135669520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171523 (n : ℕ) : ℤ :=
  A171523.P12339869199135669520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171523.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 2, canonical program `A171638.P8823395210099823483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171621, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171638 (n : ℕ) : ℤ :=
  A171638.P8823395210099823483.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171621, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171900.P13555337317607652516

`Δ[A026491(C(2, n+1)+n-1)]`
-/

namespace A171900.P13555337317607652516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 ((Nat.choose 2 (n + 1) : ℤ) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171900.P13555337317607652516

noncomputable section

/-- A171900: Backwards van Eck transform of A010060.

Offset 1, canonical program `A171900.P13555337317607652516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A171900 (n : ℕ) : ℤ :=
  A171900.P13555337317607652516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A171900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172063.P11418259923037975551

`A172062(n+1)-A172061(n+1)`
-/

namespace A172063.P11418259923037975551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172062 (n + 1) - A172061 (n + 1)

end

end A172063.P11418259923037975551

noncomputable section

/-- A172063: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=6.

Offset 0, canonical program `A172063.P11418259923037975551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A172063 (n : ℕ) : ℤ :=
  A172063.P11418259923037975551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A172063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172295.P9584074146213077135

`∑[p?[A015914(n+1)]]`
-/

namespace A172295.P9584074146213077135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172295.P9584074146213077135

noncomputable section

/-- A172295: Partial sums of A023201.

Offset 1, canonical program `A172295.P9584074146213077135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A172295 (n : ℕ) : ℤ :=
  A172295.P9584074146213077135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A172295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172431.P7242940614288301215

`C(A128076(n+1), A002262(n))`
-/

namespace A172431.P7242940614288301215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A128076 (n + 1)).toNat (A002262 n).toNat

end

end A172431.P7242940614288301215

noncomputable section

/-- A172431: Even row Pascal-square read by antidiagonals.

Offset 1, canonical program `A172431.P7242940614288301215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172431 (n : ℕ) : ℤ :=
  (A172431.P7242940614288301215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172500.P16194948095997381437

`(n+1)/A109848(n+1)`
-/

namespace A172500.P16194948095997381437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A109848 (n + 1) : ℚ)

end

end A172500.P16194948095997381437

noncomputable section

/-- A172500: Numerator of fraction whose decimal representation has form 0.(n)(n)(n)...with repeating part n.

Offset 1, canonical program `A172500.P16194948095997381437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172500 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A172500.P16194948095997381437.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173025.P5198389285230754889

`eq[A048733(A048735(n)), A048735(n)]`
-/

namespace A173025.P5198389285230754889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A048735 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A173025.P5198389285230754889

noncomputable section

/-- A173025: Numbers whose binary representation contains no isolated digits "11".

Offset 1, canonical program `A173025.P5198389285230754889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173025 (n : ℕ) : ℤ :=
  (A173025.P5198389285230754889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173178.P13841244607503590073

`3*A059325(n+1)+1`
-/

namespace A173178.P13841244607503590073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059325 (n + 1) + 1

end

end A173178.P13841244607503590073

noncomputable section

/-- A173178: Numbers k such that 2*k+3 is a prime of the form 3*A024893(m) + 2.

Offset 1, canonical program `A173178.P13841244607503590073`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173178 (n : ℕ) : ℤ :=
  A173178.P13841244607503590073.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173178.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173284.P13127677157600122299

`A123231(A152204(n))`
-/

namespace A173284.P13127677157600122299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A152204 n).toNat

end

end A173284.P13127677157600122299

noncomputable section

/-- A173284: Triangle by columns, positive Fibonacci numbers in every column shifted down twice, for k > 0.

Offset 0, canonical program `A173284.P13127677157600122299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173284 (n : ℕ) : ℤ :=
  A173284.P13127677157600122299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173639.P4181958568565848688

`eq[0, A059841(A245627(n))]`
-/

namespace A173639.P4181958568565848688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A245627 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A173639.P4181958568565848688

noncomputable section

/-- A173639: Numbers n such that the sum of the digits of 11*n is odd.

Offset 1, canonical program `A173639.P4181958568565848688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173639 (n : ℕ) : ℤ :=
  (A173639.P4181958568565848688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173639.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174520.P16860900759774181259

`A045717(n+3)-A045717(n+1)`
-/

namespace A174520.P16860900759774181259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045717 (n + 3) - A045717 (n + 1)

end

end A174520.P16860900759774181259

noncomputable section

/-- A174520: Sum of all composite numbers in-between prime numbers p(n) and p(n+2).

Offset 1, canonical program `A174520.P16860900759774181259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174520 (n : ℕ) : ℤ :=
  A174520.P16860900759774181259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174521.P15415351291785473139

`p?[A045717(n+3)-A045717(n+1)]`
-/

namespace A174521.P15415351291785473139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045717 (n + 3) - A045717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174521.P15415351291785473139

noncomputable section

/-- A174521: Primes that are the sum of all composite numbers in-between prime numbers p(n) and p(n+2).

Offset 1, canonical program `A174521.P15415351291785473139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A174521 (n : ℕ) : ℤ :=
  A174521.P15415351291785473139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A174521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174657.P17082722901622877186

`lt[A065363(n), 0]`
-/

namespace A174657.P17082722901622877186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A174657.P17082722901622877186

noncomputable section

/-- A174657: Balanced ternary numbers with more negative trits than positive trits.

Offset 1, canonical program `A174657.P17082722901622877186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. -/
def A174657 (n : ℕ) : ℤ :=
  (A174657.P17082722901622877186.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. -/
def A174657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174659.P7843834769306507909

`lt[0, A065363(n)]`
-/

namespace A174659.P7843834769306507909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174659.P7843834769306507909

noncomputable section

/-- A174659: Numbers whose balanced ternary representation has more positive trits than negative trits.

Offset 1, canonical program `A174659.P7843834769306507909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5782 terms. -/
def A174659 (n : ℕ) : ℤ :=
  (A174659.P7843834769306507909.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5782 terms. -/
def A174659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174695.P15433505935837686491

`A112632(n+1)-1`
-/

namespace A174695.P15433505935837686491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1) - 1

end

end A174695.P15433505935837686491

noncomputable section

/-- A174695: Partial sums of A173950.

Offset 1, canonical program `A174695.P15433505935837686491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174695 (n : ℕ) : ℤ :=
  A174695.P15433505935837686491.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174695.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A175434.P3715413086087298136

`A001370(n+1)%(n+1)`
-/

namespace A175434.P3715413086087298136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001370 (n + 1)) (n + 1 : ℤ)

end

end A175434.P3715413086087298136

noncomputable section

/-- A175434: (Digit sum of 2^n) mod n.

Offset 1, canonical program `A175434.P3715413086087298136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175434 (n : ℕ) : ℤ :=
  A175434.P3715413086087298136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175540.P17413733986559148913

`A067076(n+1)+n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175540.P17413733986559148913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + (n + 1 : ℤ)

end

end A175540.P17413733986559148913

noncomputable section

/-- A175540: a(n) = A067076(n) + n.

Offset 1, canonical program `A175540.P17413733986559148913`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175540 (n : ℕ) : ℤ :=
  A175540.P17413733986559148913.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175540.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175917.P5961217577201396990

`A003817(n)-A175298(n)`
-/

namespace A175917.P5961217577201396990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A175298 n

end

end A175917.P5961217577201396990

noncomputable section

/-- A175917: Convert n to binary. NOR each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

Offset 0, canonical program `A175917.P5961217577201396990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175917 (n : ℕ) : ℤ :=
  A175917.P5961217577201396990.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175920.P6563318181034372295

`A003817(n)-A175919(n)`
-/

namespace A175920.P6563318181034372295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A175919 n

end

end A175920.P6563318181034372295

noncomputable section

/-- A175920: Convert n to binary. XNOR each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

Offset 0, canonical program `A175920.P6563318181034372295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175920 (n : ℕ) : ℤ :=
  A175920.P6563318181034372295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175967.P17254181130027743458

`A051349(n)+1`
-/

namespace A175967.P17254181130027743458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n + 1

end

end A175967.P17254181130027743458

noncomputable section

/-- A175967: Lexicographically earliest sequence with first differences as increasing sequence of nonprimes A018252.

Offset 1, canonical program `A175967.P17254181130027743458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175967 (n : ℕ) : ℤ :=
  A175967.P17254181130027743458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176126.P10682719046826631091

`A064038(n+1)-and(2, -n)!`
-/

namespace A176126.P10682719046826631091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (n + 1) - (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat : ℤ)

end

end A176126.P10682719046826631091

noncomputable section

/-- A176126: Numerator of -A127276(n)/A001788(n).

Offset 0, canonical program `A176126.P10682719046826631091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176126 (n : ℕ) : ℤ :=
  A176126.P10682719046826631091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176405.P11128722629887834534

`and(1, A010876(A242603(2*n+1+n)-1))`
-/

namespace A176405.P11128722629887834534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A010876 (A242603 (2 * n + 1 + n) - 1).toNat)

end

end A176405.P11128722629887834534

noncomputable section

/-- A176405: Fixed point of morphism 0->0100110, 1->0110110.

Offset 0, canonical program `A176405.P11128722629887834534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A176405 (n : ℕ) : ℤ :=
  A176405.P11128722629887834534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A176405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176566.P2593220659547258647

`C(A083920(n), A002262(n))`
-/

namespace A176566.P2593220659547258647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083920 n).toNat (A002262 n).toNat

end

end A176566.P2593220659547258647

noncomputable section

/-- A176566: Triangle T(n, k) = binomial(n*(n+1)/2 + k, k), read by rows.

Offset 0, canonical program `A176566.P2593220659547258647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A176566 (n : ℕ) : ℤ :=
  (A176566.P2593220659547258647.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A176566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177018.P4979215577074210027

`∑[A100820(n+1)]+3`
-/

namespace A177018.P4979215577074210027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A177018.P4979215577074210027

noncomputable section

/-- A177018: a(n) is the smallest integer >= a(n-1) such that a(n) + A067076(n) + n-1 is an odd prime.

Offset 1, canonical program `A177018.P4979215577074210027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177018 (n : ℕ) : ℤ :=
  A177018.P4979215577074210027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177018.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A177853.P6963506388651497221

`∑[∑[A140434(n+1)]]`
-/

namespace A177853.P6963506388651497221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177853.P6963506388651497221

noncomputable section

/-- A177853: Partial sums of A018805.

Offset 1, canonical program `A177853.P6963506388651497221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177853 (n : ℕ) : ℤ :=
  A177853.P6963506388651497221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178138.P18314330425840706382

`∑[A014150(n+1)]`
-/

namespace A178138.P18314330425840706382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178138.P18314330425840706382

noncomputable section

/-- A178138: Apply partial sum operator 4 times to primes.

Offset 1, canonical program `A178138.P18314330425840706382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178138 (n : ℕ) : ℤ :=
  A178138.P18314330425840706382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178225.P3234126825915487550

`C(2, A175919(n))`
-/

namespace A178225.P3234126825915487550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A175919 n).toNat

end

end A178225.P3234126825915487550

noncomputable section

/-- A178225: Characteristic function of A006995 (binary palindromes).

Offset 0, canonical program `A178225.P3234126825915487550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178225 (n : ℕ) : ℤ :=
  (A178225.P3234126825915487550.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178238.P7167606444737462092

`∑[A004736(n+1)]-A000292(A002262(n))`
-/

namespace A178238.P7167606444737462092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000292 (A002262 n).toNat

end

end A178238.P7167606444737462092

noncomputable section

/-- A178238: Triangle read by rows: partial column sums of the triangle of natural numbers (written sequentially by rows).

Offset 1, canonical program `A178238.P7167606444737462092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178238 (n : ℕ) : ℤ :=
  A178238.P7167606444737462092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178398.P3235956670070315682

`A008864(n+1)*A036690(n+1)`
-/

namespace A178398.P3235956670070315682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A036690 (n + 1)

end

end A178398.P3235956670070315682

noncomputable section

/-- A178398: a(n) = p(p+1)^2, where p is the n-th prime.

Offset 1, canonical program `A178398.P3235956670070315682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, A036690, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A178398 (n : ℕ) : ℤ :=
  A178398.P3235956670070315682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, A036690, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A178398.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178620.P15378923799213463569

`A000120(A037301(n+1))`
-/

namespace A178620.P15378923799213463569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A037301 (n + 1)).toNat

end

end A178620.P15378923799213463569

noncomputable section

/-- A178620: Sum of binary digits ( = sum of ternary digits ) of terms in A037301.

Offset 0, canonical program `A178620.P15378923799213463569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A178620 (n : ℕ) : ℤ :=
  A178620.P15378923799213463569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A178620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178737.P7407555600141389909

`A010816(n)^3`
-/

namespace A178737.P7407555600141389909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n ^ 3

end

end A178737.P7407555600141389909

noncomputable section

/-- A178737: Coefficients in expansion of Jacobi theta_1'''(0).

Offset 0, canonical program `A178737.P7407555600141389909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178737 (n : ℕ) : ℤ :=
  A178737.P7407555600141389909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179208.P3750333226307364201

`A000040(eq[A159461((2*n)%(n+1)+1), A159461(n+2)]+1)`
-/

namespace A179208.P3750333226307364201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (2 * n % (n + 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A179208.P3750333226307364201

noncomputable section

/-- A179208: Primes prime(k) such that 2*prime(k) = prime(k-2) + prime(k+2).

Offset 1, canonical program `A179208.P3750333226307364201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A179208 (n : ℕ) : ℤ :=
  A179208.P3750333226307364201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A179208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179262.P16510143958199183968

`A079704(n+1)-1`
-/

namespace A179262.P16510143958199183968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) - 1

end

end A179262.P16510143958199183968

noncomputable section

/-- A179262: a(n) = 2*prime(n)^2 - 1.

Offset 1, canonical program `A179262.P16510143958199183968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179262 (n : ℕ) : ℤ :=
  A179262.P16510143958199183968.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179995.P15855146455058339385

`A101098(n+1)+3*A000584(n)`
-/

namespace A179995.P15855146455058339385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101098 (n + 1) + 3 * A000584 n

end

end A179995.P15855146455058339385

noncomputable section

/-- A179995: Generating function A(5,t)(1+t+t^2)/(1-t)^6, where A(5,t) is an Eulerian polynomial.

Offset 0, canonical program `A179995.P15855146455058339385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179995 (n : ℕ) : ℤ :=
  A179995.P15855146455058339385.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180054.P16889925413695154586

`lt[A001316(3*n), 2*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A180054.P16889925413695154586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (3 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A180054.P16889925413695154586

noncomputable section

/-- A180054: In binary expansion, number of 1's in 3n is less than in n.

Offset 1, canonical program `A180054.P16889925413695154586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. -/
def A180054 (n : ℕ) : ℤ :=
  (A180054.P16889925413695154586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. -/
def A180054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180055.P17108974151974231138

`lt[A001316(5*n), A001316(n)]`
-/

namespace A180055.P17108974151974231138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A180055.P17108974151974231138

noncomputable section

/-- A180055: Numbers k such that in binary expansion, the number of 1's in 5*k is less than the number of 1's in k.

Offset 1, canonical program `A180055.P17108974151974231138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A180055 (n : ℕ) : ℤ :=
  (A180055.P17108974151974231138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A180055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180498.P10268372993952059879

`A120866(2*floor((n+1)/sqrt(5))+n+1)`
-/

namespace A180498.P10268372993952059879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120866 (2 * ⌊(n + 1 : ℝ) / Real.sqrt (5 : ℝ)⌋ + (n + 1 : ℤ)).toNat

end

end A180498.P10268372993952059879

noncomputable section

/-- A180498: a(n) = n^2 - 5*floor(n/sqrt(5))^2.

Offset 1, canonical program `A180498.P10268372993952059879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A180498 (n : ℕ) : ℤ :=
  A180498.P10268372993952059879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A180498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180662.P5005019183728633200

`A001654(A002262(n))`
-/

namespace A180662.P5005019183728633200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (A002262 n).toNat

end

end A180662.P5005019183728633200

noncomputable section

/-- A180662: The Golden Triangle: T(n,k) = A001654(k) for n>=0 and 0<=k<=n.

Offset 0, canonical program `A180662.P5005019183728633200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180662 (n : ℕ) : ℤ :=
  A180662.P5005019183728633200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180956.P15729601768828744606

`A046161(A025581(n))`
-/

namespace A180956.P15729601768828744606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (A025581 n).toNat

end

end A180956.P15729601768828744606

noncomputable section

/-- A180956: Triangle read by rows T(n,k) = denominators of A180955/A180956.

Offset 0, canonical program `A180956.P15729601768828744606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180956 (n : ℕ) : ℤ :=
  A180956.P15729601768828744606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181149.P3654376808975386202

`A135178(n+1)+A000040(n+1)`
-/

namespace A181149.P3654376808975386202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) + A000040 (n + 1)

end

end A181149.P3654376808975386202

noncomputable section

/-- A181149: a(n) = prime(n)^3 + prime(n)^2 + prime(n).

Offset 1, canonical program `A181149.P3654376808975386202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A135178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181149 (n : ℕ) : ℤ :=
  A181149.P3654376808975386202.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A135178, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181149.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181151.P18295787221933732531

`A135178(n+1)+1`
-/

namespace A181151.P18295787221933732531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) + 1

end

end A181151.P18295787221933732531

noncomputable section

/-- A181151: a(n) = prime(n)^3 + prime(n)^2 + 1.

Offset 1, canonical program `A181151.P18295787221933732531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181151 (n : ℕ) : ℤ :=
  A181151.P18295787221933732531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181151.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181520.P9935151336875506013

`A100661(p?[a(floor(n/2))+n])` with `a(0)=0`
-/

namespace A181520.P9935151336875506013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A181520.P9935151336875506013

noncomputable section

/-- A181520: 2*A181518(n)-A181516(n).

Offset 1, canonical program `A181520.P9935151336875506013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181520 (n : ℕ) : ℤ :=
  A181520.P9935151336875506013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A181520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181768.P15302864392847253434

`A055879(abs(1-2*n))`
-/

namespace A181768.P15302864392847253434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 |1 - (2 * n : ℤ)|.toNat

end

end A181768.P15302864392847253434

noncomputable section

/-- A181768: G.f.: (1/2)*(3 - sqrt((1-5*x)/(1-x))).

Offset 0, canonical program `A181768.P15302864392847253434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A181768 (n : ℕ) : ℤ :=
  A181768.P15302864392847253434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A181768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181923.P5871209756813184297

`Δ[A051349(n)]%2`
-/

namespace A181923.P5871209756813184297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A181923.P5871209756813184297

noncomputable section

/-- A181923: Nonprimes (A018252) mod 2.

Offset 1, canonical program `A181923.P5871209756813184297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181923 (n : ℕ) : ℤ :=
  A181923.P5871209756813184297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182126.P1631624918066832588

`A111071(n+1)%A004139(n+1)`
-/

namespace A182126.P1631624918066832588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111071 (n + 1)) (A004139 (n + 1))

end

end A182126.P1631624918066832588

noncomputable section

/-- A182126: a(n) = prime(n)*prime(n+1) mod prime(n+2).

Offset 1, canonical program `A182126.P1631624918066832588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182126 (n : ℕ) : ℤ :=
  A182126.P1631624918066832588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182200.P2957371844516527360

`A166010(n+1)+1`
-/

namespace A182200.P2957371844516527360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1) + 1

end

end A182200.P2957371844516527360

noncomputable section

/-- A182200: a(n) = prime(n)^2-3.

Offset 1, canonical program `A182200.P2957371844516527360`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182200 (n : ℕ) : ℤ :=
  A182200.P2957371844516527360.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166010, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182200.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A182614.P10153390122333264557

`A128439(n+1)+1`
-/

namespace A182614.P10153390122333264557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128439 (n + 1) + 1

end

end A182614.P10153390122333264557

noncomputable section

/-- A182614: Least k such that floor(k/r^n)=n, where r = golden ratio = (1+sqrt(5))/2.

Offset 1, canonical program `A182614.P10153390122333264557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A182614 (n : ℕ) : ℤ :=
  A182614.P10153390122333264557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A182614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183002.P1082009122046195699

`2*(A091627(n+1)-n)`
-/

namespace A183002.P1082009122046195699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A091627 (n + 1) - (n : ℤ))

end

end A183002.P1082009122046195699

noncomputable section

/-- A183002: a(n) is the total number of noncentral divisors in all positive integers <= n.

Offset 1, canonical program `A183002.P1082009122046195699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183002 (n : ℕ) : ℤ :=
  A183002.P1082009122046195699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183126.P13932271397595957484

`record[A160410(A142150(n))+A004273(n)]`
-/

namespace A183126.P13932271397595957484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160410 (A142150 n).toNat + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183126.P13932271397595957484

noncomputable section

/-- A183126: Toothpick sequence with toothpicks connected by their endpoints.

Offset 0, canonical program `A183126.P13932271397595957484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A183126 (n : ℕ) : ℤ :=
  A183126.P13932271397595957484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A183126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184033.P5643691655713345315

`A184032(n+1)+21`
-/

namespace A184033.P5643691655713345315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184032 (n + 1) + 21

end

end A184033.P5643691655713345315

noncomputable section

/-- A184033: 1/16 the number of (n+1) X 4 0..3 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184033.P5643691655713345315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184033 (n : ℕ) : ℤ :=
  A184033.P5643691655713345315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A184033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184041.P17722413965595698240

`A183980(n+3)+1`
-/

namespace A184041.P17722413965595698240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 3) + 1

end

end A184041.P17722413965595698240

noncomputable section

/-- A184041: 1/9 the number of (n+1) X 3 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184041.P17722413965595698240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184041 (n : ℕ) : ℤ :=
  A184041.P17722413965595698240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184045.P13433366339287709500

`A183985(n+3)-5`
-/

namespace A184045.P13433366339287709500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183985 (n + 3) - 5

end

end A184045.P13433366339287709500

noncomputable section

/-- A184045: 1/9 the number of (n+1) X 7 0..2 arrays with all 2 X 2 subblocks having the same four values.

Offset 1, canonical program `A184045.P13433366339287709500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184045 (n : ℕ) : ℤ :=
  A184045.P13433366339287709500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A184045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184362.P12277345138454522326

`(n+1)*Δ[A078616(abs(1-n))]`
-/

namespace A184362.P12277345138454522326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A184362.P12277345138454522326

noncomputable section

/-- A184362: G.f.: eta(x) + x*eta'(x).

Offset 0, canonical program `A184362.P12277345138454522326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A184362 (n : ℕ) : ℤ :=
  A184362.P12277345138454522326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A184362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184363.P2962500136500042189

`∑[A099375(n)]*A009531(A198954(n))`
-/

namespace A184363.P2962500136500042189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009531 (A198954 n).toNat

end

end A184363.P2962500136500042189

noncomputable section

/-- A184363: G.f.: eta(x)^3*(1 + x*eta'(x)/eta(x)), where eta(x) is Dedekind's eta(q) function without the q^(1/24) factor.

Offset 0, canonical program `A184363.P2962500136500042189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A184363 (n : ℕ) : ℤ :=
  A184363.P2962500136500042189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A184363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184365.P16997047362946431375

`(1-n)*Δ[A078616(abs(1-n))]`
-/

namespace A184365.P16997047362946431375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A184365.P16997047362946431375

noncomputable section

/-- A184365: G.f.: eta(x) - x*eta'(x), where eta(x) is Dedekind's eta(q) function without the q^(1/24) factor.

Offset 0, canonical program `A184365.P16997047362946431375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 837 terms. -/
def A184365 (n : ℕ) : ℤ :=
  A184365.P16997047362946431375.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 837 terms. -/
def A184365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184366.P5150101463797216766

`(3-n)/3*A010816(n)`
-/

namespace A184366.P5150101463797216766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ) : ℚ) / 3 * (A010816 n : ℚ)

end

end A184366.P5150101463797216766

noncomputable section

/-- A184366: G.f.: eta(x)^3*(1 - x*eta'(x)/eta(x)), where eta(x) is Dedekind's eta(q) function without the q^(1/24) factor.

Offset 0, canonical program `A184366.P5150101463797216766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A184366 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A184366.P5150101463797216766.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A184366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185018.P10903825836336431318

`A053985(C(2, A025581(n)))`
-/

namespace A185018.P10903825836336431318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (Nat.choose 2 (A025581 n).toNat)

end

end A185018.P10903825836336431318

noncomputable section

/-- A185018: Inverse to sequence matrix for natural numbers.

Offset 0, canonical program `A185018.P10903825836336431318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185018 (n : ℕ) : ℤ :=
  A185018.P10903825836336431318.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185113.P5883797355228036697

`(n/2+1)*A069271(n)`
-/

namespace A185113.P5883797355228036697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A069271 n : ℚ)

end

end A185113.P5883797355228036697

noncomputable section

/-- A185113: Number of dissections of a convex (3n+3)-sided polygon into n pentagons and one triangle (up to equivalence).

Offset 0, canonical program `A185113.P5883797355228036697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A185113 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A185113.P5883797355228036697.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A185113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185269.P13063718111534956283

`p?[A005351(n)]`
-/

namespace A185269.P13063718111534956283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185269.P13063718111534956283

noncomputable section

/-- A185269: The subsequence of primes, in order of occurrence, in A005351.

Offset 1, canonical program `A185269.P13063718111534956283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185269 (n : ℕ) : ℤ :=
  A185269.P13063718111534956283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185400.P10088178791459838251

`eq[1, A000120(A062028(n)-A070565(n))]`
-/

namespace A185400.P10088178791459838251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A062028 n - A070565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185400.P10088178791459838251

noncomputable section

/-- A185400: Numbers with property that the digital sum plus the product of the digits is a power of 2.

Offset 1, canonical program `A185400.P10088178791459838251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A185400 (n : ℕ) : ℤ :=
  (A185400.P10088178791459838251.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A185400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185712.P714070859971941151

`∑[A185706(n+1)]`
-/

namespace A185712.P714070859971941151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185712.P714070859971941151

noncomputable section

/-- A185712: a(n) = number of primes <= n that end in 3.

Offset 1, canonical program `A185712.P714070859971941151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185712 (n : ℕ) : ℤ :=
  A185712.P714070859971941151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185714.P14230647716207036197

`∑[A001877((n+1)*A151763(n+1)²)]`
-/

namespace A185714.P14230647716207036197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 ((n + 1 : ℤ) * A151763 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185714.P14230647716207036197

noncomputable section

/-- A185714: a(n) = number of primes <= n that end in 7.

Offset 1, canonical program `A185714.P14230647716207036197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185714 (n : ℕ) : ℤ :=
  A185714.P14230647716207036197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185782.P9206641103907000175

`A144257(n+1)+A025581(n)`
-/

namespace A185782.P9206641103907000175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1) + A025581 n

end

end A185782.P9206641103907000175

noncomputable section

/-- A185782: Weight array of A185780, by antidiagonals.

Offset 1, canonical program `A185782.P9206641103907000175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185782 (n : ℕ) : ℤ :=
  A185782.P9206641103907000175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185871.P8543721373781251179

`∑[A198954(A066182(n+1))+2]`
-/

namespace A185871.P8543721373781251179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A066182 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185871.P8543721373781251179

noncomputable section

/-- A185871: (Even,even)-polka dot array in the natural number array A000027, by antidiagonals.

Offset 1, canonical program `A185871.P8543721373781251179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185871 (n : ℕ) : ℤ :=
  A185871.P8543721373781251179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186037.P1859243056867817178

`A057427(n)+val(A257520(n), 2)`
-/

namespace A186037.P1859243056867817178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (SequenceMachineLib.valuation (A257520 n).toNat 2 : ℤ)

end

end A186037.P1859243056867817178

noncomputable section

/-- A186037: a(n) = log_2((1+A002426(n))/numerator((1+A002426(n))/2^n)).

Offset 0, canonical program `A186037.P1859243056867817178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A186037 (n : ℕ) : ℤ :=
  A186037.P1859243056867817178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A186037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186278.P5249949395028030588

`eq[1, A032741(A007953(n)+A004159(n))]`
-/

namespace A186278.P5249949395028030588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007953 n + A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186278.P5249949395028030588

noncomputable section

/-- A186278: Numbers k such that the sum of the digits of k plus the sum of the digits of k^2 is prime.

Offset 1, canonical program `A186278.P5249949395028030588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. -/
def A186278 (n : ℕ) : ℤ :=
  (A186278.P5249949395028030588.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1075 terms. -/
def A186278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186326.P9660484515861953398

`A186324(n+1)+char[A251963(n+1)]`
-/

namespace A186326.P9660484515861953398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186324 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186326.P9660484515861953398

noncomputable section

/-- A186326: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the squares and octagonal numbers. Complement of A186327.

Offset 1, canonical program `A186326.P9660484515861953398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186326 (n : ℕ) : ℤ :=
  A186326.P9660484515861953398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186775.P3396256789162687716

`lt[Δ[A001370(n)], 0]`
-/

namespace A186775.P3396256789162687716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A186775.P3396256789162687716

noncomputable section

/-- A186775: Numbers k such that digitsum(2^k) > digitsum(2^(k+1)).

Offset 1, canonical program `A186775.P3396256789162687716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4919 terms. -/
def A186775 (n : ℕ) : ℤ :=
  (A186775.P3396256789162687716.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4919 terms. -/
def A186775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187038.P18235214902734965343

`abs(Δ[A274575(n)])`
-/

namespace A187038.P18235214902734965343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A187038.P18235214902734965343

noncomputable section

/-- A187038: Row sums of number triangle A187037.

Offset 0, canonical program `A187038.P18235214902734965343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A187038 (n : ℕ) : ℤ :=
  A187038.P18235214902734965343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. -/
def A187038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187285.P11288562697878379650

`(n+1)*A097327(n+1)%(A000030(n+1)*A097326(n+1))`
-/

namespace A187285.P11288562697878379650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A097327 (n + 1)) (A000030 (n + 1) * A097326 (n + 1))

end

end A187285.P11288562697878379650

noncomputable section

/-- A187285: Smallest multiple of n beginning with 1.

Offset 1, canonical program `A187285.P11288562697878379650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187285 (n : ℕ) : ℤ :=
  A187285.P11288562697878379650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187744.P5382630201904644489

`eq[0, A002262(A007953(n))]`
-/

namespace A187744.P5382630201904644489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187744.P5382630201904644489

noncomputable section

/-- A187744: Numbers whose digital sum is a triangular number.

Offset 1, canonical program `A187744.P5382630201904644489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A187744 (n : ℕ) : ℤ :=
  (A187744.P5382630201904644489.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1742 terms. -/
def A187744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187767.P2032594768100003987

`A127804(n)-1`
-/

namespace A187767.P2032594768100003987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127804 n - 1

end

end A187767.P2032594768100003987

noncomputable section

/-- A187767: Number of bicolored cyclic patterns n X n.

Offset 1, canonical program `A187767.P2032594768100003987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A187767 (n : ℕ) : ℤ :=
  A187767.P2032594768100003987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A187767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187915.P10262871046590375420

`A088211(n+1)+A054459(n)`
-/

namespace A187915.P10262871046590375420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088211 (n + 1) + A054459 n

end

end A187915.P10262871046590375420

noncomputable section

/-- A187915: a(n) = (1/2)*((n+2)*P(n-1)+(5*n+1)*P(n)) where P() = A000129 are the Pell numbers.

Offset 1, canonical program `A187915.P10262871046590375420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A187915 (n : ℕ) : ℤ :=
  A187915.P10262871046590375420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A187915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187917.P7491758766845615620

`A054459(n)-A054447(n)`
-/

namespace A187917.P7491758766845615620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054459 n - A054447 n

end

end A187917.P7491758766845615620

noncomputable section

/-- A187917: a(n) = (1/4)*(5*(n-1)*P(n)+n*P(n-1)) where P() are the Pell numbers A000129.

Offset 1, canonical program `A187917.P7491758766845615620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A187917 (n : ℕ) : ℤ :=
  A187917.P7491758766845615620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A187917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187968.P16318789548881380579

`A097508(A008619(n))+1+n`
-/

namespace A187968.P16318789548881380579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A008619 n).toNat + 1 + (n : ℤ)

end

end A187968.P16318789548881380579

noncomputable section

/-- A187968: Positions of 1 in A187967; complement (conjectured) of A098021.

Offset 1, canonical program `A187968.P16318789548881380579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187968 (n : ℕ) : ℤ :=
  A187968.P16318789548881380579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188044.P4047038708681566993

`and(1, Δ[n-A187969(a(n-1)+1)])` with `a(0)=2`
-/

namespace A188044.P4047038708681566993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) - A187969 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A188044.P4047038708681566993

noncomputable section

/-- A188044: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=sqrt(2), k=4, [ ]=floor.

Offset 1, canonical program `A188044.P4047038708681566993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188044 (n : ℕ) : ℤ :=
  A188044.P4047038708681566993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188075.P9684796969811370760

`4*A188069(n+1)-n`
-/

namespace A188075.P9684796969811370760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A188069 (n + 1) - (n : ℤ)

end

end A188075.P9684796969811370760

noncomputable section

/-- A188075: Positions of 0 in the zero-one sequence [n*r]-[4*r]-[n*r-4*r], where r=sqrt(3), n>=1.

Offset 1, canonical program `A188075.P9684796969811370760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188075 (n : ℕ) : ℤ :=
  A188075.P9684796969811370760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188092.P4661971966666543526

`filter[n+1, A188090(#)]`
-/

namespace A188092.P4661971966666543526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188090 (f1 j) = 1) n)

end

end A188092.P4661971966666543526

noncomputable section

/-- A188092: Positions of 1 in A188090; complement of A188091.

Offset 1, canonical program `A188092.P4661971966666543526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6603 terms. -/
def A188092 (n : ℕ) : ℤ :=
  (A188092.P4661971966666543526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6603 terms. -/
def A188092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188093.P14427247559921833927

`A188090(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A188093.P14427247559921833927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188090 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A188093.P14427247559921833927

noncomputable section

/-- A188093: [nr+kr]-[nr]-[kr], where r=sqrt(3), k=6, [ ]=floor.

Offset 1, canonical program `A188093.P14427247559921833927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188093 (n : ℕ) : ℤ :=
  A188093.P14427247559921833927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A188093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188192.P16228618120579595901

`A188189(a(n-3)+n)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A188192.P16228618120579595901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A188189 (a (n - 3) + (n : ℤ)).toNat

end

end A188192.P16228618120579595901

noncomputable section

/-- A188192: a(n) = [n*r]-[k*r]-[n*r-k*r], where r=sqrt(5), k=3, [ ]=floor.

Offset 1, canonical program `A188192.P16228618120579595901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188192 (n : ℕ) : ℤ :=
  A188192.P16228618120579595901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188300.P13558209889286680429

`A188297(A083035(n+1)+n)`
-/

namespace A188300.P13558209889286680429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (A083035 (n + 1) + (n : ℤ)).toNat

end

end A188300.P13558209889286680429

noncomputable section

/-- A188300: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=3, [ ]=floor.

Offset 1, canonical program `A188300.P13558209889286680429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188300 (n : ℕ) : ℤ :=
  A188300.P13558209889286680429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188301.P7448140245845181984

`A097508(A002264(n))+1+n`
-/

namespace A188301.P7448140245845181984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A002264 n).toNat + 1 + (n : ℤ)

end

end A188301.P7448140245845181984

noncomputable section

/-- A188301: Positions of 0 in A188300; complement of A188302.

Offset 1, canonical program `A188301.P7448140245845181984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188301 (n : ℕ) : ℤ :=
  A188301.P7448140245845181984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188372.P2678500880219119319

`comp[A001952(n+1)*A188038(n+1)]`
-/

namespace A188372.P2678500880219119319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) * A188038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188372.P2678500880219119319

noncomputable section

/-- A188372: Positions of 0 in A188371; complement of A188373.

Offset 1, canonical program `A188372.P2678500880219119319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188372 (n : ℕ) : ℤ :=
  (A188372.P2678500880219119319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188397.P1006503134452683607

`comp[A188396(n+1)-1]+1`
-/

namespace A188397.P1006503134452683607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188397.P1006503134452683607

noncomputable section

/-- A188397: Positions of 1 in A188395; complement of A188396.

Offset 1, canonical program `A188397.P1006503134452683607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188397 (n : ℕ) : ℤ :=
  (A188397.P1006503134452683607.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188436.P14332046805831665438

`val(A110006(n+1), 4)`
-/

namespace A188436.P14332046805831665438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A110006 (n + 1)).toNat 4

end

end A188436.P14332046805831665438

noncomputable section

/-- A188436: [3r]-[nr]-[3r-nr], where r=(1+sqrt(5))/2 and [.]=floor.

Offset 1, canonical program `A188436.P14332046805831665438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188436 (n : ℕ) : ℤ :=
  (A188436.P14332046805831665438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188557.P4941890526069849708

`A188556(n+1)+A008859(n)`
-/

namespace A188557.P4941890526069849708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188556 (n + 1) + A008859 n

end

end A188557.P4941890526069849708

noncomputable section

/-- A188557: Number of 6 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

Offset 1, canonical program `A188557.P4941890526069849708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188557 (n : ℕ) : ℤ :=
  A188557.P4941890526069849708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188557.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188860.P1930130511050451117

`A081113(round(sqrt(n²+1)))+floor(3^(n-1))`
-/

namespace A188860.P1930130511050451117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081113 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A188860.P1930130511050451117

noncomputable section

/-- A188860: Number of n X n binary arrays without the pattern 0 1 diagonally, vertically or antidiagonally.

Offset 0, canonical program `A188860.P1930130511050451117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A188860 (n : ℕ) : ℤ :=
  A188860.P1930130511050451117.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A188860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189378.P12164205168119732610

`A184901(n+1)+2*(n+1)`
-/

namespace A189378.P12164205168119732610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184901 (n + 1) + (2 * (n + 1) : ℤ)

end

end A189378.P12164205168119732610

noncomputable section

/-- A189378: a(n) = n + [nr/s] + [nt/s]; r=2, s=(-1+sqrt(5))/2, t=(1+sqrt(5))/2.

Offset 1, canonical program `A189378.P12164205168119732610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189378 (n : ℕ) : ℤ :=
  A189378.P12164205168119732610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189640.P14910625713861930897

`A080846(a(a(n-1))+n)` with `a(0)=0`
-/

namespace A189640.P14910625713861930897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A080846 (a (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A189640.P14910625713861930897

noncomputable section

/-- A189640: Fixed point of the morphism 0->001, 1->101.

Offset 1, canonical program `A189640.P14910625713861930897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189640 (n : ℕ) : ℤ :=
  A189640.P14910625713861930897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189673.P730405193398399512

`a(1-A080846(n))` with `a(0)=0, a(1)=1`
-/

namespace A189673.P730405193398399512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (1 - A080846 n).toNat

end

end A189673.P730405193398399512

noncomputable section

/-- A189673: Fixed point of the morphism 0->010, 1->110.

Offset 1, canonical program `A189673.P730405193398399512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189673 (n : ℕ) : ℤ :=
  (A189673.P730405193398399512.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189769.P5701703840364148688

`2*A085374(n)`
-/

namespace A189769.P5701703840364148688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085374 n

end

end A189769.P5701703840364148688

noncomputable section

/-- A189769: Number of one-sided prudent walks from (0,0) to (n,n), with 3+n east steps, 3 west steps and n north steps.

Offset 1, canonical program `A189769.P5701703840364148688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A189769 (n : ℕ) : ℤ :=
  A189769.P5701703840364148688.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A189769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189770.P292981471477749817

`2*A085375(n)`
-/

namespace A189770.P292981471477749817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085375 n

end

end A189770.P292981471477749817

noncomputable section

/-- A189770: Number of one-sided prudent walks from (0,0) to (n,n), with 4+n east steps, 4 west steps and n north steps.

Offset 1, canonical program `A189770.P292981471477749817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A189770 (n : ℕ) : ℤ :=
  A189770.P292981471477749817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A189770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190453.P12819835385222772038

`eq[1, A190451(n+1)]+1`
-/

namespace A190453.P12819835385222772038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190453.P12819835385222772038

noncomputable section

/-- A190453: Positions of 1 in A190451.

Offset 1, canonical program `A190453.P12819835385222772038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190453 (n : ℕ) : ℤ :=
  (A190453.P12819835385222772038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A190453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190454.P17304671988381641284

`eq[2, A190451(n+1)]+1`
-/

namespace A190454.P17304671988381641284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190454.P17304671988381641284

noncomputable section

/-- A190454: Positions of 2 in A190451.

Offset 1, canonical program `A190454.P17304671988381641284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A190454 (n : ℕ) : ℤ :=
  (A190454.P17304671988381641284.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A190454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190457.P15557048138221621682

`A190451(n+1)+A005614(A016813(n+1))`
-/

namespace A190457.P15557048138221621682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190451 (n + 1) + A005614 (A016813 (n + 1)).toNat

end

end A190457.P15557048138221621682

noncomputable section

/-- A190457: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(golden ratio,4,3) and []=floor.

Offset 1, canonical program `A190457.P15557048138221621682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2736 terms. -/
def A190457 (n : ℕ) : ℤ :=
  A190457.P15557048138221621682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2736 terms. -/
def A190457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190484.P14590028091312245075

`record[A026253(n+1)]`
-/

namespace A190484.P14590028091312245075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190484.P14590028091312245075

noncomputable section

/-- A190484: Positions of 0 in A190483.

Offset 1, canonical program `A190484.P14590028091312245075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7072 terms. -/
def A190484 (n : ℕ) : ℤ :=
  A190484.P14590028091312245075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7072 terms. -/
def A190484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190504.P10591363179372633885

`A001950(2*(n+1))+A005206(3*n+2)+A005206(n)`
-/

namespace A190504.P10591363179372633885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1)) + (A005206 (3 * n + 2) + A005206 n)

end

end A190504.P10591363179372633885

noncomputable section

/-- A190504: a(n) = n+[n*s/r]+[n*t/r]+[n*u/r]; r=golden ratio, s=r+1, t=r+2, u=r+3.

Offset 1, canonical program `A190504.P10591363179372633885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190504 (n : ℕ) : ℤ :=
  A190504.P10591363179372633885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190566.P4916505128148002889

`A003151(A190550(n+1))`
-/

namespace A190566.P4916505128148002889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A190550 (n + 1)).toNat

end

end A190566.P4916505128148002889

noncomputable section

/-- A190566: Positions of 4 in A190561.

Offset 1, canonical program `A190566.P4916505128148002889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1465 terms. -/
def A190566 (n : ℕ) : ℤ :=
  A190566.P4916505128148002889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1465 terms. -/
def A190566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190677.P8681336031986812165

`lt[A190676(n+1), 1]+1`
-/

namespace A190677.P8681336031986812165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190676 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A190677.P8681336031986812165

noncomputable section

/-- A190677: Positions of 0 in A190676.

Offset 1, canonical program `A190677.P8681336031986812165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190677 (n : ℕ) : ℤ :=
  (A190677.P8681336031986812165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190683.P16248676480014471006

`A003512(A016777(n+1))%A188069(n+2)`
-/

namespace A190683.P16248676480014471006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003512 (A016777 (n + 1)).toNat) (A188069 (n + 2))

end

end A190683.P16248676480014471006

noncomputable section

/-- A190683: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),3,1) and [ ]=floor.

Offset 1, canonical program `A190683.P16248676480014471006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190683 (n : ℕ) : ℤ :=
  A190683.P16248676480014471006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A190683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190765.P11397888185412396491

`2*A190486(n+1)-A190763(n+1)`
-/

namespace A190765.P11397888185412396491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190486 (n + 1) - A190763 (n + 1)

end

end A190765.P11397888185412396491

noncomputable section

/-- A190765: Positions of 2 in A190762.

Offset 1, canonical program `A190765.P11397888185412396491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190765 (n : ℕ) : ℤ :=
  A190765.P11397888185412396491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190774.P847097764927375794

`∩[A184623(n+1), A083051(n)]`
-/

namespace A190774.P847097764927375794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190774.P847097764927375794

noncomputable section

/-- A190774: Positions of 3 in A190770.

Offset 1, canonical program `A190774.P847097764927375794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8048 terms. -/
def A190774 (n : ℕ) : ℤ :=
  (A190774.P847097764927375794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8048 terms. -/
def A190774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190776.P13870307466262364096

`ceil(sqrt(2)*A190500(n+1))`
-/

namespace A190776.P13870307466262364096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A190500 (n + 1) : ℝ)⌉

end

end A190776.P13870307466262364096

noncomputable section

/-- A190776: Positions of 0 in A190775.

Offset 1, canonical program `A190776.P13870307466262364096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190776 (n : ℕ) : ℤ :=
  A190776.P13870307466262364096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190993.P8554082118388520746

`A000045(n)-A263727(n)`
-/

namespace A190993.P8554082118388520746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A263727 n

end

end A190993.P8554082118388520746

noncomputable section

/-- A190993: Square excess of Fibonacci numbers.

Offset 0, canonical program `A190993.P8554082118388520746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A190993 (n : ℕ) : ℤ :=
  A190993.P8554082118388520746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A190993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191110.P14908163695247419265

`2*A153775(n+1)-1`
-/

namespace A191110.P14908163695247419265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153775 (n + 1) - 1

end

end A191110.P14908163695247419265

noncomputable section

/-- A191110: Increasing sequence generated by these rules: a(1)=1, and if x is in a then 3x and 3x+2 are in a.

Offset 1, canonical program `A191110.P14908163695247419265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191110 (n : ℕ) : ℤ :=
  A191110.P14908163695247419265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191307.P5108314988491942072

`∑[A037955(n)]`
-/

namespace A191307.P5108314988491942072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191307.P5108314988491942072

noncomputable section

/-- A191307: Sum of the heights of the first peaks in all dispersed Dyck paths of length n (i.e., in Motzkin paths of length n with no (1,0)-steps at positive heights).

Offset 0, canonical program `A191307.P5108314988491942072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A191307 (n : ℕ) : ℤ :=
  A191307.P5108314988491942072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A191307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191396.P7229870374882606009

`A191394(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A191396.P7229870374882606009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A191394 n + a (n - 2)

end

end A191396.P7229870374882606009

noncomputable section

/-- A191396: Sum of the heights of the base pyramids in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0)-steps at positive heights). A base pyramid is a factor of the form U^j D^j (j>0), starting at the horizontal axis. Here U=(1,1) and D=(1,-1).

Offset 0, canonical program `A191396.P7229870374882606009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A191396 (n : ℕ) : ℤ :=
  A191396.P7229870374882606009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A191396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191472.P13543047471222290453

`A001043(n+1)-2*A096379(n+1)`
-/

namespace A191472.P13543047471222290453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - 2 * A096379 (n + 1)

end

end A191472.P13543047471222290453

noncomputable section

/-- A191472: a(n) = 2*prime(n+2) - prime(n+1) - prime(n).

Offset 1, canonical program `A191472.P13543047471222290453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191472 (n : ℕ) : ℤ :=
  A191472.P13543047471222290453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191590.P14029697644500156998

`A030007(n+2)+2*A030004(n+2)`
-/

namespace A191590.P14029697644500156998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030007 (n + 2) + 2 * A030004 (n + 2)

end

end A191590.P14029697644500156998

noncomputable section

/-- A191590: a(n) is the genus of the modular curve associated to the principal congruence subgroup of level p(n), where p(n) is the n-th prime number.

Offset 2, canonical program `A191590.P14029697644500156998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191590 (n : ℕ) : ℤ :=
  A191590.P14029697644500156998.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191782.P9524612472546296102

`∑[abs(Δ[A026010(n)])]`
-/

namespace A191782.P9524612472546296102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191782.P9524612472546296102

noncomputable section

/-- A191782: Sum of the lengths of the first ascents in all n-length left factors of Dyck paths.

Offset 1, canonical program `A191782.P9524612472546296102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A191782 (n : ℕ) : ℤ :=
  A191782.P9524612472546296102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A191782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191836.P5700790045255042442

`∏[A143731(n+1)+ceil((n+1)/∏{p}[n+1, (n+1)/#])]`
-/

namespace A191836.P5700790045255042442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1) + ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191836.P5700790045255042442

noncomputable section

/-- A191836: The slowest growing sequence that satisfies: a(1) = 1, a(n) is a multiple of n and a(n-1), and a(n) > a(n-1).

Offset 1, canonical program `A191836.P5700790045255042442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A191836 (n : ℕ) : ℤ :=
  A191836.P5700790045255042442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A191836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192120.P16297704775261001352

`record[A137688(n)-A001018(A025581(n))]`
-/

namespace A192120.P16297704775261001352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n - A001018 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192120.P16297704775261001352

noncomputable section

/-- A192120: Monotonic ordering of nonnegative differences 2^i - 8^j, for 40 >=i >= 0, j >= 0.

Offset 1, canonical program `A192120.P16297704775261001352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A192120 (n : ℕ) : ℤ :=
  A192120.P16297704775261001352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A192120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192167.P5054254474188894599

`record[A137688(n)²-A001018(A025581(n))]`
-/

namespace A192167.P5054254474188894599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 - A001018 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192167.P5054254474188894599

noncomputable section

/-- A192167: Monotonic ordering of nonnegative differences 4^i-8^j, for 40>= i>=0, j>=0.

Offset 1, canonical program `A192167.P5054254474188894599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A192167 (n : ℕ) : ℤ :=
  A192167.P5054254474188894599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. -/
def A192167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192306.P16180315663506534326

`2*A122491(n+2)`
-/

namespace A192306.P16180315663506534326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122491 (n + 2)

end

end A192306.P16180315663506534326

noncomputable section

/-- A192306: 1-sequence of reduction of (2n) by x^2 -> x+1.

Offset 1, canonical program `A192306.P16180315663506534326`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192306 (n : ℕ) : ℤ :=
  A192306.P16180315663506534326.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192306.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A192308.P10463933346683699392

`3*A122491(n+2)`
-/

namespace A192308.P10463933346683699392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A122491 (n + 2)

end

end A192308.P10463933346683699392

noncomputable section

/-- A192308: 1-sequence of reduction of (3n) by x^2 -> x+1.

Offset 1, canonical program `A192308.P10463933346683699392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192308 (n : ℕ) : ℤ :=
  A192308.P10463933346683699392.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193294.P17160305021971217046

`A063477(n+1)-A193293(n+1)`
-/

namespace A193294.P17160305021971217046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063477 (n + 1) - A193293 (n + 1)

end

end A193294.P17160305021971217046

noncomputable section

/-- A193294: Sum of even divisors of Fibonacci(n).

Offset 1, canonical program `A193294.P17160305021971217046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A193294 (n : ℕ) : ℤ :=
  A193294.P17160305021971217046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A193294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193592.P7249153181096996018

`A002262(A056943(n))+1`
-/

namespace A193592.P7249153181096996018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A056943 n).toNat + 1

end

end A193592.P7249153181096996018

noncomputable section

/-- A193592: Triangle read by rows having n-th row 1, n, n-1, n-2,..., 2, 1 for n>=0.

Offset 0, canonical program `A193592.P7249153181096996018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193592 (n : ℕ) : ℤ :=
  A193592.P7249153181096996018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122513.P12694980790389456141

`floor(A249164(n+1)/sqrt(6))`
-/

namespace A122513.P12694980790389456141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A249164 (n + 1) : ℝ) / Real.sqrt (6 : ℝ)⌋

end

end A122513.P12694980790389456141

noncomputable section

/-- A122513: Numbers n such that 1+2n+3n^2 is a triangular number.

Offset 1, canonical program `A122513.P12694980790389456141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A122513 (n : ℕ) : ℤ :=
  A122513.P12694980790389456141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A122513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122516.P15119530128524371559

`p?[A046992(n+1)]`
-/

namespace A122516.P15119530128524371559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122516.P15119530128524371559

noncomputable section

/-- A122516: Primes in A046992.

Offset 1, canonical program `A122516.P15119530128524371559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A122516 (n : ℕ) : ℤ :=
  A122516.P15119530128524371559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A122516.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A123128.P14620295915267660605

`n+1+A001223(n+1)`
-/

namespace A123128.P14620295915267660605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A001223 (n + 1)

end

end A123128.P14620295915267660605

noncomputable section

/-- A123128: Add n to the n-th difference between consecutive primes.

Offset 1, canonical program `A123128.P14620295915267660605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123128 (n : ℕ) : ℤ :=
  A123128.P14620295915267660605.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123129.P10467809543650190892

`(n+1+A001223(n+1))^n`
-/

namespace A123129.P10467809543650190892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) + A001223 (n + 1)) ^ n

end

end A123129.P10467809543650190892

noncomputable section

/-- A123129: a(n) = ( n + prime(n+1) - prime(n) )^(n-1).

Offset 1, canonical program `A123129.P10467809543650190892`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123129 (n : ℕ) : ℤ :=
  A123129.P10467809543650190892.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123164.P13278900734001591324

`A001850(n)-A002002(n)`
-/

namespace A123164.P13278900734001591324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - A002002 n

end

end A123164.P13278900734001591324

noncomputable section

/-- A123164: Row sums of A123160.

Offset 0, canonical program `A123164.P13278900734001591324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A123164 (n : ℕ) : ℤ :=
  A123164.P13278900734001591324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A123164.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A123246.P10382870534681297976

`-xor(1, ∑[-A010051(n+1)])`
-/

namespace A123246.P10382870534681297976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123246.P10382870534681297976

noncomputable section

/-- A123246: a(n) = PrimePi(n) + (-1)^(PrimePi(n) + 1) (cf. A000720).

Offset 1, canonical program `A123246.P10382870534681297976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123246 (n : ℕ) : ℤ :=
  A123246.P10382870534681297976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123594.P17678384235713202492

`a(A049705(n-1))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A123594.P17678384235713202492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (A049705 (n - 1)).toNat

end

end A123594.P17678384235713202492

noncomputable section

/-- A123594: Unique sequence of 0's and 1's which are either repeated or not repeated with the following property: when the sequence is 'coded' in writing down a 1 when an element is repeated and a 0 when it is not repeated and by putting the initial element in front of the sequence thus obtained, the above sequence appears.

Offset 1, canonical program `A123594.P17678384235713202492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A123594 (n : ℕ) : ℤ :=
  (A123594.P17678384235713202492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A123594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123608.P17223732889640698517

`∩[A002808(n+1), A166602(n+1)]`
-/

namespace A123608.P17223732889640698517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123608.P17223732889640698517

noncomputable section

/-- A123608: Numbers k such that k, k+1 and 2*k+1 are composite.

Offset 1, canonical program `A123608.P17223732889640698517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9176 terms. -/
def A123608 (n : ℕ) : ℤ :=
  (A123608.P17223732889640698517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9176 terms. -/
def A123608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123711.P3106313337683565752

`filter[A013929(n+1), A215480(#)]`
-/

namespace A123711.P3106313337683565752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A123711.P3106313337683565752

noncomputable section

/-- A123711: Indices n such that A123709(n) = 8 = number of nonzero terms in row n of triangle A123706.

Offset 1, canonical program `A123711.P3106313337683565752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A123711 (n : ℕ) : ℤ :=
  A123711.P3106313337683565752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A123711.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124569.P8820123207631878592

`∩[A069977(n+1)-4, A069977(n+1)]`
-/

namespace A124569.P8820123207631878592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124569.P8820123207631878592

noncomputable section

/-- A124569: Numbers k such that k, k+2, k+4 and k+6 are squarefree.

Offset 1, canonical program `A124569.P8820123207631878592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5877 terms. -/
def A124569 (n : ℕ) : ℤ :=
  (A124569.P8820123207631878592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5877 terms. -/
def A124569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124587.P17225293575173405852

`A065091(lt[14, A001223(n+1)])`
-/

namespace A124587.P17225293575173405852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124587.P17225293575173405852

noncomputable section

/-- A124587: Primes p such that q-p >= 16, where q is the next prime after p.

Offset 1, canonical program `A124587.P17225293575173405852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. -/
def A124587 (n : ℕ) : ℤ :=
  A124587.P17225293575173405852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. -/
def A124587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124590.P5839912544610622108

`A000040(lt[A001223(n+1), 8]+1)`
-/

namespace A124590.P5839912544610622108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A124590.P5839912544610622108

noncomputable section

/-- A124590: Primes p such that q-p <= 6, where q is the next prime after p.

Offset 1, canonical program `A124590.P5839912544610622108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4546 terms. -/
def A124590 (n : ℕ) : ℤ :=
  A124590.P5839912544610622108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4546 terms. -/
def A124590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124591.P3235263655335918205

`A000040(lt[A001223(n+1), 10]+1)`
-/

namespace A124591.P3235263655335918205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A124591.P3235263655335918205

noncomputable section

/-- A124591: Primes p such that q-p <= 8, where q is the next prime after p.

Offset 1, canonical program `A124591.P3235263655335918205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124591 (n : ℕ) : ℤ :=
  A124591.P3235263655335918205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A124591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124656.P12602646554450851436

`filter[A005101(n+1), A010060(#)]`
-/

namespace A124656.P12602646554450851436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A124656.P12602646554450851436

noncomputable section

/-- A124656: Abundant odious numbers. (Abundant numbers that have an odd number of ones in their binary representation.)

Offset 1, canonical program `A124656.P12602646554450851436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1736 terms. -/
def A124656 (n : ℕ) : ℤ :=
  A124656.P12602646554450851436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1736 terms. -/
def A124656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125061.P10139082883885245732

`abs(A138952(A028310(2*n)))`
-/

namespace A125061.P10139082883885245732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138952 (A028310 (2 * n)).toNat|

end

end A125061.P10139082883885245732

noncomputable section

/-- A125061: Expansion of psi(q) * psi(q^2) * chi(q^3) * chi(-q^6) in powers of q where psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A125061.P10139082883885245732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A125061 (n : ℕ) : ℤ :=
  A125061.P10139082883885245732.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A125061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125180.P1652341145907951050

`A001223(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A125180.P1652341145907951050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001223 n + 2 * a (n - 1)

end

end A125180.P1652341145907951050

noncomputable section

/-- A125180: a(n) = 2*a(n-1) + prime(n) - prime(n-1), a(1)=2, where prime(n) denotes the n-th prime.

Offset 1, canonical program `A125180.P1652341145907951050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A125180 (n : ℕ) : ℤ :=
  A125180.P1652341145907951050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A125180.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126192.P9288968837919539928

`2^A000005(n+1)*A007955(n+1)`
-/

namespace A126192.P9288968837919539928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000005 (n + 1) : ℤ) * (A007955 (n + 1) : ℚ)

end

end A126192.P9288968837919539928

noncomputable section

/-- A126192: Product of the even divisors of 2n.

Offset 1, canonical program `A126192.P9288968837919539928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007955, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126192.P9288968837919539928.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A007955, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126199.P3423459806366818693

`A180617(n+1)-1`
-/

namespace A126199.P3423459806366818693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180617 (n + 1) - 1

end

end A126199.P3423459806366818693

noncomputable section

/-- A126199: a(n) = prime(n)*prime(n+1) + prime(n) + prime(n+1).

Offset 1, canonical program `A126199.P3423459806366818693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126199 (n : ℕ) : ℤ :=
  A126199.P3423459806366818693.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126199.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126606.P13163570229275066813

`2*A002487(n)`
-/

namespace A126606.P13163570229275066813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002487 n

end

end A126606.P13163570229275066813

noncomputable section

/-- A126606: Fixed point of transformation of the seed sequence {0,2}.

Offset 1, canonical program `A126606.P13163570229275066813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126606 (n : ℕ) : ℤ :=
  A126606.P13163570229275066813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127459.P12905099945906847377

`p?[A127458(n+1)]`
-/

namespace A127459.P12905099945906847377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127459.P12905099945906847377

noncomputable section

/-- A127459: Prime numbers n such that there are no primes between n and n+n^(1/3).

Offset 1, canonical program `A127459.P12905099945906847377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A127459 (n : ℕ) : ℤ :=
  A127459.P12905099945906847377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A127459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127580.P858959121209447716

`eq[1, A010051(A158071(n+1)-2)]`
-/

namespace A127580.P858959121209447716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A158071 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127580.P858959121209447716

noncomputable section

/-- A127580: Numbers k such that 64k+63 is prime.

Offset 1, canonical program `A127580.P858959121209447716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A127580 (n : ℕ) : ℤ :=
  (A127580.P858959121209447716.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A127580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127601.P16071854653763161976

`floor(∏[root(A008578(n+1), 4)])`
-/

namespace A127601.P16071854653763161976
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 1) : ℝ) ^ (1 / (4 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A127601.P16071854653763161976

noncomputable section

/-- A127601: Integer part of 4th root of product of first n primes.

Offset 0, canonical program `A127601.P16071854653763161976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A127601 (n : ℕ) : ℤ :=
  A127601.P16071854653763161976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A127601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128201.P11268292657469231375

`record[(n+1)*A009191(n+1)%2]`
-/

namespace A128201.P11268292657469231375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A009191 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128201.P11268292657469231375

noncomputable section

/-- A128201: Union of positive squares and the odd numbers.

Offset 1, canonical program `A128201.P11268292657469231375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128201 (n : ℕ) : ℤ :=
  A128201.P11268292657469231375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128288.P7303772657565545819

`A023163(n+2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128288.P7303772657565545819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023163 (n + 2) : ℚ) / 3

end

end A128288.P7303772657565545819

noncomputable section

/-- A128288: a(n) = A023163(n)/3 for n > 1.

Offset 2, canonical program `A128288.P7303772657565545819`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023163, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128288.P7303772657565545819.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023163, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128290.P17234554926705773976

`eq[A128212(n+1), A128244(n+1)]+1`
-/

namespace A128290.P17234554926705773976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128244 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A128290.P17234554926705773976

noncomputable section

/-- A128290: If p(x) is the product of the digits of the number x and s(x) the sum of the digits then the sequence lists all the numbers k for which p(s(k)) = s(p(k)), with k >= 1.

Offset 1, canonical program `A128290.P17234554926705773976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A128290 (n : ℕ) : ℤ :=
  (A128290.P17234554926705773976.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A128290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129144.P14517758672769090595

`Δ[A171746(a(n-2))+a(n-1)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A129144.P14517758672769090595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f1 =>
  A171746 (f1 (n - 2)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129144.P14517758672769090595

noncomputable section

/-- A129144: a(1)=a(2)=1; for n>2: a(n) = (s = sum of all previous terms) minus (maximal square less than s).

Offset 1, canonical program `A129144.P14517758672769090595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A129144 (n : ℕ) : ℤ :=
  A129144.P14517758672769090595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A129144.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129449.P16811369951284374443

`(-1)^n*A033762(n)`
-/

namespace A129449.P16811369951284374443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A033762 n

end

end A129449.P16811369951284374443

noncomputable section

/-- A129449: Expansion of psi(-x) * psi(-x^3) in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A129449.P16811369951284374443`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129449 (n : ℕ) : ℤ :=
  A129449.P16811369951284374443.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129449.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A129726.P12068691350247961614

`a(n-1)+A001223(n)+2` with `a(0)=2`
-/

namespace A129726.P12068691350247961614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A001223 n + 2

end

end A129726.P12068691350247961614

noncomputable section

/-- A129726: a(n) = a(n-1) + prime(n) - prime(n-1) + 2; a(1) = 2.

Offset 1, canonical program `A129726.P12068691350247961614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129726 (n : ℕ) : ℤ :=
  A129726.P12068691350247961614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129726.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129856.P3920010008458318143

`p?[A001223(n+1)-1]`
-/

namespace A129856.P3920010008458318143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129856.P3920010008458318143

noncomputable section

/-- A129856: Primes that are one less than the difference between consecutive primes.

Offset 1, canonical program `A129856.P3920010008458318143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129856 (n : ℕ) : ℤ :=
  A129856.P3920010008458318143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130008.P4788618563532273942

`A008578(gcd(xor(1, -n), ∑[n]))`
-/

namespace A130008.P4788618563532273942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A130008.P4788618563532273942

noncomputable section

/-- A130008: Noncomposite numbers sandwiched between 1's.

Offset 0, canonical program `A130008.P4788618563532273942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130008 (n : ℕ) : ℤ :=
  A130008.P4788618563532273942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130029.P14613639189885830569

`∑{d}[n+1, #*A007444((n+1)/#)]`
-/

namespace A130029.P14613639189885830569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130029.P14613639189885830569

noncomputable section

/-- A130029: a(n) = Sum_{d|n} phi(n/d) * prime(d).

Offset 1, canonical program `A130029.P14613639189885830569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130029 (n : ℕ) : ℤ :=
  A130029.P14613639189885830569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130258.P9767725094634549464

`∑[A130256(n)]`
-/

namespace A130258.P9767725094634549464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130258.P9767725094634549464

noncomputable section

/-- A130258: Partial sums of the 'upper' odd Fibonacci Inverse A130256.

Offset 0, canonical program `A130258.P9767725094634549464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130258 (n : ℕ) : ℤ :=
  A130258.P9767725094634549464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130258.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130665.P10276629478371461790

`A160410(n+1)/4`
-/

namespace A130665.P10276629478371461790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160410 (n + 1) : ℚ) / 4

end

end A130665.P10276629478371461790

noncomputable section

/-- A130665: a(n) = Sum_{k=0..n} 3^wt(k), where wt() = A000120().

Offset 0, canonical program `A130665.P10276629478371461790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130665 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130665.P10276629478371461790.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132106.P15830577859777000377

`1+A000196(n)+A006218(n)`
-/

namespace A132106.P15830577859777000377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000196 n + A006218 n

end

end A132106.P15830577859777000377

noncomputable section

/-- A132106: a(n) = 1 + floor(sqrt(n)) + Sum_{i=1..n} floor(n/i).

Offset 0, canonical program `A132106.P15830577859777000377`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132106 (n : ℕ) : ℤ :=
  A132106.P15830577859777000377.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132106.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132137.P15193229265496179695

`Δ[A095815(a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A132137.P15193229265496179695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A095815 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A132137.P15193229265496179695

noncomputable section

/-- A132137: a(1)=1, a(n)=maximal digit of sum a(1)+...+a(n-1).

Offset 1, canonical program `A132137.P15193229265496179695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1436 terms. -/
def A132137 (n : ℕ) : ℤ :=
  A132137.P15193229265496179695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1436 terms. -/
def A132137.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A132234.P13659336727395095621

`∪[A142797(n+1), A142789(n+1)]`
-/

namespace A132234.P13659336727395095621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132234.P13659336727395095621

noncomputable section

/-- A132234: Primes congruent to 19 (mod 30).

Offset 1, canonical program `A132234.P13659336727395095621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132234 (n : ℕ) : ℤ :=
  (A132234.P13659336727395095621.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132637.P17118528607186897140

`A002808(n+1)^A002808(n+1)`
-/

namespace A132637.P17118528607186897140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) ^ (A002808 (n + 1) : ℤ)

end

end A132637.P17118528607186897140

noncomputable section

/-- A132637: Composite number C(n) raised to power C(n).

Offset 1, canonical program `A132637.P17118528607186897140`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132637 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132637.P17118528607186897140.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132983.P16430067416316588011

`A132944(n+1)+A001065(A008578(n+1))`
-/

namespace A132983.P16430067416316588011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132944 (n + 1) + A001065 (A008578 (n + 1)).toNat

end

end A132983.P16430067416316588011

noncomputable section

/-- A132983: a(n) = ceiling(n^(1/3) + n^(1/4)).

Offset 1, canonical program `A132983.P16430067416316588011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A132983 (n : ℕ) : ℤ :=
  A132983.P16430067416316588011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1230 terms. -/
def A132983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133061.P6463067667281600221

`A133062(n+1)-A069262(n+1)`
-/

namespace A133061.P6463067667281600221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133062 (n + 1) - A069262 (n + 1)

end

end A133061.P6463067667281600221

noncomputable section

/-- A133061: a(n) = 5*p^5 - 3*p^3 - 2*p^2, where p = prime(n).

Offset 1, canonical program `A133061.P6463067667281600221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133061 (n : ℕ) : ℤ :=
  A133061.P6463067667281600221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133518.P1197385440104389255

`A121842(A000040(n+1))`
-/

namespace A133518.P1197385440104389255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (A000040 (n + 1)).toNat

end

end A133518.P1197385440104389255

noncomputable section

/-- A133518: Smallest k such that p(n)^3 + k is prime where p(n) is the n-th prime.

Offset 1, canonical program `A133518.P1197385440104389255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A133518 (n : ℕ) : ℤ :=
  A133518.P1197385440104389255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A133518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133530.P664862353928632633

`A133534(n+1)+A030078(n+3)`
-/

namespace A133530.P664862353928632633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133534 (n + 1) + A030078 (n + 3)

end

end A133530.P664862353928632633

noncomputable section

/-- A133530: Sum of third powers of three consecutive primes.

Offset 1, canonical program `A133530.P664862353928632633`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, A133534, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133530 (n : ℕ) : ℤ :=
  A133530.P664862353928632633.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, A133534, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133531.P4606246075334968653

`A133535(n+1)+A030514(n+3)`
-/

namespace A133531.P4606246075334968653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133535 (n + 1) + A030514 (n + 3)

end

end A133531.P4606246075334968653

noncomputable section

/-- A133531: Sum of fourth powers of three consecutive primes.

Offset 1, canonical program `A133531.P4606246075334968653`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, A133535, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133531 (n : ℕ) : ℤ :=
  A133531.P4606246075334968653.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030514, A133535, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133531.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133532.P11489854846316048726

`A133536(n+1)+A050997(n+3)`
-/

namespace A133532.P11489854846316048726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133536 (n + 1) + A050997 (n + 3)

end

end A133532.P11489854846316048726

noncomputable section

/-- A133532: Sum of fifth powers of three consecutive primes.

Offset 1, canonical program `A133532.P11489854846316048726`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050997, A133536, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133532 (n : ℕ) : ℤ :=
  A133532.P11489854846316048726.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050997, A133536, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133532.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133533.P6140301617002194535

`A133537(n+1)+A030516(n+3)`
-/

namespace A133533.P6140301617002194535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133537 (n + 1) + A030516 (n + 3)

end

end A133533.P6140301617002194535

noncomputable section

/-- A133533: Sum of sixth powers of three consecutive primes.

Offset 1, canonical program `A133533.P6140301617002194535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030516, A133537, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133533 (n : ℕ) : ℤ :=
  A133533.P6140301617002194535.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030516, A133537, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A133533.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133578.P2891795595979798693

`2*A210934(n+1)-A133685(n+1)`
-/

namespace A133578.P2891795595979798693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210934 (n + 1) - A133685 (n + 1)

end

end A133578.P2891795595979798693

noncomputable section

/-- A133578: Let p = prime(n); then a(n) = (sum of prime factors of p+1) + (sum of prime factors of p-1). a(1) = 4 by convention.

Offset 1, canonical program `A133578.P2891795595979798693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133578 (n : ℕ) : ℤ :=
  A133578.P2891795595979798693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A133578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133827.P13919680985496141564

`A035162(2*n+1)`
-/

namespace A133827.P13919680985496141564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (2 * n + 1)

end

end A133827.P13919680985496141564

noncomputable section

/-- A133827: Number of solutions to x + 7 * y = 2 * n in triangular numbers.

Offset 0, canonical program `A133827.P13919680985496141564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133827 (n : ℕ) : ℤ :=
  A133827.P13919680985496141564.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133827.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133985.P8073439026630697214

`(-1)^n*A080995(n)`
-/

namespace A133985.P8073439026630697214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A080995 n

end

end A133985.P8073439026630697214

noncomputable section

/-- A133985: Expansion of f(-x, x^2) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A133985.P8073439026630697214`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133985 (n : ℕ) : ℤ :=
  A133985.P8073439026630697214.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134101.P17113264373539567206

`A040976(lt[4, A001223(n+1)]+2)`
-/

namespace A134101.P17113264373539567206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A134101.P17113264373539567206

noncomputable section

/-- A134101: Odd nonprimes such that the prior odd number is not a prime but the next odd number is a prime.

Offset 1, canonical program `A134101.P17113264373539567206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134101 (n : ℕ) : ℤ :=
  A134101.P17113264373539567206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134101.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134389.P6535176777869362225

`A189391(log2(A011782(n)))+A000079(n)`
-/

namespace A134389.P6535176777869362225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat + A000079 n

end

end A134389.P6535176777869362225

noncomputable section

/-- A134389: A transform of floor((n+2)/2) with Hankel transform floor((n+2)/2)*(cos(Pi*n/2) + sin(Pi*n/2)).

Offset 0, canonical program `A134389.P6535176777869362225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A134389 (n : ℕ) : ℤ :=
  A134389.P6535176777869362225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A134389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134843.P6168902286908360690

`lt[A053667(n)², n%10]`
-/

namespace A134843.P6168902286908360690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A134843.P6168902286908360690

noncomputable section

/-- A134843: Numbers n not divisible by 10 such that n^2 contains a 0.

Offset 1, canonical program `A134843.P6168902286908360690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134843 (n : ℕ) : ℤ :=
  (A134843.P6168902286908360690.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A134843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134844.P16925415040102992472

`eq[A053667(n), A055641(n)]`
-/

namespace A134844.P16925415040102992472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134844.P16925415040102992472

noncomputable section

/-- A134844: Numbers k such that k contains no zero but k^2 contains at least one zero.

Offset 1, canonical program `A134844.P16925415040102992472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3417 terms. -/
def A134844 (n : ℕ) : ℤ :=
  (A134844.P16925415040102992472.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3417 terms. -/
def A134844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135210.P13755844676552817984

`record[A052413(n+1)%A007095(n+1)]`
-/

namespace A135210.P13755844676552817984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052413 (n + 1)) (A007095 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135210.P13755844676552817984

noncomputable section

/-- A135210: Numbers n such that Sum_digits(n) + Sum_digits(n+1) = Sum_digits(2*n+1).

Offset 1, canonical program `A135210.P13755844676552817984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1560 terms. -/
def A135210 (n : ℕ) : ℤ :=
  A135210.P13755844676552817984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1560 terms. -/
def A135210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135274.P1283932460652620545

`A181428(2*n+1)`
-/

namespace A135274.P1283932460652620545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (2 * n + 1)

end

end A135274.P1283932460652620545

noncomputable section

/-- A135274: a(n) = prime(2*n) - prime(2*n-1) + prime(2*n+1).

Offset 1, canonical program `A135274.P1283932460652620545`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135274 (n : ℕ) : ℤ :=
  A135274.P1283932460652620545.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135684.P5226085479409295214

`(10-n)*A010051(n+1)+n+1`
-/

namespace A135684.P5226085479409295214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 - (n : ℤ)) * A010051 (n + 1) + (n + 1 : ℤ)

end

end A135684.P5226085479409295214

noncomputable section

/-- A135684: a(n)=11 if n is a prime number. Otherwise, a(n)=n.

Offset 1, canonical program `A135684.P5226085479409295214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135684 (n : ℕ) : ℤ :=
  A135684.P5226085479409295214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135930.P11046025906780650624

`p?[A000040(n+1)*A010051(A000006(n+1))]`
-/

namespace A135930.P11046025906780650624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A010051 (A000006 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135930.P11046025906780650624

noncomputable section

/-- A135930: Primes whose integer square root is also prime.

Offset 1, canonical program `A135930.P11046025906780650624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1849 terms. -/
def A135930 (n : ℕ) : ℤ :=
  A135930.P11046025906780650624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1849 terms. -/
def A135930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135931.P1083306340031313068

`p?[A010051(A000006(n+1))+A000040(n+1)]`
-/

namespace A135931.P1083306340031313068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000006 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135931.P1083306340031313068

noncomputable section

/-- A135931: Primes whose integer square root is not a prime.

Offset 1, canonical program `A135931.P1083306340031313068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8151 terms. -/
def A135931 (n : ℕ) : ℤ :=
  A135931.P1083306340031313068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8151 terms. -/
def A135931.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A136053.P1834187513963801814

`ceil(A136063(n+1)/9)`
-/

namespace A136053.P1834187513963801814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136063 (n + 1) : ℚ) / 9⌉

end

end A136053.P1834187513963801814

noncomputable section

/-- A136053: Daughter primes of order 4.

Offset 1, canonical program `A136053.P1834187513963801814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136053 (n : ℕ) : ℤ :=
  A136053.P1834187513963801814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136054.P7433074822671790775

`ceil(A136064(n+1)/11)`
-/

namespace A136054.P7433074822671790775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136064 (n + 1) : ℚ) / 11⌉

end

end A136054.P7433074822671790775

noncomputable section

/-- A136054: Daughter primes of order 5.

Offset 1, canonical program `A136054.P7433074822671790775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136054 (n : ℕ) : ℤ :=
  A136054.P7433074822671790775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136058.P2979785856532067478

`ceil(A136068(n+1)/19)`
-/

namespace A136058.P2979785856532067478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136068 (n + 1) : ℚ) / 19⌉

end

end A136058.P2979785856532067478

noncomputable section

/-- A136058: Daughter primes of order 9.

Offset 1, canonical program `A136058.P2979785856532067478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136058 (n : ℕ) : ℤ :=
  A136058.P2979785856532067478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136060.P13008685728988054829

`ceil(A136070(n+1)/23)`
-/

namespace A136060.P13008685728988054829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136070 (n + 1) : ℚ) / 23⌉

end

end A136060.P13008685728988054829

noncomputable section

/-- A136060: Daughter primes of order 11.

Offset 1, canonical program `A136060.P13008685728988054829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136060 (n : ℕ) : ℤ :=
  A136060.P13008685728988054829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136060.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A136399.P7416713261732785122

`∪[A277964(n+1), comp[A007089(n)]]`
-/

namespace A136399.P7416713261732785122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A136399.P7416713261732785122

noncomputable section

/-- A136399: Numbers having in their decimal representation at least one digit greater than 1.

Offset 1, canonical program `A136399.P7416713261732785122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136399 (n : ℕ) : ℤ :=
  (A136399.P7416713261732785122.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136548.P17831031601123252591

`A008578(A230980(n)+1)`
-/

namespace A136548.P17831031601123252591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A230980 n + 1).toNat

end

end A136548.P17831031601123252591

noncomputable section

/-- A136548: a(n) = max {k >= 1 | sigma(k) <= n}.

Offset 1, canonical program `A136548.P17831031601123252591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A136548 (n : ℕ) : ℤ :=
  A136548.P17831031601123252591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A136548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136612.P2775654094035174028

`A001223(n+1)+A001223(n+3)`
-/

namespace A136612.P2775654094035174028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + A001223 (n + 3)

end

end A136612.P2775654094035174028

noncomputable section

/-- A136612: a(n) = ((prime(n+3) + prime(n+1)) - (prime(n+2) + prime(n))).

Offset 1, canonical program `A136612.P2775654094035174028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136612 (n : ℕ) : ℤ :=
  A136612.P2775654094035174028.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136612.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A137174.P13634936289925099927

`Δ[A138383(n)]`
-/

namespace A137174.P13634936289925099927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A137174.P13634936289925099927

noncomputable section

/-- A137174: First differences of A138383.

Offset 1, canonical program `A137174.P13634936289925099927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A137174 (n : ℕ) : ℤ :=
  A137174.P13634936289925099927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A137174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137319.P10681023325901659618

`n+1+A065608(n+1)`
-/

namespace A137319.P10681023325901659618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A065608 (n + 1)

end

end A137319.P10681023325901659618

noncomputable section

/-- A137319: Start with the set of natural numbers. Add 1 to every 2nd term, 2 to every 3rd term, 3 to every 4th term, etc.

Offset 1, canonical program `A137319.P10681023325901659618`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137319 (n : ℕ) : ℤ :=
  A137319.P10681023325901659618.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137328.P11203523918348425048

`record[A162753(n)]-A260188(A008578(n+2))`
-/

namespace A137328.P11203523918348425048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A260188 (A008578 (n + 2)).toNat

end

end A137328.P11203523918348425048

noncomputable section

/-- A137328: a(n) = prime(n) - primorial(k), where k is the greatest number for which primorial(k) <= prime(n).

Offset 1, canonical program `A137328.P11203523918348425048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A137328 (n : ℕ) : ℤ :=
  A137328.P11203523918348425048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A137328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137588.P17954541241361274980

`∑[char[A007821(n+1)-1]]`
-/

namespace A137588.P17954541241361274980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137588.P17954541241361274980

noncomputable section

/-- A137588: Number of primes not greater than n that are greater than the number of primes not greater than n.

Offset 1, canonical program `A137588.P17954541241361274980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137588 (n : ℕ) : ℤ :=
  (A137588.P17954541241361274980.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137589.P7831409490653393190

`A138840(n+1)%A017329(n)`
-/

namespace A137589.P7831409490653393190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138840 (n + 1)) (A017329 n)

end

end A137589.P7831409490653393190

noncomputable section

/-- A137589: a(n) is the integer that results after deletion of all digits of n-th prime, except the initial digit and the final digit.

Offset 1, canonical program `A137589.P7831409490653393190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137589 (n : ℕ) : ℤ :=
  A137589.P7831409490653393190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137708.P13865260195128569444

`floor(A187952(n+1)-n/2)`
-/

namespace A137708.P13865260195128569444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187952 (n + 1) : ℚ) - (n : ℚ) / 2⌋

end

end A137708.P13865260195128569444

noncomputable section

/-- A137708: Secondary Lower Wythoff Sequence.

Offset 1, canonical program `A137708.P13865260195128569444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137708 (n : ℕ) : ℤ :=
  A137708.P13865260195128569444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137780.P2103839345452959621

`1+2^A001223(n+1)`
-/

namespace A137780.P2103839345452959621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (2 : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A137780.P2103839345452959621

noncomputable section

/-- A137780: a(n) = 1 + 2^( prime(n + 1) - prime(n) ).

Offset 1, canonical program `A137780.P2103839345452959621`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137780 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137780.P2103839345452959621.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137780.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137925.P3338572406075972274

`(n+1)/gcd(n+1, A002808(n+1)^8)`
-/

namespace A137925.P3338572406075972274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A002808 (n + 1) ^ 8) : ℚ)

end

end A137925.P3338572406075972274

noncomputable section

/-- A137925: a(n) = the largest divisor of n that is coprime to A002808(n). (A002808(n) = the n-th composite.)

Offset 1, canonical program `A137925.P3338572406075972274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137925 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137925.P3338572406075972274.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138010.P7109806690642076622

`A000005(A009191(n+1))`
-/

namespace A138010.P7109806690642076622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009191 (n + 1)).toNat

end

end A138010.P7109806690642076622

noncomputable section

/-- A138010: a(n) is the number of positive divisors of n that divide d(n), where d(n) is the number of positive divisors of n, A000005(n); a(n) also equals d(gcd(n, d(n))).

Offset 1, canonical program `A138010.P7109806690642076622`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138010 (n : ℕ) : ℤ :=
  A138010.P7109806690642076622.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009191, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138071.P11538494135828144248

`A138114(A133825(n))`
-/

namespace A138071.P11538494135828144248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (A133825 n).toNat

end

end A138071.P11538494135828144248

noncomputable section

/-- A138071: Triangle read by rows: row n lists the digits of A135698(n), the palindromic number with odd number of digits formed from the reflected decimal expansion of Pi.

Offset 1, canonical program `A138071.P11538494135828144248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138071 (n : ℕ) : ℤ :=
  A138071.P11538494135828144248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138248.P2969581266609767893

`p?[A137877(n+1)]`
-/

namespace A138248.P2969581266609767893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138248.P2969581266609767893

noncomputable section

/-- A138248: Prime numbers k such that 18*k - 1 and 18*k + 1 are twin primes.

Offset 1, canonical program `A138248.P2969581266609767893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A138248 (n : ℕ) : ℤ :=
  A138248.P2969581266609767893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A138248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138610.P14114159251167345094

`filter[A053850(n+1), A373979(#)]`
-/

namespace A138610.P14114159251167345094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A138610.P14114159251167345094

noncomputable section

/-- A138610: Nonsquarefree numbers congruent to 3 mod 4.

Offset 1, canonical program `A138610.P14114159251167345094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4733 terms. -/
def A138610 (n : ℕ) : ℤ :=
  A138610.P14114159251167345094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4733 terms. -/
def A138610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138622.P13494788232116545639

`ceil(A024900(n+1)/2)`
-/

namespace A138622.P13494788232116545639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024900 (n + 1) : ℚ) / 2⌉

end

end A138622.P13494788232116545639

noncomputable section

/-- A138622: Nonnegative integers k such that 14*k-1 is prime.

Offset 1, canonical program `A138622.P13494788232116545639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138622 (n : ℕ) : ℤ :=
  A138622.P13494788232116545639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138645.P15363821371440670128

`p?[A010051(7*n+2)+n]`
-/

namespace A138645.P15363821371440670128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (7 * n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138645.P15363821371440670128

noncomputable section

/-- A138645: Primes p such that 7*p+2 is composite.

Offset 1, canonical program `A138645.P15363821371440670128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1420 terms. -/
def A138645 (n : ℕ) : ℤ :=
  A138645.P15363821371440670128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1420 terms. -/
def A138645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138751.P13177087611856876241

`A007918(A138750(A000040(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138751.P13177087611856876241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A138750 (A000040 (n + 1)).toNat).toNat

end

end A138751.P13177087611856876241

noncomputable section

/-- A138751: a(n) = nextprime( p(n)/2 if p(n)=2 (mod 3), 2p(n) else ) = A007918( A138750( A000040( n ))).

Offset 1, canonical program `A138751.P13177087611856876241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138751 (n : ℕ) : ℤ :=
  A138751.P13177087611856876241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007918, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138751.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138757.P3445907887423256104

`A007918(A138750(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138757.P3445907887423256104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A138750 n).toNat

end

end A138757.P3445907887423256104

noncomputable section

/-- A138757: a(n) = A007918(A138750(n)), that is, least prime > n/2 if n=2 (mod 3), > 2n otherwise.

Offset 0, canonical program `A138757.P3445907887423256104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138757 (n : ℕ) : ℤ :=
  A138757.P3445907887423256104.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139118.P11844917898150596679

`eq[0, A010051(A100995(n+1)+1)]+1`
-/

namespace A139118.P11844917898150596679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A100995 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139118.P11844917898150596679

noncomputable section

/-- A139118: Numbers with a nonprime number of divisors.

Offset 1, canonical program `A139118.P11844917898150596679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139118 (n : ℕ) : ℤ :=
  (A139118.P11844917898150596679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139403.P6848797502717185903

`p?[A124192(n+1)]`
-/

namespace A139403.P6848797502717185903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139403.P6848797502717185903

noncomputable section

/-- A139403: Prime numbers k such that 8*k+3 and 8*k+5 are also primes.

Offset 1, canonical program `A139403.P6848797502717185903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A139403 (n : ℕ) : ℤ :=
  A139403.P6848797502717185903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A139403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139533.P2894381526935310202

`∑[A285870(Δ[A124192(n+1)])]`
-/

namespace A139533.P2894381526935310202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124192 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139533.P2894381526935310202

noncomputable section

/-- A139533: Numbers k such that numbers 24*k + 11 and 24*k + 13 are twin primes.

Offset 1, canonical program `A139533.P2894381526935310202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A139533 (n : ℕ) : ℤ :=
  A139533.P2894381526935310202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A139533.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139655.P8337853474759955749

`∩[A107145(n+1), A139645(n+1)]`
-/

namespace A139655.P8337853474759955749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139655.P8337853474759955749

noncomputable section

/-- A139655: Primes of the form x^2 + 280*y^2.

Offset 1, canonical program `A139655.P8337853474759955749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4959 terms. -/
def A139655 (n : ℕ) : ℤ :=
  (A139655.P8337853474759955749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4959 terms. -/
def A139655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139693.P17569586885177204197

`lcm(A007918(n+1)-a(n-1), A007918(n+1))` with `a(0)=1`
-/

namespace A139693.P17569586885177204197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A007918 (n + 1) - (a (n - 1) : ℤ)) (A007918 (n + 1))

end

end A139693.P17569586885177204197

noncomputable section

/-- A139693: a(n) is the smallest positive integer m where, for k divides m, minimum(|k - m/k|) = n.

Offset 0, canonical program `A139693.P17569586885177204197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139693 (n : ℕ) : ℤ :=
  (A139693.P17569586885177204197.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139846.P13211547864844633641

`∩[A106972(n+1), A107151(n+1)]`
-/

namespace A139846.P13211547864844633641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P13211547864844633641

noncomputable section

/-- A139846: Primes of the form 5x^2 + 21y^2.

Offset 1, canonical program `A139846.P13211547864844633641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. -/
def A139846 (n : ℕ) : ℤ :=
  (A139846.P13211547864844633641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. -/
def A139846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139860.P2130023366757760233

`∩[A107144(n+1), A139530(n+1)]`
-/

namespace A139860.P2130023366757760233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P2130023366757760233

noncomputable section

/-- A139860: Primes of the form 12x^2+12xy+13y^2.

Offset 1, canonical program `A139860.P2130023366757760233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A139860 (n : ℕ) : ℤ :=
  (A139860.P2130023366757760233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A139860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139870.P15117981739868460492

`∩[A107151(n+1), A139827(n+1)]`
-/

namespace A139870.P15117981739868460492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P15117981739868460492

noncomputable section

/-- A139870: Primes of the form 6x^2 + 6xy + 29y^2.

Offset 1, canonical program `A139870.P15117981739868460492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A139870 (n : ℕ) : ℤ :=
  (A139870.P15117981739868460492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. -/
def A139870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139899.P13891579585727544648

`∩[A107003(n+1), A107144(n+1)]`
-/

namespace A139899.P13891579585727544648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P13891579585727544648

noncomputable section

/-- A139899: Primes of the form 5x^2+48y^2.

Offset 1, canonical program `A139899.P13891579585727544648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A139899 (n : ℕ) : ℤ :=
  (A139899.P13891579585727544648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. -/
def A139899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139914.P18233845274727958943

`∩[A139852(n+1), A141180(n+1)]`
-/

namespace A139914.P18233845274727958943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139914.P18233845274727958943

noncomputable section

/-- A139914: Primes of the form 4x^2+4xy+71y^2.

Offset 1, canonical program `A139914.P18233845274727958943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A139914 (n : ℕ) : ℤ :=
  (A139914.P18233845274727958943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A139914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139917.P6603706917058125727

`A107180(lt[1, A107180(n+2)%4]+2)`
-/

namespace A139917.P6603706917058125727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107180 (n + 2)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A139917.P6603706917058125727

noncomputable section

/-- A139917: Primes of the form 8x^2+35y^2.

Offset 1, canonical program `A139917.P6603706917058125727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5014 terms. -/
def A139917 (n : ℕ) : ℤ :=
  A139917.P6603706917058125727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5014 terms. -/
def A139917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139918.P10035203543490723934

`∩[A107180(n+1), A139851(n+1)]`
-/

namespace A139918.P10035203543490723934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139918.P10035203543490723934

noncomputable section

/-- A139918: Primes of the form 8x^2+8xy+37y^2.

Offset 1, canonical program `A139918.P10035203543490723934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A139918 (n : ℕ) : ℤ :=
  (A139918.P10035203543490723934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A139918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139985.P3496674045837818022

`∩[A139875(n+1), A139902(n+1)]`
-/

namespace A139985.P3496674045837818022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139985.P3496674045837818022

noncomputable section

/-- A139985: Primes of the form 4x^2+4xy+211y^2.

Offset 1, canonical program `A139985.P3496674045837818022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A139985 (n : ℕ) : ℤ :=
  (A139985.P3496674045837818022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A139985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139987.P2036163733639897663

`∩[A139848(n+1), A140633(n+1)]`
-/

namespace A139987.P2036163733639897663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139987.P2036163733639897663

noncomputable section

/-- A139987: Primes of the form 7x^2+120y^2.

Offset 1, canonical program `A139987.P2036163733639897663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A139987 (n : ℕ) : ℤ :=
  (A139987.P2036163733639897663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A139987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139989.P14604697816370670193

`∩[A139887(n+1), A139897(n+1)]`
-/

namespace A139989.P14604697816370670193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139989.P14604697816370670193

noncomputable section

/-- A139989: Primes of the form 8x^2+8xy+107y^2.

Offset 1, canonical program `A139989.P14604697816370670193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A139989 (n : ℕ) : ℤ :=
  (A139989.P14604697816370670193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A139989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139992.P15611343354093908935

`∩[A139845(n+1), A139857(n+1)]`
-/

namespace A139992.P15611343354093908935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139992.P15611343354093908935

noncomputable section

/-- A139992: Primes of the form 20x^2+20xy+47y^2.

Offset 1, canonical program `A139992.P15611343354093908935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A139992 (n : ℕ) : ℤ :=
  (A139992.P15611343354093908935.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A139992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139993.P12176979692534737172

`∩[A139898(n+1), A139915(n+1)]`
-/

namespace A139993.P12176979692534737172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139993.P12176979692534737172

noncomputable section

/-- A139993: Primes of the form 21x^2+40y^2.

Offset 1, canonical program `A139993.P12176979692534737172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. -/
def A139993 (n : ℕ) : ℤ :=
  (A139993.P12176979692534737172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4995 terms. -/
def A139993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140004.P4564587105245799958

`∩[A107135(n+1), A107201(n+1)]`
-/

namespace A140004.P4564587105245799958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140004.P4564587105245799958

noncomputable section

/-- A140004: Primes of the form 11x^2+120y^2.

Offset 1, canonical program `A140004.P4564587105245799958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A140004 (n : ℕ) : ℤ :=
  (A140004.P4564587105245799958.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A140004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140033.P14179916437465378445

`∩[A139645(n+1), A139827(n+1)]`
-/

namespace A140033.P14179916437465378445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140033.P14179916437465378445

noncomputable section

/-- A140033: Primes of the form 8x^2+8xy+233y^2.

Offset 1, canonical program `A140033.P14179916437465378445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A140033 (n : ℕ) : ℤ :=
  (A140033.P14179916437465378445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A140033.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140237.P5947294070104650303

`eq[0, A006218(n)%A000005(n+1)]+1`
-/

namespace A140237.P5947294070104650303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 n) (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A140237.P5947294070104650303

noncomputable section

/-- A140237: A number n is included if (Sum_{k=1..n} d(k)) is divisible by d(n), where d(n) is the number of positive divisors of n.

Offset 1, canonical program `A140237.P5947294070104650303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. -/
def A140237 (n : ℕ) : ℤ :=
  (A140237.P5947294070104650303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3628 terms. -/
def A140237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140238.P17325431186135903879

`eq[1, gcd(A000005(n+1), A006218(n))]+1`
-/

namespace A140238.P17325431186135903879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A006218 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A140238.P17325431186135903879

noncomputable section

/-- A140238: Numbers k such that Sum_{i=1..k} d(i) is coprime to d(k), where d(k) is the number of positive divisors of k.

Offset 1, canonical program `A140238.P17325431186135903879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8998 terms. -/
def A140238 (n : ℕ) : ℤ :=
  (A140238.P17325431186135903879.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8998 terms. -/
def A140238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140299.P17580252582756976410

`4^A001223(n+1)`
-/

namespace A140299.P17580252582756976410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A001223 (n + 1) : ℤ)

end

end A140299.P17580252582756976410

noncomputable section

/-- A140299: a(n) = A100626(n+1)/A100626(n).

Offset 0, canonical program `A140299.P17580252582756976410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140299 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140299.P17580252582756976410.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140377.P8679194704057854348

`∩[A014076(n+1), A127547(n)-1]`
-/

namespace A140377.P8679194704057854348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127547 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140377.P8679194704057854348

noncomputable section

/-- A140377: Composites of the form 26k + 3.

Offset 1, canonical program `A140377.P8679194704057854348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A140377 (n : ℕ) : ℤ :=
  (A140377.P8679194704057854348.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. -/
def A140377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140556.P7313996650521697734

`p?[A002808(n+1)-10]`
-/

namespace A140556.P7313996650521697734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140556.P7313996650521697734

noncomputable section

/-- A140556: Primes p such that p + 10 is not a prime.

Offset 1, canonical program `A140556.P7313996650521697734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1811 terms. -/
def A140556 (n : ℕ) : ℤ :=
  A140556.P7313996650521697734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1811 terms. -/
def A140556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140560.P8549477506657107626

`p?[A002808(n+1)-30]`
-/

namespace A140560.P8549477506657107626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140560.P8549477506657107626

noncomputable section

/-- A140560: Primes p such that p + 30 is not a prime.

Offset 1, canonical program `A140560.P8549477506657107626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A140560 (n : ℕ) : ℤ :=
  A140560.P8549477506657107626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A140560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140563.P12824830105511435814

`p?[A002808(n+1)-38]`
-/

namespace A140563.P12824830105511435814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140563.P12824830105511435814

noncomputable section

/-- A140563: Primes p such that p + 38 is not a prime.

Offset 1, canonical program `A140563.P12824830105511435814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1894 terms. -/
def A140563 (n : ℕ) : ℤ :=
  A140563.P12824830105511435814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1894 terms. -/
def A140563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140707.P14820232210912676940

`eq[A000523(n+1), A035531(n+1)]+1`
-/

namespace A140707.P14820232210912676940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035531 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A140707.P14820232210912676940

noncomputable section

/-- A140707: A positive integer n is included if n written in binary contains the same number of 0's as the number of distinct primes that divide n.

Offset 1, canonical program `A140707.P14820232210912676940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 493 terms. -/
def A140707 (n : ℕ) : ℤ :=
  (A140707.P14820232210912676940.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 493 terms. -/
def A140707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141114.P17286940861939981141

`eq[1, gcd(n+1, A010553(n+1))]+1`
-/

namespace A141114.P17286940861939981141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A010553 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A141114.P17286940861939981141

noncomputable section

/-- A141114: Positive integers k where d(d(k)) is coprime to k, where d(k) is the number of divisors of k.

Offset 1, canonical program `A141114.P17286940861939981141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5335 terms. -/
def A141114 (n : ℕ) : ℤ :=
  (A141114.P17286940861939981141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5335 terms. -/
def A141114.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141641.P6703526250908210247

`∩[A054683(n+1), A104211(n+1)]`
-/

namespace A141641.P6703526250908210247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141641.P6703526250908210247

noncomputable section

/-- A141641: Digital sum of n is an even composite.

Offset 1, canonical program `A141641.P6703526250908210247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7196 terms. -/
def A141641 (n : ℕ) : ℤ :=
  (A141641.P6703526250908210247.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7196 terms. -/
def A141641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141771.P13541917755099282936

`A210736(A004275(n))+Δ[A120588(n)]`
-/

namespace A141771.P13541917755099282936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (A004275 n).toNat + (f1 (n + 1) - f1 n)

end

end A141771.P13541917755099282936

noncomputable section

/-- A141771: Expansion of (1-sqrt(1-4*x))/(2*x) + 8*x^3/((sqrt(1-4*x))*(1+sqrt(1-4*x))^3).

Offset 0, canonical program `A141771.P13541917755099282936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A141771 (n : ℕ) : ℤ :=
  A141771.P13541917755099282936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A141771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141867.P11823466263771838989

`p?[A001057(n)+A001057(A001223(2*n+1))]`
-/

namespace A141867.P11823466263771838989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + A001057 (A001223 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141867.P11823466263771838989

noncomputable section

/-- A141867: Primes of the form (k/2+p(k-1)-p(k))/2, where p(k)=k-th prime.

Offset 1, canonical program `A141867.P11823466263771838989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A141867 (n : ℕ) : ℤ :=
  A141867.P11823466263771838989.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. -/
def A141867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142035.P15887348333000805245

`∪[A142926(n+1), A142940(n+1)]`
-/

namespace A142035.P15887348333000805245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142035.P15887348333000805245

noncomputable section

/-- A142035: Primes congruent to 3 mod 32.

Offset 1, canonical program `A142035.P15887348333000805245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142035 (n : ℕ) : ℤ :=
  (A142035.P15887348333000805245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142042.P17750205476111570286

`∪[A142934(n+1), A142948(n+1)]`
-/

namespace A142042.P17750205476111570286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142042.P17750205476111570286

noncomputable section

/-- A142042: Primes congruent to 19 mod 32.

Offset 1, canonical program `A142042.P17750205476111570286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142042 (n : ℕ) : ℤ :=
  (A142042.P17750205476111570286.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142074.P11769292884091216833

`10*A008578(2*(n+1)-1)+A008578(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142074.P11769292884091216833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008578 (2 * (n + 1) - 1) + A008578 (2 * (n + 1))

end

end A142074.P11769292884091216833

noncomputable section

/-- A142074: Prime number superposition a(n) = 10*A008578(2n-1) + A008578(2n).

Offset 1, canonical program `A142074.P11769292884091216833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A142074 (n : ℕ) : ℤ :=
  A142074.P11769292884091216833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A142074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A142076.P3602534623972657781

`∪[A073102(n+1), A140856(n+1)]`
-/

namespace A142076.P3602534623972657781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142076.P3602534623972657781

noncomputable section

/-- A142076: Primes congruent to 1 mod 35.

Offset 1, canonical program `A142076.P3602534623972657781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142076 (n : ℕ) : ℤ :=
  (A142076.P3602534623972657781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142089.P9481183596839956720

`∪[A140843(n+1), A141866(n+1)]`
-/

namespace A142089.P9481183596839956720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142089.P9481183596839956720

noncomputable section

/-- A142089: Primes congruent to 19 mod 35.

Offset 1, canonical program `A142089.P9481183596839956720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142089 (n : ℕ) : ℤ :=
  (A142089.P9481183596839956720.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143125.P6368460751521179305

`∑[A104236(n+1)]`
-/

namespace A143125.P6368460751521179305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143125.P6368460751521179305

noncomputable section

/-- A143125: a(n) = Sum {j=1..n} j*A001462(j).

Offset 1, canonical program `A143125.P6368460751521179305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143125 (n : ℕ) : ℤ :=
  A143125.P6368460751521179305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143164.P3614239325576593876

`∩[9*n+4, A028840(n+2)]`
-/

namespace A143164.P3614239325576593876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028840 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A143164.P3614239325576593876

noncomputable section

/-- A143164: Numbers with digitsum 13, in increasing order.

Offset 1, canonical program `A143164.P3614239325576593876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. -/
def A143164 (n : ℕ) : ℤ :=
  (A143164.P3614239325576593876.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. -/
def A143164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143236.P13310137451305250568

`A000005(n+1)*A006218(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143236.P13310137451305250568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A006218 (n + 1)

end

end A143236.P13310137451305250568

noncomputable section

/-- A143236: a(n) = A000005(n) * A006218(n).

Offset 1, canonical program `A143236.P13310137451305250568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A006218, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A143236 (n : ℕ) : ℤ :=
  A143236.P13310137451305250568.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A006218, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A143236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143257.P16987740070771962844

`A030101(n!)`
-/

namespace A143257.P16987740070771962844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Nat.factorial n)

end

end A143257.P16987740070771962844

noncomputable section

/-- A143257: Reverse binary expansion of the factorial numbers.

Offset 0, canonical program `A143257.P16987740070771962844`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143257 (n : ℕ) : ℤ :=
  A143257.P16987740070771962844.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143274.P852831069115198320

`(n+1)*A006218(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143274.P852831069115198320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006218 (n + 1)

end

end A143274.P852831069115198320

noncomputable section

/-- A143274: a(n) = n * A006218(n).

Offset 1, canonical program `A143274.P852831069115198320`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143274 (n : ℕ) : ℤ :=
  A143274.P852831069115198320.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143356.P8102885452969892794

`∑{d}[n+1, A006218(#)]`
-/

namespace A143356.P8102885452969892794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006218 d

end

end A143356.P8102885452969892794

noncomputable section

/-- A143356: A051731 * A006218.

Offset 1, canonical program `A143356.P8102885452969892794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143356 (n : ℕ) : ℤ :=
  A143356.P8102885452969892794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143473.P5763444039974273443

`A178914(n)+2*A217657(n)`
-/

namespace A143473.P5763444039974273443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178914 n + 2 * A217657 n

end

end A143473.P5763444039974273443

noncomputable section

/-- A143473: Replace the leading digit d of n with 10-d (in decimal representation).

Offset 0, canonical program `A143473.P5763444039974273443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143473 (n : ℕ) : ℤ :=
  A143473.P5763444039974273443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143536.P10866340339983663400

`and(1, A010051(A003056(n)+1))`
-/

namespace A143536.P10866340339983663400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A010051 (A003056 n + 1).toNat)

end

end A143536.P10866340339983663400

noncomputable section

/-- A143536: Triangle read by rows, T(n,k) = 1 if n is prime, 0 otherwise.

Offset 1, canonical program `A143536.P10866340339983663400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143536 (n : ℕ) : ℤ :=
  A143536.P10866340339983663400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143756.P18241202892685653242

`A143758(A188376(n+2))+A143757(n+1)`
-/

namespace A143756.P18241202892685653242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143758 (A188376 (n + 2)).toNat + A143757 (n + 1)

end

end A143756.P18241202892685653242

noncomputable section

/-- A143756: Aliquot sequence starting at 81.

Offset 0, canonical program `A143756.P18241202892685653242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4141 terms. -/
def A143756 (n : ℕ) : ℤ :=
  A143756.P18241202892685653242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4141 terms. -/
def A143756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144454.P6512232522785513048

`floor(A300295(n)/12)`
-/

namespace A144454.P6512232522785513048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A300295 n : ℚ) / 12⌋

end

end A144454.P6512232522785513048

noncomputable section

/-- A144454: First trisection of A061039.

Offset 1, canonical program `A144454.P6512232522785513048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144454 (n : ℕ) : ℤ :=
  A144454.P6512232522785513048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144589.P6745490290159702062

`A007821(p?[xor(1, n)+1]-1)`
-/

namespace A144589.P6745490290159702062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A144589.P6745490290159702062

noncomputable section

/-- A144589: Prime(n-th "prime nonprime").

Offset 1, canonical program `A144589.P6745490290159702062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A144589 (n : ℕ) : ℤ :=
  A144589.P6745490290159702062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A144589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144777.P1651150914799659025

`9*eq[5, A004427(9*n)]`
-/

namespace A144777.P1651150914799659025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (9 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144777.P1651150914799659025

noncomputable section

/-- A144777: Integers having decimal digital mean equal to zero.

Offset 1, canonical program `A144777.P1651150914799659025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. -/
def A144777 (n : ℕ) : ℤ :=
  (A144777.P1651150914799659025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. -/
def A144777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144925.P4715798082617986794

`A070824(A002808(n+1))`
-/

namespace A144925.P4715798082617986794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A002808 (n + 1)).toNat

end

end A144925.P4715798082617986794

noncomputable section

/-- A144925: Number of nontrivial divisors of the n-th composite number.

Offset 1, canonical program `A144925.P4715798082617986794`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A070824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A144925 (n : ℕ) : ℤ :=
  A144925.P4715798082617986794.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A070824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A144925.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145337.P14852323097851792559

`A008329(n+1)-A008328(n+1)`
-/

namespace A145337.P14852323097851792559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1) - A008328 (n + 1)

end

end A145337.P14852323097851792559

noncomputable section

/-- A145337: a(n) = d(p(n)+1) - d(p(n)-1), where d(m) = the number of divisors of m, p(n) = the n-th prime.

Offset 0, canonical program `A145337.P14852323097851792559`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008328, A008329, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145337 (n : ℕ) : ℤ :=
  A145337.P14852323097851792559.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008328, A008329, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145341.P17834554394848515737

`A030101(2*(n+1)-1)`
-/

namespace A145341.P17834554394848515737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * (n + 1) - 1)

end

end A145341.P17834554394848515737

noncomputable section

/-- A145341: Convert 2n-1 to binary. Reverse its digits. Convert back to decimal to get a(n).

Offset 1, canonical program `A145341.P17834554394848515737`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145341 (n : ℕ) : ℤ :=
  A145341.P17834554394848515737.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145341.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A145471.P5456915067997334848

`p?[a(n-1)+2*A001223(n+1)]` with `a(0)=1`
-/

namespace A145471.P5456915067997334848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2 * A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P5456915067997334848

noncomputable section

/-- A145471: Primes p such that (5+p)/2 is prime.

Offset 1, canonical program `A145471.P5456915067997334848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5803 terms. -/
def A145471 (n : ℕ) : ℤ :=
  A145471.P5456915067997334848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5803 terms. -/
def A145471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145551.P800159444026911314

`lt[2*n, A306682(n+1)]+1`
-/

namespace A145551.P800159444026911314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A145551.P800159444026911314

noncomputable section

/-- A145551: Numbers k such that product of divisors of k / sum of divisors of k is an integer.

Offset 1, canonical program `A145551.P800159444026911314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A145551 (n : ℕ) : ℤ :=
  (A145551.P800159444026911314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A145551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145834.P17774255891438695893

`A075255(A002808(n+1))`
-/

namespace A145834.P17774255891438695893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (A002808 (n + 1)).toNat

end

end A145834.P17774255891438695893

noncomputable section

/-- A145834: a(n) = difference between the n-th composite number and the sum of its prime factors with repetition.

Offset 1, canonical program `A145834.P17774255891438695893`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A075255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145834 (n : ℕ) : ℤ :=
  A145834.P17774255891438695893.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A075255, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145834.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145985.P3219078844094124658

`p?[A160668(n+1)]`
-/

namespace A145985.P3219078844094124658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145985.P3219078844094124658

noncomputable section

/-- A145985: Primes resulting from subtracting primes from 10^n in order (see Comments for precise definition).

Offset 1, canonical program `A145985.P3219078844094124658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A145985 (n : ℕ) : ℤ :=
  A145985.P3219078844094124658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A145985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A146538.P8666981964067901687

`A007921(n+1)-1`
-/

namespace A146538.P8666981964067901687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1) - 1

end

end A146538.P8666981964067901687

noncomputable section

/-- A146538: Even numbers n such that n+3 is not a prime.

Offset 1, canonical program `A146538.P8666981964067901687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A146538 (n : ℕ) : ℤ :=
  A146538.P8666981964067901687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A146538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147810.P3662463774335131867

`A147809(n+1)+1`
-/

namespace A147810.P3662463774335131867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (n + 1) + 1

end

end A147810.P3662463774335131867

noncomputable section

/-- A147810: Half the number of divisors of n^2+1.

Offset 1, canonical program `A147810.P3662463774335131867`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147809, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147810 (n : ℕ) : ℤ :=
  A147810.P3662463774335131867.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A147809, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A147812.P3936914708627381155

`A065091(lt[A001223(n+2), A001223(n+1)])`
-/

namespace A147812.P3936914708627381155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A147812.P3936914708627381155

noncomputable section

/-- A147812: Primes prime(n) such that prime(n+1) - prime(n) > prime(n+2) - prime(n+1).

Offset 1, canonical program `A147812.P3936914708627381155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4749 terms. -/
def A147812 (n : ℕ) : ℤ :=
  A147812.P3936914708627381155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4749 terms. -/
def A147812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147846.P1764007228067789796

`C(A093515(n+1), 2)`
-/

namespace A147846.P1764007228067789796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A093515 (n + 1)).toNat 2

end

end A147846.P1764007228067789796

noncomputable section

/-- A147846: Triangular numbers n*(n+1)/2 with n or n+1 prime.

Offset 1, canonical program `A147846.P1764007228067789796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147846 (n : ℕ) : ℤ :=
  (A147846.P1764007228067789796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147966.P17845740115898667296

`n+A001223(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147966.P17845740115898667296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A001223 (n + 1)

end

end A147966.P17845740115898667296

noncomputable section

/-- A147966: a(n) = n+(A001223(n)-1) = n+A046933(n).

Offset 1, canonical program `A147966.P17845740115898667296`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147966 (n : ℕ) : ℤ :=
  A147966.P17845740115898667296.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A151671.P17873054757354392525

`A048883(A215088(n))*A151667(n)`
-/

namespace A151671.P17873054757354392525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A215088 n).toNat * A151667 n

end

end A151671.P17873054757354392525

noncomputable section

/-- A151671: G.f.: Product_{k >= 0} (1 + 3*x^(5^k)).

Offset 0, canonical program `A151671.P17873054757354392525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151671 (n : ℕ) : ℤ :=
  A151671.P17873054757354392525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151800.P4570031678714564115

`A007918(n+1)`
-/

namespace A151800.P4570031678714564115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 1)

end

end A151800.P4570031678714564115

noncomputable section

/-- A151800: Least prime > n (version 2 of the "next prime" function).

Offset 0, canonical program `A151800.P4570031678714564115`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151800 (n : ℕ) : ℤ :=
  A151800.P4570031678714564115.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152211.P12350050542903153316

`A038040(n+1)+A000203(n+1)`
-/

namespace A152211.P12350050542903153316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + A000203 (n + 1)

end

end A152211.P12350050542903153316

noncomputable section

/-- A152211: a(n) = n * sigma_0(n) + sigma_1(n).

Offset 1, canonical program `A152211.P12350050542903153316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152211 (n : ℕ) : ℤ :=
  A152211.P12350050542903153316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152211.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152529.P6728657231019893610

`A152528(n+2)/2`
-/

namespace A152529.P6728657231019893610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152528 (n + 2) : ℚ) / 2

end

end A152529.P6728657231019893610

noncomputable section

/-- A152529: a(n) = (p(n)*p(n+2) - 3*p(n+1))/2, where p(n) is the n-th odd prime.

Offset 1, canonical program `A152529.P6728657231019893610`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152529.P6728657231019893610.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152531.P4513964103738693439

`A152530(n+2)/2`
-/

namespace A152531.P4513964103738693439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152530 (n + 2) : ℚ) / 2

end

end A152531.P4513964103738693439

noncomputable section

/-- A152531: a(n) = (p(n)*p(n+2) - p(n+1))/2, where p(n) is the n-th odd prime.

Offset 1, canonical program `A152531.P4513964103738693439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152531 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152531.P4513964103738693439.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152530, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152531.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152535.P13397589103669949259

`A046992(A006093(n+1))`
-/

namespace A152535.P13397589103669949259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (A006093 (n + 1)).toNat

end

end A152535.P13397589103669949259

noncomputable section

/-- A152535: a(n) = n*prime(n) - Sum_{i=1..n} prime(i).

Offset 1, canonical program `A152535.P13397589103669949259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A046992, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A152535 (n : ℕ) : ℤ :=
  A152535.P13397589103669949259.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006093, A046992, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A152535.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152674.P4037238558150557697

`2*A095686(n+1)`
-/

namespace A152674.P4037238558150557697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095686 (n + 1)

end

end A152674.P4037238558150557697

noncomputable section

/-- A152674: Number of divisors of the numbers that are not squares.

Offset 1, canonical program `A152674.P4037238558150557697`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095686, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152674 (n : ℕ) : ℤ :=
  A152674.P4037238558150557697.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095686, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152674.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152770.P4996422170920482869

`A000203(n+1)-A062249(n+1)+1`
-/

namespace A152770.P4996422170920482869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A062249 (n + 1) + 1

end

end A152770.P4996422170920482869

noncomputable section

/-- A152770: Sum of proper divisors minus the number of proper divisors of n: a(n) = sigma(n) - n - d(n) + 1.

Offset 1, canonical program `A152770.P4996422170920482869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152770 (n : ℕ) : ℤ :=
  A152770.P4996422170920482869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152770.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A153184.P14178844453753704744

`lt[A010051(3*n+1), 1]+1`
-/

namespace A153184.P14178844453753704744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A153184.P14178844453753704744

noncomputable section

/-- A153184: Numbers n such that 3*n-2 is not prime.

Offset 1, canonical program `A153184.P14178844453753704744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153184 (n : ℕ) : ℤ :=
  (A153184.P14178844453753704744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153276.P18202283076938886056

`eq[0, A010051(5*n+6)]`
-/

namespace A153276.P18202283076938886056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (5 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153276.P18202283076938886056

noncomputable section

/-- A153276: Numbers n >= 0 such that 5*n+6 is not prime.

Offset 1, canonical program `A153276.P18202283076938886056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153276 (n : ℕ) : ℤ :=
  (A153276.P18202283076938886056.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153329.P10943996791245402332

`lt[A010051(5*n+1), 1]`
-/

namespace A153329.P10943996791245402332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (5 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153329.P10943996791245402332

noncomputable section

/-- A153329: Numbers k such that 5*k + 1 is not prime.

Offset 1, canonical program `A153329.P10943996791245402332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153329 (n : ℕ) : ℤ :=
  (A153329.P10943996791245402332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153351.P5917648090387559106

`eq[0, A010051(7*n+2)]`
-/

namespace A153351.P5917648090387559106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (7 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153351.P5917648090387559106

noncomputable section

/-- A153351: Numbers k such that 7*k+2 is not prime.

Offset 1, canonical program `A153351.P5917648090387559106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153351 (n : ℕ) : ℤ :=
  (A153351.P5917648090387559106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153355.P8034231718134944401

`1+A024897(n+1)`
-/

namespace A153355.P8034231718134944401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A024897 (n + 1)

end

end A153355.P8034231718134944401

noncomputable section

/-- A153355: Numbers k such that 5k-1 is a prime.

Offset 1, canonical program `A153355.P8034231718134944401`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153355 (n : ℕ) : ℤ :=
  A153355.P8034231718134944401.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153369.P10571265008529743106

`∪[A153371(n+1), A153372(n+1)]`
-/

namespace A153369.P10571265008529743106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153369.P10571265008529743106

noncomputable section

/-- A153369: Number of zig-zag paths from top to bottom of a rectangle of width 11 with n rows whose color is that of the top right corner.

Offset 1, canonical program `A153369.P10571265008529743106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A153369 (n : ℕ) : ℤ :=
  (A153369.P10571265008529743106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A153369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153768.P6556551769552871721

`∩[A023232(n+1), A153767(n+1)]`
-/

namespace A153768.P6556551769552871721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153768.P6556551769552871721

noncomputable section

/-- A153768: Numbers n such that n, 8n-9 and 8n+9 are primes.

Offset 1, canonical program `A153768.P6556551769552871721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A153768 (n : ℕ) : ℤ :=
  (A153768.P6556551769552871721.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A153768.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A153816.P9630201049829707410

`A006218(A002275(n+1))`
-/

namespace A153816.P9630201049829707410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A002275 (n + 1)).toNat

end

end A153816.P9630201049829707410

noncomputable section

/-- A153816: a(n) = Sum_{i=1..(10^n-1)/9} floor(((10^n-1)/9)/i).

Offset 1, canonical program `A153816.P9630201049829707410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153816 (n : ℕ) : ℤ :=
  A153816.P9630201049829707410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153816.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A153860.P3106289355422847430

`Δ[A103451(n)]^A025581(n)`
-/

namespace A153860.P3106289355422847430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A025581 n : ℤ)

end

end A153860.P3106289355422847430

noncomputable section

/-- A153860: Triangle by columns: leftmost column = (1, 0, 1, -1, 1, -1, 1, ...); columns >1 = (1, 1, 0, 0, 0, ...).

Offset 1, canonical program `A153860.P3106289355422847430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A153860 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A153860.P3106289355422847430.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A153860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153880.P3482003210963129646

`∑[A073575(n+1)]-A073575(n+1)+n`
-/

namespace A153880.P3482003210963129646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A073575 (n + 1) + (n : ℤ)

end

end A153880.P3482003210963129646

noncomputable section

/-- A153880: Shift factorial base representation left by one digit.

Offset 0, canonical program `A153880.P3482003210963129646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153880 (n : ℕ) : ℤ :=
  A153880.P3482003210963129646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154270.P1666546014377292846

`p?[floor(A020338(n+8)/10)]`
-/

namespace A154270.P1666546014377292846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020338 (n + 8) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154270.P1666546014377292846

noncomputable section

/-- A154270: Primes of the form XYX, where Y is a single digit.

Offset 1, canonical program `A154270.P1666546014377292846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A154270 (n : ℕ) : ℤ :=
  A154270.P1666546014377292846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A154270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154325.P12734525068056189664

`2-A103451(n)`
-/

namespace A154325.P12734525068056189664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A103451 n

end

end A154325.P12734525068056189664

noncomputable section

/-- A154325: Triangle with interior all 2's and borders 1.

Offset 0, canonical program `A154325.P12734525068056189664`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154325 (n : ℕ) : ℤ :=
  A154325.P12734525068056189664.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A154325.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A154384.P17645461441156692423

`filter[A014076(n+1), A179081(#)]`
-/

namespace A154384.P17645461441156692423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A154384.P17645461441156692423

noncomputable section

/-- A154384: Odd nonprimes with odd sum of digits.

Offset 1, canonical program `A154384.P17645461441156692423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154384 (n : ℕ) : ℤ :=
  A154384.P17645461441156692423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A154384.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A155133.P16298633087751083546

`eq[1, A147809(5*n+2)]`
-/

namespace A155133.P16298633087751083546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A155133.P16298633087751083546

noncomputable section

/-- A155133: Numbers k >= 0 such that 5k^2+4k+1 is prime.

Offset 1, canonical program `A155133.P16298633087751083546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A155133 (n : ℕ) : ℤ :=
  (A155133.P16298633087751083546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A155133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155504.P17301175292286522036

`3*A026225(n+1)`
-/

namespace A155504.P17301175292286522036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026225 (n + 1)

end

end A155504.P17301175292286522036

noncomputable section

/-- A155504: Numbers of the form (3h+1)*3^(k+1) listed in increasing order.

Offset 1, canonical program `A155504.P17301175292286522036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155504 (n : ℕ) : ℤ :=
  A155504.P17301175292286522036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155935.P15244456165224310115

`comp[A154610(n+1)]`
-/

namespace A155935.P15244456165224310115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A155935.P15244456165224310115

noncomputable section

/-- A155935: Numbers n such that 13*n + 5 is not prime.

Offset 1, canonical program `A155935.P15244456165224310115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155935 (n : ℕ) : ℤ :=
  (A155935.P15244456165224310115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155938.P6461613877834825485

`p?[A155937(n+1)]`
-/

namespace A155938.P6461613877834825485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155938.P6461613877834825485

noncomputable section

/-- A155938: Primes p such that 13*p + 8 is also prime.

Offset 1, canonical program `A155938.P6461613877834825485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A155938 (n : ℕ) : ℤ :=
  A155938.P6461613877834825485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A155938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156298.P2984020510876517705

`p?[lt[n, A098488(n)]]`
-/

namespace A156298.P2984020510876517705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156298.P2984020510876517705

noncomputable section

/-- A156298: Primes where the first digit is greater than the second digit.

Offset 1, canonical program `A156298.P2984020510876517705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A156298 (n : ℕ) : ℤ :=
  (A156298.P2984020510876517705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A156298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156563.P15747032255580645587

`eq[1, A049705(n+1)]+1+n-a(n-1)` with `a(0)=2`
-/

namespace A156563.P15747032255580645587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n : ℤ) - a (n - 1)

end

end A156563.P15747032255580645587

noncomputable section

/-- A156563: a(n) = (-1)^n*Sum_{k=1..n} A078649(k)*(-1)^k.

Offset 1, canonical program `A156563.P15747032255580645587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156563 (n : ℕ) : ℤ :=
  A156563.P15747032255580645587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156672.P6211038961780949761

`A007918(A062028(a(n-1)))` with `a(0)=2`
-/

namespace A156672.P6211038961780949761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (A062028 (a (n - 1)).toNat).toNat

end

end A156672.P6211038961780949761

noncomputable section

/-- A156672: a(1)=2, a(n+1) is the smallest prime >= a(n) + sum of digits of a(n).

Offset 1, canonical program `A156672.P6211038961780949761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A156672 (n : ℕ) : ℤ :=
  A156672.P6211038961780949761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A156672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156745.P4004578976620637230

`n+1+A006218(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156745.P4004578976620637230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A006218 (n + 1)

end

end A156745.P4004578976620637230

noncomputable section

/-- A156745: a(n) = Sum_{k=1..n} floor((n+k)/k) = n + Sum_{k=1..n} sigma_0(k), where sigma_0(k) is A000005(k). Also a(n) = n + A006218(n).

Offset 1, canonical program `A156745.P4004578976620637230`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156745 (n : ℕ) : ℤ :=
  A156745.P4004578976620637230.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156745.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157158.P9173003013204170091

`p?[A072543(n+1)]`
-/

namespace A157158.P9173003013204170091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157158.P9173003013204170091

noncomputable section

/-- A157158: Primes where the first digit is equal to the largest digit.

Offset 1, canonical program `A157158.P9173003013204170091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 893 terms. -/
def A157158 (n : ℕ) : ℤ :=
  A157158.P9173003013204170091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 893 terms. -/
def A157158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157201.P11307144783730024804

`eq[1, A010051(66*n+1)]`
-/

namespace A157201.P11307144783730024804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (66 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157201.P11307144783730024804

noncomputable section

/-- A157201: Numbers k such that 66*k + 1 is prime.

Offset 1, canonical program `A157201.P11307144783730024804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A157201 (n : ℕ) : ℤ :=
  (A157201.P11307144783730024804.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A157201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157529.P6599670001113276478

`filter[A193772(n+2), A066247(#)]`
-/

namespace A157529.P6599670001113276478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A157529.P6599670001113276478

noncomputable section

/-- A157529: Composite numbers whose first digit is equal to the sum of all the other digits.

Offset 1, canonical program `A157529.P6599670001113276478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A157529 (n : ℕ) : ℤ :=
  A157529.P6599670001113276478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A157529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157672.P13298075479636358401

`A027423(n+2)/2-1`
-/

namespace A157672.P13298075479636358401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027423 (n + 2) : ℚ) / 2 - 1

end

end A157672.P13298075479636358401

noncomputable section

/-- A157672: Number of unordered factorizations of n! into two distinct proper factors.

Offset 2, canonical program `A157672.P13298075479636358401`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157672 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157672.P13298075479636358401.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157672.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157937.P13254016133871496397

`eq[2, A010000(n)%A230775(n+1)]`
-/

namespace A157937.P13254016133871496397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010000 n) (A230775 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157937.P13254016133871496397

noncomputable section

/-- A157937: Numbers k divisible by the least prime >= sqrt(k) which are not in A001248 (primes squared).

Offset 1, canonical program `A157937.P13254016133871496397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A157937 (n : ℕ) : ℤ :=
  (A157937.P13254016133871496397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A157937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158018.P3768148225298653912

`12*A075704(n)+1`
-/

namespace A158018.P3768148225298653912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A075704 n + 1

end

end A158018.P3768148225298653912

noncomputable section

/-- A158018: Primes p such that (p - 1)/12 is also prime.

Offset 1, canonical program `A158018.P3768148225298653912`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158018 (n : ℕ) : ℤ :=
  A158018.P3768148225298653912.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158018.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A158251.P11747801187545961799

`∑[A088570(n+1)]`
-/

namespace A158251.P11747801187545961799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158251.P11747801187545961799

noncomputable section

/-- A158251: a(n)=S(S(n)) where S=A054353 gives the partial sums of Kolakoski sequence.

Offset 1, canonical program `A158251.P11747801187545961799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158251 (n : ℕ) : ℤ :=
  A158251.P11747801187545961799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158635.P13253286712983529006

`6*(n+1)-A008578(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158635.P13253286712983529006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - A008578 (n + 1)

end

end A158635.P13253286712983529006

noncomputable section

/-- A158635: 6n - A008578(n).

Offset 1, canonical program `A158635.P13253286712983529006`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158635 (n : ℕ) : ℤ :=
  A158635.P13253286712983529006.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158635.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158708.P11182512673760747716

`p?[A229990(n+1)+1]`
-/

namespace A158708.P11182512673760747716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229990 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158708.P11182512673760747716

noncomputable section

/-- A158708: Primes p such that p + floor(p/2) is prime.

Offset 1, canonical program `A158708.P11182512673760747716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A158708 (n : ℕ) : ℤ :=
  A158708.P11182512673760747716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A158708.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A159006.P17927454949107554909

`A036044(A130290(n+1)+A000007(n))`
-/

namespace A159006.P17927454949107554909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A130290 (n + 1) + A000007 n).toNat

end

end A159006.P17927454949107554909

noncomputable section

/-- A159006: Transformation of prime(n): flip digits in the binary representation, revert the sequence of digits, and convert back to decimal.

Offset 1, canonical program `A159006.P17927454949107554909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A159006 (n : ℕ) : ℤ :=
  A159006.P17927454949107554909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A159006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160262.P16896969970684579007

`A138114(A324600(n+2))`
-/

namespace A160262.P16896969970684579007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (A324600 (n + 2)).toNat

end

end A160262.P16896969970684579007

noncomputable section

/-- A160262: a(n)=c-th digit of A000796(n) where c=n-th composite.

Offset 1, canonical program `A160262.P16896969970684579007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A160262 (n : ℕ) : ℤ :=
  A160262.P16896969970684579007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A160262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160380.P9836000862584830959

`A139352(A334076(n))`
-/

namespace A160380.P9836000862584830959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A334076 n).toNat

end

end A160380.P9836000862584830959

noncomputable section

/-- A160380: a(0) = 0; for n >= 1, a(n) = number of 0's in base-4 representation of n.

Offset 0, canonical program `A160380.P9836000862584830959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160380 (n : ℕ) : ℤ :=
  A160380.P9836000862584830959.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160638.P1424337119483227896

`floor(A030101(n+256)/2)`
-/

namespace A160638.P1424337119483227896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030101 (n + 256) : ℚ) / 2⌋

end

end A160638.P1424337119483227896

noncomputable section

/-- A160638: Bit-reversed 8-bit binary numbers.

Offset 0, canonical program `A160638.P1424337119483227896`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160638 (n : ℕ) : ℤ :=
  A160638.P1424337119483227896.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160680.P11171388368793991633

`A063375(n+2)+A063375(n+1)`
-/

namespace A160680.P11171388368793991633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063375 (n + 2) + A063375 (n + 1)

end

end A160680.P11171388368793991633

noncomputable section

/-- A160680: a(n) = sigma_0(F(n-1)) + sigma_0(F(n-2)) where F=A000045 and sigma_0=A000005.

Offset 3, canonical program `A160680.P11171388368793991633`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160680 (n : ℕ) : ℤ :=
  A160680.P11171388368793991633.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160947.P17837696195469221260

`A253205(n+2)-1`
-/

namespace A160947.P17837696195469221260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253205 (n + 2) - 1

end

end A160947.P17837696195469221260

noncomputable section

/-- A160947: Numbers k that are multiples of the digital sum of k+1.

Offset 1, canonical program `A160947.P17837696195469221260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160947 (n : ℕ) : ℤ :=
  A160947.P17837696195469221260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161349.P9220623831723814997

`eq[1, A053186(A061762(n)+1)]`
-/

namespace A161349.P9220623831723814997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A061762 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161349.P9220623831723814997

noncomputable section

/-- A161349: Positive numbers with property that the digital sum plus the product of the digits is a square.

Offset 1, canonical program `A161349.P9220623831723814997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A161349 (n : ℕ) : ℤ :=
  (A161349.P9220623831723814997.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A161349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161400.P17131858128479350872

`A076877(A082662(n+1))*A175298(A082662(n+1))`
-/

namespace A161400.P17131858128479350872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076877 (A082662 (n + 1)).toNat * A175298 (A082662 (n + 1)).toNat

end

end A161400.P17131858128479350872

noncomputable section

/-- A161400: Positive integers that are palindromes (of even length) in binary, each made by concatenating two identical binary palindromes.

Offset 1, canonical program `A161400.P17131858128479350872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A161400 (n : ℕ) : ℤ :=
  A161400.P17131858128479350872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A161400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161517.P13785156033217621972

`A004125(A002808(n+1))`
-/

namespace A161517.P13785156033217621972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A002808 (n + 1)).toNat

end

end A161517.P13785156033217621972

noncomputable section

/-- A161517: Sum of remainders of c mod k where k = 1, 2, 3, ..., c and c is the n-th composite number.

Offset 1, canonical program `A161517.P13785156033217621972`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A004125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161517 (n : ℕ) : ℤ :=
  A161517.P13785156033217621972.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A004125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161537.P5701896001486132994

`A002808(n+1)+n+1`
-/

namespace A161537.P5701896001486132994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (n + 1 : ℤ)

end

end A161537.P5701896001486132994

noncomputable section

/-- A161537: a(n) = n-th composite + n.

Offset 1, canonical program `A161537.P5701896001486132994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161537 (n : ℕ) : ℤ :=
  A161537.P5701896001486132994.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161537.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161664.P17260438586018701071

`A000217(n+1)-A006218(n+1)`
-/

namespace A161664.P17260438586018701071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A006218 (n + 1)

end

end A161664.P17260438586018701071

noncomputable section

/-- A161664: a(n) = Sum_{i=1..n} (i - d(i)), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A161664.P17260438586018701071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161664 (n : ℕ) : ℤ :=
  A161664.P17260438586018701071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161664.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161756.P14246026735596547033

`A000217(A002808(n+1)-3)-A000217(n)`
-/

namespace A161756.P14246026735596547033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002808 (n + 1) - 3).toNat - A000217 n

end

end A161756.P14246026735596547033

noncomputable section

/-- A161756: The sum of all numbers from n up to A002808(n)-3.

Offset 1, canonical program `A161756.P14246026735596547033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161756 (n : ℕ) : ℤ :=
  A161756.P14246026735596547033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161825.P5954418571217578366

`gcd(n+1, A030101(n+1))`
-/

namespace A161825.P5954418571217578366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A030101 (n + 1))

end

end A161825.P5954418571217578366

noncomputable section

/-- A161825: a(n) is the GCD of n and {the number made by reversing the order of the digits of n written in binary}.

Offset 1, canonical program `A161825.P5954418571217578366`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161825 (n : ℕ) : ℤ :=
  (A161825.P5954418571217578366.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161825.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161842.P12055032570686258273

`2*A094820(n+1)`
-/

namespace A161842.P12055032570686258273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094820 (n + 1)

end

end A161842.P12055032570686258273

noncomputable section

/-- A161842: Partial sums of A161841.

Offset 1, canonical program `A161842.P12055032570686258273`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161842 (n : ℕ) : ℤ :=
  A161842.P12055032570686258273.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094820, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161842.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A161911.P18164703308584755265

`A001223(n+1)-A000005(n+1)`
-/

namespace A161911.P18164703308584755265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - A000005 (n + 1)

end

end A161911.P18164703308584755265

noncomputable section

/-- A161911: a(n) is the n-th difference between consecutive primes minus the number of divisors of n.

Offset 1, canonical program `A161911.P18164703308584755265`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161911 (n : ℕ) : ℤ :=
  A161911.P18164703308584755265.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161911.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A161984.P11462578962919127866

`2*A271439(n)-A167407(n)`
-/

namespace A161984.P11462578962919127866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271439 n - A167407 n

end

end A161984.P11462578962919127866

noncomputable section

/-- A161984: Table read by rows: the number n followed by the odd numbers from n(n-1)+1 to (n-1)(n+2)+1.

Offset 0, canonical program `A161984.P11462578962919127866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161984 (n : ℕ) : ℤ :=
  A161984.P11462578962919127866.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162189.P6510354814338670986

`lt[A001223(n+1), A000005(n+1)]+1`
-/

namespace A162189.P6510354814338670986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A162189.P6510354814338670986

noncomputable section

/-- A162189: Numbers k such that A001223(k) < A000005(k).

Offset 1, canonical program `A162189.P6510354814338670986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162189 (n : ℕ) : ℤ :=
  (A162189.P6510354814338670986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162568.P12841247606361069732

`p?[A323139(n+1)+3]`
-/

namespace A162568.P12841247606361069732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323139 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162568.P12841247606361069732

noncomputable section

/-- A162568: Primes of the form prime(k)+prime(k+1)+3.

Offset 1, canonical program `A162568.P12841247606361069732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A162568 (n : ℕ) : ℤ :=
  A162568.P12841247606361069732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A162568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162569.P4146132423405660050

`p?[A323139(n+1)-3]`
-/

namespace A162569.P4146132423405660050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323139 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162569.P4146132423405660050

noncomputable section

/-- A162569: Primes of the form A001043(j)-3.

Offset 1, canonical program `A162569.P4146132423405660050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2370 terms. -/
def A162569 (n : ℕ) : ℤ :=
  A162569.P4146132423405660050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2370 terms. -/
def A162569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163105.P15390180849648052292

`A062068(A000005(n+1))`
-/

namespace A163105.P15390180849648052292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (A000005 (n + 1)).toNat

end

end A163105.P15390180849648052292

noncomputable section

/-- A163105: a(n) = tau(sigma(tau(n))), where tau = number of divisors of n (A000005), and sigma = sum of divisors of n (A000203).

Offset 1, canonical program `A163105.P15390180849648052292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163105 (n : ℕ) : ℤ :=
  A163105.P15390180849648052292.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163107.P15449425159225054418

`A000005(A062068(n+1))`
-/

namespace A163107.P15449425159225054418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062068 (n + 1)).toNat

end

end A163107.P15449425159225054418

noncomputable section

/-- A163107: a(n) = tau(tau(sigma(n))), where tau = A000005, the number of divisors, and sigma = A000203, the sum of divisors of n.

Offset 1, canonical program `A163107.P15449425159225054418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163107 (n : ℕ) : ℤ :=
  A163107.P15449425159225054418.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163107.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163108.P14757264396306859523

`A000203(A062068(n+1))`
-/

namespace A163108.P14757264396306859523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062068 (n + 1)).toNat

end

end A163108.P14757264396306859523

noncomputable section

/-- A163108: a(n) = sigma(tau(sigma(n))).

Offset 1, canonical program `A163108.P14757264396306859523`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163108 (n : ℕ) : ℤ :=
  A163108.P14757264396306859523.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062068, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163108.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163328.P953906288300287245

`A037314(A025581(n))+3*A037314(A002262(n))`
-/

namespace A163328.P953906288300287245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A025581 n).toNat + 3 * A037314 (A002262 n).toNat

end

end A163328.P953906288300287245

noncomputable section

/-- A163328: Square array A, where entry A(y,x) has the ternary digits of x interleaved with the ternary digits of y, converted back to decimal. Listed by antidiagonals: A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

Offset 0, canonical program `A163328.P953906288300287245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163328 (n : ℕ) : ℤ :=
  A163328.P953906288300287245.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163330.P8412886999285810611

`3*A037314(A025581(n))+A037314(A002262(n))`
-/

namespace A163330.P8412886999285810611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037314 (A025581 n).toNat + A037314 (A002262 n).toNat

end

end A163330.P8412886999285810611

noncomputable section

/-- A163330: Square array A, where entry A(y,x) has the ternary digits of y interleaved with the ternary digits of x, converted back to decimal. Listed by antidiagonals: A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

Offset 0, canonical program `A163330.P8412886999285810611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163330 (n : ℕ) : ℤ :=
  A163330.P8412886999285810611.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163504.P9591765712020297815

`abs(A000040(n+1)-A014076(n+1))`
-/

namespace A163504.P9591765712020297815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (n + 1) - A014076 (n + 1)|

end

end A163504.P9591765712020297815

noncomputable section

/-- A163504: a(n) = abs(n-th prime minus n-th odd nonprime).

Offset 1, canonical program `A163504.P9591765712020297815`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A014076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163504 (n : ℕ) : ℤ :=
  A163504.P9591765712020297815.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A014076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163505.P5476795837318427965

`A014076(n+1)%Δ[n²]`
-/

namespace A163505.P5476795837318427965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014076 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A163505.P5476795837318427965

noncomputable section

/-- A163505: a(n) = (n-th odd nonprime) mod (n-th odd number).

Offset 1, canonical program `A163505.P5476795837318427965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163505 (n : ℕ) : ℤ :=
  A163505.P5476795837318427965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163506.P13187708398187560085

`A014076(n+1)*(2*(n+1)-1)`
-/

namespace A163506.P13187708398187560085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) * ((2 * (n + 1) : ℤ) - 1)

end

end A163506.P13187708398187560085

noncomputable section

/-- A163506: a(n) = n-th odd nonprime * n-th odd number.

Offset 1, canonical program `A163506.P13187708398187560085`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163506 (n : ℕ) : ℤ :=
  A163506.P13187708398187560085.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163506.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163631.P18137767789929216853

`∑[A014076(n+1)]`
-/

namespace A163631.P18137767789929216853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P18137767789929216853

noncomputable section

/-- A163631: Partial sums of the odd nonprimes, A014076.

Offset 1, canonical program `A163631.P18137767789929216853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163631 (n : ℕ) : ℤ :=
  A163631.P18137767789929216853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163636.P2641427512781820136

`(A014076(n+1)+2*(n+1)-1)*(A014076(n+1)-2*(n+1)+3)/4`
-/

namespace A163636.P2641427512781820136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014076 (n + 1) + (2 * (n + 1) : ℤ) - 1 : ℚ) * ((A014076 (n + 1) - (2 * (n + 1) : ℤ) + 3 : ℚ) / 4)

end

end A163636.P2641427512781820136

noncomputable section

/-- A163636: The sum of all odd numbers from 2n-1 up to the n-th odd nonprime.

Offset 1, canonical program `A163636.P2641427512781820136`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163636 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163636.P2641427512781820136.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163775.P4626799535494798513

`A002457(n+1)-A163872(n+1)`
-/

namespace A163775.P4626799535494798513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - A163872 (n + 1)

end

end A163775.P4626799535494798513

noncomputable section

/-- A163775: Row sums of triangle A163772.

Offset 0, canonical program `A163775.P4626799535494798513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A163775 (n : ℕ) : ℤ :=
  A163775.P4626799535494798513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A163775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163831.P18027603680090053005

`A002808(n+1)-A163515(n+1)`
-/

namespace A163831.P18027603680090053005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A163515 (n + 1)

end

end A163831.P18027603680090053005

noncomputable section

/-- A163831: a(n) is the n-th composite minus the sum of the indices of the primes in its prime factorization.

Offset 1, canonical program `A163831.P18027603680090053005`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A163515, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163831 (n : ℕ) : ℤ :=
  A163831.P18027603680090053005.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A163515, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163831.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164028.P16722215845011041546

`A002808(n+1)-3`
-/

namespace A164028.P16722215845011041546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 3

end

end A164028.P16722215845011041546

noncomputable section

/-- A164028: The n-th composite minus 3.

Offset 1, canonical program `A164028.P16722215845011041546`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164028 (n : ℕ) : ℤ :=
  A164028.P16722215845011041546.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164276.P18321897255352052551

`eq[0, A010051(or(n, a(n-1)))]` with `a(0)=0`
-/

namespace A164276.P18321897255352052551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A010051 (Int.lor (n : ℤ) (f2 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164276.P18321897255352052551

noncomputable section

/-- A164276: The non-isolated nonprimes.

Offset 1, canonical program `A164276.P18321897255352052551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164276 (n : ℕ) : ℤ :=
  (A164276.P18321897255352052551.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164931.P11447713035022642152

`(n+1)*A008578(n+1)`
-/

namespace A164931.P11447713035022642152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008578 (n + 1)

end

end A164931.P11447713035022642152

noncomputable section

/-- A164931: n times the n-th noncomposite.

Offset 1, canonical program `A164931.P11447713035022642152`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164931 (n : ℕ) : ℤ :=
  A164931.P11447713035022642152.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164990.P7616358503839349732

`A121285(n)+A100071(n)`
-/

namespace A164990.P7616358503839349732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121285 n + A100071 n

end

end A164990.P7616358503839349732

noncomputable section

/-- A164990: Number of square involutions of n.

Offset 1, canonical program `A164990.P7616358503839349732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A164990 (n : ℕ) : ℤ :=
  A164990.P7616358503839349732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A164990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165294.P2962337622913435196

`p?[(10*A010051(n+1))²+1+n]`
-/

namespace A165294.P2962337622913435196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * A010051 (n + 1)) ^ 2 + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165294.P2962337622913435196

noncomputable section

/-- A165294: The larger member of a prime pair (p, p+100).

Offset 1, canonical program `A165294.P2962337622913435196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165294 (n : ℕ) : ℤ :=
  A165294.P2962337622913435196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A165294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165354.P16000707471541955230

`p?[A010051(A034856(n+1))+2*n+1]`
-/

namespace A165354.P16000707471541955230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A034856 (n + 1)).toNat + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165354.P16000707471541955230

noncomputable section

/-- A165354: Primes p such that p+(p^2-1)/8 is an integer but not a prime number.

Offset 1, canonical program `A165354.P16000707471541955230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A165354 (n : ℕ) : ℤ :=
  A165354.P16000707471541955230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A165354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165797.P12784172842606566617

`(n+1)^A065608(n+1)`
-/

namespace A165797.P12784172842606566617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A065608 (n + 1) : ℤ)

end

end A165797.P12784172842606566617

noncomputable section

/-- A165797: a(n) = n^( sigma(n) - tau(n) ).

Offset 1, canonical program `A165797.P12784172842606566617`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165797 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A165797.P12784172842606566617.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165930.P10363881907716294125

`A028310(Δ[A064491(A028310(n))])`
-/

namespace A165930.P10363881907716294125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A165930.P10363881907716294125

noncomputable section

/-- A165930: a(1) = 1, for n > 1: a(n) = tau(sum of the previous terms) where tau(k) = number of the divisors of k.

Offset 1, canonical program `A165930.P10363881907716294125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165930 (n : ℕ) : ℤ :=
  A165930.P10363881907716294125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165947.P15194943752302719736

`p?[2*A002808(n+1)+3]`
-/

namespace A165947.P15194943752302719736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002808 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165947.P15194943752302719736

noncomputable section

/-- A165947: Primes of the form 2q + 3 where q is composite.

Offset 1, canonical program `A165947.P15194943752302719736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A165947 (n : ℕ) : ℤ :=
  A165947.P15194943752302719736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A165947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165955.P529933159275814728

`A014076(n+1)+A163300(n+1)`
-/

namespace A165955.P529933159275814728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) + A163300 (n + 1)

end

end A165955.P529933159275814728

noncomputable section

/-- A165955: n-th odd nonprime plus n-th even nonprime.

Offset 1, canonical program `A165955.P529933159275814728`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165955 (n : ℕ) : ℤ :=
  A165955.P529933159275814728.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165971.P2237179008475242652

`A014076(n+1)-A163300(n+1)`
-/

namespace A165971.P2237179008475242652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) - A163300 (n + 1)

end

end A165971.P2237179008475242652

noncomputable section

/-- A165971: The n-th odd nonprime minus the n-th even nonprime.

Offset 1, canonical program `A165971.P2237179008475242652`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165971 (n : ℕ) : ℤ :=
  A165971.P2237179008475242652.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166074.P4614613457811451958

`A194029((n+1)²)-1`
-/

namespace A166074.P4614613457811451958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 ((n + 1) ^ 2) - 1

end

end A166074.P4614613457811451958

noncomputable section

/-- A166074: a(n) = n^2 - [largest Fibonacci number <= n^2].

Offset 1, canonical program `A166074.P4614613457811451958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A166074 (n : ℕ) : ℤ :=
  A166074.P4614613457811451958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A166074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166104.P3960484114915730117

`eq[n%2, A005071(n+1)]+1`
-/

namespace A166104.P3960484114915730117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166104.P3960484114915730117

noncomputable section

/-- A166104: Natural numbers whose prime factors are all congruent to 3 or 5 mod 6 (i.e., are in the sequence A045410).

Offset 1, canonical program `A166104.P3960484114915730117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A166104 (n : ℕ) : ℤ :=
  (A166104.P3960484114915730117.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A166104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166236.P17306406694189176569

`abs(A065091(n+1)-A014076(n+1))/2`
-/

namespace A166236.P17306406694189176569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A065091 (n + 1) - A014076 (n + 1)| : ℚ) / 2

end

end A166236.P17306406694189176569

noncomputable section

/-- A166236: Absolute value of (n-th odd prime minus n-th odd nonprime)/2.

Offset 1, canonical program `A166236.P17306406694189176569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, A065091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166236 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166236.P17306406694189176569.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, A065091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166457.P7545271108684484344

`A102546(n+1)/10`
-/

namespace A166457.P7545271108684484344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102546 (n + 1) : ℚ) / 10

end

end A166457.P7545271108684484344

noncomputable section

/-- A166457: Numbers n such that n*100+1 is prime.

Offset 1, canonical program `A166457.P7545271108684484344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166457 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166457.P7545271108684484344.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166570.P9171743488612248024

`comp[A167057(n+1)]`
-/

namespace A166570.P9171743488612248024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166570.P9171743488612248024

noncomputable section

/-- A166570: Numbers n such that 12*n+11 is not prime.

Offset 1, canonical program `A166570.P9171743488612248024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166570 (n : ℕ) : ℤ :=
  (A166570.P9171743488612248024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166684.P17288971262866478246

`∪[A000430(n+1), A008578(n+1)]`
-/

namespace A166684.P17288971262866478246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166684.P17288971262866478246

noncomputable section

/-- A166684: Numbers n such that d(n)

Offset 1, canonical program `A166684.P17288971262866478246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166684 (n : ℕ) : ℤ :=
  (A166684.P17288971262866478246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166983.P2428815246008838013

`A002808(n+1)-A035004(n+2)`
-/

namespace A166983.P2428815246008838013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A035004 (n + 2)

end

end A166983.P2428815246008838013

noncomputable section

/-- A166983: The n-th composite minus the number of its divisors.

Offset 1, canonical program `A166983.P2428815246008838013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A035004, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166983 (n : ℕ) : ℤ :=
  A166983.P2428815246008838013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A035004, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166983.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167135.P14473219385980026343

`A000040(lt[2, A180217(n+1)]+1)`
-/

namespace A167135.P14473219385980026343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A167135.P14473219385980026343

noncomputable section

/-- A167135: Primes congruent to {2, 3, 5, 7, 11} mod 12.

Offset 1, canonical program `A167135.P14473219385980026343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7523 terms. -/
def A167135 (n : ℕ) : ℤ :=
  A167135.P14473219385980026343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7523 terms. -/
def A167135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167136.P17162096113252504066

`n+A008578(n+1)`
-/

namespace A167136.P17162096113252504066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A008578 (n + 1)

end

end A167136.P17162096113252504066

noncomputable section

/-- A167136: a(n) = b(n)-th highest positive integer not equal to any a(k), 1 <= k <= n-1, where b(n) = noncomposite numbers = A008578(n).

Offset 1, canonical program `A167136.P17162096113252504066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167136 (n : ℕ) : ℤ :=
  A167136.P17162096113252504066.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167464.P9940011156032082583

`p?[comp[A157977(n+1)]]`
-/

namespace A167464.P9940011156032082583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157977 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167464.P9940011156032082583

noncomputable section

/-- A167464: Primes p such that 20*p+19 is composite.

Offset 1, canonical program `A167464.P9940011156032082583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1042 terms. -/
def A167464 (n : ℕ) : ℤ :=
  (A167464.P9940011156032082583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1042 terms. -/
def A167464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167626.P6697217771751986165

`1000*A105106(n+1)+101`
-/

namespace A167626.P6697217771751986165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1000 * A105106 (n + 1) + 101

end

end A167626.P6697217771751986165

noncomputable section

/-- A167626: Prime numbers ending in the prime number 101.

Offset 1, canonical program `A167626.P6697217771751986165`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105106, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167626 (n : ℕ) : ℤ :=
  A167626.P6697217771751986165.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105106, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168272.P13748373025009212725

`abs(A006450(n+1)-A007821(n+1))`
-/

namespace A168272.P13748373025009212725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006450 (n + 1) - A007821 (n + 1)|

end

end A168272.P13748373025009212725

noncomputable section

/-- A168272: a(n) = abs(prime(prime(n))-prime(nonprime(n))).

Offset 1, canonical program `A168272.P13748373025009212725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A007821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168272 (n : ℕ) : ℤ :=
  A168272.P13748373025009212725.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006450, A007821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168285.P1652759272398697817

`A007821(n+1)-A018252(n+1)`
-/

namespace A168285.P1652759272398697817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A018252 (n + 1)

end

end A168285.P1652759272398697817

noncomputable section

/-- A168285: a(n) = ((n-th nonprime)-th prime) - (n-th nonprime).

Offset 1, canonical program `A168285.P1652759272398697817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168285 (n : ℕ) : ℤ :=
  A168285.P1652759272398697817.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168285.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168567.P3820506037250447474

`A008333(n+1)+A008332(n+1)`
-/

namespace A168567.P3820506037250447474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008333 (n + 1) + A008332 (n + 1)

end

end A168567.P3820506037250447474

noncomputable section

/-- A168567: Sum of divisors (sigma(n)) of the prime's previous and next numbers.

Offset 1, canonical program `A168567.P3820506037250447474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168567 (n : ℕ) : ℤ :=
  A168567.P3820506037250447474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169606.P1555157006490763150

`A093515(n+4)-3`
-/

namespace A169606.P1555157006490763150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 4) - 3

end

end A169606.P1555157006490763150

noncomputable section

/-- A169606: a(2n-1) = prime(n+2)-3, a(2n) = prime(n+2)-2.

Offset 1, canonical program `A169606.P1555157006490763150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169606 (n : ℕ) : ℤ :=
  A169606.P1555157006490763150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171424.P10085515601653152791

`A171228(n)+A000027(n+1)`
-/

namespace A171424.P10085515601653152791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171228 n + A000027 (n + 1)

end

end A171424.P10085515601653152791

noncomputable section

/-- A171424: (n-1)^(p-n+1)+n where p is the smallest prime > n-1.

Offset 1, canonical program `A171424.P10085515601653152791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171424 (n : ℕ) : ℤ :=
  A171424.P10085515601653152791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171228, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171424.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171575.P2892916473500616437

`A008578(n+1)+A163300(n+1)`
-/

namespace A171575.P2892916473500616437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A163300 (n + 1)

end

end A171575.P2892916473500616437

noncomputable section

/-- A171575: n-th noncomposite number plus n-th even nonprime number.

Offset 1, canonical program `A171575.P2892916473500616437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171575 (n : ℕ) : ℤ :=
  A171575.P2892916473500616437.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171575.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171576.P12426591826192478319

`abs(A008578(n+1)-A163300(n+1))`
-/

namespace A171576.P12426591826192478319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008578 (n + 1) - A163300 (n + 1)|

end

end A171576.P12426591826192478319

noncomputable section

/-- A171576: a(n) = abs(n-th noncomposite number minus n-th even nonprime number).

Offset 1, canonical program `A171576.P12426591826192478319`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171576 (n : ℕ) : ℤ :=
  A171576.P12426591826192478319.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171576.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171622.P9340769267017668227

`floor(A008578(n+1)/(n+1))`
-/

namespace A171622.P9340769267017668227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008578 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A171622.P9340769267017668227

noncomputable section

/-- A171622: a(n) = floor(n-th noncomposite / n).

Offset 1, canonical program `A171622.P9340769267017668227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171622 (n : ℕ) : ℤ :=
  A171622.P9340769267017668227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171622.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171623.P4321114191881075899

`floor(A002808(n+1)/(n+1))`
-/

namespace A171623.P4321114191881075899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002808 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A171623.P4321114191881075899

noncomputable section

/-- A171623: a(n) = floor(n-th composite / n).

Offset 1, canonical program `A171623.P4321114191881075899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171623 (n : ℕ) : ℤ :=
  A171623.P4321114191881075899.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171626.P12911912347420491639

`ceil(A008578(n+1)/(n+1))`
-/

namespace A171626.P12911912347420491639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008578 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A171626.P12911912347420491639

noncomputable section

/-- A171626: a(n) = ceiling(n-th noncomposite/n).

Offset 1, canonical program `A171626.P12911912347420491639`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171626 (n : ℕ) : ℤ :=
  A171626.P12911912347420491639.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171626.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171627.P3720226198752426776

`ceil(A002808(n+1)/A000027(n+1))`
-/

namespace A171627.P3720226198752426776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002808 (n + 1) : ℚ) / (A000027 (n + 1) : ℚ)⌉

end

end A171627.P3720226198752426776

noncomputable section

/-- A171627: a(n) = ceiling(n-th composite/n).

Offset 1, canonical program `A171627.P3720226198752426776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171627 (n : ℕ) : ℤ :=
  A171627.P3720226198752426776.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171845.P18222334941660186370

`eq[A010051((1-n)%2+n), A010051(n+1)]`
-/

namespace A171845.P18222334941660186370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.tmod (1 - (n : ℤ)) 2 + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171845.P18222334941660186370

noncomputable section

/-- A171845: Numbers n >= 0 such that n-1 and n+1 are both primes or both nonprimes, but excluding primes.

Offset 1, canonical program `A171845.P18222334941660186370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171845 (n : ℕ) : ℤ :=
  (A171845.P18222334941660186370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172243.P15321904317358311032

`∑[A080076(n+1)]`
-/

namespace A172243.P15321904317358311032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172243.P15321904317358311032

noncomputable section

/-- A172243: Partial sums of A080076.

Offset 1, canonical program `A172243.P15321904317358311032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172243 (n : ℕ) : ℤ :=
  A172243.P15321904317358311032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172469.P4342047015468027813

`p?[A376506(n+1)]`
-/

namespace A172469.P4342047015468027813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172469.P4342047015468027813

noncomputable section

/-- A172469: Primes congruent to +/ -1 or +/ -7 modulo 25.

Offset 1, canonical program `A172469.P4342047015468027813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A172469 (n : ℕ) : ℤ :=
  A172469.P4342047015468027813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. -/
def A172469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172969.P13289703455094161202

`eq[A016789(A032741(n)), A114003(n+1)]`
-/

namespace A172969.P13289703455094161202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172969.P13289703455094161202

noncomputable section

/-- A172969: Numbers k such that 3*A000005(k) = 2*A000005(k+1).

Offset 1, canonical program `A172969.P13289703455094161202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A172969 (n : ℕ) : ℤ :=
  (A172969.P13289703455094161202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A172969.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A173144.P12457585745625327984

`eq[A048448(n)%6, (n+3)²%(n+1)]`
-/

namespace A173144.P12457585745625327984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048448 n) 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A173144.P12457585745625327984

noncomputable section

/-- A173144: Numbers n such that neither prime(n-1) nor prime(n+1) is of form 6k+1.

Offset 1, canonical program `A173144.P12457585745625327984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173144 (n : ℕ) : ℤ :=
  (A173144.P12457585745625327984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173438.P11158591540045006980

`A000005(n+1)-A073802(n+1)`
-/

namespace A173438.P11158591540045006980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A073802 (n + 1)

end

end A173438.P11158591540045006980

noncomputable section

/-- A173438: Number of divisors d of number n such that d does not divide sigma(n).

Offset 1, canonical program `A173438.P11158591540045006980`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A073802, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173438 (n : ℕ) : ℤ :=
  A173438.P11158591540045006980.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A073802, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173919.P13920908538941556849

`A093515(n+1)-1`
-/

namespace A173919.P13920908538941556849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1) - 1

end

end A173919.P13920908538941556849

noncomputable section

/-- A173919: Numbers that are prime or one less than a prime.

Offset 1, canonical program `A173919.P13920908538941556849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173919 (n : ℕ) : ℤ :=
  A173919.P13920908538941556849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173922.P17619675527876589984

`A000035(A002265(A030101(n+4)))`
-/

namespace A173922.P17619675527876589984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002265 (A030101 (n + 4)).toNat).toNat

end

end A173922.P17619675527876589984

noncomputable section

/-- A173922: In the sequence of nonnegative integers substitute all n by 2^floor(n/4) occurrences of (n mod 2).

Offset 0, canonical program `A173922.P17619675527876589984`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173922 (n : ℕ) : ℤ :=
  A173922.P17619675527876589984.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173922.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174219.P9674562942544645615

`∩[A093515(n+1)-1, A093515(n+1)]`
-/

namespace A174219.P9674562942544645615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174219.P9674562942544645615

noncomputable section

/-- A174219: Integers equal to sqrt of A147846(n) + A147846(n+1).

Offset 1, canonical program `A174219.P9674562942544645615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174219 (n : ℕ) : ℤ :=
  (A174219.P9674562942544645615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174813.P5082787198500863838

`∩[A039132(n+1), A136333(n+1)]`
-/

namespace A174813.P5082787198500863838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174813.P5082787198500863838

noncomputable section

/-- A174813: a(n) = number whose product of digits equals a power of 3.

Offset 1, canonical program `A174813.P5082787198500863838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A174813 (n : ℕ) : ℤ :=
  (A174813.P5082787198500863838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A174813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174891.P1764680800722521875

`lt[0, A061669(n+1)]+1`
-/

namespace A174891.P1764680800722521875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A174891.P1764680800722521875

noncomputable section

/-- A174891: All positive numbers except those that are the product of an odd number of distinct primes.

Offset 1, canonical program `A174891.P1764680800722521875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174891 (n : ℕ) : ℤ :=
  (A174891.P1764680800722521875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174980.P9143177174350052576

`A002487(A003817(n)-n)`
-/

namespace A174980.P9143177174350052576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A003817 n - (n : ℤ)).toNat

end

end A174980.P9143177174350052576

noncomputable section

/-- A174980: Stern's diatomic series type ([0,1], 1).

Offset 0, canonical program `A174980.P9143177174350052576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A174980 (n : ℕ) : ℤ :=
  A174980.P9143177174350052576.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A174980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175077.P1987853210808797040

`a(A064722(n))` with `a(0)=1, a(1)=2`
-/

namespace A175077.P1987853210808797040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A064722 n).toNat

end

end A175077.P1987853210808797040

noncomputable section

/-- A175077: Final number reached by iterating r -> A049711(r) starting at r = n.

Offset 1, canonical program `A175077.P1987853210808797040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A175077 (n : ℕ) : ℤ :=
  (A175077.P1987853210808797040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A175077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175078.P8983791659663241691

`a(A064722(n))+1` with `a(0)=0, a(1)=0`
-/

namespace A175078.P8983791659663241691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A064722 n).toNat + 1

end

end A175078.P8983791659663241691

noncomputable section

/-- A175078: Number of iterations of {r mod (max prime p < r)} needed to reach 1 or 2 starting at r = n.

Offset 1, canonical program `A175078.P8983791659663241691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175078 (n : ℕ) : ℤ :=
  (A175078.P8983791659663241691.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175116.P9810145318194581764

`eq[A014681(A092517(n+1)), A032741(n)]`
-/

namespace A175116.P9810145318194581764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A092517 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175116.P9810145318194581764

noncomputable section

/-- A175116: A positive integer k is included if d(k) = d(k+1) * d(k+2), where d(k) is the number of divisors of k.

Offset 1, canonical program `A175116.P9810145318194581764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A175116 (n : ℕ) : ℤ :=
  (A175116.P9810145318194581764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A175116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175219.P11185620326442108862

`A002808(p?[abs(xor(n, -2))]+2-n)`
-/

namespace A175219.P11185620326442108862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 - (n : ℤ)).toNat

end

end A175219.P11185620326442108862

noncomputable section

/-- A175219: The fourth nonprimes after the primes.

Offset 1, canonical program `A175219.P11185620326442108862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175219 (n : ℕ) : ℤ :=
  A175219.P11185620326442108862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175220.P9357636915036204970

`A002808(A014692(n+1)+3)`
-/

namespace A175220.P9357636915036204970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A014692 (n + 1) + 3).toNat

end

end A175220.P9357636915036204970

noncomputable section

/-- A175220: The fifth nonprimes after the primes.

Offset 1, canonical program `A175220.P9357636915036204970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A175220 (n : ℕ) : ℤ :=
  A175220.P9357636915036204970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A175220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175247.P4698162389150652956

`A000040(A008578(n+1))`
-/

namespace A175247.P4698162389150652956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008578 (n + 1)).toNat

end

end A175247.P4698162389150652956

noncomputable section

/-- A175247: Primes (A000040) with noncomposite (A008578) subscripts.

Offset 1, canonical program `A175247.P4698162389150652956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A008578, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175247 (n : ℕ) : ℤ :=
  A175247.P4698162389150652956.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A008578, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175248.P3451421000021238238

`A008578(A008578(n+1))`
-/

namespace A175248.P3451421000021238238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A008578 (n + 1)).toNat

end

end A175248.P3451421000021238238

noncomputable section

/-- A175248: Noncomposites (A008578) with noncomposite (A008578) subscripts.

Offset 1, canonical program `A175248.P3451421000021238238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175248 (n : ℕ) : ℤ :=
  A175248.P3451421000021238238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175249.P14139215036818513482

`A008578(A018252(n+1))`
-/

namespace A175249.P14139215036818513482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A018252 (n + 1)).toNat

end

end A175249.P14139215036818513482

noncomputable section

/-- A175249: Noncomposites (A008578) with nonprime (A018252) subscripts.

Offset 1, canonical program `A175249.P14139215036818513482`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175249 (n : ℕ) : ℤ :=
  A175249.P14139215036818513482.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A175249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175553.P5108297307299290706

`A176423(n+1)-2`
-/

namespace A175553.P5108297307299290706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1) - 2

end

end A175553.P5108297307299290706

noncomputable section

/-- A175553: Product of first k triangular numbers divided by the sum of first k triangular numbers is an integer.

Offset 1, canonical program `A175553.P5108297307299290706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175553 (n : ℕ) : ℤ :=
  A175553.P5108297307299290706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175802.P640833925567142448

`A011782(A018252(n+1))%A002808(n+1)`
-/

namespace A175802.P640833925567142448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (A018252 (n + 1)).toNat) (A002808 (n + 1))

end

end A175802.P640833925567142448

noncomputable section

/-- A175802: a(n) = 2^(positive nonprime(n)-1) mod (positive nonprime(n+1)).

Offset 1, canonical program `A175802.P640833925567142448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A175802 (n : ℕ) : ℤ :=
  A175802.P640833925567142448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 266 terms. -/
def A175802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175893.P14973154944427096017

`lt[A000005(A011974(n+2)+A000040(n+1)), 3]+1`
-/

namespace A175893.P14973154944427096017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011974 (n + 2) + A000040 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A175893.P14973154944427096017

noncomputable section

/-- A175893: Numbers m such that 2*prime(m)+prime(m+1) is prime.

Offset 1, canonical program `A175893.P14973154944427096017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 505 terms. -/
def A175893 (n : ℕ) : ℤ :=
  (A175893.P14973154944427096017.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 505 terms. -/
def A175893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176003.P16816734743549634336

`3*A008578(n+1)-2`
-/

namespace A176003.P16816734743549634336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008578 (n + 1) - 2

end

end A176003.P16816734743549634336

noncomputable section

/-- A176003: a(n) = 3*(n-th noncomposite number) - 2.

Offset 1, canonical program `A176003.P16816734743549634336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176003 (n : ℕ) : ℤ :=
  A176003.P16816734743549634336.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176246.P14955082673946823167

`A001223(n+2)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176246.P14955082673946823167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) - 1

end

end A176246.P14955082673946823167

noncomputable section

/-- A176246: a(n) = A001223(n+1) - 1.

Offset 1, canonical program `A176246.P14955082673946823167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176246 (n : ℕ) : ℤ :=
  A176246.P14955082673946823167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176246.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176597.P3154790645961376923

`A020338(record[p?[∏{p}[n+1, #]]])`
-/

namespace A176597.P3154790645961376923
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A176597.P3154790645961376923

noncomputable section

/-- A176597: Double primes: concatenation of the n-th prime with itself.

Offset 1, canonical program `A176597.P3154790645961376923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176597 (n : ℕ) : ℤ :=
  A176597.P3154790645961376923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177236.P14113996674392224070

`A049820(n+1)-A177235(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177236.P14113996674392224070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A177235 (n + 1)

end

end A177236.P14113996674392224070

noncomputable section

/-- A177236: a(n) = A049820(n) - A177235(n).

Offset 1, canonical program `A177236.P14113996674392224070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, A177235, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177236 (n : ℕ) : ℤ :=
  A177236.P14113996674392224070.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, A177235, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177962.P7538067305498914461

`A008480(A002808(n+1))`
-/

namespace A177962.P7538067305498914461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A002808 (n + 1)).toNat

end

end A177962.P7538067305498914461

noncomputable section

/-- A177962: Number of distinct transpositions of prime factors of n-th composite number.

Offset 1, canonical program `A177962.P7538067305498914461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A008480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177962 (n : ℕ) : ℤ :=
  A177962.P7538067305498914461.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A008480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A177962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178359.P15358575876907738801

`A008592(n)+A004427(n)`
-/

namespace A178359.P15358575876907738801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + A004427 n

end

end A178359.P15358575876907738801

noncomputable section

/-- A178359: Rounded up arithmetic mean of digits of n appended to n, cf. A004427.

Offset 0, canonical program `A178359.P15358575876907738801`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004427, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178359 (n : ℕ) : ℤ :=
  A178359.P15358575876907738801.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004427, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A178361.P8231128193257540818

`eq[1, A004427(n)]`
-/

namespace A178361.P8231128193257540818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178361.P8231128193257540818

noncomputable section

/-- A178361: Numbers with rounded up arithmetic mean of digits = 1.

Offset 1, canonical program `A178361.P8231128193257540818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A178361 (n : ℕ) : ℤ :=
  (A178361.P8231128193257540818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A178361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178362.P9238834026581198290

`eq[2, A004427(n)]`
-/

namespace A178362.P9238834026581198290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178362.P9238834026581198290

noncomputable section

/-- A178362: Numbers with rounded up arithmetic mean of digits = 2.

Offset 1, canonical program `A178362.P9238834026581198290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1420 terms. -/
def A178362 (n : ℕ) : ℤ :=
  (A178362.P9238834026581198290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1420 terms. -/
def A178362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178363.P6844550535724786784

`eq[3, A004427(n)]`
-/

namespace A178363.P6844550535724786784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178363.P6844550535724786784

noncomputable section

/-- A178363: Numbers with rounded up arithmetic mean of digits = 3.

Offset 1, canonical program `A178363.P6844550535724786784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4511 terms. -/
def A178363 (n : ℕ) : ℤ :=
  (A178363.P6844550535724786784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4511 terms. -/
def A178363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178364.P433863543401046388

`eq[4, A004427(n)]`
-/

namespace A178364.P433863543401046388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178364.P433863543401046388

noncomputable section

/-- A178364: Numbers with rounded up arithmetic mean of digits = 4.

Offset 1, canonical program `A178364.P433863543401046388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. -/
def A178364 (n : ℕ) : ℤ :=
  (A178364.P433863543401046388.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. -/
def A178364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178365.P3974075218934298230

`eq[5, A004427(n)]`
-/

namespace A178365.P3974075218934298230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178365.P3974075218934298230

noncomputable section

/-- A178365: Numbers with rounded up arithmetic mean of digits = 5.

Offset 1, canonical program `A178365.P3974075218934298230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6441 terms. -/
def A178365 (n : ℕ) : ℤ :=
  (A178365.P3974075218934298230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6441 terms. -/
def A178365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178366.P7518788595640063131

`eq[6, A004427(n)]`
-/

namespace A178366.P7518788595640063131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178366.P7518788595640063131

noncomputable section

/-- A178366: Numbers with rounded up arithmetic mean of digits = 6.

Offset 1, canonical program `A178366.P7518788595640063131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3585 terms. -/
def A178366 (n : ℕ) : ℤ :=
  (A178366.P7518788595640063131.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3585 terms. -/
def A178366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178367.P10805478532378323265

`eq[7, A004427(n)]`
-/

namespace A178367.P10805478532378323265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178367.P10805478532378323265

noncomputable section

/-- A178367: Numbers with rounded up arithmetic mean of digits = 7.

Offset 1, canonical program `A178367.P10805478532378323265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1346 terms. -/
def A178367 (n : ℕ) : ℤ :=
  (A178367.P10805478532378323265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1346 terms. -/
def A178367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178368.P9202168423804180073

`eq[8, A004427(n)]`
-/

namespace A178368.P9202168423804180073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178368.P9202168423804180073

noncomputable section

/-- A178368: Numbers with rounded up arithmetic mean of digits = 8.

Offset 1, canonical program `A178368.P9202168423804180073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A178368 (n : ℕ) : ℤ :=
  (A178368.P9202168423804180073.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A178368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178404.P8715085228926204478

`eq[dr(n), A004427(n)]`
-/

namespace A178404.P8715085228926204478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178404.P8715085228926204478

noncomputable section

/-- A178404: Numbers such that the rounded up arithmetic mean of their digits equals their digital root.

Offset 1, canonical program `A178404.P8715085228926204478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A178404 (n : ℕ) : ℤ :=
  (A178404.P8715085228926204478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A178404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178664.P2807692713744163170

`A020338(2^n)`
-/

namespace A178664.P2807692713744163170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (2 ^ n)

end

end A178664.P2807692713744163170

noncomputable section

/-- A178664: a(n) = 2^n concatenated with itself.

Offset 0, canonical program `A178664.P2807692713744163170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178664 (n : ℕ) : ℤ :=
  A178664.P2807692713744163170.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178664.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A179126.P17825207703947104967

`A007412(n+1)^2`
-/

namespace A179126.P17825207703947104967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1) ^ 2

end

end A179126.P17825207703947104967

noncomputable section

/-- A179126: Positive integers m for which the torsion subgroup of the elliptic curve y^2 = x^3 + m has order 3.

Offset 1, canonical program `A179126.P17825207703947104967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179126 (n : ℕ) : ℤ :=
  A179126.P17825207703947104967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179699.P1483605779152392052

`A178739(n+1)²`
-/

namespace A179699.P1483605779152392052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178739 (n + 1) ^ 2

end

end A179699.P1483605779152392052

noncomputable section

/-- A179699: Numbers of the form p^8*q^2 where p and q are distinct primes.

Offset 1, canonical program `A179699.P1483605779152392052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179699 (n : ℕ) : ℤ :=
  A179699.P1483605779152392052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A179699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179893.P13809526715996495286

`3*A005097(n+1)`
-/

namespace A179893.P13809526715996495286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005097 (n + 1)

end

end A179893.P13809526715996495286

noncomputable section

/-- A179893: a(n) = 3/2 * (prime(n)-1).

Offset 2, canonical program `A179893.P13809526715996495286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179893 (n : ℕ) : ℤ :=
  A179893.P13809526715996495286.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180060.P8050149905770766405

`A000079(n+1-A082494(n+1))%(n+1)`
-/

namespace A180060.P8050149905770766405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 ((n + 1 : ℤ) - A082494 (n + 1)).toNat) (n + 1 : ℤ)

end

end A180060.P8050149905770766405

noncomputable section

/-- A180060: a(n) = 2^(2^n mod n) mod n.

Offset 1, canonical program `A180060.P8050149905770766405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. -/
def A180060 (n : ℕ) : ℤ :=
  A180060.P8050149905770766405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. -/
def A180060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180364.P12544978778859971724

`Δ[n²*A002002(n)]`
-/

namespace A180364.P12544978778859971724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180364.P12544978778859971724

noncomputable section

/-- A180364: a(n) = sum_{k=0..n} C(n,k)*C(n+k,k)*(2*k+1)^2, where C(m,k) denotes the binomial coefficient m!/(k!*(m-k)!).

Offset 0, canonical program `A180364.P12544978778859971724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A180364 (n : ℕ) : ℤ :=
  A180364.P12544978778859971724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A180364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180499.P14708687511346327286

`(n+1)^3+A004709(n+1)`
-/

namespace A180499.P14708687511346327286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) + A004709 (n + 1)

end

end A180499.P14708687511346327286

noncomputable section

/-- A180499: n^3 + n-th cubefree number.

Offset 1, canonical program `A180499.P14708687511346327286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180499 (n : ℕ) : ℤ :=
  A180499.P14708687511346327286.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180499.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181183.P18430112990416005991

`A000035(A062069(n+1))`
-/

namespace A181183.P18430112990416005991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A062069 (n + 1)).toNat

end

end A181183.P18430112990416005991

noncomputable section

/-- A181183: a(n) = sigma(tau(n)) (mod 2).

Offset 1, canonical program `A181183.P18430112990416005991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062069, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181183 (n : ℕ) : ℤ :=
  A181183.P18430112990416005991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062069, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181183.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181326.P4111225017154132152

`A181296(n)-a(n-1)` with `a(0)=0`
-/

namespace A181326.P4111225017154132152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A181296 n - a (n - 1)

end

end A181326.P4111225017154132152

noncomputable section

/-- A181326: Number of columns with an odd sum in all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181326.P4111225017154132152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181326 (n : ℕ) : ℤ :=
  A181326.P4111225017154132152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181337.P8014274062187864923

`A181305(n)+A181300(n)`
-/

namespace A181337.P8014274062187864923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 n + A181300 n

end

end A181337.P8014274062187864923

noncomputable section

/-- A181337: Number of even entries in the top rows of all 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n.

Offset 0, canonical program `A181337.P8014274062187864923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181337 (n : ℕ) : ℤ :=
  A181337.P8014274062187864923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181435.P17617308443401127913

`xor(A063524(n), A181434(n+1))`
-/

namespace A181435.P17617308443401127913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A181434 (n + 1))

end

end A181435.P17617308443401127913

noncomputable section

/-- A181435: First column in matrix inverse of a mixed convolution of A052906.

Offset 1, canonical program `A181435.P17617308443401127913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A181435 (n : ℕ) : ℤ :=
  A181435.P17617308443401127913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A181435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181966.P3642588187185177021

`(n+1)!*A013939(n+1)`
-/

namespace A181966.P3642588187185177021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A013939 (n + 1)

end

end A181966.P3642588187185177021

noncomputable section

/-- A181966: Sum of the sizes of normalizers of all prime order cyclic subgroups of the symmetric group S_n.

Offset 1, canonical program `A181966.P3642588187185177021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181966 (n : ℕ) : ℤ :=
  A181966.P3642588187185177021.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181967.P8394307482672560555

`(n+1)!*(A013939(n+1)-floor((n+3)/4))/2`
-/

namespace A181967.P8394307482672560555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * ((A013939 (n + 1) - ⌊(n + 3 : ℚ) / 4⌋ : ℚ) / 2)

end

end A181967.P8394307482672560555

noncomputable section

/-- A181967: Sum of the sizes of the normalizers of all prime order cyclic subgroups of the alternating group A_n.

Offset 1, canonical program `A181967.P8394307482672560555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181967 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181967.P8394307482672560555.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182093.P17307292128728891994

`∑[A005590(n)]`
-/

namespace A182093.P17307292128728891994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182093.P17307292128728891994

noncomputable section

/-- A182093: Partial sums of A005590.

Offset 0, canonical program `A182093.P17307292128728891994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182093 (n : ℕ) : ℤ :=
  A182093.P17307292128728891994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182145.P14347110186623288046

`xor(A001223(n+1), A001223(n+2))`
-/

namespace A182145.P14347110186623288046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001223 (n + 1)) (A001223 (n + 2))

end

end A182145.P14347110186623288046

noncomputable section

/-- A182145: XOR(d1,d2), where d1 and d2 are the difference between consecutive primes given in binary.

Offset 1, canonical program `A182145.P14347110186623288046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182145 (n : ℕ) : ℤ :=
  A182145.P14347110186623288046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182626.P6575455807757680894

`or(1, A002002(n)*A033999(n))`
-/

namespace A182626.P6575455807757680894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002002 n * A033999 n)

end

end A182626.P6575455807757680894

noncomputable section

/-- A182626: a(n) = Hypergeometric([-n, n], [1], 2).

Offset 0, canonical program `A182626.P6575455807757680894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A182626 (n : ℕ) : ℤ :=
  A182626.P6575455807757680894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A182626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183063.P14549643650991336837

`A062011(n+1)-A099777(n+1)`
-/

namespace A183063.P14549643650991336837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) - A099777 (n + 1)

end

end A183063.P14549643650991336837

noncomputable section

/-- A183063: Number of even divisors of n.

Offset 1, canonical program `A183063.P14549643650991336837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062011, A099777, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183063 (n : ℕ) : ℤ :=
  A183063.P14549643650991336837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062011, A099777, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183063.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183095.P16118821317782953757

`A183093(n+1)+1`
-/

namespace A183095.P16118821317782953757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (n + 1) + 1

end

end A183095.P16118821317782953757

noncomputable section

/-- A183095: a(n) = number of divisors d of n that are either 1 or of the form Product_(i) (p_i^e_i) where e_i = 1 for at least one i.

Offset 1, canonical program `A183095.P16118821317782953757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183095 (n : ℕ) : ℤ :=
  A183095.P16118821317782953757.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183093, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184390.P5275387814831515097

`A000217(A007955(n+1))`
-/

namespace A184390.P5275387814831515097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007955 (n + 1)).toNat

end

end A184390.P5275387814831515097

noncomputable section

/-- A184390: a(n) = sum of numbers from 1 to pi(n), where pi(n) = A007955(n).

Offset 1, canonical program `A184390.P5275387814831515097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184390 (n : ℕ) : ℤ :=
  A184390.P5275387814831515097.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184391.P2181629435017711796

`A007955(n+1)!`
-/

namespace A184391.P2181629435017711796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007955 (n + 1)).toNat

end

end A184391.P2181629435017711796

noncomputable section

/-- A184391: a(n) = product of numbers from 1 to A007955(n).

Offset 1, canonical program `A184391.P2181629435017711796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184391 (n : ℕ) : ℤ :=
  (A184391.P2181629435017711796.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184391.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184778.P8996054944129193767

`record[(n+1)*A010051(A003151(n+1)+n+1)]`
-/

namespace A184778.P8996054944129193767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A003151 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184778.P8996054944129193767

noncomputable section

/-- A184778: Numbers k such that 2k + floor(k*sqrt(2)) is prime.

Offset 1, canonical program `A184778.P8996054944129193767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A184778 (n : ℕ) : ℤ :=
  A184778.P8996054944129193767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A184778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184803.P11425205424734953809

`record[(n+1)*A010051(A022839(n+1))]`
-/

namespace A184803.P11425205424734953809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A022839 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184803.P11425205424734953809

noncomputable section

/-- A184803: Numbers k such that floor(k*sqrt(5)) is prime.

Offset 1, canonical program `A184803.P11425205424734953809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1097 terms. -/
def A184803 (n : ℕ) : ℤ :=
  A184803.P11425205424734953809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1097 terms. -/
def A184803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185271.P9882110103991236612

`A055025(n+2)-A055025(n+1)`
-/

namespace A185271.P9882110103991236612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 2) - A055025 (n + 1)

end

end A185271.P9882110103991236612

noncomputable section

/-- A185271: Differences between consecutive norms of Gaussian primes.

Offset 1, canonical program `A185271.P9882110103991236612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185271 (n : ℕ) : ℤ :=
  A185271.P9882110103991236612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185300.P2066547640795483324

`eq[1, ∑{e}[A061762(n), #]]`
-/

namespace A185300.P2066547640795483324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185300.P2066547640795483324

noncomputable section

/-- A185300: Numbers k such that (sum of the decimal digits of k) + (product of the decimal digits of k) is prime.

Offset 1, canonical program `A185300.P2066547640795483324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A185300 (n : ℕ) : ℤ :=
  (A185300.P2066547640795483324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. -/
def A185300.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A185705.P1369373421699612504

`A010051(n+1)*A079998(n)`
-/

namespace A185705.P1369373421699612504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A079998 n

end

end A185705.P1369373421699612504

noncomputable section

/-- A185705: Characteristic function of positive numbers that are primes ending in 1.

Offset 1, canonical program `A185705.P1369373421699612504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185705 (n : ℕ) : ℤ :=
  A185705.P1369373421699612504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185708.P3037980791462570158

`and(A008496(n), A010051(n+1))`
-/

namespace A185708.P3037980791462570158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008496 n) (A010051 (n + 1))

end

end A185708.P3037980791462570158

noncomputable section

/-- A185708: Characteristic function of positive numbers that are primes ending in 7.

Offset 1, canonical program `A185708.P3037980791462570158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185708 (n : ℕ) : ℤ :=
  A185708.P3037980791462570158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185934.P5020716041999348457

`filter[A258578(n+1), A070563(#)]`
-/

namespace A185934.P5020716041999348457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A185934.P5020716041999348457

noncomputable section

/-- A185934: Lesser of two consecutive primes which both equal 1 (mod 3).

Offset 1, canonical program `A185934.P5020716041999348457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185934 (n : ℕ) : ℤ :=
  A185934.P5020716041999348457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A185934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186035.P7318932329708112188

`(-1)^A186034(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186035.P7318932329708112188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A186034 n : ℤ)

end

end A186035.P7318932329708112188

noncomputable section

/-- A186035: a(n) = (-1)^A186034(n).

Offset 0, canonical program `A186035.P7318932329708112188`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186035 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186035.P7318932329708112188.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A186034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A186035.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A186227.P15814989772072999567

`eq[char[A186228(n+1)], A000007(n)]`
-/

namespace A186227.P15814989772072999567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186228 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A186227.P15814989772072999567

noncomputable section

/-- A186227: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f and g are the triangular numbers and heptagonal numbers. Complement of A186228.

Offset 1, canonical program `A186227.P15814989772072999567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6909 terms. -/
def A186227 (n : ℕ) : ℤ :=
  (A186227.P15814989772072999567.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6909 terms. -/
def A186227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186344.P1154538610229371672

`comp[A186345(n+1)-1]+1`
-/

namespace A186344.P1154538610229371672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186345 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A186344.P1154538610229371672

noncomputable section

/-- A186344: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f and g are the pentagonal numbers and the octagonal numbers. Complement of A186345.

Offset 1, canonical program `A186344.P1154538610229371672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186344 (n : ℕ) : ℤ :=
  (A186344.P1154538610229371672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186356.P6573468704115705023

`A193832(n+2)+A183295(n+1)`
-/

namespace A186356.P6573468704115705023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (n + 2) + A183295 (n + 1)

end

end A186356.P6573468704115705023

noncomputable section

/-- A186356: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) after g(j) when f(i)=g(j), where f(i)=3i and g(j)=j(j+1)/2 (triangular number). Complement of A186357.

Offset 1, canonical program `A186356.P6573468704115705023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186356 (n : ℕ) : ℤ :=
  A186356.P6573468704115705023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187500.P11324648320385359507

`A187502(n+3)-(A187502(n)+A187501(n))`
-/

namespace A187500.P11324648320385359507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187502 (n + 3) - (A187502 n + A187501 n)

end

end A187500.P11324648320385359507

noncomputable section

/-- A187500: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-2,0,1,2}, n=3*r+p_i, and define a(-2)=0. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,2,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^2-1) with x=2*cos(Pi/9).

Offset 0, canonical program `A187500.P11324648320385359507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. -/
def A187500 (n : ℕ) : ℤ :=
  A187500.P11324648320385359507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 745 terms. -/
def A187500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187581.P17957234280026754368

`xor(1, A137709(n+1))`
-/

namespace A187581.P17957234280026754368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A137709 (n + 1))

end

end A187581.P17957234280026754368

noncomputable section

/-- A187581: Complement of A187580.

Offset 1, canonical program `A187581.P17957234280026754368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187581 (n : ℕ) : ℤ :=
  A187581.P17957234280026754368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187581.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188045.P18393744390427798970

`2*A188298(n+1)-A004526(n)`
-/

namespace A188045.P18393744390427798970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188298 (n + 1) - A004526 n

end

end A188045.P18393744390427798970

noncomputable section

/-- A188045: Positions of 0 in A188044; complement of A188046.

Offset 1, canonical program `A188045.P18393744390427798970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188045 (n : ℕ) : ℤ :=
  A188045.P18393744390427798970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188088.P12262049233856946859

`abs(3-A188074(n+1))`
-/

namespace A188088.P12262049233856946859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A188074 (n + 1)|

end

end A188088.P12262049233856946859

noncomputable section

/-- A188088: Positions of 1 in A188086; complement of A188087.

Offset 1, canonical program `A188088.P12262049233856946859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188088 (n : ℕ) : ℤ :=
  A188088.P12262049233856946859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188088.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188257.P11681210939291988659

`A188260(a(n-1)+n)` with `a(0)=0`
-/

namespace A188257.P11681210939291988659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A188260 (a (n - 1) + (n : ℤ)).toNat

end

end A188257.P11681210939291988659

noncomputable section

/-- A188257: [nr+kr]-[nr]-[kr], where r=sqrt(5), k=2, [ ]=floor.

Offset 1, canonical program `A188257.P11681210939291988659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188257 (n : ℕ) : ℤ :=
  A188257.P11681210939291988659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188395.P9222550659096500199

`A080764(n*A288997(n+1))`
-/

namespace A188395.P9222550659096500199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 ((n : ℤ) * A288997 (n + 1)).toNat

end

end A188395.P9222550659096500199

noncomputable section

/-- A188395: a(n) = [n*r +k*r]-[n*r]-[k*r], where r=1/sqrt(2), k=4, [ ]=floor.

Offset 1, canonical program `A188395.P9222550659096500199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188395 (n : ℕ) : ℤ :=
  A188395.P9222550659096500199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188395.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188472.P12778231603659369171

`A005614(n)*A188014(A019446(n+1))`
-/

namespace A188472.P12778231603659369171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n * A188014 (A019446 (n + 1)).toNat

end

end A188472.P12778231603659369171

noncomputable section

/-- A188472: a(n) = [6r]-[nr]-[6r-nr], where r=(1+sqrt(5))/2 and []=floor.

Offset 1, canonical program `A188472.P12778231603659369171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188472 (n : ℕ) : ℤ :=
  A188472.P12778231603659369171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189390.P722462694232908460

`n*2^n-A189391(n)`
-/

namespace A189390.P722462694232908460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ n : ℤ) - A189391 n

end

end A189390.P722462694232908460

noncomputable section

/-- A189390: The maximum possible value for the apex of a triangle of numbers whose base consists of a permutation of the numbers 0 to n, and each number in a higher row is the sum of the two numbers directly below it.

Offset 0, canonical program `A189390.P722462694232908460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189390 (n : ℕ) : ℤ :=
  A189390.P722462694232908460.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A189391, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A189390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189634.P909356562777891474

`A287529(n+1)+2-A287528(n+1)²`
-/

namespace A189634.P909356562777891474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287529 (n + 1) + (2 - A287528 (n + 1) ^ 2)

end

end A189634.P909356562777891474

noncomputable section

/-- A189634: Positions of 1 in A189632; complement of A189633.

Offset 1, canonical program `A189634.P909356562777891474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189634 (n : ℕ) : ℤ :=
  A189634.P909356562777891474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189665.P13427667427402099611

`A189667(A320928(n+1))+1+n`
-/

namespace A189665.P13427667427402099611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189667 (A320928 (n + 1)).toNat + 1 + (n : ℤ)

end

end A189665.P13427667427402099611

noncomputable section

/-- A189665: Positions of 0's in A189664; complement of A189666.

Offset 1, canonical program `A189665.P13427667427402099611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A189665 (n : ℕ) : ℤ :=
  A189665.P13427667427402099611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A189665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189725.P7436048816723822181

`A320928(n+1)+1`
-/

namespace A189725.P7436048816723822181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320928 (n + 1) + 1

end

end A189725.P7436048816723822181

noncomputable section

/-- A189725: Positions of 1 in A189723; complement of A189724.

Offset 1, canonical program `A189725.P7436048816723822181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189725 (n : ℕ) : ℤ :=
  A189725.P7436048816723822181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189729.P3541793079639853341

`comp[A189728(n+1)-1]+1`
-/

namespace A189729.P3541793079639853341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189728 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189729.P3541793079639853341

noncomputable section

/-- A189729: Positions of 1 in A189727; complement of A189728.

Offset 1, canonical program `A189729.P3541793079639853341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189729 (n : ℕ) : ℤ :=
  (A189729.P3541793079639853341.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189816.P3550546103248011916

`A215879(n)%2`
-/

namespace A189816.P3550546103248011916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215879 n) 2

end

end A189816.P3550546103248011916

noncomputable section

/-- A189816: a(3*k-2)=0, a(3*k-1)=1-a(k), a(3*k)=1-a(k); k>0, a(1)=0.

Offset 1, canonical program `A189816.P3550546103248011916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189816 (n : ℕ) : ℤ :=
  A189816.P3550546103248011916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189883.P14118951556328521303

`A047928(A069977(n+1)+2)`
-/

namespace A189883.P14118951556328521303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047928 (A069977 (n + 1) + 2).toNat

end

end A189883.P14118951556328521303

noncomputable section

/-- A189883: Numbers k such that the square part of k is one greater than the squarefree part of k.

Offset 1, canonical program `A189883.P14118951556328521303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189883 (n : ℕ) : ℤ :=
  A189883.P14118951556328521303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190355.P15183790579650426373

`∩[A030630(n+1)+1, A030630(n+1)-1]`
-/

namespace A190355.P15183790579650426373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190355.P15183790579650426373

noncomputable section

/-- A190355: Numbers n such that d(n-1)=d(n+1)=12 where d(k)=A000005(k) (number of divisors of k).

Offset 1, canonical program `A190355.P15183790579650426373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A190355 (n : ℕ) : ℤ :=
  (A190355.P15183790579650426373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A190355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190493.P8493265097139754522

`eq[1, A190491(n+1)]+1`
-/

namespace A190493.P8493265097139754522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190493.P8493265097139754522

noncomputable section

/-- A190493: Positions of 1 in A190491.

Offset 1, canonical program `A190493.P8493265097139754522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190493 (n : ℕ) : ℤ :=
  (A190493.P8493265097139754522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A190493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190494.P15760637447860569934

`eq[2, A190491(n+1)]+1`
-/

namespace A190494.P15760637447860569934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190494.P15760637447860569934

noncomputable section

/-- A190494: Positions of 2 in A190491.

Offset 1, canonical program `A190494.P15760637447860569934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190494 (n : ℕ) : ℤ :=
  (A190494.P15760637447860569934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A190494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190671.P5074073965687265744

`∪[A188069(n+1), A190696(n+1)]`
-/

namespace A190671.P5074073965687265744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190671.P5074073965687265744

noncomputable section

/-- A190671: Positions of 1 in A190669; complement of A190670.

Offset 1, canonical program `A190671.P5074073965687265744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190671 (n : ℕ) : ℤ :=
  (A190671.P5074073965687265744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190673.P14157910734428056466

`A003512(A190670(n+1))`
-/

namespace A190673.P14157910734428056466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (A190670 (n + 1)).toNat

end

end A190673.P14157910734428056466

noncomputable section

/-- A190673: Positions of 0 in A190672.

Offset 1, canonical program `A190673.P14157910734428056466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190673 (n : ℕ) : ℤ :=
  A190673.P14157910734428056466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190674.P7150787188508338340

`∪[A190706(n+1), A190707(n+1)]`
-/

namespace A190674.P7150787188508338340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190674.P7150787188508338340

noncomputable section

/-- A190674: Positions of 1 in A190672.

Offset 1, canonical program `A190674.P7150787188508338340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190674 (n : ℕ) : ℤ :=
  (A190674.P7150787188508338340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190675.P10535900529426331608

`∪[A188069(n+1), A190708(n+1)]`
-/

namespace A190675.P10535900529426331608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A190675.P10535900529426331608

noncomputable section

/-- A190675: Positions of 2 in A190672.

Offset 1, canonical program `A190675.P10535900529426331608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190675 (n : ℕ) : ℤ :=
  (A190675.P10535900529426331608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190698.P11569126701504910814

`A190672(2*(n+1))+A005843(val(A022847(n+1), A198081(n+1)))`
-/

namespace A190698.P11569126701504910814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (2 * (n + 1)) + A005843 (SequenceMachineLib.valuation (A022847 (n + 1)).toNat (A198081 (n + 1)).toNat)

end

end A190698.P11569126701504910814

noncomputable section

/-- A190698: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(3),4,1) and [ ]=floor.

Offset 1, canonical program `A190698.P11569126701504910814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190698 (n : ℕ) : ℤ :=
  A190698.P11569126701504910814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A190698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190714.P2012202855424019024

`eq[1, A190672(2*n+1)*A190672(n+2)]`
-/

namespace A190714.P2012202855424019024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190672 (2 * n + 1) * A190672 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190714.P2012202855424019024

noncomputable section

/-- A190714: Positions of 3 in A190710.

Offset 1, canonical program `A190714.P2012202855424019024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A190714 (n : ℕ) : ℤ :=
  (A190714.P2012202855424019024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A190714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190906.P11254801162106217556

`A048883(A332497(n)-A000035(n))`
-/

namespace A190906.P11254801162106217556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A332497 n - A000035 n).toNat

end

end A190906.P11254801162106217556

noncomputable section

/-- A190906: a(n) = gcd(n! / floor(n/2)!^2, 3^n).

Offset 0, canonical program `A190906.P11254801162106217556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A190906 (n : ℕ) : ℤ :=
  A190906.P11254801162106217556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A190906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191026.P14743048384192298842

`p?[eq[2, A035155(n+1)]+1]`
-/

namespace A191026.P14743048384192298842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035155 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191026.P14743048384192298842

noncomputable section

/-- A191026: Primes p that have Jacobi symbol (p|35) = 1.

Offset 1, canonical program `A191026.P14743048384192298842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A191026 (n : ℕ) : ℤ :=
  (A191026.P14743048384192298842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A191026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191029.P9038524740072031153

`p?[eq[2, A035151(n+1)]+1]`
-/

namespace A191029.P9038524740072031153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035151 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A191029.P9038524740072031153

noncomputable section

/-- A191029: Primes p with Jacobi symbol (p|39) = 1.

Offset 1, canonical program `A191029.P9038524740072031153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A191029 (n : ℕ) : ℤ :=
  (A191029.P9038524740072031153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. -/
def A191029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191068.P6506479572961148821

`p?[(n+1)*(1-A035155(n+1))]`
-/

namespace A191068.P6506479572961148821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A035155 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191068.P6506479572961148821

noncomputable section

/-- A191068: Primes p that have Kronecker symbol (p|35) = -1.

Offset 1, canonical program `A191068.P6506479572961148821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. -/
def A191068 (n : ℕ) : ℤ :=
  A191068.P6506479572961148821.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. -/
def A191068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191070.P10123948899731297363

`p?[(n+1)*(1-A035151(n+1))]`
-/

namespace A191070.P10123948899731297363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A035151 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A191070.P10123948899731297363

noncomputable section

/-- A191070: Primes p that have Kronecker symbol (p|39) = -1.

Offset 1, canonical program `A191070.P10123948899731297363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. -/
def A191070 (n : ℕ) : ℤ :=
  A191070.P10123948899731297363.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. -/
def A191070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191194.P9228674649673219148

`eq[char[A191202(n+1)], A010051(3*(n+1))]`
-/

namespace A191194.P9228674649673219148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191202 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A191194.P9228674649673219148

noncomputable section

/-- A191194: Positions of 0 in A191188; complement of A191202.

Offset 1, canonical program `A191194.P9228674649673219148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A191194 (n : ℕ) : ℤ :=
  (A191194.P9228674649673219148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A191194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191790.P8584163521288311520

`A086905(n)-char[2*n]`
-/

namespace A191790.P8584163521288311520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086905 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A191790.P8584163521288311520

noncomputable section

/-- A191790: Number of base pyramids in all length n left factors of Dyck paths.

Offset 0, canonical program `A191790.P8584163521288311520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A191790 (n : ℕ) : ℤ :=
  A191790.P8584163521288311520.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A191790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192450.P13811939200402364126

`∪[A059267(n+1), A187811(n+1)]`
-/

namespace A192450.P13811939200402364126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192450.P13811939200402364126

noncomputable section

/-- A192450: Numbers k such that -1 is not a square mod k.

Offset 1, canonical program `A192450.P13811939200402364126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192450 (n : ℕ) : ℤ :=
  (A192450.P13811939200402364126.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193350.P7605107557020847514

`A062069(n+1)-A193349(n+1)`
-/

namespace A193350.P7605107557020847514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (n + 1) - A193349 (n + 1)

end

end A193350.P7605107557020847514

noncomputable section

/-- A193350: Sum of even divisors of tau(n).

Offset 1, canonical program `A193350.P7605107557020847514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062069, A193349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193350 (n : ℕ) : ℤ :=
  A193350.P7605107557020847514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062069, A193349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193350.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A193383.P14072576358167787959

`∑[-A193382(n+1)]`
-/

namespace A193383.P14072576358167787959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A193382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193383.P14072576358167787959

noncomputable section

/-- A193383: G.f. is the imaginary part of the function C(x) that satisfies: C(x) = 1 + x/C(I*x).

Offset 2, canonical program `A193383.P14072576358167787959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A193383 (n : ℕ) : ℤ :=
  A193383.P14072576358167787959.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 672 terms. -/
def A193383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193426.P7960739282691465682

`A131719(2*n)*A261884(2*(n+1))`
-/

namespace A193426.P7960739282691465682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131719 (2 * n) * A261884 (2 * (n + 1))

end

end A193426.P7960739282691465682

noncomputable section

/-- A193426: Expansion of (a(q^2) + a(q^3) - 2*a(q^6)) / 6 in powers of q where a() is a cubic AGM function.

Offset 1, canonical program `A193426.P7960739282691465682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A193426 (n : ℕ) : ℤ :=
  A193426.P7960739282691465682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A193426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193511.P8678682823205615366

`A146076(A252736(n+1)+1)`
-/

namespace A193511.P8678682823205615366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A252736 (n + 1) + 1).toNat

end

end A193511.P8678682823205615366

noncomputable section

/-- A193511: a(n) = Sum of even divisors of Omega(n), a(1) = 0.

Offset 1, canonical program `A193511.P8678682823205615366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193511 (n : ℕ) : ℤ :=
  A193511.P8678682823205615366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193633.P1618108498816010154

`A086645(A292564(n))`
-/

namespace A193633.P1618108498816010154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 (A292564 n).toNat

end

end A193633.P1618108498816010154

noncomputable section

/-- A193633: Triangle: T(n,k)=C(4n,2k), 0<=k<=n.

Offset 0, canonical program `A193633.P1618108498816010154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A193633 (n : ℕ) : ℤ :=
  A193633.P1618108498816010154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A193633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123980.P14118247629457079037

`∩[A139405(n+1), A139406(n+1)]`
-/

namespace A123980.P14118247629457079037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123980.P14118247629457079037

noncomputable section

/-- A123980: Numbers k for which 8*k+1, 8*k+5 and 8*k+7 are primes.

Offset 1, canonical program `A123980.P14118247629457079037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A123980 (n : ℕ) : ℤ :=
  (A123980.P14118247629457079037.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A123980.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127795.P18243367526818959236

`A013597(3*n)`
-/

namespace A127795.P18243367526818959236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (3 * n)

end

end A127795.P18243367526818959236

noncomputable section

/-- A127795: Nextprime(8^n)-8^n.

Offset 0, canonical program `A127795.P18243367526818959236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A127795 (n : ℕ) : ℤ :=
  A127795.P18243367526818959236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A127795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128053.P4874709391304098829

`A128056(n)/A128055(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128053.P4874709391304098829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128056 n : ℚ) / (A128055 n : ℚ)

end

end A128053.P4874709391304098829

noncomputable section

/-- A128053: a(n)=A128056(n)/A128055(n).

Offset 0, canonical program `A128053.P4874709391304098829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128053 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128053.P4874709391304098829.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129722.P13881993047894024016

`A134512(n)-∑[A212804(n)]`
-/

namespace A129722.P13881993047894024016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129722.P13881993047894024016

noncomputable section

/-- A129722: Number of 0's in even position in all Fibonacci binary words of length n. A Fibonacci binary word is a binary word having no 00 subword.

Offset 0, canonical program `A129722.P13881993047894024016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A129722 (n : ℕ) : ℤ :=
  A129722.P13881993047894024016.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. -/
def A129722.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134452.P3090733538934837598

`A257170(A229115(n+1)-A065363(n))`
-/

namespace A134452.P3090733538934837598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257170 (A229115 (n + 1) - A065363 n).toNat

end

end A134452.P3090733538934837598

noncomputable section

/-- A134452: Balanced ternary digital root of n.

Offset 0, canonical program `A134452.P3090733538934837598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A134452 (n : ℕ) : ℤ :=
  A134452.P3090733538934837598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A134452.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139506.P10279142655047582873

`∩[A033199(n+1), A139645(n+1)]`
-/

namespace A139506.P10279142655047582873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139506.P10279142655047582873

noncomputable section

/-- A139506: Primes of the form x^2 + 26x*y + y^2 for x and y nonnegative.

Offset 1, canonical program `A139506.P10279142655047582873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A139506 (n : ℕ) : ℤ :=
  (A139506.P10279142655047582873.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A139506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139838.P3434102411428568911

`∩[A007521(n+1), A141777(n+1)]`
-/

namespace A139838.P3434102411428568911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P3434102411428568911

noncomputable section

/-- A139838: Primes of the form 8x^2+8xy+13y^2.

Offset 1, canonical program `A139838.P3434102411428568911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5012 terms. -/
def A139838 (n : ℕ) : ℤ :=
  (A139838.P3434102411428568911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5012 terms. -/
def A139838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139928.P7798437498282057437

`∩[A106859(n+1), A141777(n+1)]`
-/

namespace A139928.P7798437498282057437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139928.P7798437498282057437

noncomputable section

/-- A139928: Primes of the form 2x^2+165y^2.

Offset 1, canonical program `A139928.P7798437498282057437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A139928 (n : ℕ) : ℤ :=
  (A139928.P7798437498282057437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. -/
def A139928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140037.P5522360126373441203

`∩[A139827(n+1), A140616(n+1)]`
-/

namespace A140037.P5522360126373441203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140037.P5522360126373441203

noncomputable section

/-- A140037: Primes of the form 24x^2+77y^2.

Offset 1, canonical program `A140037.P5522360126373441203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A140037 (n : ℕ) : ℤ :=
  (A140037.P5522360126373441203.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A140037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142082.P11234807902744466555

`A030433(eq[2, A030433(n+1)%7]+1)`
-/

namespace A142082.P11234807902744466555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030433 (n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142082.P11234807902744466555

noncomputable section

/-- A142082: Primes congruent to 9 mod 35.

Offset 1, canonical program `A142082.P11234807902744466555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8339 terms. -/
def A142082 (n : ℕ) : ℤ :=
  A142082.P11234807902744466555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8339 terms. -/
def A142082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142095.P14741884496573611207

`A030433(eq[1, A030433(n+1)%7]+1)`
-/

namespace A142095.P14741884496573611207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030433 (n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A142095.P14741884496573611207

noncomputable section

/-- A142095: Primes congruent to 29 mod 35.

Offset 1, canonical program `A142095.P14741884496573611207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8316 terms. -/
def A142095 (n : ℕ) : ℤ :=
  A142095.P14741884496573611207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8316 terms. -/
def A142095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142399.P8157399368544041410

`∩[A107003(n+1), A127589(n+1)]`
-/

namespace A142399.P8157399368544041410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142399.P8157399368544041410

noncomputable section

/-- A142399: Primes congruent to 5 mod 48.

Offset 1, canonical program `A142399.P8157399368544041410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A142399 (n : ℕ) : ℤ :=
  (A142399.P8157399368544041410.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A142399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142406.P5142854088370419497

`∩[A105126(n+1), A107008(n+1)]`
-/

namespace A142406.P5142854088370419497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142406.P5142854088370419497

noncomputable section

/-- A142406: Primes congruent to 25 mod 48.

Offset 1, canonical program `A142406.P5142854088370419497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A142406 (n : ℕ) : ℤ :=
  (A142406.P5142854088370419497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A142406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152769.P11940454190034013172

`eq[A000007(n), A055671(A230980(n))]`
-/

namespace A152769.P11940454190034013172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152769.P11940454190034013172

noncomputable section

/-- A152769: Numbers n such that pi(n) is nonprime.

Offset 1, canonical program `A152769.P11940454190034013172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8286 terms. -/
def A152769 (n : ℕ) : ℤ :=
  (A152769.P11940454190034013172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8286 terms. -/
def A152769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153477.P5045853048162138776

`floor(p?[2*A164042(n+1)+1]/2)`
-/

namespace A153477.P5045853048162138776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164042 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A153477.P5045853048162138776

noncomputable section

/-- A153477: Primes p such that 2p+1 and 2p^2+4p+1 are also prime.

Offset 1, canonical program `A153477.P5045853048162138776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A153477 (n : ℕ) : ℤ :=
  A153477.P5045853048162138776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A153477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154607.P7973489224117933479

`A108232(n+1)-1`
-/

namespace A154607.P7973489224117933479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108232 (n + 1) - 1

end

end A154607.P7973489224117933479

noncomputable section

/-- A154607: Numbers n such that 11*n + 4 is prime.

Offset 1, canonical program `A154607.P7973489224117933479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154607 (n : ℕ) : ℤ :=
  A154607.P7973489224117933479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154608.P12856438361669168051

`p?[A108232(n+1)-1]`
-/

namespace A154608.P12856438361669168051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108232 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154608.P12856438361669168051

noncomputable section

/-- A154608: Primes p such that 11*p + 4 is also prime.

Offset 1, canonical program `A154608.P12856438361669168051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A154608 (n : ℕ) : ℤ :=
  A154608.P12856438361669168051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. -/
def A154608.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A154765.P4283391011367662765

`p?[eq[A196564(n), A276729(n)]]`
-/

namespace A154765.P4283391011367662765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154765.P4283391011367662765

noncomputable section

/-- A154765: Primes with the same number of even decimal digits and prime digits.

Offset 1, canonical program `A154765.P4283391011367662765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A154765 (n : ℕ) : ℤ :=
  (A154765.P4283391011367662765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A154765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154893.P9812701386378152860

`record[n+1-A055671(A000005(n+1)-1)]`
-/

namespace A154893.P9812701386378152860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A055671 (A000005 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154893.P9812701386378152860

noncomputable section

/-- A154893: Numbers whose number of proper divisors is not a prime number.

Offset 1, canonical program `A154893.P9812701386378152860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154893 (n : ℕ) : ℤ :=
  A154893.P9812701386378152860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155990.P205879086183689194

`A000040(eq[0, A276729(n)])`
-/

namespace A155990.P205879086183689194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A155990.P205879086183689194

noncomputable section

/-- A155990: Numbers prime(k) as k runs through the numbers whose digits are all prime.

Offset 1, canonical program `A155990.P205879086183689194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A155990 (n : ℕ) : ℤ :=
  A155990.P205879086183689194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A155990.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A160051.P932503710892421624

`a(n-A171899(n+1))+2` with `a(0)=1, a(1)=0`
-/

namespace A160051.P932503710892421624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a ((n : ℤ) - A171899 (n + 1)).toNat + 2

end

end A160051.P932503710892421624

noncomputable section

/-- A160051: Lodumo_2 of Kolakoski sequence (A000002).

Offset 0, canonical program `A160051.P932503710892421624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A160051 (n : ℕ) : ℤ :=
  (A160051.P932503710892421624.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A160051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160785.P2444679081168475481

`A039956(n+1)+1`
-/

namespace A160785.P2444679081168475481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) + 1

end

end A160785.P2444679081168475481

noncomputable section

/-- A160785: Even squarefree numbers plus 1.

Offset 1, canonical program `A160785.P2444679081168475481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160785 (n : ℕ) : ℤ :=
  A160785.P2444679081168475481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160785.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161655.P10866109253187541948

`Δ[A006218(n)]*A334762(n+1)`
-/

namespace A161655.P10866109253187541948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A334762 (n + 1)

end

end A161655.P10866109253187541948

noncomputable section

/-- A161655: a(n) = the smallest multiple of {the number of divisors of n} that is >= n.

Offset 1, canonical program `A161655.P10866109253187541948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161655 (n : ℕ) : ℤ :=
  A161655.P10866109253187541948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162410.P3316117402567756503

`floor(A289413(n+1)/10)`
-/

namespace A162410.P3316117402567756503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A289413 (n + 1) : ℚ) / 10⌋

end

end A162410.P3316117402567756503

noncomputable section

/-- A162410: Numbers n such that 10*n + 3 and 10*n + 7 are prime.

Offset 1, canonical program `A162410.P3316117402567756503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162410 (n : ℕ) : ℤ :=
  A162410.P3316117402567756503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163095.P4667298633254708483

`A000788(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163095.P4667298633254708483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n ^ 2

end

end A163095.P4667298633254708483

noncomputable section

/-- A163095: a(n) = A000788(n)^2.

Offset 0, canonical program `A163095.P4667298633254708483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163095 (n : ℕ) : ℤ :=
  A163095.P4667298633254708483.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164041.P12661298805710206916

`2*A164042(n+1)²+4*A164042(n+1)+1`
-/

namespace A164041.P12661298805710206916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164042 (n + 1) ^ 2 + 4 * A164042 (n + 1) + 1

end

end A164041.P12661298805710206916

noncomputable section

/-- A164041: Primes of the form 2*p^2 + 4*p + 1, where p is also prime.

Offset 1, canonical program `A164041.P12661298805710206916`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164041 (n : ℕ) : ℤ :=
  A164041.P12661298805710206916.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166566.P16003818886933794123

`p?[A244607(n+1)]`
-/

namespace A166566.P16003818886933794123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166566.P16003818886933794123

noncomputable section

/-- A166566: Primes p such that product of digits - 1 is prime.

Offset 1, canonical program `A166566.P16003818886933794123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. -/
def A166566 (n : ℕ) : ℤ :=
  A166566.P16003818886933794123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1225 terms. -/
def A166566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167692.P14273374061267607574

`filter[2*n, A292438(#)]`
-/

namespace A167692.P14273374061267607574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j) = 1) n)

end

end A167692.P14273374061267607574

noncomputable section

/-- A167692: The even nonisolated nonprimes.

Offset 1, canonical program `A167692.P14273374061267607574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167692 (n : ℕ) : ℤ :=
  (A167692.P14273374061267607574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168160.P1475307849848817311

`A380230(n+1)-A000788(n+1)`
-/

namespace A168160.P1475307849848817311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380230 (n + 1) - A000788 (n + 1)

end

end A168160.P1475307849848817311

noncomputable section

/-- A168160: Number of 0's in the matrix whose lines are the binary expansion of the numbers 1,...,n.

Offset 1, canonical program `A168160.P1475307849848817311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168160 (n : ℕ) : ℤ :=
  A168160.P1475307849848817311.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168160.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174344.P13859978048200465052

`(A329116(n)+A180714(n))/2`
-/

namespace A174344.P13859978048200465052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329116 n + A180714 n : ℚ) / 2

end

end A174344.P13859978048200465052

noncomputable section

/-- A174344: List of x-coordinates of point moving in clockwise square spiral.

Offset 1, canonical program `A174344.P13859978048200465052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174344 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174344.P13859978048200465052.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174605.P9326770694766371800

`n*(n+1)/2-A000788(n)`
-/

namespace A174605.P9326770694766371800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) / 2) - (A000788 n : ℚ)

end

end A174605.P9326770694766371800

noncomputable section

/-- A174605: Partial sums of A011371.

Offset 0, canonical program `A174605.P9326770694766371800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174605 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174605.P9326770694766371800.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174605.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175496.P16856827143371470346

`filter[A336593(n+1), A359473(#)]`
-/

namespace A175496.P16856827143371470346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P16856827143371470346

noncomputable section

/-- A175496: Positive integers k where k is not squarefree but the number of divisors of k is a power of 2.

Offset 1, canonical program `A175496.P16856827143371470346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7997 terms. -/
def A175496 (n : ℕ) : ℤ :=
  A175496.P16856827143371470346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7997 terms. -/
def A175496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175625.P17769439164711257360

`p?[A192109(n+3)+1]`
-/

namespace A175625.P17769439164711257360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192109 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175625.P17769439164711257360

noncomputable section

/-- A175625: Numbers k such that gcd(k, 6) = 1, 2^(k-1) == 1 (mod k), and 2^(k-3) == 1 (mod (k-1)/2).

Offset 1, canonical program `A175625.P17769439164711257360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1221 terms. -/
def A175625 (n : ℕ) : ℤ :=
  A175625.P17769439164711257360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1221 terms. -/
def A175625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178787.P4102547761582682700

`∑[A178788(n)]`
-/

namespace A178787.P4102547761582682700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178787.P4102547761582682700

noncomputable section

/-- A178787: Number of numbers <= n having distinct digits in their decimal representation, cf. A010784.

Offset 0, canonical program `A178787.P4102547761582682700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178787 (n : ℕ) : ℤ :=
  A178787.P4102547761582682700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179336.P4367121721092430186

`A000040(eq[1, gcd(19, A109066(n+1))]+1)`
-/

namespace A179336.P4367121721092430186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 19 (A109066 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A179336.P4367121721092430186

noncomputable section

/-- A179336: Primes containing at least one prime digit in base 10.

Offset 1, canonical program `A179336.P4367121721092430186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9309 terms. -/
def A179336 (n : ℕ) : ℤ :=
  A179336.P4367121721092430186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9309 terms. -/
def A179336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181290.P6424768068439069294

`A181300(n)+A181296(n)`
-/

namespace A181290.P6424768068439069294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n + A181296 n

end

end A181290.P6424768068439069294

noncomputable section

/-- A181290: The sum of the lengths of the 2-compositions of n. A 2-composition of n is a nonnegative matrix with two rows, such that each column has at least one nonzero entry and whose entries sum up to n. The length of the 2-composition is the number of columns.

Offset 0, canonical program `A181290.P6424768068439069294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181290 (n : ℕ) : ℤ :=
  A181290.P6424768068439069294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A181290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181780.P1093225155761129335

`∩[A002808(n+1), A280199(n+1)]`
-/

namespace A181780.P1093225155761129335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181780.P1093225155761129335

noncomputable section

/-- A181780: Numbers n which are Fermat pseudoprimes to some base b, 2 <= b <= n-2.

Offset 1, canonical program `A181780.P1093225155761129335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181780 (n : ℕ) : ℤ :=
  (A181780.P1093225155761129335.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182859.P12166969725301177304

`lt[A262684(n+1), 1]+1`
-/

namespace A182859.P12166969725301177304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262684 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A182859.P12166969725301177304

noncomputable section

/-- A182859: Numbers n such that A036459(n) is even.

Offset 1, canonical program `A182859.P12166969725301177304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182859 (n : ℕ) : ℤ :=
  (A182859.P12166969725301177304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184007.P6942563530479342197

`floor(A184655(2*(n+1))/2)`
-/

namespace A184007.P6942563530479342197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184655 (2 * (n + 1)) : ℚ) / 2⌋

end

end A184007.P6942563530479342197

noncomputable section

/-- A184007: floor(n*s+h-h*s), where s=(3+sqrt(3))/2, h=-1/3. Complement of A184006.

Offset 1, canonical program `A184007.P6942563530479342197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184007 (n : ℕ) : ℤ :=
  A184007.P6942563530479342197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A184007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185013.P16152479727158586121

`A179184(n)-A185114(n)`
-/

namespace A185013.P16152479727158586121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 n - A185114 n

end

end A185013.P16152479727158586121

noncomputable section

/-- A185013: Characteristic function of {3}.

Offset 0, canonical program `A185013.P16152479727158586121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179184, A185114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185013 (n : ℕ) : ℤ :=
  A185013.P16152479727158586121.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179184, A185114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A185014.P14310411706898602348

`A185114(n)-A185115(n)`
-/

namespace A185014.P14310411706898602348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 n - A185115 n

end

end A185014.P14310411706898602348

noncomputable section

/-- A185014: Characteristic function of four.

Offset 0, canonical program `A185014.P14310411706898602348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185114, A185115, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185014 (n : ℕ) : ℤ :=
  A185014.P14310411706898602348.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185114, A185115, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A185014.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A187059.P4673971385048971106

`2*A000788(n)-A249154(n)`
-/

namespace A187059.P4673971385048971106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000788 n - A249154 n

end

end A187059.P4673971385048971106

noncomputable section

/-- A187059: The exponent of highest power of 2 dividing the product of the elements of the n-th row of Pascal's triangle (A001142).

Offset 0, canonical program `A187059.P4673971385048971106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187059 (n : ℕ) : ℤ :=
  A187059.P4673971385048971106.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A187059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A188011.P12941502559468805709

`A188014(A014675(n)+n)`
-/

namespace A188011.P12941502559468805709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A014675 n + (n : ℤ)).toNat

end

end A188011.P12941502559468805709

noncomputable section

/-- A188011: a(n) = floor(n*r) - floor(n*r-k*r) - floor(k*r), where r=(1+sqrt(5))/2, k=3.

Offset 1, canonical program `A188011.P12941502559468805709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188011 (n : ℕ) : ℤ :=
  A188011.P12941502559468805709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188016.P8834039496715161497

`2*A188435(n+1)-A110654(n)`
-/

namespace A188016.P8834039496715161497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188435 (n + 1) - A110654 n

end

end A188016.P8834039496715161497

noncomputable section

/-- A188016: Positions of 1 in A188014; complement of A188015.

Offset 1, canonical program `A188016.P8834039496715161497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188016 (n : ℕ) : ℤ :=
  A188016.P8834039496715161497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188016.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189707.P8858125208000123597

`comp[A189708(n+1)-1]+1`
-/

namespace A189707.P8858125208000123597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189708 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189707.P8858125208000123597

noncomputable section

/-- A189707: Positions of 0 in A189706; complement of A189708.

Offset 1, canonical program `A189707.P8858125208000123597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189707 (n : ℕ) : ℤ :=
  (A189707.P8858125208000123597.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193347.P15363500856293231746

`A010553(n+1)-A193348(n+1)`
-/

namespace A193347.P15363500856293231746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (n + 1) - A193348 (n + 1)

end

end A193347.P15363500856293231746

noncomputable section

/-- A193347: Number of even divisors of tau(n).

Offset 1, canonical program `A193347.P15363500856293231746`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010553, A193348, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193347 (n : ℕ) : ℤ :=
  A193347.P15363500856293231746.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010553, A193348, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A193347.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A122209.P962173722163386459

`A024450((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122209.P962173722163386459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 ((n + 1) ^ 2)

end

end A122209.P962173722163386459

noncomputable section

/-- A122209: Sum of squares of the first n^2 primes = A024450[n^2].

Offset 1, canonical program `A122209.P962173722163386459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122209 (n : ℕ) : ℤ :=
  A122209.P962173722163386459.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122209.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123884.P10243261106257034172

`A093829(12*n+1)`
-/

namespace A123884.P10243261106257034172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (12 * n + 1)

end

end A123884.P10243261106257034172

noncomputable section

/-- A123884: Expansion of phi(x) * phi(-x^6) / chi(-x^2) in powers of x where phi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A123884.P10243261106257034172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123884 (n : ℕ) : ℤ :=
  A123884.P10243261106257034172.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123884.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127719.P13941545238741058609

`A000196(A024450(n+1))`
-/

namespace A127719.P13941545238741058609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A024450 (n + 1)).toNat

end

end A127719.P13941545238741058609

noncomputable section

/-- A127719: Floor of square root of sum of squares of n consecutive primes.

Offset 1, canonical program `A127719.P13941545238741058609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127719 (n : ℕ) : ℤ :=
  A127719.P13941545238741058609.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127720.P7407208501453972689

`A000196(A024450(n+2)-4)`
-/

namespace A127720.P7407208501453972689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A024450 (n + 2) - 4).toNat

end

end A127720.P7407208501453972689

noncomputable section

/-- A127720: Floor of square root of sum of squares of n odd consecutive primes.

Offset 1, canonical program `A127720.P7407208501453972689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127720 (n : ℕ) : ℤ :=
  A127720.P7407208501453972689.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129309.P14897869849901808427

`A048865(A002808(n+1))`
-/

namespace A129309.P14897869849901808427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A002808 (n + 1)).toNat

end

end A129309.P14897869849901808427

noncomputable section

/-- A129309: a(n) = number of primes which are < c(n) and are coprime to c(n), where c(n) is the n-th composite.

Offset 1, canonical program `A129309.P14897869849901808427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A048865, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129309 (n : ℕ) : ℤ :=
  A129309.P14897869849901808427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A048865, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A129309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129576.P4189880678848016889

`A096936(3*n+1)`
-/

namespace A129576.P4189880678848016889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (3 * n + 1)

end

end A129576.P4189880678848016889

noncomputable section

/-- A129576: Expansion of phi(x) * chi(x) * psi(-x^3) in powers of x where phi(), chi(), psi() are Ramanujan theta functions.

Offset 0, canonical program `A129576.P4189880678848016889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129576 (n : ℕ) : ℤ :=
  A129576.P4189880678848016889.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129576.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A131590.P3790434165472296789

`A024450(2^n)`
-/

namespace A131590.P3790434165472296789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (2 ^ n)

end

end A131590.P3790434165472296789

noncomputable section

/-- A131590: Sum of the squares of the first 2^n primes.

Offset 0, canonical program `A131590.P3790434165472296789`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131590 (n : ℕ) : ℤ :=
  A131590.P3790434165472296789.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131591.P7378338396436422358

`A024450(3^n)`
-/

namespace A131591.P7378338396436422358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (3 ^ n)

end

end A131591.P7378338396436422358

noncomputable section

/-- A131591: Sum of the squares of the first 3^n primes.

Offset 0, canonical program `A131591.P7378338396436422358`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131591 (n : ℕ) : ℤ :=
  A131591.P7378338396436422358.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131592.P8863503537066484247

`A024450(A000312(n))`
-/

namespace A131592.P8863503537066484247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A000312 n).toNat

end

end A131592.P8863503537066484247

noncomputable section

/-- A131592: Sum of the squares of the first n^n primes.

Offset 0, canonical program `A131592.P8863503537066484247`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131592 (n : ℕ) : ℤ :=
  A131592.P8863503537066484247.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131592.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A133547.P11212506623590984264

`A024450(n+2)-4`
-/

namespace A133547.P11212506623590984264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (n + 2) - 4

end

end A133547.P11212506623590984264

noncomputable section

/-- A133547: a(n) = sum of squares of first n odd primes.

Offset 1, canonical program `A133547.P11212506623590984264`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133547 (n : ℕ) : ℤ :=
  A133547.P11212506623590984264.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133547.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135291.P15334371247132927282

`A000005(A049614(n))`
-/

namespace A135291.P15334371247132927282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049614 n).toNat

end

end A135291.P15334371247132927282

noncomputable section

/-- A135291: Product of the nonzero exponents in the prime factorization of n!.

Offset 0, canonical program `A135291.P15334371247132927282`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A049614, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135291 (n : ℕ) : ℤ :=
  A135291.P15334371247132927282.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A049614, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A135291.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A138929.P2871587686834618281

`2*A000961(n+1)`
-/

namespace A138929.P2871587686834618281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000961 (n + 1)

end

end A138929.P2871587686834618281

noncomputable section

/-- A138929: Twice the prime powers A000961.

Offset 1, canonical program `A138929.P2871587686834618281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138929 (n : ℕ) : ℤ :=
  A138929.P2871587686834618281.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138929.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143434.P6883462976824196880

`(-1)^n*A143433(n)`
-/

namespace A143434.P6883462976824196880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A143433 n

end

end A143434.P6883462976824196880

noncomputable section

/-- A143434: Expansion of f(x, -x^3) in powers of x where f(,) is Ramanujan's two-variable theta function.

Offset 0, canonical program `A143434.P6883462976824196880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143433, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143434 (n : ℕ) : ℤ :=
  A143434.P6883462976824196880.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143433, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A143537.P315766728573760673

`A000720(A002024(n+1))-A230980(A002262(n))`
-/

namespace A143537.P315766728573760673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002024 (n + 1)).toNat - A230980 (A002262 n).toNat

end

end A143537.P315766728573760673

noncomputable section

/-- A143537: Triangle read by rows: T(n,k) = number of primes in the interval [k..n], n >= 1, 1 <= k <= n.

Offset 1, canonical program `A143537.P315766728573760673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143537 (n : ℕ) : ℤ :=
  A143537.P315766728573760673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145199.P16128091297052967479

`A049092(n+1)-1`
-/

namespace A145199.P16128091297052967479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1) - 1

end

end A145199.P16128091297052967479

noncomputable section

/-- A145199: Nonsquarefree numbers k such that k+1 is prime.

Offset 1, canonical program `A145199.P16128091297052967479`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145199 (n : ℕ) : ℤ :=
  A145199.P16128091297052967479.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049092, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145199.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A153043.P5345895486069451585

`eq[0, A101264(n)]+2`
-/

namespace A153043.P5345895486069451585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A153043.P5345895486069451585

noncomputable section

/-- A153043: Numbers n > 1 such that 2*n-3 is not a prime.

Offset 1, canonical program `A153043.P5345895486069451585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153043 (n : ℕ) : ℤ :=
  (A153043.P5345895486069451585.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153052.P215135875194931627

`eq[0, A101264(n+2)]`
-/

namespace A153052.P215135875194931627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153052.P215135875194931627

noncomputable section

/-- A153052: Numbers m such that 2*m + 5 is not a prime.

Offset 1, canonical program `A153052.P215135875194931627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153052 (n : ℕ) : ℤ :=
  (A153052.P215135875194931627.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156242.P3233582996753599041

`A054353(2*(n+1))`
-/

namespace A156242.P3233582996753599041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (2 * (n + 1))

end

end A156242.P3233582996753599041

noncomputable section

/-- A156242: Bisection of A054353.

Offset 1, canonical program `A156242.P3233582996753599041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156242 (n : ℕ) : ℤ :=
  A156242.P3233582996753599041.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156243.P395087012412145335

`A054353(2*n+1)`
-/

namespace A156243.P395087012412145335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (2 * n + 1)

end

end A156243.P395087012412145335

noncomputable section

/-- A156243: Bisection of A054353.

Offset 1, canonical program `A156243.P395087012412145335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156243 (n : ℕ) : ℤ :=
  A156243.P395087012412145335.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156243.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156250.P8857404366207384535

`A054353(n+1)-n`
-/

namespace A156250.P8857404366207384535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - (n : ℤ)

end

end A156250.P8857404366207384535

noncomputable section

/-- A156250: Least k such that A078649(k) >= A054353(n).

Offset 1, canonical program `A156250.P8857404366207384535`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156250 (n : ℕ) : ℤ :=
  A156250.P8857404366207384535.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156250.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156541.P16873240760664581881

`eq[1, ∏{p}[n+1, A101264(#)]]+1`
-/

namespace A156541.P16873240760664581881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A101264 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A156541.P16873240760664581881

noncomputable section

/-- A156541: Multiplicative closure of Sophie Germain primes (A005384).

Offset 1, canonical program `A156541.P16873240760664581881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A156541 (n : ℕ) : ℤ :=
  (A156541.P16873240760664581881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A156541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156542.P6738080021665822657

`∑{p}[n+1, A101264(#)]`
-/

namespace A156542.P6738080021665822657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A101264 p

end

end A156542.P6738080021665822657

noncomputable section

/-- A156542: Number of distinct Sophie Germain prime factors of n.

Offset 1, canonical program `A156542.P6738080021665822657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156542 (n : ℕ) : ℤ :=
  A156542.P6738080021665822657.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156660.P13297999666719804209

`and(A101264(n), A105700(n))`
-/

namespace A156660.P13297999666719804209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101264 n) (A105700 n)

end

end A156660.P13297999666719804209

noncomputable section

/-- A156660: Characteristic function of Sophie Germain primes.

Offset 0, canonical program `A156660.P13297999666719804209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156660 (n : ℕ) : ℤ :=
  A156660.P13297999666719804209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156707.P12869968177507882288

`n-xor(n, A101264(n+1))`
-/

namespace A156707.P12869968177507882288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (A101264 (n + 1))

end

end A156707.P12869968177507882288

noncomputable section

/-- A156707: For all numbers k(n) congruent to +1 or -1 (mod 4) starting with k(n) = {3,5,7,9,11,...}, a(k(n)) is the congruence (mod 4) if k(n) is prime and 0 if k(n) is composite.

Offset 1, canonical program `A156707.P12869968177507882288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156707 (n : ℕ) : ℤ :=
  A156707.P12869968177507882288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157492.P2918812419229499210

`∑[A024450(n+1)]`
-/

namespace A157492.P2918812419229499210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P2918812419229499210

noncomputable section

/-- A157492: Apply partial sum operator twice to sequence of squares of the first n primes.

Offset 1, canonical program `A157492.P2918812419229499210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157492 (n : ℕ) : ℤ :=
  A157492.P2918812419229499210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166574.P5760661758022436118

`p?[A013635(n+3)]`
-/

namespace A166574.P5760661758022436118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166574.P5760661758022436118

noncomputable section

/-- A166574: If p, q are successive primes, and there is a number k with p < k <= q such that r = p+k is a prime, then r is in the sequence.

Offset 1, canonical program `A166574.P5760661758022436118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166574 (n : ℕ) : ℤ :=
  A166574.P5760661758022436118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167020.P3168307801406057643

`A101264(3*n+2)`
-/

namespace A167020.P3168307801406057643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (3 * n + 2)

end

end A167020.P3168307801406057643

noncomputable section

/-- A167020: a(n) = 1 iff 6n-1 is prime.

Offset 1, canonical program `A167020.P3168307801406057643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167020 (n : ℕ) : ℤ :=
  A167020.P3168307801406057643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167180.P16080205514212626559

`A000720(n+1)+A014689(n+1)`
-/

namespace A167180.P16080205514212626559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A014689 (n + 1)

end

end A167180.P16080205514212626559

noncomputable section

/-- A167180: a(n) = pi(n) plus the number of nonprimes less than prime(n).

Offset 1, canonical program `A167180.P16080205514212626559`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A014689, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167180 (n : ℕ) : ℤ :=
  A167180.P16080205514212626559.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A014689, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174047.P2449345490950928052

`record[(n+1)*xor(A101264(n+1), A101264(n))]`
-/

namespace A174047.P2449345490950928052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.xor (A101264 (n + 1)) (A101264 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174047.P2449345490950928052

noncomputable section

/-- A174047: Numbers k such that exactly one of 2*k-1 and 2*k+1 is prime.

Offset 1, canonical program `A174047.P2449345490950928052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174047 (n : ℕ) : ℤ :=
  A174047.P2449345490950928052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174223.P16110964862743191397

`A034961(A000720(2*n+1)+1)+2*n+1`
-/

namespace A174223.P16110964862743191397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (A000720 (2 * n + 1) + 1).toNat + (2 * n + 1 : ℤ)

end

end A174223.P16110964862743191397

noncomputable section

/-- A174223: Add to 2n+1 the next three primes > 2n+1.

Offset 0, canonical program `A174223.P16110964862743191397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174223 (n : ℕ) : ℤ :=
  A174223.P16110964862743191397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175256.P189772592712157047

`sqrt(A175255(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175256.P189772592712157047
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A175255 (n + 1) : ℝ)

end

end A175256.P189772592712157047

noncomputable section

/-- A175256: a(n) = sqrt(A175255(n)).

Offset 1, canonical program `A175256.P189772592712157047`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175256 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A175256.P189772592712157047.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175256.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A179180.P10718591488616343433

`∑[A143299(n+1)-1]`
-/

namespace A179180.P10718591488616343433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179180.P10718591488616343433

noncomputable section

/-- A179180: Partial sums of A007895.

Offset 0, canonical program `A179180.P10718591488616343433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179180 (n : ℕ) : ℤ :=
  A179180.P10718591488616343433.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179245.P18371884009470140886

`eq[6, A143299(n+1)]`
-/

namespace A179245.P18371884009470140886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179245.P18371884009470140886

noncomputable section

/-- A179245: Numbers that have 5 terms in their Zeckendorf representation.

Offset 1, canonical program `A179245.P18371884009470140886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A179245 (n : ℕ) : ℤ :=
  (A179245.P18371884009470140886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3003 terms. -/
def A179245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179899.P8119244184585946797

`3*eq[0, A101264(n)]`
-/

namespace A179899.P8119244184585946797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179899.P8119244184585946797

noncomputable section

/-- A179899: Integers of the form A179896(n)/A141468(n+1).

Offset 1, canonical program `A179899.P8119244184585946797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179899 (n : ℕ) : ℤ :=
  (A179899.P8119244184585946797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180724.P9375854494318249923

`(n+2)²+A053001(n+2)`
-/

namespace A180724.P9375854494318249923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) + A053001 (n + 2)

end

end A180724.P9375854494318249923

noncomputable section

/-- A180724: a(n) = n^2 + largest prime < n^2.

Offset 2, canonical program `A180724.P9375854494318249923`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180724 (n : ℕ) : ℤ :=
  A180724.P9375854494318249923.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A180724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181062.P6529548857799504333

`A000961(n+1)-1`
-/

namespace A181062.P6529548857799504333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 1

end

end A181062.P6529548857799504333

noncomputable section

/-- A181062: Prime powers minus 1.

Offset 1, canonical program `A181062.P6529548857799504333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181062 (n : ℕ) : ℤ :=
  A181062.P6529548857799504333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181062.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181962.P15147201020200271264

`A000879(n+1)+n+1`
-/

namespace A181962.P15147201020200271264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) + (n + 1 : ℤ)

end

end A181962.P15147201020200271264

noncomputable section

/-- A181962: Numbers not of the form pi(p) + pi(sqrt(p)) for some prime p.

Offset 1, canonical program `A181962.P15147201020200271264`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000879, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181962 (n : ℕ) : ℤ :=
  A181962.P15147201020200271264.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000879, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A182434.P10432546062453886706

`∑[and(A061007(n+1), A101264(2*(n+1)))]`
-/

namespace A182434.P10432546062453886706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061007 (n + 1)) (A101264 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182434.P10432546062453886706

noncomputable section

/-- A182434: Number of primes p < n such that 4*p+1 is also prime.

Offset 1, canonical program `A182434.P10432546062453886706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182434 (n : ℕ) : ℤ :=
  A182434.P10432546062453886706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A182434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A183092.P9748846358186423691

`A007955(n+1)/A183091(n+1)`
-/

namespace A183092.P9748846358186423691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A183091 (n + 1) : ℚ)

end

end A183092.P9748846358186423691

noncomputable section

/-- A183092: a(n) is the product of divisors d of n such that d is not equal to m^k where m = noncomposite number, k >= 1.

Offset 1, canonical program `A183092.P9748846358186423691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A183091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183092 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183092.P9748846358186423691.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A183091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183100.P18299511243728987249

`A183098(n+1)+1`
-/

namespace A183100.P18299511243728987249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183098 (n + 1) + 1

end

end A183100.P18299511243728987249

noncomputable section

/-- A183100: a(n) is the sum of divisors d of n which are either 1 or of the form Product_{i} (p_i^e_i) where at least one e_i = 1.

Offset 1, canonical program `A183100.P18299511243728987249`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183100 (n : ℕ) : ℤ :=
  A183100.P18299511243728987249.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184616.P11536552118196738147

`A184615(n)-n`
-/

namespace A184616.P11536552118196738147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 n - (n : ℤ)

end

end A184616.P11536552118196738147

noncomputable section

/-- A184616: Negated negative parts of the nonadjacent forms.

Offset 0, canonical program `A184616.P11536552118196738147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184616 (n : ℕ) : ℤ :=
  A184616.P11536552118196738147.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A184615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A184616.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184815.P17423450562420843

`A000720(p?[A184812(n+1)])`
-/

namespace A184815.P17423450562420843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184815.P17423450562420843

noncomputable section

/-- A184815: Numbers m such that prime(m) is of the form k+floor(ks/r)+floor(kt/r), where r=sqrt(2), s=sqrt(3), t=sqrt(5).

Offset 1, canonical program `A184815.P17423450562420843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1067 terms. -/
def A184815 (n : ℕ) : ℤ :=
  A184815.P17423450562420843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1067 terms. -/
def A184815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184830.P16798279248287820796

`(A000961(n+1)-Δ[A000961(n+1)])%A002061(n)`
-/

namespace A184830.P16798279248287820796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000961 (n + 1) - (f1 (n + 1) - f1 n)) (A002061 n)

end

end A184830.P16798279248287820796

noncomputable section

/-- A184830: a(n) = largest k such that A000961(n+1) = A000961(n) + (A000961(n) mod k), or 0 if no such k exists.

Offset 1, canonical program `A184830.P16798279248287820796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9790 terms. -/
def A184830 (n : ℕ) : ℤ :=
  A184830.P16798279248287820796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9790 terms. -/
def A184830.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126684.P12104132709575714280

`∪[A000695(n), A062880(n)]`
-/

namespace A126684.P12104132709575714280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A126684.P12104132709575714280

noncomputable section

/-- A126684: Union of A000695 and 2*A000695.

Offset 1, canonical program `A126684.P12104132709575714280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126684 (n : ℕ) : ℤ :=
  (A126684.P12104132709575714280.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126795.P799784804237801689

`gcd(n+1, A048250(n+1))`
-/

namespace A126795.P799784804237801689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048250 (n + 1))

end

end A126795.P799784804237801689

noncomputable section

/-- A126795: a(n) = gcd(n, Product_{p|n} (p+1)), where the product is over the distinct primes p that divide n.

Offset 1, canonical program `A126795.P799784804237801689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126795 (n : ℕ) : ℤ :=
  (A126795.P799784804237801689.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126795.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126864.P16516226284724470716

`gcd(n+1, A173557(n+1))`
-/

namespace A126864.P16516226284724470716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A173557 (n + 1))

end

end A126864.P16516226284724470716

noncomputable section

/-- A126864: a(n) = gcd(n, Product_{p|n} (p-1)), where the product is over the distinct primes, p, that divide n.

Offset 1, canonical program `A126864.P16516226284724470716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126864 (n : ℕ) : ℤ :=
  (A126864.P16516226284724470716.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133498.P2652102372241873948

`floor(sqrt(A007053(n)))`
-/

namespace A133498.P2652102372241873948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A007053 n)

end

end A133498.P2652102372241873948

noncomputable section

/-- A133498: a(n) = floor(sqrt(pi(2^n))).

Offset 0, canonical program `A133498.P2652102372241873948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133498 (n : ℕ) : ℤ :=
  A133498.P2652102372241873948.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133498.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A138968.P7786393262471553770

`A091178(n+1)-1`
-/

namespace A138968.P7786393262471553770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1) - 1

end

end A138968.P7786393262471553770

noncomputable section

/-- A138968: Positions of the primes congruent to 1 mod 3 when all primes except 3 are listed in order.

Offset 1, canonical program `A138968.P7786393262471553770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138968 (n : ℕ) : ℤ :=
  A138968.P7786393262471553770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138970.P17118227698826319537

`A080147(n+1)-1`
-/

namespace A138970.P17118227698826319537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1) - 1

end

end A138970.P17118227698826319537

noncomputable section

/-- A138970: Positions of the primes congruent to 1 mod 4 when all primes except 2 are listed in order.

Offset 1, canonical program `A138970.P17118227698826319537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138970 (n : ℕ) : ℤ :=
  A138970.P17118227698826319537.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139328.P7634971209800712135

`∑[A285269(n)]`
-/

namespace A139328.P7634971209800712135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139328.P7634971209800712135

noncomputable section

/-- A139328: Sums of rows of the triangle in A139325.

Offset 1, canonical program `A139328.P7634971209800712135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139328 (n : ℕ) : ℤ :=
  A139328.P7634971209800712135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139368.P4863807749277017642

`A024912(n+1)-A102342(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139368.P4863807749277017642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1) - A102342 (n + 1)

end

end A139368.P4863807749277017642

noncomputable section

/-- A139368: a(n) = A024912(n) - A102342(n).

Offset 1, canonical program `A139368.P4863807749277017642`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, A102342, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139368 (n : ℕ) : ℤ :=
  A139368.P4863807749277017642.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, A102342, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A139368.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139407.P14555283574554252430

`∩[A005124(n+1), A139487(n+2)]`
-/

namespace A139407.P14555283574554252430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139407.P14555283574554252430

noncomputable section

/-- A139407: Numbers k such that 8*k+3 and 8*k+7 are primes.

Offset 1, canonical program `A139407.P14555283574554252430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1130 terms. -/
def A139407 (n : ℕ) : ℤ :=
  (A139407.P14555283574554252430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1130 terms. -/
def A139407.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141408.P6799354960942837233

`∩[A015914(n+1), A049097(n+1)]`
-/

namespace A141408.P6799354960942837233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141408.P6799354960942837233

noncomputable section

/-- A141408: Primes p = A007947(m) such that p+6 is also prime and p + 1 = A007947(m + 1).

Offset 1, canonical program `A141408.P6799354960942837233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2428 terms. -/
def A141408 (n : ℕ) : ℤ :=
  (A141408.P6799354960942837233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2428 terms. -/
def A141408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143869.P256346271086127198

`(n+1)*(A055653(n+1)+1)/2`
-/

namespace A143869.P256346271086127198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A055653 (n + 1) + 1 : ℚ) / 2)

end

end A143869.P256346271086127198

noncomputable section

/-- A143869: An integer k is called regular (mod n) if there is an integer x such that k^2 x == k (mod n). Then these numbers are the sum of regular integers k (mod n) such that 1 <= k <= n for n=1,2,... .

Offset 1, canonical program `A143869.P256346271086127198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143869 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143869.P256346271086127198.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143869.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144907.P1234744446401686961

`A177704(n)*A334085(n+1)`
-/

namespace A144907.P1234744446401686961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 n * A334085 (n + 1)

end

end A144907.P1234744446401686961

noncomputable section

/-- A144907: a(n) = 1 if n is prime, 2 * rad(n) if four divides n and rad(n) otherwise.

Offset 1, canonical program `A144907.P1234744446401686961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144907 (n : ℕ) : ℤ :=
  A144907.P1234744446401686961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152993.P12919101211208490526

`A226982(n+1)+A003165(n+1)`
-/

namespace A152993.P12919101211208490526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226982 (n + 1) + A003165 (n + 1)

end

end A152993.P12919101211208490526

noncomputable section

/-- A152993: a(n) = n - d(n) - pi(n) + 1.

Offset 1, canonical program `A152993.P12919101211208490526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152993 (n : ℕ) : ℤ :=
  A152993.P12919101211208490526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153450.P11237216334743077294

`A007053(2^n)`
-/

namespace A153450.P11237216334743077294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (2 ^ n)

end

end A153450.P11237216334743077294

noncomputable section

/-- A153450: Number of primes <= 2^(2^n) = pi(A001146(n)).

Offset 0, canonical program `A153450.P11237216334743077294`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153450 (n : ℕ) : ℤ :=
  A153450.P11237216334743077294.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A154810.P6912137978945050340

`A007088(A154809(n+1))`
-/

namespace A154810.P6912137978945050340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A154809 (n + 1)).toNat

end

end A154810.P6912137978945050340

noncomputable section

/-- A154810: Nonpalindromic numbers with binary digits only.

Offset 1, canonical program `A154810.P6912137978945050340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A154809, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A154810 (n : ℕ) : ℤ :=
  A154810.P6912137978945050340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A154809, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A154810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A157224.P6199870463600327874

`(A001615(n+1)-A000089(n+1))/2`
-/

namespace A157224.P6199870463600327874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) - A000089 (n + 1) : ℚ) / 2

end

end A157224.P6199870463600327874

noncomputable section

/-- A157224: Number of primitive inequivalent (up to Pi/2 rotation) nonsquare sublattices of square lattice of index n.

Offset 1, canonical program `A157224.P6199870463600327874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157224 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157224.P6199870463600327874.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, A001615, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157224.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158924.P17124388727537864408

`Δ[A158925(A000007(n)+n)]`
-/

namespace A158924.P17124388727537864408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158925 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158924.P17124388727537864408

noncomputable section

/-- A158924: Number of prime powers - 1 in interval (A158923(n-1), A158923(n)] expressing the excess or deficit relative to the asymptotic average of 1.

Offset 1, canonical program `A158924.P17124388727537864408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9696 terms. -/
def A158924 (n : ℕ) : ℤ :=
  A158924.P17124388727537864408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9696 terms. -/
def A158924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162720.P4575705943581837590

`A007088(A014499(n+1))`
-/

namespace A162720.P4575705943581837590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A014499 (n + 1)).toNat

end

end A162720.P4575705943581837590

noncomputable section

/-- A162720: A014499 represented in binary.

Offset 1, canonical program `A162720.P4575705943581837590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A014499, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162720 (n : ℕ) : ℤ :=
  A162720.P4575705943581837590.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A014499, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163242.P5709867109998046641

`∑[A001196(xor(n, floor(n/2)))]`
-/

namespace A163242.P5709867109998046641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163242.P5709867109998046641

noncomputable section

/-- A163242: Row sums of A163233 and A163235.

Offset 0, canonical program `A163242.P5709867109998046641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A163242 (n : ℕ) : ℤ :=
  A163242.P5709867109998046641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A163242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164370.P15740221419071987727

`∪[10*A163449(n), A163449(n)]`
-/

namespace A164370.P15740221419071987727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A163449 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163449 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164370.P15740221419071987727

noncomputable section

/-- A164370: Sequence A005418 written in base 2.

Offset 1, canonical program `A164370.P15740221419071987727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A164370 (n : ℕ) : ℤ :=
  (A164370.P15740221419071987727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A164370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171820.P15002892113044844994

`∪[A091178(n+1), A109119(n)]`
-/

namespace A171820.P15002892113044844994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109119 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171820.P15002892113044844994

noncomputable section

/-- A171820: Numbers n such that the n-th prime is of the form 3k + 1/2 +- 1/2.

Offset 1, canonical program `A171820.P15002892113044844994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171820 (n : ℕ) : ℤ :=
  (A171820.P15002892113044844994.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171820.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175522.P8282898112769869061

`eq[0, A192895(n+1)]+1`
-/

namespace A175522.P8282898112769869061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175522.P8282898112769869061

noncomputable section

/-- A175522: A000120-perfect numbers.

Offset 1, canonical program `A175522.P8282898112769869061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A175522 (n : ℕ) : ℤ :=
  (A175522.P8282898112769869061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A175522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175524.P5660943286196365058

`lt[A192895(n+1), 0]+1`
-/

namespace A175524.P5660943286196365058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192895 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A175524.P5660943286196365058

noncomputable section

/-- A175524: A000120-deficient numbers.

Offset 1, canonical program `A175524.P5660943286196365058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175524 (n : ℕ) : ℤ :=
  (A175524.P5660943286196365058.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179017.P6095337465077806677

`filter[A295243(n+1), A008966(#)]`
-/

namespace A179017.P6095337465077806677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A179017.P6095337465077806677

noncomputable section

/-- A179017: Odd numbers c such that c*(c^2 - 1)/4 is squarefree.

Offset 1, canonical program `A179017.P6095337465077806677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7776 terms. -/
def A179017 (n : ℕ) : ℤ :=
  A179017.P6095337465077806677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7776 terms. -/
def A179017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180636.P9143062899493612538

`∩[A343107(n+1), A343110(n+1)]`
-/

namespace A180636.P9143062899493612538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A180636.P9143062899493612538

noncomputable section

/-- A180636: Positive integers that are divisible by neither 8k-1 nor 8k+1, for all k > 0.

Offset 1, canonical program `A180636.P9143062899493612538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3002 terms. -/
def A180636 (n : ℕ) : ℤ :=
  (A180636.P9143062899493612538.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3002 terms. -/
def A180636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181797.P4894842930551307870

`(n+1)*A048250(n+1)`
-/

namespace A181797.P4894842930551307870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A048250 (n + 1)

end

end A181797.P4894842930551307870

noncomputable section

/-- A181797: a(n) = n multiplied by the sum of its squarefree divisors (A048250(n)).

Offset 1, canonical program `A181797.P4894842930551307870`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181797 (n : ℕ) : ℤ :=
  A181797.P4894842930551307870.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183103.P15947555032237724278

`A007955(n+1)/A183102(n+1)`
-/

namespace A183103.P15947555032237724278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A183102 (n + 1) : ℚ)

end

end A183103.P15947555032237724278

noncomputable section

/-- A183103: a(n) = product of non-powerful divisors d of n.

Offset 1, canonical program `A183103.P15947555032237724278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A183102, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183103 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183103.P15947555032237724278.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007955, A183102, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A183103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184856.P17031283218585029754

`A000040(A184858(n+1))`
-/

namespace A184856.P17031283218585029754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184858 (n + 1)).toNat

end

end A184856.P17031283218585029754

noncomputable section

/-- A184856: Primes of the form floor(k*e/(e-1)).

Offset 1, canonical program `A184856.P17031283218585029754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6292 terms. -/
def A184856 (n : ℕ) : ℤ :=
  A184856.P17031283218585029754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6292 terms. -/
def A184856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189023.P3066450030052913835

`A189021(A062378(n+1))`
-/

namespace A189023.P3066450030052913835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (A062378 (n + 1)).toNat

end

end A189023.P3066450030052913835

noncomputable section

/-- A189023: Apostol's fourth-order Mobius (Moebius) function mu_4(n).

Offset 1, canonical program `A189023.P3066450030052913835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189023 (n : ℕ) : ℤ :=
  A189023.P3066450030052913835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A189023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126706.P11121898802900401573

`eq[1, A355447(n+1)]+1`
-/

namespace A126706.P11121898802900401573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A126706.P11121898802900401573

noncomputable section

/-- A126706: Positive integers which are neither squarefree integers nor prime powers.

Offset 1, canonical program `A126706.P11121898802900401573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126706 (n : ℕ) : ℤ :=
  (A126706.P11121898802900401573.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133855.P8562869399152242532

`A276049((n+1)%(2*n+1)+1)`
-/

namespace A133855.P8562869399152242532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276049 ((n + 1) % (2 * n + 1) + 1)

end

end A133855.P8562869399152242532

noncomputable section

/-- A133855: Primes p such that p-1 and p+1 are abundant numbers.

Offset 1, canonical program `A133855.P8562869399152242532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133855 (n : ℕ) : ℤ :=
  A133855.P8562869399152242532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A133855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137458.P10395638896452164860

`A000040(A007913(n+1))`
-/

namespace A137458.P10395638896452164860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007913 (n + 1)).toNat

end

end A137458.P10395638896452164860

noncomputable section

/-- A137458: Prime(core(n)).

Offset 1, canonical program `A137458.P10395638896452164860`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137458 (n : ℕ) : ℤ :=
  A137458.P10395638896452164860.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145017.P13290880054075597946

`record[A007913(n+1)/A007913(A071797(n+1))]`
-/

namespace A145017.P13290880054075597946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) / (A007913 (A071797 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145017.P13290880054075597946

noncomputable section

/-- A145017: Squarefree positive integers k for which k-(floor(sqrt(k)))^2 is a perfect square.

Offset 1, canonical program `A145017.P13290880054075597946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A145017 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145017.P13290880054075597946.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A145017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147661.P789511450984016641

`A007913(C(or(1, n), n))`
-/

namespace A147661.P789511450984016641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.choose (Nat.lor 1 n) n)

end

end A147661.P789511450984016641

noncomputable section

/-- A147661: a(n) = squarefree part of n^n.

Offset 1, canonical program `A147661.P789511450984016641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147661 (n : ℕ) : ℤ :=
  A147661.P789511450984016641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165265.P11785887504436960033

`∑{digits}[A176894(n), A006370(#)]`
-/

namespace A165265.P11785887504436960033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006370 x).sum

end

end A165265.P11785887504436960033

noncomputable section

/-- A165265: Concatenate the number of 1's and number of 0's in the binary expansion of n.

Offset 0, canonical program `A165265.P11785887504436960033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A165265 (n : ℕ) : ℤ :=
  A165265.P11785887504436960033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A165265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167050.P11328404290735128714

`record[A007913(A165256(n+1))]`
-/

namespace A167050.P11328404290735128714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A165256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167050.P11328404290735128714

noncomputable section

/-- A167050: Squarefree numbers with as many decimal digits as distinct prime factors.

Offset 1, canonical program `A167050.P11328404290735128714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1462 terms. -/
def A167050 (n : ℕ) : ℤ :=
  A167050.P11328404290735128714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1462 terms. -/
def A167050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169884.P13403275088466269213

`∪[A014263(n+1), A169964(n+1)]`
-/

namespace A169884.P13403275088466269213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A169884.P13403275088466269213

noncomputable section

/-- A169884: Numbers consisting of either all even digits or just 5's and 0's.

Offset 1, canonical program `A169884.P13403275088466269213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169884 (n : ℕ) : ℤ :=
  (A169884.P13403275088466269213.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187794.P17499645583050046868

`A000203(n+1)-(A187795(n+1)+A187793(n+1))`
-/

namespace A187794.P17499645583050046868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A187795 (n + 1) + A187793 (n + 1))

end

end A187794.P17499645583050046868

noncomputable section

/-- A187794: Sum of the perfect divisors of n.

Offset 1, canonical program `A187794.P17499645583050046868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187794 (n : ℕ) : ℤ :=
  A187794.P17499645583050046868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187794.provenance : SequenceMachineLib.Provenance := .conjectured

