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
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
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

/-! ## A113424.P4188774916858982787

`A005809(n)*A066802(n)`
-/

namespace A113424.P4188774916858982787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A066802 n

end

end A113424.P4188774916858982787

noncomputable section

/-- A113424: a(n) = (6*n)!/((3*n)!*(2*n)!*n!).

Offset 0, canonical program `A113424.P4188774916858982787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113424 (n : ℕ) : ℤ :=
  A113424.P4188774916858982787.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113424.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115716.P15483547809295924347

`A007583(A091090(n+1)-1)`
-/

namespace A115716.P15483547809295924347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A091090 (n + 1) - 1).toNat

end

end A115716.P15483547809295924347

noncomputable section

/-- A115716: A divide-and-conquer sequence.

Offset 0, canonical program `A115716.P15483547809295924347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115716 (n : ℕ) : ℤ :=
  A115716.P15483547809295924347.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115902.P2573848008066962846

`2^n*A002457(n)`
-/

namespace A115902.P2573848008066962846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002457 n

end

end A115902.P2573848008066962846

noncomputable section

/-- A115902: Expansion of (1-8*x)^(-3/2).

Offset 0, canonical program `A115902.P2573848008066962846`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115902 (n : ℕ) : ℤ :=
  A115902.P2573848008066962846.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115903.P5062678535628825191

`3^n*A002457(n)`
-/

namespace A115903.P5062678535628825191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A002457 n

end

end A115903.P5062678535628825191

noncomputable section

/-- A115903: Expansion of (1-12*x)^(-3/2).

Offset 0, canonical program `A115903.P5062678535628825191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115903 (n : ℕ) : ℤ :=
  A115903.P5062678535628825191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115903.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117973.P11230116199213534894

`2*A001316(n)`
-/

namespace A117973.P11230116199213534894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n

end

end A117973.P11230116199213534894

noncomputable section

/-- A117973: a(n) = 2^(wt(n)+1), where wt() = A000120().

Offset 0, canonical program `A117973.P11230116199213534894`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117973 (n : ℕ) : ℤ :=
  A117973.P11230116199213534894.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117973.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119309.P5415247906500526611

`2^n*A098658(n)`
-/

namespace A119309.P5415247906500526611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A098658 n

end

end A119309.P5415247906500526611

noncomputable section

/-- A119309: a(n) = binomial(2*n,n) * 6^n.

Offset 0, canonical program `A119309.P5415247906500526611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119309 (n : ℕ) : ℤ :=
  A119309.P5415247906500526611.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119309.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120739.P10842547371353966859

`(2^n-A001316(n))/2`
-/

namespace A120739.P10842547371353966859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - A001316 n : ℚ) / 2

end

end A120739.P10842547371353966859

noncomputable section

/-- A120739: a(n) = Sum_{k=0..n} floor(C(n,k)/2).

Offset 0, canonical program `A120739.P10842547371353966859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120739 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120739.P10842547371353966859.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120739.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A173396.P16932061365790968242

`A001803(n)+A046161(n)`
-/

namespace A173396.P16932061365790968242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n + A046161 n

end

end A173396.P16932061365790968242

noncomputable section

/-- A173396: a(n) = A046161(n) + A001803(n).

Offset 0, canonical program `A173396.P16932061365790968242`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173396 (n : ℕ) : ℤ :=
  A173396.P16932061365790968242.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119795.P14428827034511331712

`a(n-2)+A006519(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A119795.P14428827034511331712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + A006519 (a (n - 1)).toNat

end

end A119795.P14428827034511331712

noncomputable section

/-- A119795: a(1) = a(2) = 1. a(n) = a(n-2) + (largest power of 2 dividing a(n-1)).

Offset 1, canonical program `A119795.P14428827034511331712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119795 (n : ℕ) : ℤ :=
  A119795.P14428827034511331712.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119795.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A111900.P2753696338682174215

`and(char[A098002(n+1)], A210448(n+1))`
-/

namespace A111900.P2753696338682174215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098002 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A210448 (n + 1))

end

end A111900.P2753696338682174215

noncomputable section

/-- A111900: Number of partitions of n into distinct squares of primes.

Offset 0, canonical program `A111900.P2753696338682174215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A111900 (n : ℕ) : ℤ :=
  A111900.P2753696338682174215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A111900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112308.P12064346406734073467

`∑[A070857(n)]`
-/

namespace A112308.P12064346406734073467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112308.P12064346406734073467

noncomputable section

/-- A112308: Sum of the heights of the second peaks in all Dyck paths of semilength n+2.

Offset 0, canonical program `A112308.P12064346406734073467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A112308 (n : ℕ) : ℤ :=
  A112308.P12064346406734073467.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A112308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112347.P13846808065894593792

`Δ[A005811(floor(n²/(n+1)))]`
-/

namespace A112347.P13846808065894593792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112347.P13846808065894593792

noncomputable section

/-- A112347: Kronecker symbol (-1, n) except a(0) = 0.

Offset 0, canonical program `A112347.P13846808065894593792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112347 (n : ℕ) : ℤ :=
  A112347.P13846808065894593792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112413.P7799178321871469342

`A000245(abs(1-A025581(n)))`
-/

namespace A112413.P7799178321871469342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 |1 - A025581 n|.toNat

end

end A112413.P7799178321871469342

noncomputable section

/-- A112413: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n and starting with exactly k UD's, where U=(1,1), D=(1,-1) (0 <= k <= n).

Offset 0, canonical program `A112413.P7799178321871469342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112413 (n : ℕ) : ℤ :=
  A112413.P7799178321871469342.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112498.P5478417839947930055

`A055357(n+4)+A000460(n+3)`
-/

namespace A112498.P5478417839947930055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055357 (n + 4) + A000460 (n + 3)

end

end A112498.P5478417839947930055

noncomputable section

/-- A112498: Third column of second-order Eulerian triangle A008517 divided by 2.

Offset 3, canonical program `A112498.P5478417839947930055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A112498 (n : ℕ) : ℤ :=
  A112498.P5478417839947930055.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A112498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112850.P878508428398291890

`2*A112849(n+1)*A103517(n)`
-/

namespace A112850.P878508428398291890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112849 (n + 1) * A103517 n

end

end A112850.P878508428398291890

noncomputable section

/-- A112850: Number of graph endomorphisms of undirected cycles of even length: |End(C_2n)|.

Offset 1, canonical program `A112850.P878508428398291890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A112850 (n : ℕ) : ℤ :=
  A112850.P878508428398291890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A112850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112997.P17319994244787129622

`∑[A014689(n+1)]`
-/

namespace A112997.P17319994244787129622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112997.P17319994244787129622

noncomputable section

/-- A112997: Sum of first n primes minus sum of their indices.

Offset 1, canonical program `A112997.P17319994244787129622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112997 (n : ℕ) : ℤ :=
  A112997.P17319994244787129622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112997.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A113678.P6435561091149394357

`A078008(A025581(n))`
-/

namespace A113678.P6435561091149394357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A025581 n).toNat

end

end A113678.P6435561091149394357

noncomputable section

/-- A113678: Sequence array for A078008.

Offset 0, canonical program `A113678.P6435561091149394357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113678 (n : ℕ) : ℤ :=
  A113678.P6435561091149394357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113857.P7816221624048524076

`A002694(n+2)*A001700(n+4)`
-/

namespace A113857.P7816221624048524076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002694 (n + 2) * A001700 (n + 4)

end

end A113857.P7816221624048524076

noncomputable section

/-- A113857: a(n) = binomial(4+2*n, n) * binomial(9+2*n, 4+n).

Offset 0, canonical program `A113857.P7816221624048524076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113857 (n : ℕ) : ℤ :=
  A113857.P7816221624048524076.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113857.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113888.P8571320524160810048

`A001700(n)*A002694(n+3)`
-/

namespace A113888.P8571320524160810048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A002694 (n + 3)

end

end A113888.P8571320524160810048

noncomputable section

/-- A113888: a(n) = C(2*n+1,n)*C(2*n+6,n+1).

Offset 0, canonical program `A113888.P8571320524160810048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113888 (n : ℕ) : ℤ :=
  A113888.P8571320524160810048.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002694, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113895.P17522331545707215979

`A001791(n+1)*A002054(n+3)`
-/

namespace A113895.P17522331545707215979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) * A002054 (n + 3)

end

end A113895.P17522331545707215979

noncomputable section

/-- A113895: a(n) = C(2+2*n, n) * C(7+2*n, 2+n).

Offset 0, canonical program `A113895.P17522331545707215979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002054, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113895 (n : ℕ) : ℤ :=
  A113895.P17522331545707215979.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002054, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113903.P6454317970146200745

`∑[A254667(∑{e}[n, #])]`
-/

namespace A113903.P6454317970146200745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113903.P6454317970146200745

noncomputable section

/-- A113903: Sum of omega(n!) and bigomega(n!).

Offset 0, canonical program `A113903.P6454317970146200745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113903 (n : ℕ) : ℤ :=
  A113903.P6454317970146200745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114117.P17816901265294199500

`A000007(n)-Δ[A114114(n)]`
-/

namespace A114117.P17816901265294199500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (f1 (n + 1) - f1 n)

end

end A114117.P17816901265294199500

noncomputable section

/-- A114117: Inverse of 1's counting matrix A114116.

Offset 0, canonical program `A114117.P17816901265294199500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A114117 (n : ℕ) : ℤ :=
  A114117.P17816901265294199500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A114117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114118.P8543304473231040765

`A114114(n)+A101688(n+1)`
-/

namespace A114118.P8543304473231040765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114114 n + A101688 (n + 1)

end

end A114118.P8543304473231040765

noncomputable section

/-- A114118: Number triangle T(n,k)=sum{j=0..n, C(floor((n+k+j)/3),k)C(k,floor((n+k+j)/3))}.

Offset 0, canonical program `A114118.P8543304473231040765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114118 (n : ℕ) : ℤ :=
  A114118.P8543304473231040765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114283.P5681186867931976057

`A025192(A025581(n))`
-/

namespace A114283.P5681186867931976057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (A025581 n).toNat

end

end A114283.P5681186867931976057

noncomputable section

/-- A114283: Sequence array for binomial transform of Jacobsthal numbers A001045(n+1).

Offset 0, canonical program `A114283.P5681186867931976057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114283 (n : ℕ) : ℤ :=
  A114283.P5681186867931976057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114323.P5762048933654453689

`A018143(n+1)-1`
-/

namespace A114323.P5762048933654453689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018143 (n + 1) - 1

end

end A114323.P5762048933654453689

noncomputable section

/-- A114323: Largest number whose 5th power has n digits.

Offset 1, canonical program `A114323.P5762048933654453689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A114323 (n : ℕ) : ℤ :=
  A114323.P5762048933654453689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A114323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115133.P10984329347776227416

`∑[A064061(n)]`
-/

namespace A115133.P10984329347776227416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115133.P10984329347776227416

noncomputable section

/-- A115133: Partial sums of A064061.

Offset 0, canonical program `A115133.P10984329347776227416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115133 (n : ℕ) : ℤ :=
  A115133.P10984329347776227416.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115235.P5512606317749080234

`A113448(n+1)*A131713(n)`
-/

namespace A115235.P5512606317749080234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113448 (n + 1) * A131713 n

end

end A115235.P5512606317749080234

noncomputable section

/-- A115235: Expansion of eta(q)^2*eta(q^9)*eta(q^18)/(eta(q^2)*eta(q^3)) in powers of q.

Offset 1, canonical program `A115235.P5512606317749080234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115235 (n : ℕ) : ℤ :=
  A115235.P5512606317749080234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115346.P14890110916241941948

`A000071(A002262(n)+2)`
-/

namespace A115346.P14890110916241941948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A002262 n + 2).toNat

end

end A115346.P14890110916241941948

noncomputable section

/-- A115346: Triangle read by rows: T(n,k) = Fibonacci(k+2) - 1.

Offset 0, canonical program `A115346.P14890110916241941948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115346 (n : ℕ) : ℤ :=
  A115346.P14890110916241941948.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115356.P7662483456483370118

`A114114(n)%2`
-/

namespace A115356.P7662483456483370118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114114 n) 2

end

end A115356.P7662483456483370118

noncomputable section

/-- A115356: Matrix (1,x)+(x,x^2) in Riordan array notation.

Offset 0, canonical program `A115356.P7662483456483370118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115356 (n : ℕ) : ℤ :=
  A115356.P7662483456483370118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115378.P6217712458104958849

`A000225(A023416(n+1))`
-/

namespace A115378.P6217712458104958849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A023416 (n + 1)).toNat

end

end A115378.P6217712458104958849

noncomputable section

/-- A115378: a(n) = number of positive integers k < n such that n XOR k = (n+k).

Offset 1, canonical program `A115378.P6217712458104958849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115378 (n : ℕ) : ℤ :=
  A115378.P6217712458104958849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115514.P8808865076358654155

`ceil(A099375(n)/4)`
-/

namespace A115514.P8808865076358654155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 4⌉

end

end A115514.P8808865076358654155

noncomputable section

/-- A115514: Triangle read by rows: row n >= 1 lists first n positive terms of A004526 (integers repeated) in decreasing order.

Offset 1, canonical program `A115514.P8808865076358654155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115514 (n : ℕ) : ℤ :=
  A115514.P8808865076358654155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115566.P8073929608010892039

`∩[A066344(n+1)-1, A066344(n+1)]`
-/

namespace A115566.P8073929608010892039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066344 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115566.P8073929608010892039

noncomputable section

/-- A115566: Numbers k such that 2^k, 2^(k+1) and 2^(k+2) have the same number of digits.

Offset 1, canonical program `A115566.P8073929608010892039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5693 terms. -/
def A115566 (n : ℕ) : ℤ :=
  (A115566.P8073929608010892039.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5693 terms. -/
def A115566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116088.P545449340874699905

`C(2*A002262(n), A025581(n))`
-/

namespace A116088.P545449340874699905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A002262 n).toNat (A025581 n).toNat

end

end A116088.P545449340874699905

noncomputable section

/-- A116088: Riordan array (1, x*(1+x)^2).

Offset 0, canonical program `A116088.P545449340874699905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116088 (n : ℕ) : ℤ :=
  (A116088.P545449340874699905.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116089.P15958432724052264868

`C(A008585(A002262(n)), A025581(n))`
-/

namespace A116089.P15958432724052264868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008585 (A002262 n).toNat).toNat (A025581 n).toNat

end

end A116089.P15958432724052264868

noncomputable section

/-- A116089: Riordan array (1, x*(1+x)^3).

Offset 0, canonical program `A116089.P15958432724052264868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116089 (n : ℕ) : ℤ :=
  (A116089.P15958432724052264868.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116400.P9056853497896338160

`A037951(or(1, n))`
-/

namespace A116400.P9056853497896338160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (Nat.lor 1 n)

end

end A116400.P9056853497896338160

noncomputable section

/-- A116400: Expansion of e.g.f. Bessel_I(2,2x) + Bessel_I(3,2x) + Bessel_I(4,2x).

Offset 0, canonical program `A116400.P9056853497896338160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A116400 (n : ℕ) : ℤ :=
  A116400.P9056853497896338160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A116400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116406.P2533668275764511831

`(A128014(n)+A011782(n))/2`
-/

namespace A116406.P2533668275764511831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128014 n + A011782 n : ℚ) / 2

end

end A116406.P2533668275764511831

noncomputable section

/-- A116406: Expansion of ((1 + x - 2x^2) + (1+x)*sqrt(1-4x^2))/(2(1-4x^2)).

Offset 0, canonical program `A116406.P2533668275764511831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A116406 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A116406.P2533668275764511831.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A116406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116409.P2006096629571327761

`3*a(n-1)-A082395(n)` with `a(0)=1`
-/

namespace A116409.P2006096629571327761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A082395 n

end

end A116409.P2006096629571327761

noncomputable section

/-- A116409: Expansion of (1-x-2x^2+sqrt(1-2x-3x^2))/(2(1-x)(1-2x-3x^2)).

Offset 0, canonical program `A116409.P2006096629571327761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A116409 (n : ℕ) : ℤ :=
  A116409.P2006096629571327761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A116409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116520.P853808393403472097

`a(n-1)+A001316(n-1)²` with `a(0)=0`
-/

namespace A116520.P853808393403472097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001316 (n - 1) ^ 2

end

end A116520.P853808393403472097

noncomputable section

/-- A116520: a(0) = 0, a(1) = 1; a(n) = max { 4*a(k) + a(n-k) | 1 <= k <= n/2 }, for n > 1.

Offset 0, canonical program `A116520.P853808393403472097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116520 (n : ℕ) : ℤ :=
  A116520.P853808393403472097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116522.P4567962179520720721

`A256136(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A116522.P4567962179520720721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A256136 (n - 1) + a (n - 1)

end

end A116522.P4567962179520720721

noncomputable section

/-- A116522: a(0)=1, a(1)=1, a(n)=7*a(n/2) for n=2,4,6,..., a(n)=6*a((n-1)/2)+a((n+1)/2) for n=3,5,7,....

Offset 0, canonical program `A116522.P4567962179520720721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116522 (n : ℕ) : ℤ :=
  A116522.P4567962179520720721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116523.P12130739933144489115

`∑[A102376(n)²]-A102376(n)²`
-/

namespace A116523.P12130739933144489115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102376 n ^ 2

end

end A116523.P12130739933144489115

noncomputable section

/-- A116523: a(0)=1, a(1)=1, a(n) = 17*a(n/2) for n=2,4,6,..., a(n) = 16*a((n-1)/2) + a((n+1)/2) for n=3,5,7,....

Offset 0, canonical program `A116523.P12130739933144489115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116523 (n : ℕ) : ℤ :=
  A116523.P12130739933144489115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116525.P9195124493013691138

`∑[A102377(n)]-A102377(n)`
-/

namespace A116525.P9195124493013691138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102377 n

end

end A116525.P9195124493013691138

noncomputable section

/-- A116525: a(0)=1, a(1)=1, a(n) = 11*a(n/2) for even n, and a(n) = 10*a((n-1)/2) + a((n+1)/2) for odd n >= 3.

Offset 0, canonical program `A116525.P9195124493013691138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116525 (n : ℕ) : ℤ :=
  A116525.P9195124493013691138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116570.P13366081958881133163

`A006094(A008619(n+1))%A037166(A008619(n)+1)`
-/

namespace A116570.P13366081958881133163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (A008619 (n + 1)).toNat) (A037166 (A008619 n + 1).toNat)

end

end A116570.P13366081958881133163

noncomputable section

/-- A116570: a(2*n) = prime(n+1) * prime(n+2), a(2*n-1) = prime(n+1).

Offset 0, canonical program `A116570.P13366081958881133163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116570 (n : ℕ) : ℤ :=
  A116570.P13366081958881133163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116916.P8000741087611387261

`A010816(3*n)`
-/

namespace A116916.P8000741087611387261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (3 * n)

end

end A116916.P8000741087611387261

noncomputable section

/-- A116916: Expansion of q^(-1/8) * (eta(q)^3 + 3 * eta(q^9)^3) in powers of q^3.

Offset 0, canonical program `A116916.P8000741087611387261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116916 (n : ℕ) : ℤ :=
  A116916.P8000741087611387261.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116916.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116948.P16350020595193954819

`dr(A099375(n)%3)`
-/

namespace A116948.P16350020595193954819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A099375 n) 3)

end

end A116948.P16350020595193954819

noncomputable section

/-- A116948: Riordan array ((1+2x^2)/(1-x^3),x).

Offset 0, canonical program `A116948.P16350020595193954819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116948 (n : ℕ) : ℤ :=
  (A116948.P16350020595193954819.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117061.P6783340963500244464

`A118881(a(n-1))+1+n` with `a(0)=1`
-/

namespace A117061.P6783340963500244464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A118881 (a (n - 1)).toNat + 1 + (n : ℤ)

end

end A117061.P6783340963500244464

noncomputable section

/-- A117061: a(n) = (s(n-1))^2+n, with a(1) = 1 and s(k) = A007953(a(k)).

Offset 1, canonical program `A117061.P6783340963500244464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117061 (n : ℕ) : ℤ :=
  A117061.P6783340963500244464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117187.P12842748690522836276

`A037955(or(1, n)+1)`
-/

namespace A117187.P12842748690522836276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (Nat.lor 1 n + 1)

end

end A117187.P12842748690522836276

noncomputable section

/-- A117187: Expansion of (1+x)c(x^2)/((1-x^2*c(x^2))sqrt(1-4x^2)), c(x) the g.f. of A000108.

Offset 0, canonical program `A117187.P12842748690522836276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A117187 (n : ℕ) : ℤ :=
  A117187.P12842748690522836276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A117187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117224.P6444175390300152224

`eq[A004159(n), A004164(n)]`
-/

namespace A117224.P6444175390300152224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117224.P6444175390300152224

noncomputable section

/-- A117224: Numbers for which the square and the cube have the same digital sum.

Offset 1, canonical program `A117224.P6444175390300152224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A117224 (n : ℕ) : ℤ :=
  (A117224.P6444175390300152224.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A117224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117511.P13071202074021553455

`A000217(eq[A004157(n+1), A004157(n)])`
-/

namespace A117511.P13071202074021553455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117511.P13071202074021553455

noncomputable section

/-- A117511: Triangular numbers for which the sum of the digits equals the sum of the digits of the next triangular number.

Offset 1, canonical program `A117511.P13071202074021553455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. -/
def A117511 (n : ℕ) : ℤ :=
  A117511.P13071202074021553455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. -/
def A117511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117530.P4875223154151774733

`A005145(n+1)+2*A112367(n)`
-/

namespace A117530.P4875223154151774733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (n + 1) + 2 * A112367 n

end

end A117530.P4875223154151774733

noncomputable section

/-- A117530: Triangle read by rows: T(n,k) = k^2 - k + prime(n), 1<=k<=n.

Offset 1, canonical program `A117530.P4875223154151774733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117530 (n : ℕ) : ℤ :=
  A117530.P4875223154151774733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117568.P10505874102500913440

`A117576(A025581(n))%2`
-/

namespace A117568.P10505874102500913440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117576 (A025581 n).toNat) 2

end

end A117568.P10505874102500913440

noncomputable section

/-- A117568: Riordan array ((1-x^3)/(1+x^2),x).

Offset 0, canonical program `A117568.P10505874102500913440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117568 (n : ℕ) : ℤ :=
  A117568.P10505874102500913440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117592.P1440909278058429630

`2^A081603(n)`
-/

namespace A117592.P1440909278058429630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A081603 n : ℤ)

end

end A117592.P1440909278058429630

noncomputable section

/-- A117592: a(n) = a(3n) = a(3n+1) = a(3n+2)/2 with a(0)=1.

Offset 0, canonical program `A117592.P1440909278058429630`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117592 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117592.P1440909278058429630.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081603, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117736.P2900786321532737672

`n!-A049614(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117736.P2900786321532737672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A049614 n

end

end A117736.P2900786321532737672

noncomputable section

/-- A117736: factorial(n) - A049614(n).

Offset 0, canonical program `A117736.P2900786321532737672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117736 (n : ℕ) : ℤ :=
  A117736.P2900786321532737672.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049614, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117869.P18256498155837451709

`∑[A001671(n)]-n`
-/

namespace A117869.P18256498155837451709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A117869.P18256498155837451709

noncomputable section

/-- A117869: Partial sums of A000149.

Offset 0, canonical program `A117869.P18256498155837451709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A117869 (n : ℕ) : ℤ :=
  A117869.P18256498155837451709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A117869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117882.P6858586493466054488

`∑[A001673(n)]-n`
-/

namespace A117882.P6858586493466054488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A117882.P6858586493466054488

noncomputable section

/-- A117882: Partial sums of floor(Pi^n).

Offset 0, canonical program `A117882.P6858586493466054488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A117882 (n : ℕ) : ℤ :=
  A117882.P6858586493466054488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A117882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117890.P14438909283196248010

`eq[n+1, lcm(n+1, A023416(n+1))]+1`
-/

namespace A117890.P14438909283196248010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A023416 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A117890.P14438909283196248010

noncomputable section

/-- A117890: Numbers k such that number of non-leading 0's in binary representation of k divides k.

Offset 1, canonical program `A117890.P14438909283196248010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. -/
def A117890 (n : ℕ) : ℤ :=
  (A117890.P14438909283196248010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. -/
def A117890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117942.P14324521327660345243

`2^A081603(n)*(-1)^(A062756(n)+A081603(n))`
-/

namespace A117942.P14324521327660345243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A081603 n : ℤ) * (-1 : ℚ) ^ (A062756 n + A081603 n : ℤ)

end

end A117942.P14324521327660345243

noncomputable section

/-- A117942: a(n) = a(3n) = -a(3n+1) = -a(3n+2)/2.

Offset 0, canonical program `A117942.P14324521327660345243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, A081603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117942.P14324521327660345243.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, A081603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A117942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118006.P10735077424851259672

`and(1, A080846(or(1, n))+n)`
-/

namespace A118006.P10735077424851259672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A080846 (Nat.lor 1 n) + (n : ℤ))

end

end A118006.P10735077424851259672

noncomputable section

/-- A118006: Define a sequence of binary words by w(1) = 01 and w(n+1) = w(n)w(n)Reverse[w(n)]. Sequence gives the limiting word w(infinity).

Offset 1, canonical program `A118006.P10735077424851259672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118006 (n : ℕ) : ℤ :=
  A118006.P10735077424851259672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A118006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118102.P5343364025708878754

`(n%2)^log2(A008967(n+4))`
-/

namespace A118102.P5343364025708878754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℝ) ^ (Real.logb 2 (A008967 (n + 4) : ℝ))

end

end A118102.P5343364025708878754

noncomputable section

/-- A118102: Triangle read by rows giving successive states of cellular automaton generated by "Rule 94" initiated with a single ON (black) cell.

Offset 0, canonical program `A118102.P5343364025708878754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118102 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A118102.P5343364025708878754.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118111.P3672481769883501696

`A071037(n*a(n-1))` with `a(0)=1`
-/

namespace A118111.P3672481769883501696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071037 ((n : ℤ) * a (n - 1)).toNat

end

end A118111.P3672481769883501696

noncomputable section

/-- A118111: Binary representation of n-th iteration of the Rule 190 elementary cellular automaton starting with a single black cell.

Offset 0, canonical program `A118111.P3672481769883501696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118111 (n : ℕ) : ℤ :=
  A118111.P3672481769883501696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118190.P5581006885533433996

`A000351((A004736(n+1)-1)*A002262(n))`
-/

namespace A118190.P5581006885533433996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 ((A004736 (n + 1) - 1) * A002262 n).toNat

end

end A118190.P5581006885533433996

noncomputable section

/-- A118190: Triangle T(n,k) = 5^(k*(n-k)) for n >= k >= 0, read by rows.

Offset 0, canonical program `A118190.P5581006885533433996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A118190 (n : ℕ) : ℤ :=
  A118190.P5581006885533433996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A118190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118586.P6236173559146990027

`A190620(n+1)+1`
-/

namespace A118586.P6236173559146990027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190620 (n + 1) + 1

end

end A118586.P6236173559146990027

noncomputable section

/-- A118586: Numbers whose binary expansion contains group of at least two 1's followed by a nonempty group of 0's.

Offset 1, canonical program `A118586.P6236173559146990027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118586 (n : ℕ) : ℤ :=
  A118586.P6236173559146990027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118873.P18191058552923466056

`(A090090(n+1)+A006094(n+2))*A117301(n+1)`
-/

namespace A118873.P18191058552923466056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090090 (n + 1) + A006094 (n + 2)) * A117301 (n + 1)

end

end A118873.P18191058552923466056

noncomputable section

/-- A118873: Determinant of n-th continuous block of 4 consecutive squares of primes.

Offset 1, canonical program `A118873.P18191058552923466056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A118873 (n : ℕ) : ℤ :=
  A118873.P18191058552923466056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A118873.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A119428.P13055513674063080029

`∑{d}[A008619(A004273(n)), A330025(#)]`
-/

namespace A119428.P13055513674063080029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A330025 d

end

end A119428.P13055513674063080029

noncomputable section

/-- A119428: G.f.: A(x) = 1 + Sum_{n>=0} (-1)^n* Sum_{k=1..4} x^(5n+k)/(1-x^(5n+k)).

Offset 0, canonical program `A119428.P13055513674063080029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A119428 (n : ℕ) : ℤ :=
  A119428.P13055513674063080029.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A119428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119449.P14032157784951920134

`p?[A000040(n+1)+A007605(n+1)%2]`
-/

namespace A119449.P14032157784951920134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + Int.tmod (A007605 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119449.P14032157784951920134

noncomputable section

/-- A119449: Primes with even digit sum.

Offset 1, canonical program `A119449.P14032157784951920134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. -/
def A119449 (n : ℕ) : ℤ :=
  A119449.P14032157784951920134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4925 terms. -/
def A119449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119502.P16886903027794226168

`A000142(A025581(n))`
-/

namespace A119502.P16886903027794226168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A025581 n).toNat

end

end A119502.P16886903027794226168

noncomputable section

/-- A119502: Triangle read by rows, T(n,k) = (n-k)!, for n>=0 and 0<=k<=n.

Offset 0, canonical program `A119502.P16886903027794226168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A119502 (n : ℕ) : ℤ :=
  A119502.P16886903027794226168.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A119502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119701.P9680759370316718728

`(n+1)*A119697(n)`
-/

namespace A119701.P9680759370316718728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A119697 n

end

end A119701.P9680759370316718728

noncomputable section

/-- A119701: a(n) = n*binomial(2*n, n)*Fibonacci(n).

Offset 0, canonical program `A119701.P9680759370316718728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A119701 (n : ℕ) : ℤ :=
  A119701.P9680759370316718728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A119701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119900.P12631817968393924084

`C(∑[A010054(n)], A099375(n))`
-/

namespace A119900.P12631817968393924084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A099375 n).toNat

end

end A119900.P12631817968393924084

noncomputable section

/-- A119900: Triangle read by rows: T(n,k) is the number of binary words of length n with k strictly increasing runs, for 0<=k<=n.

Offset 0, canonical program `A119900.P12631817968393924084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119900 (n : ℕ) : ℤ :=
  (A119900.P12631817968393924084.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119959.P13944283531286712602

`A036689(n+1)+1`
-/

namespace A119959.P13944283531286712602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + 1

end

end A119959.P13944283531286712602

noncomputable section

/-- A119959: p^2-p+1 central polygonal numbers with prime indices A002061(prime(n)).

Offset 1, canonical program `A119959.P13944283531286712602`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119959 (n : ℕ) : ℤ :=
  A119959.P13944283531286712602.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036689, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120009.P17761584806816662286

`A005807(n)-A026012(n)`
-/

namespace A120009.P17761584806816662286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n - A026012 n

end

end A120009.P17761584806816662286

noncomputable section

/-- A120009: G.f.: A(x) = (x-x^2) o x/(1-x) o (1-sqrt(1-4*x))/2, a composition of functions involving the Catalan function and its inverse.

Offset 1, canonical program `A120009.P17761584806816662286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A120009 (n : ℕ) : ℤ :=
  A120009.P17761584806816662286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A120009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120108.P13431050358684570806

`A003418(A002024(n+1))/a(A112367(n))` with `a(0)=1`
-/

namespace A120108.P13431050358684570806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A003418 (A002024 (n + 1)).toNat : ℚ) / a (A112367 n).toNat

end

end A120108.P13431050358684570806

noncomputable section

/-- A120108: Number triangle T(n,k) = lcm(1,..,n+1)/lcm(1,..,k+1).

Offset 0, canonical program `A120108.P13431050358684570806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A120108 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A120108.P13431050358684570806.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A120108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120244.P12666156708168537595

`A002262(n)+a(A003056(n)-1)+1` with `a(0)=1`
-/

namespace A120244.P12666156708168537595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002262 n + (a (A003056 n - 1).toNat + 1)

end

end A120244.P12666156708168537595

noncomputable section

/-- A120244: a(1) = 1. a(m(m+1)/2 + k) = a(m) + k, 1 <= k <= m+1, m >= 1.

Offset 1, canonical program `A120244.P12666156708168537595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120244 (n : ℕ) : ℤ :=
  A120244.P12666156708168537595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120245.P7639101621087687490

`a(A003056(n)-1)+a(A002262(n))` with `a(0)=1`
-/

namespace A120245.P7639101621087687490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A003056 n - 1).toNat + a (A002262 n).toNat

end

end A120245.P7639101621087687490

noncomputable section

/-- A120245: a(1) = 1. a(m(m+1)/2 + k) = a(m) + a(k), 1 <= k <= m+1, m >= 1.

Offset 1, canonical program `A120245.P7639101621087687490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120245 (n : ℕ) : ℤ :=
  (A120245.P7639101621087687490.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120246.P10095620787703275230

`A003056(n)+a(A002262(n))` with `a(0)=1`
-/

namespace A120246.P10095620787703275230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 n + a (A002262 n).toNat

end

end A120246.P10095620787703275230

noncomputable section

/-- A120246: a(1) = 1. a(m(m+1)/2 + k) = m + a(k), 1 <= k <= m+1, m >= 1.

Offset 1, canonical program `A120246.P10095620787703275230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120246 (n : ℕ) : ℤ :=
  A120246.P10095620787703275230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120246.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A120297.P9349017547000659289

`A227356(Δ[n²])`
-/

namespace A120297.P9349017547000659289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227356 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A120297.P9349017547000659289

noncomputable section

/-- A120297: Sum of all matrix elements of n X n matrix M(i,j) = Fibonacci(i+j-1).

Offset 1, canonical program `A120297.P9349017547000659289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A120297 (n : ℕ) : ℤ :=
  A120297.P9349017547000659289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A120297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120461.P13482438637153822743

`record[A135530(n)]-(A054877(n)+A052964(n))`
-/

namespace A120461.P13482438637153822743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A054877 n + A052964 n)

end

end A120461.P13482438637153822743

noncomputable section

/-- A120461: Expansion of x*(4-x)/( (2x-1)*(x^2-x-1)).

Offset 0, canonical program `A120461.P13482438637153822743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A120461 (n : ℕ) : ℤ :=
  A120461.P13482438637153822743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A120461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120672.P7875415182769187562

`A283353(n)-A081668(n)`
-/

namespace A120672.P7875415182769187562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283353 n - A081668 n

end

end A120672.P7875415182769187562

noncomputable section

/-- A120672: a(n) = 2 * A285917(n) for n >=2, a(0) = a(1) = 0.

Offset 0, canonical program `A120672.P7875415182769187562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A120672 (n : ℕ) : ℤ :=
  A120672.P7875415182769187562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A120672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120691.P15009752455225398063

`Δ[A254667(n)-A260316(n)]`
-/

namespace A120691.P15009752455225398063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n - A260316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A120691.P15009752455225398063

noncomputable section

/-- A120691: First differences of coefficients in the continued fraction for e.

Offset 0, canonical program `A120691.P15009752455225398063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A120691 (n : ℕ) : ℤ :=
  A120691.P15009752455225398063.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A120691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120753.P16636594811176197176

`∪[A001954(n), A083051(n)]`
-/

namespace A120753.P16636594811176197176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A120753.P16636594811176197176

noncomputable section

/-- A120753: Numbers k such that {rk} > c, where r = (1/2)^(1/2), c = 1/2 and { } denotes fractional part.

Offset 1, canonical program `A120753.P16636594811176197176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120753 (n : ℕ) : ℤ :=
  (A120753.P16636594811176197176.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120753.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A121447.P1797565767739298032

`Δ[A006630(n)]-record[A000139(n)]`
-/

namespace A121447.P1797565767739298032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A121447.P1797565767739298032

noncomputable section

/-- A121447: Level of the first leaf (in preorder traversal) of a ternary tree, summed over all ternary trees with n edges. A ternary tree is a rooted tree in which each vertex has at most three children and each child of a vertex is designated as its left or middle or right child.

Offset 1, canonical program `A121447.P1797565767739298032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A121447 (n : ℕ) : ℤ :=
  A121447.P1797565767739298032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A121447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121455.P9993949302773689099

`and(5, (n+1)²)*A115607(n+1)`
-/

namespace A121455.P9993949302773689099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 5 ((n + 1) ^ 2) : ℤ) * A115607 (n + 1)

end

end A121455.P9993949302773689099

noncomputable section

/-- A121455: Expansion of q*(phi(-q)psi(q^4))^2 in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A121455.P9993949302773689099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121455 (n : ℕ) : ℤ :=
  A121455.P9993949302773689099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121461.P2302372317676712197

`A088305(A025581(n))`
-/

namespace A121461.P2302372317676712197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (A025581 n).toNat

end

end A121461.P2302372317676712197

noncomputable section

/-- A121461: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n, having last ascent of length k (1 <= k <= n).

Offset 1, canonical program `A121461.P2302372317676712197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121461 (n : ℕ) : ℤ :=
  A121461.P2302372317676712197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121461.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A121722.P5688937638399416928

`A002262(n)*A057944(n)+1`
-/

namespace A121722.P5688937638399416928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A057944 n + 1

end

end A121722.P5688937638399416928

noncomputable section

/-- A121722: Triangle T(n,k) = 1 + k*n*(n+1)/2, read by rows.

Offset 0, canonical program `A121722.P5688937638399416928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121722 (n : ℕ) : ℤ :=
  A121722.P5688937638399416928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121924.P18026522257178001485

`∑[A025581(n)]`
-/

namespace A121924.P18026522257178001485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121924.P18026522257178001485

noncomputable section

/-- A121924: Number of splitting steps that one can take with a sequence of n 2's.

Offset 1, canonical program `A121924.P18026522257178001485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121924 (n : ℕ) : ℤ :=
  A121924.P18026522257178001485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122175.P7217515254701643098

`C(A112367(n)+A025581(n), A025581(n))`
-/

namespace A122175.P7217515254701643098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A112367 n + A025581 n).toNat (A025581 n).toNat

end

end A122175.P7217515254701643098

noncomputable section

/-- A122175: Triangle, read by rows, where T(n,k) = C( k*(k+1)/2 + n-k, n-k) for n>=k>=0.

Offset 0, canonical program `A122175.P7217515254701643098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5497 terms. -/
def A122175 (n : ℕ) : ℤ :=
  (A122175.P7217515254701643098.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5497 terms. -/
def A122175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122178.P9068855449632396625

`C(A061579(n+1), A025581(n))`
-/

namespace A122178.P9068855449632396625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061579 (n + 1)).toNat (A025581 n).toNat

end

end A122178.P9068855449632396625

noncomputable section

/-- A122178: Triangle, read by rows, where T(n,k) = C( n*(n+1)/2 + n-k - 1, n-k), for n>=k>=0.

Offset 0, canonical program `A122178.P9068855449632396625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A122178 (n : ℕ) : ℤ :=
  (A122178.P9068855449632396625.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A122178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122209.P962173722163386459

`A024450((n+1)²)`
-/

namespace A122209.P962173722163386459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 ((n + 1) ^ 2)

end

end A122209.P962173722163386459

noncomputable section

/-- A122209: Sum of squares of the first n^2 primes = A024450[n^2].

Offset 1, canonical program `A122209.P962173722163386459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A122209 (n : ℕ) : ℤ :=
  A122209.P962173722163386459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A122209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122255.P6228757545920135878

`round(2/round(A089192(A080400(n+1)+1)/3))`
-/

namespace A122255.P6228757545920135878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (SequenceMachineLib.roundAway ((A089192 (A080400 (n + 1) + 1).toNat : ℚ) / 3) : ℚ))

end

end A122255.P6228757545920135878

noncomputable section

/-- A122255: Characteristic function of numbers with 3-smooth Euler's totient (A000010).

Offset 1, canonical program `A122255.P6228757545920135878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122255 (n : ℕ) : ℤ :=
  A122255.P6228757545920135878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122255.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122754.P6222509916538379196

`∑[A072003(n+1)]`
-/

namespace A122754.P6222509916538379196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122754.P6222509916538379196

noncomputable section

/-- A122754: a(n) = 10*n - A101306(n).

Offset 1, canonical program `A122754.P6222509916538379196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122754 (n : ℕ) : ℤ :=
  A122754.P6222509916538379196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122754.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A123139.P8555552717810402474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123134, A123135, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123139 (n : ℕ) : ℤ :=
  A123139.P8555552717810402474.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123134, A123135, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123139.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A123659.P18026362812738970066

`A123658(n+1)+(n+1)^14`
-/

namespace A123659.P18026362812738970066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123658 (n + 1) + ((n + 1) ^ 14 : ℤ)

end

end A123659.P18026362812738970066

noncomputable section

/-- A123659: a(n) = 1 + n^4 + n^6 + n^9 + n^10 + n^14.

Offset 1, canonical program `A123659.P18026362812738970066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123659 (n : ℕ) : ℤ :=
  A123659.P18026362812738970066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123659.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124087.P10861570023719256590

`∑[A064061(n+1)]`
-/

namespace A124087.P10861570023719256590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124087.P10861570023719256590

noncomputable section

/-- A124087: 9th column of Catalan triangle A009766.

Offset 15, canonical program `A124087.P10861570023719256590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A124087 (n : ℕ) : ℤ :=
  A124087.P10861570023719256590.a (n - 15)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A124087.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A126180.P8482950412362727135

`A025238(n+3)+n*A045445(n+1)`
-/

namespace A126180.P8482950412362727135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025238 (n + 3) + (n : ℤ) * A045445 (n + 1)

end

end A126180.P8482950412362727135

noncomputable section

/-- A126180: Number of branches in all hex trees with n edges (n>=1).

Offset 1, canonical program `A126180.P8482950412362727135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A126180 (n : ℕ) : ℤ :=
  A126180.P8482950412362727135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A126180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126185.P11307840141715013085

`(n-2)*A045445(A028310(n))/2`
-/

namespace A126185.P11307840141715013085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * A045445 (A028310 n).toNat : ℚ) / 2

end

end A126185.P11307840141715013085

noncomputable section

/-- A126185: Number of nonroot nodes of outdegree 2 in all hex trees with n edges.

Offset 0, canonical program `A126185.P11307840141715013085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126185 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126185.P11307840141715013085.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126187.P12367951474002921347

`A045445(n+3)-A002212(n+2)`
-/

namespace A126187.P12367951474002921347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 3) - A002212 (n + 2)

end

end A126187.P12367951474002921347

noncomputable section

/-- A126187: Sum of the levels of the first leaf (in the preorder traversal) over all hex trees with n edges.

Offset 1, canonical program `A126187.P12367951474002921347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126187 (n : ℕ) : ℤ :=
  A126187.P12367951474002921347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A126187.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128743.P4794288623127083266

`A026376(A028310(n))-A026378(A028310(n))`
-/

namespace A128743.P4794288623127083266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026376 (A028310 n).toNat - A026378 (A028310 n).toNat

end

end A128743.P4794288623127083266

noncomputable section

/-- A128743: Number of UU's (i.e., doublerises) in all skew Dyck paths of semilength n.

Offset 0, canonical program `A128743.P4794288623127083266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128743 (n : ℕ) : ℤ :=
  A128743.P4794288623127083266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A128743.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129160.P1319237836063940696

`A026378(n+1)+A026378(n+1)%A085362(n)`
-/

namespace A129160.P1319237836063940696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 1) + Int.tmod (A026378 (n + 1)) (A085362 n)

end

end A129160.P1319237836063940696

noncomputable section

/-- A129160: Sum of the semi-abscissae of the first returns to the axis over all skew Dyck paths of semilength n.

Offset 1, canonical program `A129160.P1319237836063940696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A129160 (n : ℕ) : ℤ :=
  A129160.P1319237836063940696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A129160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129164.P7832225125447669697

`∑[A026378(n+1)]`
-/

namespace A129164.P7832225125447669697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129164.P7832225125447669697

noncomputable section

/-- A129164: Sum of pyramid weights in all skew Dyck paths of semilength n.

Offset 1, canonical program `A129164.P7832225125447669697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A129164 (n : ℕ) : ℤ :=
  A129164.P7832225125447669697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A129164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129184.P11605388742819122473

`A023531(n+1)`
-/

namespace A129184.P11605388742819122473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1)

end

end A129184.P11605388742819122473

noncomputable section

/-- A129184: Shift operator, right.

Offset 1, canonical program `A129184.P11605388742819122473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129184 (n : ℕ) : ℤ :=
  A129184.P11605388742819122473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129184.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131569.P3746553902045059040

`∑[A122931(n+1)-A000045(n)]`
-/

namespace A131569.P3746553902045059040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122931 (n + 1) - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A131569.P3746553902045059040

noncomputable section

/-- A131569: a(n) = (1/2)*(F(n+2)-1)*(F(n+2)-2) + F(n), where F() are the Fibonacci numbers.

Offset 1, canonical program `A131569.P3746553902045059040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A131569 (n : ℕ) : ℤ :=
  A131569.P3746553902045059040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A131569.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131733.P3401814017374083905

`A014689(n+1)-n`
-/

namespace A131733.P3401814017374083905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - (n : ℤ)

end

end A131733.P3401814017374083905

noncomputable section

/-- A131733: Primes (A000040) - odds (A005408).

Offset 1, canonical program `A131733.P3401814017374083905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131733 (n : ℕ) : ℤ :=
  A131733.P3401814017374083905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131733.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A135540.P12815782177197821913

`A126646(A023416(n+1))`
-/

namespace A135540.P12815782177197821913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A023416 (n + 1)).toNat

end

end A135540.P12815782177197821913

noncomputable section

/-- A135540: a(n) = 2^(A000523(n) - A000120(n) + 2) - 1.

Offset 1, canonical program `A135540.P12815782177197821913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135540 (n : ℕ) : ℤ :=
  A135540.P12815782177197821913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135540.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A136251.P10436030816178867746

`A000040(n+1)%A007605(n+1)`
-/

namespace A136251.P10436030816178867746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A007605 (n + 1))

end

end A136251.P10436030816178867746

noncomputable section

/-- A136251: a(n) = n-th prime reduced modulo the sum of its digits.

Offset 1, canonical program `A136251.P10436030816178867746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136251 (n : ℕ) : ℤ :=
  A136251.P10436030816178867746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136251.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139131.P2428933415947395393

`gcd(A078637(n+1), A212760(n))`
-/

namespace A139131.P2428933415947395393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078637 (n + 1)) (A212760 n)

end

end A139131.P2428933415947395393

noncomputable section

/-- A139131: Squarefree kernel of n*(n+1)/2.

Offset 1, canonical program `A139131.P2428933415947395393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139131 (n : ℕ) : ℤ :=
  (A139131.P2428933415947395393.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139131.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140868.P4707630110033227937

`abs(1-A098021(n+1))`
-/

namespace A140868.P4707630110033227937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A098021 (n + 1)|

end

end A140868.P4707630110033227937

noncomputable section

/-- A140868: a(n) = floor(floor(n*alpha)*alpha) where alpha = 1+sqrt(2) = A014176.

Offset 1, canonical program `A140868.P4707630110033227937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140868 (n : ℕ) : ℤ :=
  A140868.P4707630110033227937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140868.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143212.P5596809947420375511

`A096140(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A143212.P5596809947420375511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096140 (n + 1) - a (n - 1)

end

end A143212.P5596809947420375511

noncomputable section

/-- A143212: a(n) = Fibonacci(n) * (Fibonacci(n+2) - 1).

Offset 1, canonical program `A143212.P5596809947420375511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A143212 (n : ℕ) : ℤ :=
  A143212.P5596809947420375511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A143212.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144257.P7095601649401816149

`A128076(n+1)-A123578(n)`
-/

namespace A144257.P7095601649401816149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) - A123578 n

end

end A144257.P7095601649401816149

noncomputable section

/-- A144257: Weight array of A086270.

Offset 1, canonical program `A144257.P7095601649401816149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144257 (n : ℕ) : ℤ :=
  A144257.P7095601649401816149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144257.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144328.P12344292576665353938

`A128227(abs(1-n))`
-/

namespace A144328.P12344292576665353938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 |1 - (n : ℤ)|.toNat

end

end A144328.P12344292576665353938

noncomputable section

/-- A144328: A002260 preceded by a column of 1's: a (1, 1, 2, 3, 4, 5, ...) crescendo triangle by rows.

Offset 1, canonical program `A144328.P12344292576665353938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144328 (n : ℕ) : ℤ :=
  A144328.P12344292576665353938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144328.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A145378.P6152489767625416770

`∑{d}[n+1, A113184(#)]`
-/

namespace A145378.P6152489767625416770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113184 d

end

end A145378.P6152489767625416770

noncomputable section

/-- A145378: a(n) = Sum_{d|n} sigma(d) - 2*Sum_{2c|n} sigma(c) + 4*Sum_{4b|n} sigma(b).

Offset 1, canonical program `A145378.P6152489767625416770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145378 (n : ℕ) : ℤ :=
  A145378.P6152489767625416770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145378.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A147967.P15858738400583661702

`A141042(n+1)-(n+1)`
-/

namespace A147967.P15858738400583661702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) - (n + 1 : ℤ)

end

end A147967.P15858738400583661702

noncomputable section

/-- A147967: a(n) = n*(A001223(n)-1) = n*A046933(n).

Offset 1, canonical program `A147967.P15858738400583661702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147967 (n : ℕ) : ℤ :=
  A147967.P15858738400583661702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147967.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157052.P591257784963713636

`2*(A054563(n)+A006414(n))`
-/

namespace A157052.P591257784963713636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054563 n + A006414 n)

end

end A157052.P591257784963713636

noncomputable section

/-- A157052: Number of integer sequences of length n+1 with sum zero and sum of absolute values 6.

Offset 1, canonical program `A157052.P591257784963713636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157052 (n : ℕ) : ℤ :=
  A157052.P591257784963713636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157052.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A158405.P17637820199145196077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158405 (n : ℕ) : ℤ :=
  A158405.P17637820199145196077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158405.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A162177.P8365891136831643592

`A014689(abs(1-n)+1)-1`
-/

namespace A162177.P8365891136831643592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A162177.P8365891136831643592

noncomputable section

/-- A162177: a(n) is the number of composite numbers that are smaller than A008578(n).

Offset 1, canonical program `A162177.P8365891136831643592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162177 (n : ℕ) : ℤ :=
  A162177.P8365891136831643592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162195.P10246940885884930207

`A162194(n+1)-A018252(n+1)`
-/

namespace A162195.P10246940885884930207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162194 (n + 1) - A018252 (n + 1)

end

end A162195.P10246940885884930207

noncomputable section

/-- A162195: Sum of proper divisors of n-th nonprime number A018252(n).

Offset 1, canonical program `A162195.P10246940885884930207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162195 (n : ℕ) : ℤ :=
  A162195.P10246940885884930207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162196.P5330732782556532426

`A152770(Δ[A051349(n)])`
-/

namespace A162196.P5330732782556532426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (f1 (n + 1) - f1 n).toNat

end

end A162196.P5330732782556532426

noncomputable section

/-- A162196: Sum of proper divisors minus the number of proper divisors of nonprime number A018252(n).

Offset 1, canonical program `A162196.P5330732782556532426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. -/
def A162196 (n : ℕ) : ℤ :=
  A162196.P5330732782556532426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8771 terms. -/
def A162196.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A162419.P3264768451038245981

`∑{d}[n+1, #]*A113184(n+1)`
-/

namespace A162419.P3264768451038245981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A113184 (n + 1)

end

end A162419.P3264768451038245981

noncomputable section

/-- A162419: a(n) = sigma(n)*|A002129(n)| where sigma(n) = A000203(n).

Offset 1, canonical program `A162419.P3264768451038245981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162419 (n : ℕ) : ℤ :=
  A162419.P3264768451038245981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162419.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A163061.P14291798718491620534

`A051349(n)+∑[A000040(n+1)]`
-/

namespace A163061.P14291798718491620534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163061.P14291798718491620534

noncomputable section

/-- A163061: Sum of the first n primes plus the first n nonprimes.

Offset 1, canonical program `A163061.P14291798718491620534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163061 (n : ℕ) : ℤ :=
  A163061.P14291798718491620534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163116.P2118888762770893365

`∑[A000040(n+1)]-A051349(n)`
-/

namespace A163116.P2118888762770893365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A051349 n

end

end A163116.P2118888762770893365

noncomputable section

/-- A163116: Partial sums of A161671.

Offset 1, canonical program `A163116.P2118888762770893365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163116 (n : ℕ) : ℤ :=
  A163116.P2118888762770893365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163116.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A168058.P10626882976958940193

`xor(1, 1-A168055(n))`
-/

namespace A168058.P10626882976958940193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A168055 n)

end

end A168058.P10626882976958940193

noncomputable section

/-- A168058: Expansion of x + sqrt(1-2x-3x^2).

Offset 0, canonical program `A168058.P10626882976958940193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A168058 (n : ℕ) : ℤ :=
  A168058.P10626882976958940193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A168058.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A168160.P11367775840918094222

`∑[A023416(n+1)+n*A036987(n)]`
-/

namespace A168160.P11367775840918094222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) + (n : ℤ) * A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168160.P11367775840918094222

noncomputable section

/-- A168160: Number of 0's in the matrix whose lines are the binary expansion of the numbers 1,...,n.

Offset 1, canonical program `A168160.P11367775840918094222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168160 (n : ℕ) : ℤ :=
  A168160.P11367775840918094222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168160.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171504.P17073247254713729327

`Δ[A051349(n)]+1+n`
-/

namespace A171504.P17073247254713729327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A171504.P17073247254713729327

noncomputable section

/-- A171504: a(n) = n-th nonprime + n.

Offset 1, canonical program `A171504.P17073247254713729327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171504 (n : ℕ) : ℤ :=
  A171504.P17073247254713729327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171504.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175540.P2133438178081221409

`A163057(n+1)-1`
-/

namespace A175540.P2133438178081221409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) - 1

end

end A175540.P2133438178081221409

noncomputable section

/-- A175540: a(n) = A067076(n) + n.

Offset 1, canonical program `A175540.P2133438178081221409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175540 (n : ℕ) : ℤ :=
  A175540.P2133438178081221409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175540.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A176292.P6728800770954373532

`eq[0, Δ[A062502(n+1)]]`
-/

namespace A176292.P6728800770954373532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176292.P6728800770954373532

noncomputable section

/-- A176292: Numbers k such that the prime factorizations of composite(k) and composite(k+1) have the same number of primes (including multiplicities).

Offset 1, canonical program `A176292.P6728800770954373532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176292 (n : ℕ) : ℤ :=
  (A176292.P6728800770954373532.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176292.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A111655.P15410137681632435708

`A002808(A111654(n+1))`
-/

namespace A111655.P15410137681632435708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A111654 (n + 1)).toNat

end

end A111655.P15410137681632435708

noncomputable section

/-- A111655: n-th composite number appears n-th composite number times.

Offset 1, canonical program `A111655.P15410137681632435708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111655 (n : ℕ) : ℤ :=
  A111655.P15410137681632435708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111657.P14274310389912407619

`A002808(A083375(n+1))`
-/

namespace A111657.P14274310389912407619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A083375 (n + 1)).toNat

end

end A111657.P14274310389912407619

noncomputable section

/-- A111657: n-th composite number appears n-th prime times.

Offset 1, canonical program `A111657.P14274310389912407619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111657 (n : ℕ) : ℤ :=
  A111657.P14274310389912407619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111688.P14076338886946641188

`A093515(A065475(n+1))`
-/

namespace A111688.P14076338886946641188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A065475 (n + 1)).toNat

end

end A111688.P14076338886946641188

noncomputable section

/-- A111688: Primes and composite numbers alternately in increasing order.

Offset 1, canonical program `A111688.P14076338886946641188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111688 (n : ℕ) : ℤ :=
  A111688.P14076338886946641188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111972.P10773037967819847724

`∑{e}[A260188(n+1), #]`
-/

namespace A111972.P10773037967819847724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A111972.P10773037967819847724

noncomputable section

/-- A111972: a(n) = Max(omega(k): 1<=k<=n), where omega(n) = A001221(n), the number of distinct prime factors of n.

Offset 1, canonical program `A111972.P10773037967819847724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111972 (n : ℕ) : ℤ :=
  (A111972.P10773037967819847724.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111972.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A112604.P7169979849370553245

`A033762(2*n)`
-/

namespace A112604.P7169979849370553245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (2 * n)

end

end A112604.P7169979849370553245

noncomputable section

/-- A112604: Number of representations of n as a sum of three times a square and two times a triangular number.

Offset 0, canonical program `A112604.P7169979849370553245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112604 (n : ℕ) : ℤ :=
  A112604.P7169979849370553245.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112604.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112773.P44553575666953962

`3*A008578(n+1)`
-/

namespace A112773.P44553575666953962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008578 (n + 1)

end

end A112773.P44553575666953962

noncomputable section

/-- A112773: 3 together with primes multiplied by 3.

Offset 1, canonical program `A112773.P44553575666953962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112773 (n : ℕ) : ℤ :=
  A112773.P44553575666953962.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112773.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112794.P1002080450273918995

`A000040(eq[0, A048448(n)%5])`
-/

namespace A112794.P1002080450273918995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048448 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112794.P1002080450273918995

noncomputable section

/-- A112794: Primes such that the sum of the predecessor and successor primes is divisible by 5.

Offset 1, canonical program `A112794.P1002080450273918995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112794 (n : ℕ) : ℤ :=
  A112794.P1002080450273918995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112988.P2584169627832420674

`A006005(n+1)+A077150(A006005(n+1))+1`
-/

namespace A112988.P2584169627832420674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + (A077150 (A006005 (n + 1)).toNat + 1)

end

end A112988.P2584169627832420674

noncomputable section

/-- A112988: Position of n-th prime in A089088.

Offset 1, canonical program `A112988.P2584169627832420674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112988 (n : ℕ) : ℤ :=
  A112988.P2584169627832420674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113063.P2944476771486333311

`lcm(xor(n, n+1)%3, A255648(n+1))`
-/

namespace A113063.P2944476771486333311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.xor n (n + 1) % 3 : ℕ) : ℤ) (A255648 (n + 1))

end

end A113063.P2944476771486333311

noncomputable section

/-- A113063: Associated with theta series of hexagonal net with respect to a node.

Offset 1, canonical program `A113063.P2944476771486333311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113063 (n : ℕ) : ℤ :=
  (A113063.P2944476771486333311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113166.P13206333978101695091

`∑{d}[n+1, #*A381936((n+1)/#)]`
-/

namespace A113166.P13206333978101695091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A381936 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113166.P13206333978101695091

noncomputable section

/-- A113166: a(n) = Sum_{d|n} A000010(n/d) * A000045(d-1).

Offset 1, canonical program `A113166.P13206333978101695091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A113166 (n : ℕ) : ℤ :=
  A113166.P13206333978101695091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A113166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113446.P13280159862498089368

`∑{d}[n+1, A244611(#)*A350872((n+1)/#)]`
-/

namespace A113446.P13280159862498089368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A244611 d * A350872 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113446.P13280159862498089368

noncomputable section

/-- A113446: Expansion of (phi(q)^2 - phi(q^3)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A113446.P13280159862498089368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113446 (n : ℕ) : ℤ :=
  A113446.P13280159862498089368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113580.P2441658852264608091

`∑{digits}[n, A008578(#+1)]`
-/

namespace A113580.P2441658852264608091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008578 (x + 1)).sum

end

end A113580.P2441658852264608091

noncomputable section

/-- A113580: Define prime(0) = 1; then a(n) = sum prime(d), where d ranges over the decimal digits of n.

Offset 0, canonical program `A113580.P2441658852264608091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A113580 (n : ℕ) : ℤ :=
  A113580.P2441658852264608091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A113580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113849.P8712089641262290933

`A005117(n+2)^4`
-/

namespace A113849.P8712089641262290933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) ^ 4

end

end A113849.P8712089641262290933

noncomputable section

/-- A113849: Numbers whose prime factors are raised to the fourth power.

Offset 1, canonical program `A113849.P8712089641262290933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113849 (n : ℕ) : ℤ :=
  A113849.P8712089641262290933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113850.P6425203316220628880

`A005117(n+2)^5`
-/

namespace A113850.P6425203316220628880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) ^ 5

end

end A113850.P6425203316220628880

noncomputable section

/-- A113850: Numbers whose prime factors are raised to the fifth power.

Offset 1, canonical program `A113850.P6425203316220628880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113850 (n : ℕ) : ℤ :=
  A113850.P6425203316220628880.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113851.P8385536040915747511

`A005117(n+2)^6`
-/

namespace A113851.P8385536040915747511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) ^ 6

end

end A113851.P8385536040915747511

noncomputable section

/-- A113851: Numbers whose prime factors are raised to the sixth power.

Offset 1, canonical program `A113851.P8385536040915747511`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113851 (n : ℕ) : ℤ :=
  A113851.P8385536040915747511.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113851.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113852.P12512706821843894596

`A005117(n+2)^7`
-/

namespace A113852.P12512706821843894596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) ^ 7

end

end A113852.P12512706821843894596

noncomputable section

/-- A113852: Numbers whose prime factors are raised to the seventh power.

Offset 1, canonical program `A113852.P12512706821843894596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113852 (n : ℕ) : ℤ :=
  A113852.P12512706821843894596.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113974.P1614566940091252666

`A033999(n)*A123331(n+1)`
-/

namespace A113974.P1614566940091252666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A123331 (n + 1)

end

end A113974.P1614566940091252666

noncomputable section

/-- A113974: Expansion of (1-phi(x^3)^3/phi(x))/2 where phi() is a Ramanujan theta function.

Offset 1, canonical program `A113974.P1614566940091252666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1591 terms. -/
def A113974 (n : ℕ) : ℤ :=
  A113974.P1614566940091252666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1591 terms. -/
def A113974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114180.P93888911312312144

`A064148(eq[1, A064148(n+2)-A064148(n+1)]+1)`
-/

namespace A114180.P93888911312312144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (n + 2) - A064148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A114180.P93888911312312144

noncomputable section

/-- A114180: Numbers n with mu(n) = mu(n+1) = mu(n+2).

Offset 1, canonical program `A114180.P93888911312312144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A114180 (n : ℕ) : ℤ :=
  A114180.P93888911312312144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A114180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114214.P11537761350900255498

`A002487(or(1, n))`
-/

namespace A114214.P11537761350900255498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.lor 1 n)

end

end A114214.P11537761350900255498

noncomputable section

/-- A114214: Diagonal sums of number triangle A114213.

Offset 0, canonical program `A114214.P11537761350900255498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114214 (n : ℕ) : ℤ :=
  A114214.P11537761350900255498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114403.P7554247449644843870

`A014612(n+2)-A014612(n+1)`
-/

namespace A114403.P7554247449644843870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 2) - A014612 (n + 1)

end

end A114403.P7554247449644843870

noncomputable section

/-- A114403: Triprime gaps. First differences of A014612.

Offset 1, canonical program `A114403.P7554247449644843870`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114403 (n : ℕ) : ℤ :=
  A114403.P7554247449644843870.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114519.P3524854728056207367

`p?[A008475(n+1)]`
-/

namespace A114519.P3524854728056207367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114519.P3524854728056207367

noncomputable section

/-- A114519: a(n) = A008475(A114518(n)).

Offset 1, canonical program `A114519.P3524854728056207367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114519 (n : ℕ) : ℤ :=
  A114519.P3524854728056207367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114521.P15757222652017325843

`p?[A008475(n+1)%(n+1)]`
-/

namespace A114521.P15757222652017325843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008475 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A114521.P15757222652017325843

noncomputable section

/-- A114521: a(n) = A008475(A114520(n)).

Offset 1, canonical program `A114521.P15757222652017325843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114521 (n : ℕ) : ℤ :=
  A114521.P15757222652017325843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114896.P2332190021878675213

`A272171(n+1)*A272171(A061579(n)+1)`
-/

namespace A114896.P2332190021878675213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272171 (n + 1) * A272171 (A061579 n + 1).toNat

end

end A114896.P2332190021878675213

noncomputable section

/-- A114896: A symmetrical triangle of weight coefficients using the Divisors Sigma function: t(n,m) = Sigma_0(n-m+1)*Sigma_0(m+1).

Offset 0, canonical program `A114896.P2332190021878675213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A114896 (n : ℕ) : ℤ :=
  A114896.P2332190021878675213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A114896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115022.P12251329364689534778

`A051348(A005117(n+1))`
-/

namespace A115022.P12251329364689534778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051348 (A005117 (n + 1)).toNat

end

end A115022.P12251329364689534778

noncomputable section

/-- A115022: a(n) = F(n-th squarefree)/product{p=primes,p|(n-th squarefree)} F(p), where F(m) is m-th Fibonacci number.

Offset 1, canonical program `A115022.P12251329364689534778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A115022 (n : ℕ) : ℤ :=
  A115022.P12251329364689534778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A115022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115025.P2134596540067734763

`A030101(n)*A054243(n)+1`
-/

namespace A115025.P2134596540067734763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n * A054243 n + 1

end

end A115025.P2134596540067734763

noncomputable section

/-- A115025: a(n) = n-th element of n-th row of triangle shown below.

Offset 1, canonical program `A115025.P2134596540067734763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A115025 (n : ℕ) : ℤ :=
  A115025.P2134596540067734763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A115025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115402.P3622041107575865208

`A014612(n+4)-A014612(n+1)`
-/

namespace A115402.P3622041107575865208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 4) - A014612 (n + 1)

end

end A115402.P3622041107575865208

noncomputable section

/-- A115402: Difference between 3-almostprime(n) and 3-almostprime(n+3).

Offset 1, canonical program `A115402.P3622041107575865208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115402 (n : ℕ) : ℤ :=
  A115402.P3622041107575865208.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116078.P123251626147989566

`A139262(n)+A000984(n)`
-/

namespace A116078.P123251626147989566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 n + A000984 n

end

end A116078.P123251626147989566

noncomputable section

/-- A116078: Column 0 of triangle A116077.

Offset 0, canonical program `A116078.P123251626147989566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A116078 (n : ℕ) : ℤ :=
  A116078.P123251626147989566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A116078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116361.P14000542580519849199

`A089309(A348363(n))`
-/

namespace A116361.P14000542580519849199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A348363 n).toNat

end

end A116361.P14000542580519849199

noncomputable section

/-- A116361: Smallest k such that n XOR n*2^k = n*(2^k + 1).

Offset 0, canonical program `A116361.P14000542580519849199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A116361 (n : ℕ) : ℤ :=
  A116361.P14000542580519849199.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A116361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116466.P2154189998451542687

`A000034(n)*A112556(A004526(n))`
-/

namespace A116466.P2154189998451542687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A112556 (A004526 n).toNat

end

end A116466.P2154189998451542687

noncomputable section

/-- A116466: Unsigned row sums of triangle A114700.

Offset 0, canonical program `A116466.P2154189998451542687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A116466 (n : ℕ) : ℤ :=
  A116466.P2154189998451542687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A116466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116816.P12699467769989003574

`A159036(n+2)-∑[A020695(2*n+1)]`
-/

namespace A116816.P12699467769989003574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159036 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116816.P12699467769989003574

noncomputable section

/-- A116816: Number of permutations of length n which avoid the patterns 2314, 3124, 4312.

Offset 1, canonical program `A116816.P12699467769989003574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A116816 (n : ℕ) : ℤ :=
  A116816.P12699467769989003574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A116816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117027.P12689404551430193321

`A117301(4*n+1)`
-/

namespace A117027.P12689404551430193321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117301 (4 * n + 1)

end

end A117027.P12689404551430193321

noncomputable section

/-- A117027: Determinants of 2 X 2 matrices of non-overlapping blocks of 4 consecutive primes.

Offset 1, canonical program `A117027.P12689404551430193321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A117027 (n : ℕ) : ℤ :=
  A117027.P12689404551430193321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A117027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117842.P12081368974413782069

`∑[A007918(n)]`
-/

namespace A117842.P12081368974413782069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117842.P12081368974413782069

noncomputable section

/-- A117842: Partial sum of smallest prime >= n (A007918).

Offset 0, canonical program `A117842.P12081368974413782069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117842 (n : ℕ) : ℤ :=
  A117842.P12081368974413782069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117946.P16806305034114280741

`A102283(n)*A120880(A064429(n))`
-/

namespace A117946.P16806305034114280741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A120880 (A064429 n).toNat

end

end A117946.P16806305034114280741

noncomputable section

/-- A117946: a(3n)=0, a(3n+1)/a(1)=a(3n+2)/a(2)=A059151(n).

Offset 0, canonical program `A117946.P16806305034114280741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A117946 (n : ℕ) : ℤ :=
  A117946.P16806305034114280741.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A117946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118112.P14833003984407202803

`A118114(n+1)%(n+2)`
-/

namespace A118112.P14833003984407202803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118114 (n + 1)) (n + 2 : ℤ)

end

end A118112.P14833003984407202803

noncomputable section

/-- A118112: a(n) = binomial(3n,n) mod (n+1).

Offset 1, canonical program `A118112.P14833003984407202803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118112 (n : ℕ) : ℤ :=
  A118112.P14833003984407202803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118534.P17892582238153728483

`A062234(n+1)%A005722(A147965(n+1))`
-/

namespace A118534.P17892582238153728483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062234 (n + 1)) (A005722 (A147965 (n + 1)).toNat)

end

end A118534.P17892582238153728483

noncomputable section

/-- A118534: a(n) is the largest k such that prime(n+1) = prime(n) + (prime(n) mod k), or 0 if no such k exists.

Offset 1, canonical program `A118534.P17892582238153728483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118534 (n : ℕ) : ℤ :=
  A118534.P17892582238153728483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118590.P9922597422705317347

`p?[A267635(A001223(n+1))+A065091(n+1)]`
-/

namespace A118590.P9922597422705317347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A001223 (n + 1)).toNat + A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118590.P9922597422705317347

noncomputable section

/-- A118590: Larger of two consecutive primes whose positive difference is a square.

Offset 1, canonical program `A118590.P9922597422705317347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A118590 (n : ℕ) : ℤ :=
  A118590.P9922597422705317347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A118590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118624.P709661768869797743

`p?[A226502(n+1)-1]`
-/

namespace A118624.P709661768869797743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226502 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118624.P709661768869797743

noncomputable section

/-- A118624: Primes of the form prime(n+1)*prime(n+3) - prime(n)*prime(n+2) - 1, ordered by n.

Offset 1, canonical program `A118624.P709661768869797743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. -/
def A118624 (n : ℕ) : ℤ :=
  A118624.P709661768869797743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 494 terms. -/
def A118624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118754.P3684221222791973926

`A007918(A008587(n))`
-/

namespace A118754.P3684221222791973926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A008587 n).toNat

end

end A118754.P3684221222791973926

noncomputable section

/-- A118754: Smallest prime >= 5*n.

Offset 0, canonical program `A118754.P3684221222791973926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118754 (n : ℕ) : ℤ :=
  A118754.P3684221222791973926.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118755.P17339163490274864131

`A007918(A008588(n))`
-/

namespace A118755.P17339163490274864131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A008588 n).toNat

end

end A118755.P17339163490274864131

noncomputable section

/-- A118755: Smallest prime >= 6*n.

Offset 0, canonical program `A118755.P17339163490274864131`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118755 (n : ℕ) : ℤ :=
  A118755.P17339163490274864131.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118755.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119789.P14087946612977688962

`A289207(A002262(n))+A289207(A003056(n))`
-/

namespace A119789.P14087946612977688962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A002262 n).toNat + A289207 (A003056 n).toNat

end

end A119789.P14087946612977688962

noncomputable section

/-- A119789: T(n, k) = floor(log_{goldenratio}(Fibonacci(n)*Fibonacci(k))), with T(n, k) = 0 for n < 3, T(n, 0) = n-2 for n > 2, triangle read by rows.

Offset 0, canonical program `A119789.P14087946612977688962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A119789 (n : ℕ) : ℤ :=
  A119789.P14087946612977688962.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A119789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119992.P16604952427629540782

`A008578(A095117(n+1))`
-/

namespace A119992.P16604952427629540782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A095117 (n + 1)).toNat

end

end A119992.P16604952427629540782

noncomputable section

/-- A119992: a(n) = n-th positive integer which is coprime to n!.

Offset 1, canonical program `A119992.P16604952427629540782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119992 (n : ℕ) : ℤ :=
  A119992.P16604952427629540782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A119992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120044.P16653427168964974241

`A014612(10^n)`
-/

namespace A120044.P16653427168964974241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (10 ^ n)

end

end A120044.P16653427168964974241

noncomputable section

/-- A120044: The 10^n-th 3-almost prime.

Offset 0, canonical program `A120044.P16653427168964974241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120044 (n : ℕ) : ℤ :=
  A120044.P16653427168964974241.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120044.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120438.P18071063481821398629

`A141035(A094743(n+2))`
-/

namespace A120438.P18071063481821398629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141035 (A094743 (n + 2)).toNat

end

end A120438.P18071063481821398629

noncomputable section

/-- A120438: Average of twin-prime pairs modulo 10 (least absolute residue).

Offset 1, canonical program `A120438.P18071063481821398629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A120438 (n : ℕ) : ℤ :=
  A120438.P18071063481821398629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A120438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120458.P12527743672854816924

`A008578(1-C(∑[char[∑[n]]], 2)+n)^∑[char[∑[n+1]]]`
-/

namespace A120458.P12527743672854816924
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat ^ (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A120458.P12527743672854816924

noncomputable section

/-- A120458: Triangle read by rows: row 0 is 1; for n>0, row n gives 1^n, prime(1)^n, prime(2)^n, ..., prime(n)^n.

Offset 0, canonical program `A120458.P12527743672854816924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A120458 (n : ℕ) : ℤ :=
  A120458.P12527743672854816924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A120458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120676.P5759093107457240539

`A120675(n+1)+1`
-/

namespace A120676.P5759093107457240539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120675 (n + 1) + 1

end

end A120676.P5759093107457240539

noncomputable section

/-- A120676: Number of prime factors of even squarefree numbers A039956.

Offset 1, canonical program `A120676.P5759093107457240539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120676 (n : ℕ) : ℤ :=
  A120676.P5759093107457240539.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120676.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A121454.P12823951015528090938

`(-1)^n*A035162(n+1)`
-/

namespace A121454.P12823951015528090938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A035162 (n + 1)

end

end A121454.P12823951015528090938

noncomputable section

/-- A121454: Expansion of q * psi(-q) * psi(-q^7) in powers of q where psi(q) is a Ramanujan theta function.

Offset 1, canonical program `A121454.P12823951015528090938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121454 (n : ℕ) : ℤ :=
  A121454.P12823951015528090938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121614.P7539545876056911518

`∩[A104211(n+1), A108662(n+1)]`
-/

namespace A121614.P7539545876056911518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121614.P7539545876056911518

noncomputable section

/-- A121614: Numbers that have composite sum of digits and prime sum of squares of digits.

Offset 1, canonical program `A121614.P7539545876056911518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121614 (n : ℕ) : ℤ :=
  (A121614.P7539545876056911518.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121893.P2090054264174111428

`comp[∪[(n+2)²-1, A222030(n)]]`
-/

namespace A121893.P2090054264174111428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A121893.P2090054264174111428

noncomputable section

/-- A121893: Composite integers not equal to k*[k or k+1 or k+2] where k is a natural number.

Offset 1, canonical program `A121893.P2090054264174111428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121893 (n : ℕ) : ℤ :=
  (A121893.P2090054264174111428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122032.P15518988974638385673

`floor(∏[A014612(n+1)/A000040(n+1)])`
-/

namespace A122032.P15518988974638385673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014612 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A122032.P15518988974638385673

noncomputable section

/-- A122032: Product of the first n 3-almost primes, divided by product of the first n primes, rounded down.

Offset 1, canonical program `A122032.P15518988974638385673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122032 (n : ℕ) : ℤ :=
  A122032.P15518988974638385673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122132.P3265730221735149108

`floor(A192863(n+1)/2)`
-/

namespace A122132.P3265730221735149108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A192863 (n + 1) : ℚ) / 2⌋

end

end A122132.P3265730221735149108

noncomputable section

/-- A122132: Squarefree numbers multiplied by binary powers.

Offset 1, canonical program `A122132.P3265730221735149108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122132 (n : ℕ) : ℤ :=
  A122132.P3265730221735149108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122132.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A124940.P17540590922783165598

`∩[A014612(n+1)-3, A014612(n+1)]`
-/

namespace A124940.P17540590922783165598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124940.P17540590922783165598

noncomputable section

/-- A124940: Numbers k such that k and k+3 are 3-almost primes.

Offset 1, canonical program `A124940.P17540590922783165598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. -/
def A124940 (n : ℕ) : ℤ :=
  (A124940.P17540590922783165598.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. -/
def A124940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125061.P9643455173418565878

`A163746(A028310(n))`
-/

namespace A125061.P9643455173418565878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (A028310 n).toNat

end

end A125061.P9643455173418565878

noncomputable section

/-- A125061: Expansion of psi(q) * psi(q^2) * chi(q^3) * chi(-q^6) in powers of q where psi(), chi() are Ramanujan theta functions.

Offset 0, canonical program `A125061.P9643455173418565878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125061 (n : ℕ) : ℤ :=
  A125061.P9643455173418565878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
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

/-! ## A126079.P2882352660744408413

`(A002421(n)+A002420(n))/2`
-/

namespace A126079.P2882352660744408413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002421 n + A002420 n : ℚ) / 2

end

end A126079.P2882352660744408413

noncomputable section

/-- A126079: G.f.: (1-2*x)*sqrt(1-4*x).

Offset 0, canonical program `A126079.P2882352660744408413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A126079 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126079.P2882352660744408413.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A126079.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A127072.P15848589408681114756

`eq[A066601(n+1), A096196(n+1)]+1`
-/

namespace A127072.P15848589408681114756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A127072.P15848589408681114756

noncomputable section

/-- A127072: Numbers k that divide 3^k - 2^k - 1.

Offset 1, canonical program `A127072.P15848589408681114756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A127072 (n : ℕ) : ℤ :=
  (A127072.P15848589408681114756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A127072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127268.P10382840147593154222

`A008475(n+1)%A028310(Δ[A024924(n)])`
-/

namespace A127268.P10382840147593154222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008475 (n + 1)) (A028310 (f1 (n + 1) - f1 n).toNat)

end

end A127268.P10382840147593154222

noncomputable section

/-- A127268: If the prime factorization of n is n = Product_{p|n} p^b(p,n) (p = distinct prime divisors of n, each b(p,n) is a positive integer), then a(n) is (Sum_{p|n} p^b(p,n)) taken mod (Sum_{p|n} p).

Offset 1, canonical program `A127268.P10382840147593154222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127268 (n : ℕ) : ℤ :=
  A127268.P10382840147593154222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127268.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128104.P677693955266252754

`A128105(n+1)-(n+1)`
-/

namespace A128104.P677693955266252754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128105 (n + 1) - (n + 1 : ℤ)

end

end A128104.P677693955266252754

noncomputable section

/-- A128104: a(n) = largest multiple of n which is < exp(n).

Offset 1, canonical program `A128104.P677693955266252754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A128104 (n : ℕ) : ℤ :=
  A128104.P677693955266252754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A128104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128288.P7303772657565545819

`A023163(n+2)/3`
-/

namespace A128288.P7303772657565545819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023163 (n + 2) : ℚ) / 3

end

end A128288.P7303772657565545819

noncomputable section

/-- A128288: a(n) = A023163(n)/3 for n > 1.

Offset 2, canonical program `A128288.P7303772657565545819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7782 terms. -/
def A128288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128288.P7303772657565545819.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7782 terms. -/
def A128288.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130593.P16939163601674739257

`∩[A037143(n+1), A125494(n+1)]`
-/

namespace A130593.P16939163601674739257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130593.P16939163601674739257

noncomputable section

/-- A130593: Evil semiprimes.

Offset 1, canonical program `A130593.P16939163601674739257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2683 terms. -/
def A130593 (n : ℕ) : ℤ :=
  (A130593.P16939163601674739257.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2683 terms. -/
def A130593.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130726.P14698602818690093839

`A000142(A007917(n+2))`
-/

namespace A130726.P14698602818690093839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A007917 (n + 2)).toNat

end

end A130726.P14698602818690093839

noncomputable section

/-- A130726: Factorial of the largest prime less than or equal to n.

Offset 1, canonical program `A130726.P14698602818690093839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130726 (n : ℕ) : ℤ :=
  A130726.P14698602818690093839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007917, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130726.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A132189.P8063069834652726525

`2*A132345(n+1)`
-/

namespace A132189.P8063069834652726525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132345 (n + 1)

end

end A132189.P8063069834652726525

noncomputable section

/-- A132189: Number of non-constant 3-term geometric progressions with no term exceeding n.

Offset 1, canonical program `A132189.P8063069834652726525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132189 (n : ℕ) : ℤ :=
  A132189.P8063069834652726525.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132189.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A133466.P7898642945469282061

`4*A005117(n+1)`
-/

namespace A133466.P7898642945469282061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005117 (n + 1)

end

end A133466.P7898642945469282061

noncomputable section

/-- A133466: Positive integers k for which there is exactly one integer i in {1,2,3,...,k-1} such that i*k is a square.

Offset 1, canonical program `A133466.P7898642945469282061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133466 (n : ℕ) : ℤ :=
  A133466.P7898642945469282061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133466.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A134548.P12181077314065941392

`Δ[A095815(a(n-1))+A036453(n+1)]` with `a(0)=0, a(1)=1`
-/

namespace A134548.P12181077314065941392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A095815 (f1 (n - 1)).toNat + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134548.P12181077314065941392

noncomputable section

/-- A134548: a(1)=1, a(n) = 2 + maximal digit of Sum_{j=1..n-1} a(j).

Offset 1, canonical program `A134548.P12181077314065941392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1051 terms. -/
def A134548 (n : ℕ) : ℤ :=
  A134548.P12181077314065941392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1051 terms. -/
def A134548.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A135774.P8782741782115960523

`eq[A032741(n)+1, A000523(A000267(n))]`
-/

namespace A135774.P8782741782115960523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A000267 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135774.P8782741782115960523

noncomputable section

/-- A135774: Numbers having number of divisors equal to number of digits in base 4.

Offset 1, canonical program `A135774.P8782741782115960523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A135774 (n : ℕ) : ℤ :=
  (A135774.P8782741782115960523.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A135774.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A136496.P12488173542961786385

`A202341(A005374(n)+n+2)`
-/

namespace A136496.P12488173542961786385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202341 (A005374 n + (n + 2 : ℤ)).toNat

end

end A136496.P12488173542961786385

noncomputable section

/-- A136496: Solution of the complementary equation b(n)=a(a(n))+n; this is sequence b; sequence a is A136495.

Offset 1, canonical program `A136496.P12488173542961786385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5944 terms. -/
def A136496 (n : ℕ) : ℤ :=
  A136496.P12488173542961786385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5944 terms. -/
def A136496.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A137720.P10853198425669921635

`A002420(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A137720.P10853198425669921635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002420 n + 3 * a (n - 1)

end

end A137720.P10853198425669921635

noncomputable section

/-- A137720: Expansion of sqrt(1-4*x)/(1-3*x).

Offset 0, canonical program `A137720.P10853198425669921635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A137720 (n : ℕ) : ℤ :=
  A137720.P10853198425669921635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A137720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137728.P9076727154508020560

`A056129(n+1)*A157928(n)`
-/

namespace A137728.P9076727154508020560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056129 (n + 1) * A157928 n

end

end A137728.P9076727154508020560

noncomputable section

/-- A137728: Second digit from the end of product of first n primes.

Offset 1, canonical program `A137728.P9076727154508020560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5787 terms. -/
def A137728 (n : ℕ) : ℤ :=
  A137728.P9076727154508020560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5787 terms. -/
def A137728.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138606.P12451982431508658228

`A005408(n)-a(n-A194029(n+1))` with `a(0)=1`
-/

namespace A138606.P12451982431508658228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005408 n - a ((n : ℤ) - A194029 (n + 1)).toNat

end

end A138606.P12451982431508658228

noncomputable section

/-- A138606: List first F(1) odd numbers, then first F(2) even numbers (starting from 2), then the next F(3) odd numbers, then the next F(4) even numbers, etc., where F(n) = A000045(n), the n-th Fibonacci number.

Offset 1, canonical program `A138606.P12451982431508658228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138606 (n : ℕ) : ℤ :=
  A138606.P12451982431508658228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138606.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138830.P7169071661950621730

`A132999(2*(n+1))`
-/

namespace A138830.P7169071661950621730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (2 * (n + 1))

end

end A138830.P7169071661950621730

noncomputable section

/-- A138830: Bisection of imperfect numbers A132999.

Offset 1, canonical program `A138830.P7169071661950621730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A138830 (n : ℕ) : ℤ :=
  A138830.P7169071661950621730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A138830.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139392.P372790930069283267

`A060679(eq[1, A060679(n+1)%2]+1)`
-/

namespace A139392.P372790930069283267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060679 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A139392.P372790930069283267

noncomputable section

/-- A139392: Odd noncyclic numbers; odd numbers n such that gcd(n,phi(n)) > 1.

Offset 1, canonical program `A139392.P372790930069283267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A139392 (n : ℕ) : ℤ :=
  A139392.P372790930069283267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A139392.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140254.P10954065600151529999

`∑{d}[n+1, A007427(#)*A140255((n+1)/#)]`
-/

namespace A140254.P10954065600151529999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A140255 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140254.P10954065600151529999

noncomputable section

/-- A140254: Mobius transform of A014963.

Offset 1, canonical program `A140254.P10954065600151529999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140254 (n : ℕ) : ℤ :=
  A140254.P10954065600151529999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140254.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140341.P3573548250837569440

`A005843(A000523(A000523(n+1)+1))+A000523(n+1)+1`
-/

namespace A140341.P3573548250837569440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000523 (A000523 (n + 1) + 1).toNat).toNat + (A000523 (n + 1) + 1)

end

end A140341.P3573548250837569440

noncomputable section

/-- A140341: The number of bits needed to write the universal code for an Elias delta coding, the simplest asymptotically optimal code.

Offset 1, canonical program `A140341.P3573548250837569440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140341 (n : ℕ) : ℤ :=
  A140341.P3573548250837569440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140341.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140397.P17694263115539486606

`dr(A292639(n+1)%3)`
-/

namespace A140397.P17694263115539486606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A292639 (n + 1)) 3)

end

end A140397.P17694263115539486606

noncomputable section

/-- A140397: a(n) = floor(3*phi*n) - 3*floor(phi*n) where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A140397.P17694263115539486606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140397 (n : ℕ) : ℤ :=
  (A140397.P17694263115539486606.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140397.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A142074.P691488948014704840

`A000040(2*n+1)+10*A008578(2*n+1)`
-/

namespace A142074.P691488948014704840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1) + 10 * A008578 (2 * n + 1)

end

end A142074.P691488948014704840

noncomputable section

/-- A142074: Prime number superposition a(n) = 10*A008578(2n-1) + A008578(2n).

Offset 1, canonical program `A142074.P691488948014704840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A142074 (n : ℕ) : ℤ :=
  A142074.P691488948014704840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A142074.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A142863.P620794168205063834

`∩[A037143(n+1), A060679(n+1)]`
-/

namespace A142863.P620794168205063834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142863.P620794168205063834

noncomputable section

/-- A142863: Semiprimes n (A001358) for which A000001(n) is 2.

Offset 1, canonical program `A142863.P620794168205063834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A142863 (n : ℕ) : ℤ :=
  (A142863.P620794168205063834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A142863.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144831.P16030447379763118510

`2*n+3-A053000(n+1)`
-/

namespace A144831.P16030447379763118510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A053000 (n + 1)

end

end A144831.P16030447379763118510

noncomputable section

/-- A144831: (n+1)^2 - (smallest prime > n^2).

Offset 1, canonical program `A144831.P16030447379763118510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144831 (n : ℕ) : ℤ :=
  A144831.P16030447379763118510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144831.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A155750.P2953647423449284309

`A088680(n+1)+A001223(2*n+3)`
-/

namespace A155750.P2953647423449284309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) + A001223 (2 * n + 3)

end

end A155750.P2953647423449284309

noncomputable section

/-- A155750: First differences of A031215.

Offset 1, canonical program `A155750.P2953647423449284309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155750 (n : ℕ) : ℤ :=
  A155750.P2953647423449284309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155828.P14308889291480101554

`A060594(n+1)-1`
-/

namespace A155828.P14308889291480101554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1) - 1

end

end A155828.P14308889291480101554

noncomputable section

/-- A155828: Number of integers k in {1,2,3,..,n} such that kn+1 is a square.

Offset 1, canonical program `A155828.P14308889291480101554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155828 (n : ℕ) : ℤ :=
  A155828.P14308889291480101554.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060594, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155828.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A156077.P4037350870121945842

`∑[A078650(n+1)]`
-/

namespace A156077.P4037350870121945842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156077.P4037350870121945842

noncomputable section

/-- A156077: a(n) = #{1<=k<=n : A000002(k)=1}.

Offset 1, canonical program `A156077.P4037350870121945842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156077 (n : ℕ) : ℤ :=
  A156077.P4037350870121945842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156258.P7813313347479065958

`eq[1, A049705(n+1)]%2`
-/

namespace A156258.P7813313347479065958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2

end

end A156258.P7813313347479065958

noncomputable section

/-- A156258: a(n)=(1/2)*(A000002(A078649(n))-A000002(A078649(n)+2)+1).

Offset 1, canonical program `A156258.P7813313347479065958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156258 (n : ℕ) : ℤ :=
  (A156258.P7813313347479065958.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156263.P13205413799050751235

`A022303(abs(3*n-2))`
-/

namespace A156263.P13205413799050751235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 |(3 * n : ℤ) - 2|.toNat

end

end A156263.P13205413799050751235

noncomputable section

/-- A156263: a(n)=A000002(3*n-1).

Offset 1, canonical program `A156263.P13205413799050751235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6668 terms. -/
def A156263 (n : ℕ) : ℤ :=
  A156263.P13205413799050751235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6668 terms. -/
def A156263.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A156352.P14924769179840963794

`or(A054354(n+2)+1, A088569(n+1))`
-/

namespace A156352.P14924769179840963794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054354 (n + 2) + 1) (A088569 (n + 1))

end

end A156352.P14924769179840963794

noncomputable section

/-- A156352: a(n)=A078649(A054353(n)-n+1)-A054353(n).

Offset 1, canonical program `A156352.P14924769179840963794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156352 (n : ℕ) : ℤ :=
  A156352.P14924769179840963794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156352.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A159077.P14146349899783805996

`A008475(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159077.P14146349899783805996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + 1

end

end A159077.P14146349899783805996

noncomputable section

/-- A159077: a(n) = A008475(n) + 1.

Offset 1, canonical program `A159077.P14146349899783805996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159077 (n : ℕ) : ℤ :=
  A159077.P14146349899783805996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159077.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A160813.P14776211626939802739

`A005117(n+1)+A004709(n+1)`
-/

namespace A160813.P14776211626939802739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + A004709 (n + 1)

end

end A160813.P14776211626939802739

noncomputable section

/-- A160813: a(n) = n-th squarefree number plus n-th cubefree number.

Offset 1, canonical program `A160813.P14776211626939802739`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160813 (n : ℕ) : ℤ :=
  A160813.P14776211626939802739.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160813.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A161351.P1670979519900009770

`A062028(n+1)+A007954(n+1)`
-/

namespace A161351.P1670979519900009770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (n + 1) + A007954 (n + 1)

end

end A161351.P1670979519900009770

noncomputable section

/-- A161351: a(n) = n + sum_of_digits(n) + product_of_digits(n).

Offset 1, canonical program `A161351.P1670979519900009770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161351 (n : ℕ) : ℤ :=
  A161351.P1670979519900009770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161351.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A161517.P13785156033217621972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161517 (n : ℕ) : ℤ :=
  A161517.P13785156033217621972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161537.P8179316449315028487

`A002808(n+1)+A000027(n+1)`
-/

namespace A161537.P8179316449315028487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A000027 (n + 1)

end

end A161537.P8179316449315028487

noncomputable section

/-- A161537: a(n) = n-th composite + n.

Offset 1, canonical program `A161537.P8179316449315028487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161537 (n : ℕ) : ℤ :=
  A161537.P8179316449315028487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161537.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A163506.P12192500632319859075

`A014076(n+1)*A005408(n)`
-/

namespace A163506.P12192500632319859075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) * A005408 n

end

end A163506.P12192500632319859075

noncomputable section

/-- A163506: a(n) = n-th odd nonprime * n-th odd number.

Offset 1, canonical program `A163506.P12192500632319859075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163506 (n : ℕ) : ℤ :=
  A163506.P12192500632319859075.a (n - 1)

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

/-! ## A165199.P18080261923669933743

`2*a(floor(n/2))+A000035(n+A000523(n))` with `a(0)=0, a(1)=1`
-/

namespace A165199.P18080261923669933743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat + A000035 ((n : ℤ) + A000523 n).toNat

end

end A165199.P18080261923669933743

noncomputable section

/-- A165199: a(n) is obtained by flipping every second bit in the binary representation of n starting at the second-most significant bit and on downwards.

Offset 0, canonical program `A165199.P18080261923669933743`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165199 (n : ℕ) : ℤ :=
  A165199.P18080261923669933743.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165199.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A166140.P17649384582351937107

`lcm(∏{p}[n+1, #], A166142(n+1))`
-/

namespace A166140.P17649384582351937107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A166142 (n + 1))

end

end A166140.P17649384582351937107

noncomputable section

/-- A166140: Product of the nonzero elements of the n-th row of A166139.

Offset 1, canonical program `A166140.P17649384582351937107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166140 (n : ℕ) : ℤ :=
  (A166140.P17649384582351937107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166140.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A167136.P12933274056496479970

`1+a(n-1)+A008578(n+1)-A008578(n)` with `a(0)=1`
-/

namespace A167136.P12933274056496479970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 + (a (n - 1) + A008578 (n + 1) - A008578 n)

end

end A167136.P12933274056496479970

noncomputable section

/-- A167136: a(n) = b(n)-th highest positive integer not equal to any a(k), 1 <= k <= n-1, where b(n) = noncomposite numbers = A008578(n).

Offset 1, canonical program `A167136.P12933274056496479970`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167136 (n : ℕ) : ℤ :=
  A167136.P12933274056496479970.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167207.P13711088262905704656

`∪[A005117(n+1), A033476(n)]`
-/

namespace A167207.P13711088262905704656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167207.P13711088262905704656

noncomputable section

/-- A167207: Numbers that are not divisible by a smaller number that is a square greater than 1.

Offset 1, canonical program `A167207.P13711088262905704656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167207 (n : ℕ) : ℤ :=
  (A167207.P13711088262905704656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167207.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A167515.P2764876312369213402

`A000203(n+1)-A008475(n+1)`
-/

namespace A167515.P2764876312369213402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008475 (n + 1)

end

end A167515.P2764876312369213402

noncomputable section

/-- A167515: The sum over the divisors of n, except the maximum-prime-power divisors collected in A008475.

Offset 1, canonical program `A167515.P2764876312369213402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167515 (n : ℕ) : ℤ :=
  A167515.P2764876312369213402.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167515.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A171623.P10193940440632363317

`floor(A002808(n+1)/A000027(n+1))`
-/

namespace A171623.P10193940440632363317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002808 (n + 1) : ℚ) / (A000027 (n + 1) : ℚ)⌋

end

end A171623.P10193940440632363317

noncomputable section

/-- A171623: a(n) = floor(n-th composite / n).

Offset 1, canonical program `A171623.P10193940440632363317`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171623 (n : ℕ) : ℤ :=
  A171623.P10193940440632363317.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171623.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A172025.P3610616556556391778

`A014300(n+2)-A000958(n+2)`
-/

namespace A172025.P3610616556556391778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 2) - A000958 (n + 2)

end

end A172025.P3610616556556391778

noncomputable section

/-- A172025: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=3.

Offset 0, canonical program `A172025.P3610616556556391778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A172025 (n : ℕ) : ℤ :=
  A172025.P3610616556556391778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A172025.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175144.P2109163854644428221

`A008329(n+1)+A008328(n+1)`
-/

namespace A175144.P2109163854644428221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1) + A008328 (n + 1)

end

end A175144.P2109163854644428221

noncomputable section

/-- A175144: a(n) = d(p(n)-1) + d(p(n)+1), where p(n) is the n-th prime, and where d(m) is the number of divisors of m.

Offset 1, canonical program `A175144.P2109163854644428221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175144 (n : ℕ) : ℤ :=
  A175144.P2109163854644428221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175144.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A178450.P13297792227575131152

`∑{d}[n+1, A327960(#)*A340774((n+1)/#)]`
-/

namespace A178450.P13297792227575131152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327960 d * A340774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A178450.P13297792227575131152

noncomputable section

/-- A178450: Dirichlet inverse of A034448 (unitary sigma).

Offset 1, canonical program `A178450.P13297792227575131152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178450 (n : ℕ) : ℤ :=
  A178450.P13297792227575131152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178450.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A179215.P1587544281057178083

`∏[C(n, n-char[A005117(n+1)])]`
-/

namespace A179215.P1587544281057178083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A179215.P1587544281057178083

noncomputable section

/-- A179215: Product of squarefree numbers less than n+1.

Offset 0, canonical program `A179215.P1587544281057178083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A179215 (n : ℕ) : ℤ :=
  (A179215.P1587544281057178083.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A179215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115228.P599005106752154386

`lt[A007913(2*n+1), A105570(n)]`
-/

namespace A115228.P599005106752154386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115228.P599005106752154386

noncomputable section

/-- A115228: Nonsquarefree numbers n such that 2n+1 is also nonsquarefree (A013929).

Offset 1, canonical program `A115228.P599005106752154386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A115228 (n : ℕ) : ℤ :=
  (A115228.P599005106752154386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A115228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117768.P14671149105729955350

`Δ[A184741(2*(n+3))]`
-/

namespace A117768.P14671149105729955350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184741 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117768.P14671149105729955350

noncomputable section

/-- A117768: Number of Lucas numbers with n digits.

Offset 0, canonical program `A117768.P14671149105729955350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A117768 (n : ℕ) : ℤ :=
  A117768.P14671149105729955350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A117768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121022.P12101257241342669327

`∩[2*n, A011532(n+1)]`
-/

namespace A121022.P12101257241342669327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121022.P12101257241342669327

noncomputable section

/-- A121022: Even numbers containing a 2 in their decimal representation.

Offset 1, canonical program `A121022.P12101257241342669327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4168 terms. -/
def A121022 (n : ℕ) : ℤ :=
  (A121022.P12101257241342669327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4168 terms. -/
def A121022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121307.P5032943004208249277

`∩[A004612(n+1), A014612(n+1)]`
-/

namespace A121307.P5032943004208249277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121307.P5032943004208249277

noncomputable section

/-- A121307: Products of three primes of the form 3n-1 (A003627), not necessarily distinct.

Offset 1, canonical program `A121307.P5032943004208249277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1921 terms. -/
def A121307 (n : ℕ) : ℤ :=
  (A121307.P5032943004208249277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1921 terms. -/
def A121307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122072.P12226478731095441089

`A000040(A038801(n+1))`
-/

namespace A122072.P12226478731095441089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038801 (n + 1)).toNat

end

end A122072.P12226478731095441089

noncomputable section

/-- A122072: Greatest prime less than 10*n.

Offset 1, canonical program `A122072.P12226478731095441089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122072 (n : ℕ) : ℤ :=
  A122072.P12226478731095441089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122072.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130632.P9883400220475376543

`(A051950(n+2)-A182394(n+2))*A182394(n+2)`
-/

namespace A130632.P9883400220475376543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051950 (n + 2) - A182394 (n + 2)) * A182394 (n + 2)

end

end A130632.P9883400220475376543

noncomputable section

/-- A130632: Number of natural numbers between d(n) and d(n+1), where d(n) denotes the number of divisors of n.

Offset 1, canonical program `A130632.P9883400220475376543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130632 (n : ℕ) : ℤ :=
  A130632.P9883400220475376543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130632.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A135124.P8685286244189751684

`∑[A284927(A006519(n+1))]`
-/

namespace A135124.P8685286244189751684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284927 (A006519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135124.P8685286244189751684

noncomputable section

/-- A135124: Numbers such that the digital sums in base 2, base 4 and base 8 are all equal.

Offset 1, canonical program `A135124.P8685286244189751684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A135124 (n : ℕ) : ℤ :=
  A135124.P8685286244189751684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A135124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137927.P5814170655149962823

`A307892(n+1)/A007956(n+1)`
-/

namespace A137927.P5814170655149962823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307892 (n + 1) : ℚ) / (A007956 (n + 1) : ℚ)

end

end A137927.P5814170655149962823

noncomputable section

/-- A137927: a(n) = the largest divisor of A000005(n) that is coprime to n. (A000005(n) = the number of positive divisors of n.).

Offset 1, canonical program `A137927.P5814170655149962823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A137927 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137927.P5814170655149962823.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A137927.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157223.P7194206382201675726

`(A001615(n+1)-A060594(n+1))/2`
-/

namespace A157223.P7194206382201675726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) - A060594 (n + 1) : ℚ) / 2

end

end A157223.P7194206382201675726

noncomputable section

/-- A157223: Number of primitive inequivalent oblique sublattices of centered rectangular lattice of index n.

Offset 1, canonical program `A157223.P7194206382201675726`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A060594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157223 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157223.P7194206382201675726.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001615, A060594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157223.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A159634.P11967709027105384687

`A000082(n+1)/A080512(n+1)`
-/

namespace A159634.P11967709027105384687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A080512 (n + 1) : ℚ)

end

end A159634.P11967709027105384687

noncomputable section

/-- A159634: Coefficient for dimensions of spaces of modular & cusp forms of weight k/2, level 4*n and trivial character, where k>=5 is odd.

Offset 1, canonical program `A159634.P11967709027105384687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000082, A080512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A159634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A159634.P11967709027105384687.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000082, A080512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A159634.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A175150.P4900912508559324144

`∑[A182394(abs(1-n)+2)]`
-/

namespace A175150.P4900912508559324144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175150.P4900912508559324144

noncomputable section

/-- A175150: a(1)=0. If d(n)>d(n-1), then a(n)=a(n-1)+1. If d(n)

Offset 1, canonical program `A175150.P4900912508559324144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175150 (n : ℕ) : ℤ :=
  A175150.P4900912508559324144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175150.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A112925.P3128036367507799297

`A005117(A013928(A000040(n+1)))`
-/

namespace A112925.P3128036367507799297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A013928 (A000040 (n + 1)).toNat).toNat

end

end A112925.P3128036367507799297

noncomputable section

/-- A112925: Largest squarefree integer < the n-th prime.

Offset 1, canonical program `A112925.P3128036367507799297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A112925 (n : ℕ) : ℤ :=
  A112925.P3128036367507799297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9592 terms. -/
def A112925.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115979.P10695303619460681874

`(-1)^n*A096936(n+1)`
-/

namespace A115979.P10695303619460681874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A096936 (n + 1)

end

end A115979.P10695303619460681874

noncomputable section

/-- A115979: Expansion of (1 - theta_4(q)*theta_4(q^3))/2 in powers of q.

Offset 1, canonical program `A115979.P10695303619460681874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115979 (n : ℕ) : ℤ :=
  A115979.P10695303619460681874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096936, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116549.P11628790569736777894

`a(A000523(n))+a(A053645(n))` with `a(0)=1`
-/

namespace A116549.P11628790569736777894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000523 n).toNat + a (A053645 n).toNat

end

end A116549.P11628790569736777894

noncomputable section

/-- A116549: a(0) = 1. a(m + 2^n) = a(n) + a(m), for 0 <= m <= 2^n - 1.

Offset 0, canonical program `A116549.P11628790569736777894`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, A053645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A116549 (n : ℕ) : ℤ :=
  (A116549.P11628790569736777894.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, A053645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A116549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A117203.P1024184579012793752

`record[A007913(n+2+A007913(n+1))]`
-/

namespace A117203.P1024184579012793752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 2 : ℤ) + A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117203.P1024184579012793752

noncomputable section

/-- A117203: Odd squarefree positive integers k such that (k-1)/2 is also squarefree.

Offset 1, canonical program `A117203.P1024184579012793752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117203 (n : ℕ) : ℤ :=
  A117203.P1024184579012793752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117205.P13625184972565813265

`record[A007913(A007913(n+1)+n)]`
-/

namespace A117205.P13625184972565813265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007913 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117205.P13625184972565813265

noncomputable section

/-- A117205: Odd squarefree positive integers k such that (k+1)/2 is also squarefree.

Offset 1, canonical program `A117205.P13625184972565813265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117205 (n : ℕ) : ℤ :=
  A117205.P13625184972565813265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119576.P14770277927319120296

`(∑[2*n]+1)*A005430(n)`
-/

namespace A119576.P14770277927319120296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A005430 n

end

end A119576.P14770277927319120296

noncomputable section

/-- A119576: a(n) = (n+n^2+n^3)*(binomial(2*n,n)).

Offset 0, canonical program `A119576.P14770277927319120296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A119576 (n : ℕ) : ℤ :=
  A119576.P14770277927319120296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A119576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119693.P16182671038255865393

`A119692(n)/2`
-/

namespace A119693.P16182671038255865393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119692 n : ℚ) / 2

end

end A119693.P16182671038255865393

noncomputable section

/-- A119693: a(n) = binomial(2*n,n) * Fibonacci(n)/2.

Offset 0, canonical program `A119693.P16182671038255865393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119693 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A119693.P16182671038255865393.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A119692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A119693.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121479.P12523290855419051886

`A253145(lt[3, A069903(n+1)])`
-/

namespace A121479.P12523290855419051886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121479.P12523290855419051886

noncomputable section

/-- A121479: Triangular numbers with more than three distinct prime factors.

Offset 1, canonical program `A121479.P12523290855419051886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121479 (n : ℕ) : ℤ :=
  A121479.P12523290855419051886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A121479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121663.P16388253668531222567

`(A000523(n)+2)*a(A053645(n))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121663.P16388253668531222567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000523 n + 2) * a (A053645 n).toNat

end

end A121663.P16388253668531222567

noncomputable section

/-- A121663: a(0) = 1; if n = 2^k, a(n) = k+2, otherwise a(n)=(A000523(n)+2)*a(A053645(n)).

Offset 0, canonical program `A121663.P16388253668531222567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, A053645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A121663 (n : ℕ) : ℤ :=
  A121663.P16388253668531222567.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000523, A053645, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A121663.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A133108.P13227830424064784786

`A000720(p?[A008578(A253887(n+1))])`
-/

namespace A133108.P13227830424064784786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A253887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133108.P13227830424064784786

noncomputable section

/-- A133108: Representation of a dense para-sequence.

Offset 1, canonical program `A133108.P13227830424064784786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. -/
def A133108 (n : ℕ) : ℤ :=
  A133108.P13227830424064784786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9990 terms. -/
def A133108.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A179125.P9568614675191718862

`A000037(n+1)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179125.P9568614675191718862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1) ^ 3

end

end A179125.P9568614675191718862

noncomputable section

/-- A179125: a(n) = A000037(n)^3.

Offset 1, canonical program `A179125.P9568614675191718862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179125 (n : ℕ) : ℤ :=
  A179125.P9568614675191718862.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A179125.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112588.P10447318389527751841

`lt[A000005(A253909(n)), A254528(n)]`
-/

namespace A112588.P10447318389527751841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A253909 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A112588.P10447318389527751841

noncomputable section

/-- A112588: Numbers m such that phi(m) > 2*tau(m), where phi = A000010 and tau = A000005.

Offset 1, canonical program `A112588.P10447318389527751841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A112588 (n : ℕ) : ℤ :=
  (A112588.P10447318389527751841.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A112588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112929.P12962662638983537305

`A337030(n+1)+1+n`
-/

namespace A112929.P12962662638983537305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337030 (n + 1) + 1 + (n : ℤ)

end

end A112929.P12962662638983537305

noncomputable section

/-- A112929: Number of squarefree integers less than the n-th prime.

Offset 1, canonical program `A112929.P12962662638983537305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112929 (n : ℕ) : ℤ :=
  A112929.P12962662638983537305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114003.P1695342291946871726

`2*A000005(n+1)-1`
-/

namespace A114003.P1695342291946871726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1) - 1

end

end A114003.P1695342291946871726

noncomputable section

/-- A114003: Rows sums of triangle A114002.

Offset 1, canonical program `A114003.P1695342291946871726`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114003 (n : ℕ) : ℤ :=
  A114003.P1695342291946871726.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114003.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A114338.P14184367748492254408

`A000005(A006882(n))`
-/

namespace A114338.P14184367748492254408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006882 n).toNat

end

end A114338.P14184367748492254408

noncomputable section

/-- A114338: Number of divisors of n!! (double factorial = A006882(n)).

Offset 0, canonical program `A114338.P14184367748492254408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114338 (n : ℕ) : ℤ :=
  A114338.P14184367748492254408.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A114518.P850338516823365546

`eq[2, A000005(A008475(n+2))]+2`
-/

namespace A114518.P850338516823365546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008475 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A114518.P850338516823365546

noncomputable section

/-- A114518: Numbers n such that A008475(n) is prime.

Offset 1, canonical program `A114518.P850338516823365546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114518 (n : ℕ) : ℤ :=
  (A114518.P850338516823365546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114518.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115454.P7778183975533024959

`A007088(A002808(n+1))`
-/

namespace A115454.P7778183975533024959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A002808 (n + 1)).toNat

end

end A115454.P7778183975533024959

noncomputable section

/-- A115454: Composite positive integers written in base 2.

Offset 1, canonical program `A115454.P7778183975533024959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115454 (n : ℕ) : ℤ :=
  A115454.P7778183975533024959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A007088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A115454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116204.P4596117724917585290

`A000005(n/gcd(n, A010805(a(n-1))))` with `a(0)=1`
-/

namespace A116204.P4596117724917585290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((n : ℚ) / (Int.gcd (n : ℤ) (A010805 (a (n - 1)).toNat) : ℚ))).toNat

end

end A116204.P4596117724917585290

noncomputable section

/-- A116204: a(0) = 1; for n >= 1, a(n) = the number of positive divisors of n which are coprime to a(n-1).

Offset 0, canonical program `A116204.P4596117724917585290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116204 (n : ℕ) : ℤ :=
  A116204.P4596117724917585290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116204.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A118623.P9012952356885345567

`A000290(a(n-1))+A000005(a(n-1))` with `a(0)=1`
-/

namespace A118623.P9012952356885345567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000290 (a (n - 1)).toNat + A000005 (a (n - 1)).toNat

end

end A118623.P9012952356885345567

noncomputable section

/-- A118623: a(0) = 1, a(n+1) = a(n)^2 + number of divisors of a(n).

Offset 0, canonical program `A118623.P9012952356885345567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118623 (n : ℕ) : ℤ :=
  A118623.P9012952356885345567.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118623.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A119791.P16998931998944088094

`A000005((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A119791.P16998931998944088094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A119791.P16998931998944088094

noncomputable section

/-- A119791: a(1) = 1, a(n) = number of divisors of n*a(n-1).

Offset 1, canonical program `A119791.P16998931998944088094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A119791 (n : ℕ) : ℤ :=
  A119791.P16998931998944088094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A119791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119885.P7055387291115707172

`eq[1, A102460(A000005(n+1))]+1`
-/

namespace A119885.P7055387291115707172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119885.P7055387291115707172

noncomputable section

/-- A119885: Natural numbers with number of divisors equal to a Lucas number.

Offset 1, canonical program `A119885.P7055387291115707172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119885 (n : ℕ) : ℤ :=
  (A119885.P7055387291115707172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120312.P4732692214029071123

`∩[A080147(n+1), A120309(n+1)]`
-/

namespace A120312.P4732692214029071123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120312.P4732692214029071123

noncomputable section

/-- A120312: Numbers k such that pi(k) == 0 (mod 4), where pi() = A000720, and such that prime(k) == 1 (mod 4).

Offset 1, canonical program `A120312.P4732692214029071123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A120312 (n : ℕ) : ℤ :=
  (A120312.P4732692214029071123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A120312.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122071.P3435191698193599100

`A113411(n)/A254046(n+1)`
-/

namespace A122071.P3435191698193599100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113411 n : ℚ) / (A254046 (n + 1) : ℚ)

end

end A122071.P3435191698193599100

noncomputable section

/-- A122071: Sum over divisors d of 2n+1 of Kronecker(-18/d).

Offset 0, canonical program `A122071.P3435191698193599100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122071 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122071.P3435191698193599100.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122071.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A122895.P9639352825295012405

`A010056(A000005(n+1))`
-/

namespace A122895.P9639352825295012405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A000005 (n + 1)).toNat

end

end A122895.P9639352825295012405

noncomputable section

/-- A122895: Characteristic function of natural numbers with number of divisors equal to a Fibonacci number.

Offset 1, canonical program `A122895.P9639352825295012405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A010056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122895 (n : ℕ) : ℤ :=
  A122895.P9639352825295012405.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A010056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A122895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123927.P16161483642695662520

`A102460(A000005(n+1))`
-/

namespace A123927.P16161483642695662520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (A000005 (n + 1)).toNat

end

end A123927.P16161483642695662520

noncomputable section

/-- A123927: Characteristic function of natural numbers with number of divisors equal to a Lucas number.

Offset 1, canonical program `A123927.P16161483642695662520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A102460, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123927 (n : ℕ) : ℤ :=
  A123927.P16161483642695662520.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A102460, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A123927.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125271.P12543909301820514993

`2*A062327(n+1)-A000005(n+1)`
-/

namespace A125271.P12543909301820514993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062327 (n + 1) - A000005 (n + 1)

end

end A125271.P12543909301820514993

noncomputable section

/-- A125271: Number of Gaussian integer divisors of n (having positive real part).

Offset 1, canonical program `A125271.P12543909301820514993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062327, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A125271 (n : ℕ) : ℤ :=
  A125271.P12543909301820514993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062327, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A125271.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A126775.P10311173591226257013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126775 (n : ℕ) : ℤ :=
  A126775.P10311173591226257013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A126775.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A134024.P16444693290474803119

`A134022(n)+A065363(n)`
-/

namespace A134024.P16444693290474803119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n + A065363 n

end

end A134024.P16444693290474803119

noncomputable section

/-- A134024: Number of positive trits in balanced ternary representation of n.

Offset 0, canonical program `A134024.P16444693290474803119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134024 (n : ℕ) : ℤ :=
  A134024.P16444693290474803119.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134022, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134024.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A137921.P4123784932500151371

`A000005(n+1)-A129308(n+1)`
-/

namespace A137921.P4123784932500151371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A129308 (n + 1)

end

end A137921.P4123784932500151371

noncomputable section

/-- A137921: Number of divisors d of n such that d+1 is not a divisor of n.

Offset 1, canonical program `A137921.P4123784932500151371`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A129308, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137921 (n : ℕ) : ℤ :=
  A137921.P4123784932500151371.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A129308, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A137921.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138012.P10289845696173396267

`∑{d}[n+1, A000007((n+1)%A000005(#))]`
-/

namespace A138012.P10289845696173396267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (Int.tmod (n + 1 : ℤ) (A000005 d)).toNat

end

end A138012.P10289845696173396267

noncomputable section

/-- A138012: a(n) = number of positive divisors, k, of n where d(k) divides n (where d(k) = number of positive divisors of k, A000005).

Offset 1, canonical program `A138012.P10289845696173396267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138012 (n : ℕ) : ℤ :=
  A138012.P10289845696173396267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138172.P13850476572932011494

`lt[A000005(abs((n-1)%2+1-n)+2), A000005(n+1)]`
-/

namespace A138172.P13850476572932011494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|Int.tmod ((n : ℤ) - 1) 2 + 1 - (n : ℤ)| + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138172.P13850476572932011494

noncomputable section

/-- A138172: Even n where d(n) < d(n+1), where d(n) = number of positive divisors of n.

Offset 1, canonical program `A138172.P13850476572932011494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3657 terms. -/
def A138172 (n : ℕ) : ℤ :=
  (A138172.P13850476572932011494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3657 terms. -/
def A138172.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139422.P6616369610320219079

`a(n-1)+A000005(a(n-1))+A000005(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A139422.P6616369610320219079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A000005 (a (n - 1)).toNat + A000005 (a (n - 2)).toNat

end

end A139422.P6616369610320219079

noncomputable section

/-- A139422: a(1)=a(2)=1. For n >= 3, a(n) = a(n-1) + d(a(n-1)) + d(a(n-2)), where d(m) is the number of positive divisors of m.

Offset 1, canonical program `A139422.P6616369610320219079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4012 terms. -/
def A139422 (n : ℕ) : ℤ :=
  A139422.P6616369610320219079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4012 terms. -/
def A139422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139423.P3314553419540253664

`a(n-1)+A000005(a(n-1))+A000005(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A139423.P3314553419540253664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A000005 (a (n - 1)).toNat + A000005 (a (n - 2)).toNat

end

end A139423.P3314553419540253664

noncomputable section

/-- A139423: a(1)=1, a(2)=2. For n >= 3, a(n) = a(n-1) + d(a(n-1)) + d(a(n-2)), where d(m) is the number of positive divisors of m.

Offset 1, canonical program `A139423.P3314553419540253664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7595 terms. -/
def A139423 (n : ℕ) : ℤ :=
  A139423.P3314553419540253664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7595 terms. -/
def A139423.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140459.P6193242358392747816

`eq[0, and(n+1, A000005(n+1))]+1`
-/

namespace A140459.P6193242358392747816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A140459.P6193242358392747816

noncomputable section

/-- A140459: A positive integer n is included if n can be added to d(n) in binary without any carries, where d(n) is the number of positive divisors of n. In other words, no 1 in the binary representation of n is in the same position as any 1 in the binary representation of d(n).

Offset 1, canonical program `A140459.P6193242358392747816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140459 (n : ℕ) : ℤ :=
  (A140459.P6193242358392747816.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141113.P12877220988294223017

`eq[0, (n+1)%A000005(A000005(n+1))]+1`
-/

namespace A141113.P12877220988294223017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (A000005 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A141113.P12877220988294223017

noncomputable section

/-- A141113: Positive integers k such that d(d(k)) divides k, where d(k) is the number of divisors of k.

Offset 1, canonical program `A141113.P12877220988294223017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141113 (n : ℕ) : ℤ :=
  (A141113.P12877220988294223017.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141113.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141677.P12769491184657216177

`A000005(n+1)*A000720(n+1)`
-/

namespace A141677.P12769491184657216177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000720 (n + 1)

end

end A141677.P12769491184657216177

noncomputable section

/-- A141677: Number of divisors of n times the number of primes <= n.

Offset 1, canonical program `A141677.P12769491184657216177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A141677 (n : ℕ) : ℤ :=
  A141677.P12769491184657216177.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A141677.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A143869.P256346271086127198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143869 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143869.P256346271086127198.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145469.P15784535459110344665

`eq[A000005(n+2), A051950(n+4)]+4`
-/

namespace A145469.P15784535459110344665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 4

end

end A145469.P15784535459110344665

noncomputable section

/-- A145469: Positive integers k such that d(k) = d(k-1) + d(k-2), where d(k) is the number of divisors of k.

Offset 1, canonical program `A145469.P15784535459110344665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 876 terms. -/
def A145469 (n : ℕ) : ℤ :=
  (A145469.P15784535459110344665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 876 terms. -/
def A145469.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A160812.P12792635546813163810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A161205, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160812 (n : ℕ) : ℤ :=
  A160812.P12792635546813163810.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A161205, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A160812.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A162728.P11930583018672427365

`A000010(n+1)*A090740(n+1)`
-/

namespace A162728.P11930583018672427365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A090740 (n + 1)

end

end A162728.P11930583018672427365

noncomputable section

/-- A162728: G.f.: x/(1-x) = Sum_{n>=1} a(n)*log(1+x^n)/n.

Offset 1, canonical program `A162728.P11930583018672427365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A090740, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162728 (n : ℕ) : ℤ :=
  A162728.P11930583018672427365.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A090740, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A162728.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A163163.P6994369131379745311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001065, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163163 (n : ℕ) : ℤ :=
  A163163.P6994369131379745311.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A001065, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A163299.P11401659871366047700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A029837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163299 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163299.P11401659871366047700.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A029837, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163367.P744308493484004689

`A000010(∏{e}[∑{d}[n+1, #], #+1])`
-/

namespace A163367.P744308493484004689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A163367.P744308493484004689

noncomputable section

/-- A163367: a(n) = phi(tau(sigma(n))).

Offset 1, canonical program `A163367.P744308493484004689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163367 (n : ℕ) : ℤ :=
  A163367.P744308493484004689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163368.P13316081141302167131

`A000010(∑{d}[∏{e}[n+1, #+1], #])`
-/

namespace A163368.P13316081141302167131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A163368.P13316081141302167131

noncomputable section

/-- A163368: a(n) = phi(sigma(tau(n))).

Offset 1, canonical program `A163368.P13316081141302167131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163368 (n : ℕ) : ℤ :=
  A163368.P13316081141302167131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163377.P3277230798692918123

`∏{e}[A000010(∏{e}[n+1, #+1]), #+1]`
-/

namespace A163377.P3277230798692918123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A163377.P3277230798692918123

noncomputable section

/-- A163377: a(n) = tau(phi(tau(n))).

Offset 1, canonical program `A163377.P3277230798692918123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163377 (n : ℕ) : ℤ :=
  (A163377.P3277230798692918123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163377.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A176350.P3892865583747759499

`∩[A176313(n+1)-1, A176313(n+1)]`
-/

namespace A176350.P3892865583747759499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176313 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176350.P3892865583747759499

noncomputable section

/-- A176350: First of three consecutive numbers with at least one 3 in their prime signature.

Offset 1, canonical program `A176350.P3892865583747759499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A176350 (n : ℕ) : ℤ :=
  (A176350.P3892865583747759499.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A176350.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A121807.P13313933923101862632

`∑[A004676(n+1)]`
-/

namespace A121807.P13313933923101862632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P13313933923101862632

noncomputable section

/-- A121807: Partial sums of A004676.

Offset 1, canonical program `A121807.P13313933923101862632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121807 (n : ℕ) : ℤ :=
  A121807.P13313933923101862632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121807.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A133760.P9145176976057239686

`A139140(n+1)-2`
-/

namespace A133760.P9145176976057239686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139140 (n + 1) - 2

end

end A133760.P9145176976057239686

noncomputable section

/-- A133760: Sum of the number of divisors of the numbers between prime(n) and prime(n+1).

Offset 1, canonical program `A133760.P9145176976057239686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133760 (n : ℕ) : ℤ :=
  A133760.P9145176976057239686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133760.provenance : SequenceMachineLib.Provenance := .conjectured

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

