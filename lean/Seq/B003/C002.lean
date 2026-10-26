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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A170788.P6875804851184661765

`n*A168194(n²)`
-/

namespace A170788.P6875804851184661765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168194 (n ^ 2)

end

end A170788.P6875804851184661765

noncomputable section

/-- A170788: a(n) = n^9*(n^6 + 1)/2.

Offset 0, canonical program `A170788.P6875804851184661765`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n^6+1)/2` (program `A170788.P17515514060295524428`, by `A170788.P17515514060295524428.correct`). Lean does not check the parsing of the name. -/
def A170788 (n : ℕ) : ℤ :=
  A170788.P6875804851184661765.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9*(n^6+1)/2` (program `A170788.P17515514060295524428`, by `A170788.P17515514060295524428.correct`). Lean does not check the parsing of the name. -/
def A170788.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A170798.P3171787492622690509

`A168371(n²)`
-/

namespace A170798.P3171787492622690509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168371 (n ^ 2)

end

end A170798.P3171787492622690509

noncomputable section

/-- A170798: a(n) = n^10*(n^6 + 1)/2.

Offset 0, canonical program `A170798.P3171787492622690509`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n^6+1)/2` (program `A170798.P12482735234320680013`, by `A170798.P12482735234320680013.correct`). Lean does not check the parsing of the name. -/
def A170798 (n : ℕ) : ℤ :=
  A170798.P3171787492622690509.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^10*(n^6+1)/2` (program `A170798.P12482735234320680013`, by `A170798.P12482735234320680013.correct`). Lean does not check the parsing of the name. -/
def A170798.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 0, canonical program `A140514.P16181118793688981694`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000931(n+4)-A010060(n)` (program `A140514.P16181118793688981694`, by `A140514.P16181118793688981694.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140514 (n : ℕ) : ℤ :=
  A140514.P16181118793688981694.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000931(n+4)-A010060(n)` (program `A140514.P16181118793688981694`, by `A140514.P16181118793688981694.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140514.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143466.P10513293575079486357

`A010060(row(n)+1)*A010060(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143466.P10513293575079486357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.triRow n + 1) * A010060 (SequenceMachineLib.triCol n + 1)

end

end A143466.P10513293575079486357

noncomputable section

/-- A143466: Odious count triangle, T(n,k) = A010060(n) * A010060(k); 1 <= k <= n.

Offset 1, canonical program `A143466.P10513293575079486357`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(row(n)+1)*A010060(col(n)+1)` (program `A143466.P10513293575079486357`, by `A143466.P10513293575079486357.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143466 (n : ℕ) : ℤ :=
  A143466.P10513293575079486357.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010060(row(n)+1)*A010060(col(n)+1)` (program `A143466.P10513293575079486357`, by `A143466.P10513293575079486357.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143466.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168123.P14064034454943279005

`A168194(n)-C(n², 2)`
-/

namespace A168123.P14064034454943279005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168194 n - (Nat.choose (n ^ 2) 2 : ℤ)

end

end A168123.P14064034454943279005

noncomputable section

/-- A168123: a(n) = n^2*(n^5+1)/2.

Offset 0, canonical program `A168123.P14064034454943279005`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^5+1)/2` (program `A168123.P6139275088796731258`, by `A168123.P6139275088796731258.correct`). Lean does not check the parsing of the name. -/
def A168123 (n : ℕ) : ℤ :=
  A168123.P14064034454943279005.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^5+1)/2` (program `A168123.P6139275088796731258`, by `A168123.P6139275088796731258.correct`). Lean does not check the parsing of the name. -/
def A168123.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 0, canonical program `A134660.P16903168388043380188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134660 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134660.P16903168388043380188.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134660.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A135620.P7501931609771001337`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135620 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135620.P7501931609771001337.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135620.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A135630.P7109827776379492340`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135630 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135630.P7109827776379492340.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135630.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A137781.P3937855502889474483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137781.P3937855502889474483.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137781.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A137831.P7284090837143405087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137831 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137831.P7284090837143405087.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137831.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A138402.P2862729920963490813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138402 (n : ℕ) : ℤ :=
  A138402.P2862729920963490813.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138402.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A138423.P15059397808005163054`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138423 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138423.P15059397808005163054.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138423.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A138430.P16083689388291153445`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138430 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138430.P16083689388291153445.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138438.P2811468712399639268

`A138437(n+1)/2`
-/

namespace A138438.P2811468712399639268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138437 (n + 1) : ℚ) / 2

end

end A138438.P2811468712399639268

noncomputable section

/-- A138438: a(n) = ((n-th prime)^5-(n-th prime)^3)/24.

Offset 1, canonical program `A138438.P2811468712399639268`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138438 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138438.P2811468712399639268.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138438.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A138439.P6352298735939435582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138439 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138439.P6352298735939435582.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138439.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A139239.P5695854646472699783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139239 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139239.P5695854646472699783.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139239.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139243.P1022064537807245001

`A139242(n+1)/2`
-/

namespace A139243.P1022064537807245001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139242 (n + 1) : ℚ) / 2

end

end A139243.P1022064537807245001

noncomputable section

/-- A139243: Second differences of Mersenne numbers A001348, divided by 4.

Offset 1, canonical program `A139243.P1022064537807245001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139243 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139243.P1022064537807245001.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139243.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A152527.P9049603254915990332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152527 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152527.P9049603254915990332.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156199.P14114707682023428273

`A156194(n+6)`
-/

namespace A156199.P14114707682023428273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156194 (n + 6)

end

end A156199.P14114707682023428273

noncomputable section

/-- A156199: Period 12: repeat 1, 1, 4, 2, 4, 1, 1, 2, 7, 1, 7, 2 .

Offset 0, canonical program `A156199.P14114707682023428273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156199 (n : ℕ) : ℤ :=
  A156199.P14114707682023428273.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159481.P7251533249853496071

`n+1-A115384(n)`
-/

namespace A159481.P7251533249853496071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A115384 n

end

end A159481.P7251533249853496071

noncomputable section

/-- A159481: Number of evil numbers <= n, see A001969.

Offset 0, canonical program `A159481.P7251533249853496071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159481 (n : ℕ) : ℤ :=
  A159481.P7251533249853496071.a n

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

/-! ## A161527.P14768292491964537375

`A053144(n+1)/A058250(n+1)`
-/

namespace A161527.P14768292491964537375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053144 (n + 1) : ℚ) / (A058250 (n + 1) : ℚ)

end

end A161527.P14768292491964537375

noncomputable section

/-- A161527: Numerators of cumulative sums of rational sequence A038110(k)/A038111(k).

Offset 1, canonical program `A161527.P14768292491964537375`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161527 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161527.P14768292491964537375.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161527.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A162775.P15991706861221470785`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162775 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A162775.P15991706861221470785.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162775.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A172985.P6589496241052194509

`A049614(row(n))/(A049614(col(n))*A049614(row(n)-col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172985.P6589496241052194509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049614 (SequenceMachineLib.triRow n) : ℚ) / (A049614 (SequenceMachineLib.triCol n) * A049614 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) : ℚ)

end

end A172985.P6589496241052194509

noncomputable section

/-- A172985: Triangle T(n,m) = A049614(n)/ (A049614(m)*A049614(n-m)) read by rows.

Offset 0, canonical program `A172985.P6589496241052194509`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A172985.P6589496241052194509.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172985.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A175540.P17413733986559148913`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175540 (n : ℕ) : ℤ :=
  A175540.P17413733986559148913.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175540.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A178058.P1320891361642740791

`A005811(C(row(n), col(n)))`
-/

namespace A178058.P1320891361642740791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n))

end

end A178058.P1320891361642740791

noncomputable section

/-- A178058: Number of 1's in the Gray code for binomial(n,m).

Offset 0, canonical program `A178058.P1320891361642740791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178058 (n : ℕ) : ℤ :=
  A178058.P1320891361642740791.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178058.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A178398.P3235956670070315682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178398 (n : ℕ) : ℤ :=
  A178398.P3235956670070315682.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178398.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A181797.P4894842930551307870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181797 (n : ℕ) : ℤ :=
  A181797.P4894842930551307870.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181797.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A192305.P9314614046236981238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192305 (n : ℕ) : ℤ :=
  A192305.P9314614046236981238.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192305.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A192307.P2714161128456340537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192307 (n : ℕ) : ℤ :=
  A192307.P2714161128456340537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192307.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A132995.P8538436233265635730

`gcd(A007504(n+1), A002110(n+1))`
-/

namespace A132995.P8538436233265635730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007504 (n + 1)) (A002110 (n + 1))

end

end A132995.P8538436233265635730

noncomputable section

/-- A132995: a(n) = gcd(Sum_{k=1..n} prime(k), Product{j=1..n} prime(j)).

Offset 1, canonical program `A132995.P8538436233265635730`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132995 (n : ℕ) : ℤ :=
  (A132995.P8538436233265635730.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132995.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A133524.P7363267579138448459`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133524 (n : ℕ) : ℤ :=
  A133524.P7363267579138448459.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133524.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A133530.P664862353928632633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133530 (n : ℕ) : ℤ :=
  A133530.P664862353928632633.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133530.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A133531.P4606246075334968653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133531 (n : ℕ) : ℤ :=
  A133531.P4606246075334968653.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133531.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A133532.P11489854846316048726`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133532 (n : ℕ) : ℤ :=
  A133532.P11489854846316048726.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133532.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A133533.P6140301617002194535`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133533 (n : ℕ) : ℤ :=
  A133533.P6140301617002194535.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135267.P10837298668863611185

`A007504(n+1)-A002378(n+1)`
-/

namespace A135267.P10837298668863611185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A002378 (n + 1)

end

end A135267.P10837298668863611185

noncomputable section

/-- A135267: Difference between partial sum of the first n primes and the first n even numbers greater than 0.

Offset 1, canonical program `A135267.P10837298668863611185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135267 (n : ℕ) : ℤ :=
  A135267.P10837298668863611185.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135267.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A143215.P1994719759372848110

`A000040(n+1)*A007504(n+1)`
-/

namespace A143215.P1994719759372848110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007504 (n + 1)

end

end A143215.P1994719759372848110

noncomputable section

/-- A143215: a(n) = prime(n) * Sum_{i=1..n} prime(i).

Offset 1, canonical program `A143215.P1994719759372848110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143215 (n : ℕ) : ℤ :=
  A143215.P1994719759372848110.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143215.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A153450.P11237216334743077294`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153450 (n : ℕ) : ℤ :=
  A153450.P11237216334743077294.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156778.P4656544164751589866

`n*A007504(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156778.P4656544164751589866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A007504 n : ℚ) / 2

end

end A156778.P4656544164751589866

noncomputable section

/-- A156778: a(n) = n*A007504(n)/2 = n*(sum of first n primes)/2.

Offset 0, canonical program `A156778.P4656544164751589866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156778 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A156778.P4656544164751589866.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156778.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A160668.P17836700384560215862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160668 (n : ℕ) : ℤ :=
  A160668.P17836700384560215862.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160668.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A162867.P8413772705343167960

`(n+2)*A007504(n+1)`
-/

namespace A162867.P8413772705343167960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A007504 (n + 1)

end

end A162867.P8413772705343167960

noncomputable section

/-- A162867: a(n) is the sum of all possible pairs of the first n primes.

Offset 1, canonical program `A162867.P8413772705343167960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162867 (n : ℕ) : ℤ :=
  A162867.P8413772705343167960.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162867.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167214.P9697442408688225616

`(n+1)*A007504(n+1)`
-/

namespace A167214.P9697442408688225616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007504 (n + 1)

end

end A167214.P9697442408688225616

noncomputable section

/-- A167214: a(n) = (sum of first n primes) * n.

Offset 1, canonical program `A167214.P9697442408688225616`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167214 (n : ℕ) : ℤ :=
  A167214.P9697442408688225616.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167214.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168176.P12224044250160319688

`n*A168119(n)`
-/

namespace A168176.P12224044250160319688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168119 n

end

end A168176.P12224044250160319688

noncomputable section

/-- A168176: a(n) = n^2*(n^10 + 1)/2.

Offset 0, canonical program `A168176.P12224044250160319688`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^10+1)/2` (program `A168176.P7572206138590168629`, by `A168176.P7572206138590168629.correct`). Lean does not check the parsing of the name. -/
def A168176 (n : ℕ) : ℤ :=
  A168176.P12224044250160319688.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n^10+1)/2` (program `A168176.P7572206138590168629`, by `A168176.P7572206138590168629.correct`). Lean does not check the parsing of the name. -/
def A168176.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168190.P1854175503729805304

`n*A168153(n)`
-/

namespace A168190.P1854175503729805304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168153 n

end

end A168190.P1854175503729805304

noncomputable section

/-- A168190: a(n) = n^3*(n^9 + 1)/2.

Offset 0, canonical program `A168190.P1854175503729805304`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^9+1)/2` (program `A168190.P6614214977692164207`, by `A168190.P6614214977692164207.correct`). Lean does not check the parsing of the name. -/
def A168190 (n : ℕ) : ℤ :=
  A168190.P1854175503729805304.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^9+1)/2` (program `A168190.P6614214977692164207`, by `A168190.P6614214977692164207.correct`). Lean does not check the parsing of the name. -/
def A168190.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168191.P15005594831408203501

`n²*A168119(n)`
-/

namespace A168191.P15005594831408203501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168119 n

end

end A168191.P15005594831408203501

noncomputable section

/-- A168191: a(n) = n^3*(n^10 + 1)/2.

Offset 0, canonical program `A168191.P15005594831408203501`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^10+1)/2` (program `A168191.P11844307673975364443`, by `A168191.P11844307673975364443.correct`). Lean does not check the parsing of the name. -/
def A168191 (n : ℕ) : ℤ :=
  A168191.P15005594831408203501.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*(n^10+1)/2` (program `A168191.P11844307673975364443`, by `A168191.P11844307673975364443.correct`). Lean does not check the parsing of the name. -/
def A168191.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168225.P5208216902943000796

`A168153(n)+C(n², 2)`
-/

namespace A168225.P5208216902943000796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168153 n + (Nat.choose (n ^ 2) 2 : ℤ)

end

end A168225.P5208216902943000796

noncomputable section

/-- A168225: a(n) = n^4*(n^7 + 1)/2.

Offset 0, canonical program `A168225.P5208216902943000796`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^7+1)/2` (program `A168225.P13376698782999524608`, by `A168225.P13376698782999524608.correct`). Lean does not check the parsing of the name. -/
def A168225 (n : ℕ) : ℤ :=
  A168225.P5208216902943000796.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^7+1)/2` (program `A168225.P13376698782999524608`, by `A168225.P13376698782999524608.correct`). Lean does not check the parsing of the name. -/
def A168225.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168345.P6982683568432476353

`n²*A168153(n)`
-/

namespace A168345.P6982683568432476353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A168153 n

end

end A168345.P6982683568432476353

noncomputable section

/-- A168345: a(n) = n^4*(n^9 + 1)/2.

Offset 0, canonical program `A168345.P6982683568432476353`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^9+1)/2` (program `A168345.P4631879238593598652`, by `A168345.P4631879238593598652.correct`). Lean does not check the parsing of the name. -/
def A168345 (n : ℕ) : ℤ :=
  A168345.P6982683568432476353.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^9+1)/2` (program `A168345.P4631879238593598652`, by `A168345.P4631879238593598652.correct`). Lean does not check the parsing of the name. -/
def A168345.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168346.P5815712206208416061

`n^3*A168119(n)`
-/

namespace A168346.P5815712206208416061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168119 n

end

end A168346.P5815712206208416061

noncomputable section

/-- A168346: a(n) = n^4*(n^10 + 1)/2.

Offset 0, canonical program `A168346.P5815712206208416061`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^10+1)/2` (program `A168346.P6231584071021818417`, by `A168346.P6231584071021818417.correct`). Lean does not check the parsing of the name. -/
def A168346 (n : ℕ) : ℤ :=
  A168346.P5815712206208416061.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^10+1)/2` (program `A168346.P6231584071021818417`, by `A168346.P6231584071021818417.correct`). Lean does not check the parsing of the name. -/
def A168346.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168471.P14271287693191774711

`n^3*A168153(n)`
-/

namespace A168471.P14271287693191774711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A168153 n

end

end A168471.P14271287693191774711

noncomputable section

/-- A168471: a(n) = n^5*(n^9 + 1)/2.

Offset 0, canonical program `A168471.P14271287693191774711`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5*(n^9+1)/2` (program `A168471.P7596393113812289214`, by `A168471.P7596393113812289214.correct`). Lean does not check the parsing of the name. -/
def A168471 (n : ℕ) : ℤ :=
  A168471.P14271287693191774711.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5*(n^9+1)/2` (program `A168471.P7596393113812289214`, by `A168471.P7596393113812289214.correct`). Lean does not check the parsing of the name. -/
def A168471.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168633.P12972347511728595871

`n²²*A168153(n)`
-/

namespace A168633.P12972347511728595871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A168153 n

end

end A168633.P12972347511728595871

noncomputable section

/-- A168633: a(n) = n^6*(n^9 + 1)/2.

Offset 0, canonical program `A168633.P12972347511728595871`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^9+1)/2` (program `A168633.P9321221020949049552`, by `A168633.P9321221020949049552.correct`). Lean does not check the parsing of the name. -/
def A168633 (n : ℕ) : ℤ :=
  A168633.P12972347511728595871.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^9+1)/2` (program `A168633.P9321221020949049552`, by `A168633.P9321221020949049552.correct`). Lean does not check the parsing of the name. -/
def A168633.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 2, canonical program `A179893.P13809526715996495286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179893 (n : ℕ) : ℤ :=
  A179893.P13809526715996495286.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179893.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A181962.P15147201020200271264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181962 (n : ℕ) : ℤ :=
  A181962.P15147201020200271264.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181962.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A189892.P11745447332243219839

`A033286(n+1)-A007504(n)`
-/

namespace A189892.P11745447332243219839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) - A007504 n

end

end A189892.P11745447332243219839

noncomputable section

/-- A189892: a(n) = n*prime(n) - sum_{i=1..n-1} prime(i).

Offset 1, canonical program `A189892.P11745447332243219839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A189892 (n : ℕ) : ℤ :=
  A189892.P11745447332243219839.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A189892.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A168116.P10140477262871652233

`A170784(n)+n-A168119(n)`
-/

namespace A168116.P10140477262871652233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170784 n + ((n : ℤ) - A168119 n)

end

end A168116.P10140477262871652233

noncomputable section

/-- A168116: a(n) = n*(n^8+1)/2.

Offset 0, canonical program `A168116.P10140477262871652233`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n^8+1)/2` (program `A168116.P2134200745871545788`, by `A168116.P2134200745871545788.correct`). Lean does not check the parsing of the name. -/
def A168116 (n : ℕ) : ℤ :=
  A168116.P10140477262871652233.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n^8+1)/2` (program `A168116.P2134200745871545788`, by `A168116.P2134200745871545788.correct`). Lean does not check the parsing of the name. -/
def A168116.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A129237.P13854613413185122732

`∑{d}[A126988(n+1), A002262(n)+#]`
-/

namespace A129237.P13854613413185122732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A002262 n + (d : ℤ))

end

end A129237.P13854613413185122732

noncomputable section

/-- A129237: A051731 * A129234.

Offset 1, canonical program `A129237.P13854613413185122732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129237 (n : ℕ) : ℤ :=
  A129237.P13854613413185122732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129353.P12434210787401024625

`val(A004277(A126988(n+1)), 2)`
-/

namespace A129353.P12434210787401024625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 (A126988 (n + 1)).toNat).toNat 2

end

end A129353.P12434210787401024625

noncomputable section

/-- A129353: Triangle read by rows: A051731 * A115361 as infinite lower triangular matrices.

Offset 1, canonical program `A129353.P12434210787401024625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129353 (n : ℕ) : ℤ :=
  (A129353.P12434210787401024625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129353.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129555.P480594090586041492

`A026741(A126988(n+1))`
-/

namespace A129555.P480594090586041492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A126988 (n + 1)).toNat

end

end A129555.P480594090586041492

noncomputable section

/-- A129555: A054523 * A129372.

Offset 0, canonical program `A129555.P480594090586041492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129555 (n : ℕ) : ℤ :=
  A129555.P480594090586041492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129689.P16579253702323434123

`2*A128175(n+1)-A007318(n)`
-/

namespace A129689.P16579253702323434123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128175 (n + 1) - A007318 n

end

end A129689.P16579253702323434123

noncomputable section

/-- A129689: A007318 * A129688.

Offset 1, canonical program `A129689.P16579253702323434123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129689 (n : ℕ) : ℤ :=
  A129689.P16579253702323434123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129689.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130540.P17651116764661145688

`∑{d}[A126988(n+1), #]`
-/

namespace A130540.P17651116764661145688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A130540.P17651116764661145688

noncomputable section

/-- A130540: Triangle read by rows T(n,k) in which column k lists the terms of A000203 interspersed with (k-1) zeros, 1 <= k <= n.

Offset 1, canonical program `A130540.P17651116764661145688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A130540 (n : ℕ) : ℤ :=
  (A130540.P17651116764661145688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A130540.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131052.P3356453068962717231

`A128175(A131225(n+1)+A038722(n+1))`
-/

namespace A131052.P3356453068962717231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (A131225 (n + 1) + A038722 (n + 1)).toNat

end

end A131052.P3356453068962717231

noncomputable section

/-- A131052: A131047 * A000012.

Offset 1, canonical program `A131052.P3356453068962717231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A131052 (n : ℕ) : ℤ :=
  A131052.P3356453068962717231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A131052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131129.P5347046498365630187

`floor(3*A131108(n)/2)`
-/

namespace A131129.P5347046498365630187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A131108 n : ℚ) / 2⌋

end

end A131129.P5347046498365630187

noncomputable section

/-- A131129: 3*A007318 - 2*A097806, where A007318 = Pascal's triangle and A097806 = the pairwise operator.

Offset 0, canonical program `A131129.P5347046498365630187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131129 (n : ℕ) : ℤ :=
  A131129.P5347046498365630187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131131.P12474892076116979280

`2*A131108(n)-A097806(n)`
-/

namespace A131131.P12474892076116979280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131108 n - A097806 n

end

end A131131.P12474892076116979280

noncomputable section

/-- A131131: 4*A007318 - 3*A097806.

Offset 0, canonical program `A131131.P12474892076116979280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131131 (n : ℕ) : ℤ :=
  A131131.P12474892076116979280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131131.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131376.P4997632316983606857

`A007318(n)+A131374(n)-A046854(n)`
-/

namespace A131376.P4997632316983606857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131374 n - A046854 n)

end

end A131376.P4997632316983606857

noncomputable section

/-- A131376: Triangle read by rows: T(n,k) = A007318(n,k) + A065941(n,k) - A168561(n,k).

Offset 0, canonical program `A131376.P4997632316983606857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131376 (n : ℕ) : ℤ :=
  A131376.P4997632316983606857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131398.P13475172351634249680

`A131108(n)+A014473(n)`
-/

namespace A131398.P13475172351634249680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131108 n + A014473 n

end

end A131398.P13475172351634249680

noncomputable section

/-- A131398: 3*A007318 - A097806 - A000012.

Offset 0, canonical program `A131398.P13475172351634249680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131398 (n : ℕ) : ℤ :=
  A131398.P13475172351634249680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131404.P9939978111616985627

`2*A131402(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131404.P9939978111616985627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131402 n - 1

end

end A131404.P9939978111616985627

noncomputable section

/-- A131404: a(n) = 2*A131402(n) - 1.

Offset 0, canonical program `A131404.P9939978111616985627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131404 (n : ℕ) : ℤ :=
  A131404.P9939978111616985627.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131404.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A131427.P4576439200903195274

`A023531(n)*A098474(n)`
-/

namespace A131427.P4576439200903195274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A098474 n

end

end A131427.P4576439200903195274

noncomputable section

/-- A131427: A000108(n) preceded by n zeros.

Offset 0, canonical program `A131427.P4576439200903195274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131427 (n : ℕ) : ℤ :=
  A131427.P4576439200903195274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131427.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131777.P18261252755188450248

`2*A131775(n+1)-A065941(n)`
-/

namespace A131777.P18261252755188450248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131775 (n + 1) - A065941 n

end

end A131777.P18261252755188450248

noncomputable section

/-- A131777: 5*A065941 - 4*A049310.

Offset 1, canonical program `A131777.P18261252755188450248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131777 (n : ℕ) : ℤ :=
  A131777.P18261252755188450248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131778.P8822641819976216554

`2*A131776(n+1)-A131774(n+1)`
-/

namespace A131778.P8822641819976216554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131776 (n + 1) - A131774 (n + 1)

end

end A131778.P8822641819976216554

noncomputable section

/-- A131778: 6*A065941 - 5*A049310.

Offset 1, canonical program `A131778.P8822641819976216554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131778 (n : ℕ) : ℤ :=
  A131778.P8822641819976216554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131897.P15038392300665076693

`or(Δ[A056942(n)], A131817(n))`
-/

namespace A131897.P15038392300665076693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A131817 n)

end

end A131897.P15038392300665076693

noncomputable section

/-- A131897: A130321 + A131821 - A000012.

Offset 0, canonical program `A131897.P15038392300665076693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131897 (n : ℕ) : ℤ :=
  A131897.P15038392300665076693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131996.P6835226825695645018

`A081611(round(n/3))`
-/

namespace A131996.P6835226825695645018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A131996.P6835226825695645018

noncomputable section

/-- A131996: Number of partitions of n into distinct powers of 2 or of 3.

Offset 1, canonical program `A131996.P6835226825695645018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A131996 (n : ℕ) : ℤ :=
  A131996.P6835226825695645018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A131996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132752.P12795586409169669326

`2*A132749(n)-1`
-/

namespace A132752.P12795586409169669326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132749 n - 1

end

end A132752.P12795586409169669326

noncomputable section

/-- A132752: Triangle T(n, k) = 2*A132749(n, k) - 1, read by rows.

Offset 0, canonical program `A132752.P12795586409169669326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132752 (n : ℕ) : ℤ :=
  A132752.P12795586409169669326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132752.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A133517.P3010861517069593141

`A030078(n+1)-A077037(p?[A056847(n)])`
-/

namespace A133517.P3010861517069593141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A077037 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133517.P3010861517069593141

noncomputable section

/-- A133517: Smallest k such that p(n)^3 - k is prime where p(n) is the n-th prime.

Offset 1, canonical program `A133517.P3010861517069593141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1220 terms. -/
def A133517 (n : ℕ) : ℤ :=
  A133517.P3010861517069593141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1220 terms. -/
def A133517.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A133567.P2335698315275832870

`A103371(n)/A133084(n+1)`
-/

namespace A133567.P2335698315275832870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103371 n : ℚ) / (A133084 (n + 1) : ℚ)

end

end A133567.P2335698315275832870

noncomputable section

/-- A133567: A007318 * A133566.

Offset 1, canonical program `A133567.P2335698315275832870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133567 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133567.P2335698315275832870.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133729.P396639260184250691

`A128175(n+1)*A158405(n+1)`
-/

namespace A133729.P396639260184250691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (n + 1) * A158405 (n + 1)

end

end A133729.P396639260184250691

noncomputable section

/-- A133729: A007318 * A133728.

Offset 1, canonical program `A133729.P396639260184250691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133729 (n : ℕ) : ℤ :=
  A133729.P396639260184250691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133729.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134060.P5985046479831318220

`lcm(A124928(n), A132749(n))`
-/

namespace A134060.P5985046479831318220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124928 n) (A132749 n)

end

end A134060.P5985046479831318220

noncomputable section

/-- A134060: Triangle T(n,k) = A124927(n,k) + A134058(n,k) - A007318(n,k), read by rows.

Offset 0, canonical program `A134060.P5985046479831318220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A134060 (n : ℕ) : ℤ :=
  (A134060.P5985046479831318220.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A134060.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134224.P9579061537419719941

`A134199(n)+A114327(n)`
-/

namespace A134224.P9579061537419719941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134199 n + A114327 n

end

end A134224.P9579061537419719941

noncomputable section

/-- A134224: A004736 + A134082 - I as infinite lower triangular matrices; I = Identity matrix.

Offset 0, canonical program `A134224.P9579061537419719941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134224 (n : ℕ) : ℤ :=
  A134224.P9579061537419719941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134226.P18145775604649246008

`A134199(n)-A129184(n+1)`
-/

namespace A134226.P18145775604649246008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134199 n - A129184 (n + 1)

end

end A134226.P18145775604649246008

noncomputable section

/-- A134226: Triangle T(n, k) = 3*n - 4 if k = n-1 otherwise k, read by rows.

Offset 1, canonical program `A134226.P18145775604649246008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134226 (n : ℕ) : ℤ :=
  A134226.P18145775604649246008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134318.P15553528286371622200

`A128175(n+1)*A232089(n)`
-/

namespace A134318.P15553528286371622200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (n + 1) * A232089 n

end

end A134318.P15553528286371622200

noncomputable section

/-- A134318: A007318 * A134317.

Offset 0, canonical program `A134318.P15553528286371622200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134318 (n : ℕ) : ℤ :=
  A134318.P15553528286371622200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134352.P10374233049189694274

`A131577(A128621(n+1))`
-/

namespace A134352.P10374233049189694274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A128621 (n + 1)).toNat

end

end A134352.P10374233049189694274

noncomputable section

/-- A134352: A130123 * A128174.

Offset 0, canonical program `A134352.P10374233049189694274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134352 (n : ℕ) : ℤ :=
  A134352.P10374233049189694274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134352.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134464.P6205349550978109766

`A112367(n)+A094727(n+1)`
-/

namespace A134464.P6205349550978109766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A094727 (n + 1)

end

end A134464.P6205349550978109766

noncomputable section

/-- A134464: (A127648 * A000012 + A000012 * A127773) - A000012.

Offset 1, canonical program `A134464.P6205349550978109766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134464 (n : ℕ) : ℤ :=
  A134464.P6205349550978109766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134482.P15143362080738563576

`A134403(n)+1`
-/

namespace A134482.P15143362080738563576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134403 n + 1

end

end A134482.P15143362080738563576

noncomputable section

/-- A134482: Triangle read by rows: row n consists of n followed by the numbers n through 2n-2.

Offset 1, canonical program `A134482.P15143362080738563576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134482 (n : ℕ) : ℤ :=
  A134482.P15143362080738563576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134576.P2013391426293502039

`A127446(n+1)²`
-/

namespace A134576.P2013391426293502039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (n + 1) ^ 2

end

end A134576.P2013391426293502039

noncomputable section

/-- A134576: Triangle read by rows: T(n,k) = n^2*A051731(n,k).

Offset 1, canonical program `A134576.P2013391426293502039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134576 (n : ℕ) : ℤ :=
  A134576.P2013391426293502039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134576.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134700.P8117380377990256962

`A113215(A085383(n+1))`
-/

namespace A134700.P8117380377990256962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A085383 (n + 1)).toNat

end

end A134700.P8117380377990256962

noncomputable section

/-- A134700: Triangle read by rows: A000012 * A051731^2.

Offset 1, canonical program `A134700.P8117380377990256962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A134700 (n : ℕ) : ℤ :=
  A134700.P8117380377990256962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A134700.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A135573.P6360191770483409668

`A068555(A007401(n+1))/2`
-/

namespace A135573.P6360191770483409668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A007401 (n + 1)).toNat : ℚ) / 2

end

end A135573.P6360191770483409668

noncomputable section

/-- A135573: Array T(n,m) of super ballot numbers read along ascending antidiagonals.

Offset 0, canonical program `A135573.P6360191770483409668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A135573 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A135573.P6360191770483409668.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A135573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135635.P9097632781227393920

`A134636(A007401(n+1))+A097805(n)-A028326(n)`
-/

namespace A135635.P9097632781227393920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 (A007401 (n + 1)).toNat + (A097805 n - A028326 n)

end

end A135635.P9097632781227393920

noncomputable section

/-- A135635: Triangle read by rows, constructed by the Pascal rule, with top entry 2, left edge = odd numbers, right edge = squares plus 1.

Offset 1, canonical program `A135635.P9097632781227393920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A135635 (n : ℕ) : ℤ :=
  A135635.P9097632781227393920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A135635.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A135853.P16818106393424875175

`A134868(n+1)*A135278(n)`
-/

namespace A135853.P16818106393424875175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) * A135278 n

end

end A135853.P16818106393424875175

noncomputable section

/-- A135853: A103516 * A007318 as an infinite lower triangular matrix.

Offset 0, canonical program `A135853.P16818106393424875175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135853 (n : ℕ) : ℤ :=
  A135853.P16818106393424875175.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135853.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A136208.P8175068401792268664

`p?[∪[A015915(n+1), A092402(n+1)]]`
-/

namespace A136208.P8175068401792268664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092402 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136208.P8175068401792268664

noncomputable section

/-- A136208: Primes p such that p-8 or p+8 is prime.

Offset 1, canonical program `A136208.P8175068401792268664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A136208 (n : ℕ) : ℤ :=
  (A136208.P8175068401792268664.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A136208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136482.P12612554816507935657

`A034852(n)+A007318(n)`
-/

namespace A136482.P12612554816507935657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n + A007318 n

end

end A136482.P12612554816507935657

noncomputable section

/-- A136482: Triangle read by rows: T(n,k) = 2*A007318(n,k) - A034851(n,k) (i.e., twice Pascal's triangle - the Losanitch triangle).

Offset 0, canonical program `A136482.P12612554816507935657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136482 (n : ℕ) : ℤ :=
  A136482.P12612554816507935657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136581.P5726716619279127359

`A094587(n)*A136579(n)`
-/

namespace A136581.P5726716619279127359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A136579 n

end

end A136581.P5726716619279127359

noncomputable section

/-- A136581: Triangle read by rows: A136572 * A128174.

Offset 0, canonical program `A136581.P5726716619279127359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A136581 (n : ℕ) : ℤ :=
  A136581.P5726716619279127359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A136581.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A137263.P10830162275430257195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A137263 (n : ℕ) : ℤ :=
  (A137263.P10830162275430257195.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
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

Offset 1, canonical program `A137427.P7977322006733834359`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137427 (n : ℕ) : ℤ :=
  A137427.P7977322006733834359.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137427.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A138287.P14641766321131495710

`8-A156551(n)`
-/

namespace A138287.P14641766321131495710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A156551 n

end

end A138287.P14641766321131495710

noncomputable section

/-- A138287: Palindromic period 10: repeat [0, 2, 8, 4, 6, 6, 4, 8, 2, 0].

Offset 0, canonical program `A138287.P14641766321131495710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138287 (n : ℕ) : ℤ :=
  A138287.P14641766321131495710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138287.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138457.P7138522454749224645

`A000040(n+1)*A138436(n+1)`
-/

namespace A138457.P7138522454749224645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A138436 (n + 1)

end

end A138457.P7138522454749224645

noncomputable section

/-- A138457: a(n) = ((n-th prime)^6-(n-th prime)^4)/8.

Offset 1, canonical program `A138457.P7138522454749224645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138457 (n : ℕ) : ℤ :=
  A138457.P7138522454749224645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138457.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A138751.P13177087611856876241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138751 (n : ℕ) : ℤ :=
  A138751.P13177087611856876241.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A139385.P2848592424051489160

`p?[A095672(n+1)-4]`
-/

namespace A139385.P2848592424051489160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139385.P2848592424051489160

noncomputable section

/-- A139385: Primes p such that p, p+4 and p+12 are consecutive primes.

Offset 1, canonical program `A139385.P2848592424051489160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A139385 (n : ℕ) : ℤ :=
  A139385.P2848592424051489160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. -/
def A139385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139526.P8121772475475467117

`A007318(n)*A076112(n+1)`
-/

namespace A139526.P8121772475475467117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A076112 (n + 1)

end

end A139526.P8121772475475467117

noncomputable section

/-- A139526: Triangle A061356 read right to left.

Offset 2, canonical program `A139526.P8121772475475467117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A139526 (n : ℕ) : ℤ :=
  A139526.P8121772475475467117.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1708 terms. -/
def A139526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139636.P15944924081291007344

`A073846(A073898(n+2)+2)`
-/

namespace A139636.P15944924081291007344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A073898 (n + 2) + 2).toNat

end

end A139636.P15944924081291007344

noncomputable section

/-- A139636: If n = the k-th prime, then a(n) = the (k+1)th prime. If n = the k-th composite, then a(n) = the (k+1)th composite.

Offset 2, canonical program `A139636.P15944924081291007344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A139636 (n : ℕ) : ℤ :=
  A139636.P15944924081291007344.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A139636.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140757.P932709549133875573

`∑[A140756(n+1)]`
-/

namespace A140757.P932709549133875573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140757.P932709549133875573

noncomputable section

/-- A140757: Cumulative sums of A140756.

Offset 1, canonical program `A140757.P932709549133875573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140757 (n : ℕ) : ℤ :=
  A140757.P932709549133875573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140757.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141678.P15377472097087936516

`A094565(A014132(n+1))-A094565(n+1)`
-/

namespace A141678.P15377472097087936516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094565 (A014132 (n + 1)).toNat - A094565 (n + 1)

end

end A141678.P15377472097087936516

noncomputable section

/-- A141678: Symmetrical triangle of coefficients based on invert transform of A001906.

Offset 1, canonical program `A141678.P15377472097087936516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141678 (n : ℕ) : ℤ :=
  A141678.P15377472097087936516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A141678.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141680.P15300332058196604664

`A126988(n+1)*A135278(n)`
-/

namespace A141680.P15300332058196604664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1) * A135278 n

end

end A141680.P15300332058196604664

noncomputable section

/-- A141680: Triangle read by rows: T(n,m) = (n/m)*binomial(n,m) if m divides n, otherwise 0.

Offset 1, canonical program `A141680.P15300332058196604664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141680 (n : ℕ) : ℤ :=
  A141680.P15300332058196604664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141680.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143315.P7020980111509435971

`A014681(2*A126988(n+1))`
-/

namespace A143315.P7020980111509435971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A126988 (n + 1)).toNat

end

end A143315.P7020980111509435971

noncomputable section

/-- A143315: Triangle read by rows: T(n, k) = 2*A126988(n, k) - signum(A126988(n, k)).

Offset 1, canonical program `A143315.P7020980111509435971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143315 (n : ℕ) : ℤ :=
  A143315.P7020980111509435971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143315.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143858.P1918811544124645960

`abs(A129818(∑[A035214(n)]))`
-/

namespace A143858.P1918811544124645960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129818 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A143858.P1918811544124645960

noncomputable section

/-- A143858: Number of pairwise disjoint unions of m integer-to-integer subintervals of [0,n]; a rectangular array by antidiagonals, n>=2m-1, m>=1.

Offset 1, canonical program `A143858.P1918811544124645960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A143858 (n : ℕ) : ℤ :=
  A143858.P1918811544124645960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A143858.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144329.P4597072197910217241

`A066182(n+1)-A144216(n+1)`
-/

namespace A144329.P4597072197910217241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1) - A144216 (n + 1)

end

end A144329.P4597072197910217241

noncomputable section

/-- A144329: Triangle read by rows, A000012 * A144328.

Offset 1, canonical program `A144329.P4597072197910217241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144329 (n : ℕ) : ℤ :=
  A144329.P4597072197910217241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144330.P3619810151422796478

`A144328(n+1)+A049780(n)`
-/

namespace A144330.P3619810151422796478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + A049780 n

end

end A144330.P3619810151422796478

noncomputable section

/-- A144330: Triangle read by rows, A144328 * A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A144330.P3619810151422796478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144330 (n : ℕ) : ℤ :=
  A144330.P3619810151422796478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144336.P3305188520501149043

`2*A144328(n+1)-A130595(n)`
-/

namespace A144336.P3305188520501149043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144328 (n + 1) - A130595 n

end

end A144336.P3305188520501149043

noncomputable section

/-- A144336: Triangle read by rows, 2*A144328 - A007318^(-1).

Offset 1, canonical program `A144336.P3305188520501149043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144336 (n : ℕ) : ℤ :=
  A144336.P3305188520501149043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144336.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144693.P3964769176750840430

`A101468(A066182(n+1)-A002024(n+1))`
-/

namespace A144693.P3964769176750840430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101468 (A066182 (n + 1) - A002024 (n + 1)).toNat

end

end A144693.P3964769176750840430

noncomputable section

/-- A144693: Triangle read by rows, A000012 * (3*A144328 - 2*A000012), where A000012 means a lower triangular matrix of all 1's.

Offset 1, canonical program `A144693.P3964769176750840430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144693 (n : ℕ) : ℤ :=
  A144693.P3964769176750840430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144693.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A145154.P3148683332276423765

`and(5, -(Δ[A007504(n)]²+1))*∏{e}[n, #+1]`
-/

namespace A145154.P3148683332276423765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (-((f1 (n + 1) - f1 n) ^ 2 + 1)) * ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A145154.P3148683332276423765

noncomputable section

/-- A145154: Coefficients in expansion of Eisenstein series E_1.

Offset 0, canonical program `A145154.P3148683332276423765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145154 (n : ℕ) : ℤ :=
  A145154.P3148683332276423765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145379.P6530098402621285829

`A077049(A005843(A004736(n+1))+n)`
-/

namespace A145379.P6530098402621285829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077049 (A005843 (A004736 (n + 1)).toNat + (n : ℤ)).toNat

end

end A145379.P6530098402621285829

noncomputable section

/-- A145379: Square array read by antidiagonals upwards: T(n,k) = 1 if n divides k, T(n,k) = 0 otherwise, n >= 1, k >= 2.

Offset 1, canonical program `A145379.P6530098402621285829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145379 (n : ℕ) : ℤ :=
  A145379.P6530098402621285829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145379.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A145677.P4837885424705967050

`abs(A132013(abs(1-n)))`
-/

namespace A145677.P4837885424705967050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A132013 |1 - (n : ℤ)|.toNat)|

end

end A145677.P4837885424705967050

noncomputable section

/-- A145677: Triangle T(n, k) read by rows: T(n, 0) = 1, T(n, n) = n, n>0, T(n,k) = 0, 0 < k < n-1.

Offset 0, canonical program `A145677.P4837885424705967050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145677 (n : ℕ) : ℤ :=
  A145677.P4837885424705967050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145677.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A151775.P8909933314801045332

`A008294(A061885(n))`
-/

namespace A151775.P8909933314801045332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008294 (A061885 n).toNat

end

end A151775.P8909933314801045332

noncomputable section

/-- A151775: Triangle read by rows: T(n,k) = value of (d^2n/dx^2n) (tan^(2k)(x)/cos(x)) at the point x = 0.

Offset 0, canonical program `A151775.P8909933314801045332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A151775 (n : ℕ) : ℤ :=
  A151775.P8909933314801045332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A151775.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A153279.P12459744595363898917

`lcm(3, A036561(n))/3`
-/

namespace A153279.P12459744595363898917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A036561 n) : ℚ) / 3

end

end A153279.P12459744595363898917

noncomputable section

/-- A153279: Eigentriangle by rows, T(n,k) = A000079(n-k) * (diagonalized matrix of (1,1,3,9,27,81,...)).

Offset 0, canonical program `A153279.P12459744595363898917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153279 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A153279.P12459744595363898917.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153279.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A154338.P12998775636047877976

`2*A060187(n+1)-A154336(n)`
-/

namespace A154338.P12998775636047877976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060187 (n + 1) - A154336 n

end

end A154338.P12998775636047877976

noncomputable section

/-- A154338: A triangular sequence of coefficients of polynomials: p(x,n)=(-(x - 1)^(n)*Sum[(((-1)^(n)*(2*k + 1)^(n - 1)))*x^k, {k,0, Infinity}]+2*(x - 1)^(n + 1)*Sum[((-1)^(n + 1)*k^n)*x^k, {k, 0, Infinity}]/x).

Offset 0, canonical program `A154338.P12998775636047877976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A154338 (n : ℕ) : ℤ :=
  A154338.P12998775636047877976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A154338.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A154696.P2906835643943415634

`(A175840(n)+A036561(n))*A060187(n+1)`
-/

namespace A154696.P2906835643943415634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175840 n + A036561 n) * A060187 (n + 1)

end

end A154696.P2906835643943415634

noncomputable section

/-- A154696: Triangular sequence defined by T(n, m) = (r^(n-m)*q^m + r^m*q^(n-m))*b(n), where b(n) = coefficients of p(x, n) = 2^n*(1-x)^(n+1) * LerchPhi(x, -n, 1/2), and r=2, q=3.

Offset 0, canonical program `A154696.P2906835643943415634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 861 terms. -/
def A154696 (n : ℕ) : ℤ :=
  A154696.P2906835643943415634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 861 terms. -/
def A154696.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A154913.P13899564087834538575

`A154843(n)*A271709(n)`
-/

namespace A154913.P13899564087834538575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154843 n * A271709 n

end

end A154913.P13899564087834538575

noncomputable section

/-- A154913: Triangle T(n,m,p,q) = (p^(n-k)*q^k + p^k*q^(n-k))*(StirlingS1(n, k) + StirlingS1(n, n-k)) with p=2 and q=1, read by rows.

Offset 0, canonical program `A154913.P13899564087834538575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1893 terms. -/
def A154913 (n : ℕ) : ℤ :=
  A154913.P13899564087834538575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1893 terms. -/
def A154913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154914.P10683815225561825413

`(A054654(n)+A048994(n))*(A175840(n)+A036561(n))`
-/

namespace A154914.P10683815225561825413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054654 n + A048994 n) * (A175840 n + A036561 n)

end

end A154914.P10683815225561825413

noncomputable section

/-- A154914: Triangle T(n,m,p,q) = (p^(n-k)*q^k + p^k*q^(n-k))*(StirlingS1(n, k) + StirlingS1(n, n-k)) with p=2 and q=3, read by rows.

Offset 0, canonical program `A154914.P10683815225561825413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1598 terms. -/
def A154914 (n : ℕ) : ℤ :=
  A154914.P10683815225561825413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1598 terms. -/
def A154914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155031.P17817635720882455542

`A294619(2*A126988(n+1))-1`
-/

namespace A155031.P17817635720882455542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (2 * A126988 (n + 1)).toNat - 1

end

end A155031.P17817635720882455542

noncomputable section

/-- A155031: Triangle T(n, k) = 0 if n==0 (mod k) otherwise -1 with T(n, n) = 1 and T(n, 0) = 0, read by rows.

Offset 1, canonical program `A155031.P17817635720882455542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155031 (n : ℕ) : ℤ :=
  A155031.P17817635720882455542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155031.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A155118.P18324433763876345140

`round(A036561(n)/3)`
-/

namespace A155118.P18324433763876345140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036561 n : ℚ) / 3)

end

end A155118.P18324433763876345140

noncomputable section

/-- A155118: Array T(n,k) read by antidiagonals: the k-th term of the n-th iterated differences of A140429.

Offset 0, canonical program `A155118.P18324433763876345140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155118 (n : ℕ) : ℤ :=
  A155118.P18324433763876345140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155537.P495067462620103375

`(A140513(n)+1)*A001263(n+1)`
-/

namespace A155537.P495067462620103375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140513 n + 1) * A001263 (n + 1)

end

end A155537.P495067462620103375

noncomputable section

/-- A155537: Triangle T(n,k,p,q) = (p^n + q^n)*A001263(n, k) with p=2 and q=1, read by rows.

Offset 1, canonical program `A155537.P495067462620103375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A155537 (n : ℕ) : ℤ :=
  A155537.P495067462620103375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6723 terms. -/
def A155537.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A155864.P5469586023862322716

`ceil(A155863(n)/∑[A010054(n)])`
-/

namespace A155864.P5469586023862322716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155863 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A155864.P5469586023862322716

noncomputable section

/-- A155864: Triangle T(n,k) = n*(n-1)*binomial(n-2, k-1) for 1 <= k <= n-1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, read by rows.

Offset 0, canonical program `A155864.P5469586023862322716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155864 (n : ℕ) : ℤ :=
  A155864.P5469586023862322716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155864.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A156006.P8984880958140237192

`A106566(A038722(n+2))+A106566(n)`
-/

namespace A156006.P8984880958140237192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A038722 (n + 2)).toNat + A106566 n

end

end A156006.P8984880958140237192

noncomputable section

/-- A156006: Triangle, read by rows, T(n, k) = ((n-k)/(n+k))*binomial(n+k, n) + (k/(2*n-k))*binomial(2*n -k, n), with T(0,0) = 1.

Offset 0, canonical program `A156006.P8984880958140237192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A156006 (n : ℕ) : ℤ :=
  A156006.P8984880958140237192.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A156006.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A156708.P214328452382928940

`round(A104709(n)/A035214(n))`
-/

namespace A156708.P214328452382928940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A104709 n : ℚ) / (A035214 n : ℚ))

end

end A156708.P214328452382928940

noncomputable section

/-- A156708: Triangle read by rows, binomial transform of A154325.

Offset 0, canonical program `A156708.P214328452382928940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156708 (n : ℕ) : ℤ :=
  A156708.P214328452382928940.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156708.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157502.P11939738735497661628

`A211197(n+1)+A093995(n+1)`
-/

namespace A157502.P11939738735497661628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211197 (n + 1) + A093995 (n + 1)

end

end A157502.P11939738735497661628

noncomputable section

/-- A157502: Even numbers without the squares.

Offset 1, canonical program `A157502.P11939738735497661628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157502 (n : ℕ) : ℤ :=
  A157502.P11939738735497661628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157635.P5484707962841766784

`ceil(A157632(n)/3)`
-/

namespace A157635.P5484707962841766784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157632 n : ℚ) / 3⌉

end

end A157635.P5484707962841766784

noncomputable section

/-- A157635: Triangle read by rows: T(n,m) = 1 if n*m*(n-m) = 0, and n*m*(n-m) otherwise.

Offset 0, canonical program `A157635.P5484707962841766784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157635 (n : ℕ) : ℤ :=
  A157635.P5484707962841766784.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157635.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A158528.P17573556764949661852

`Δ[A007504(∑[A060199(n)])]`
-/

namespace A158528.P17573556764949661852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A158528.P17573556764949661852

noncomputable section

/-- A158528: Sum of primes between consecutive positive cubes.

Offset 1, canonical program `A158528.P17573556764949661852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A158528 (n : ℕ) : ℤ :=
  A158528.P17573556764949661852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A158528.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A158841.P12435815031069025361

`A144328(n+1)+A095834(n+1)`
-/

namespace A158841.P12435815031069025361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + A095834 (n + 1)

end

end A158841.P12435815031069025361

noncomputable section

/-- A158841: Triangle read by rows, matrix product of A145677 * A004736.

Offset 1, canonical program `A158841.P12435815031069025361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158841 (n : ℕ) : ℤ :=
  A158841.P12435815031069025361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158897.P8888983181281037156

`A141620(n)+A158405(n+2)`
-/

namespace A158897.P8888983181281037156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141620 n + A158405 (n + 2)

end

end A158897.P8888983181281037156

noncomputable section

/-- A158897: The elements of A059100 at indices of triangular numbers, padded with zeros.

Offset 1, canonical program `A158897.P8888983181281037156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158897 (n : ℕ) : ℤ :=
  A158897.P8888983181281037156.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158897.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158906.P5702865832035020583

`ceil(A126988(n+1)/A007318(n))`
-/

namespace A158906.P5702865832035020583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126988 (n + 1) : ℚ) / (A007318 n : ℚ)⌉

end

end A158906.P5702865832035020583

noncomputable section

/-- A158906: Triangle read by rows: the matrix product A158821 * A051731.

Offset 1, canonical program `A158906.P5702865832035020583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158906 (n : ℕ) : ℤ :=
  A158906.P5702865832035020583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158906.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A158946.P11062065186975747176

`A209279(A066182(n+1)-A003056(n))`
-/

namespace A158946.P11062065186975747176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A066182 (n + 1) - A003056 n).toNat

end

end A158946.P11062065186975747176

noncomputable section

/-- A158946: Triangle read by rows, A000012(signed) * A145677 * A000012.

Offset 1, canonical program `A158946.P11062065186975747176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158946 (n : ℕ) : ℤ :=
  A158946.P11062065186975747176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159637.P12559117183087142693

`A101080(n)%2`
-/

namespace A159637.P12559117183087142693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101080 n) 2

end

end A159637.P12559117183087142693

noncomputable section

/-- A159637: Start with [0], repeatedly apply the map 0 -> [01/10], 1 -> [10/01].

Offset 0, canonical program `A159637.P12559117183087142693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159637 (n : ℕ) : ℤ :=
  A159637.P12559117183087142693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159919.P16525752381521222348

`A173395(n+1)+A059036(n)`
-/

namespace A159919.P16525752381521222348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173395 (n + 1) + A059036 n

end

end A159919.P16525752381521222348

noncomputable section

/-- A159919: A square array of numbers, read by antidiagonals, called Sundaram's sieve.

Offset 1, canonical program `A159919.P16525752381521222348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159919 (n : ℕ) : ℤ :=
  A159919.P16525752381521222348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159919.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A160412.P9751085321963183941

`A160410(n)*3/4`
-/

namespace A160412.P9751085321963183941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160410 n * 3 : ℚ) / 4

end

end A160412.P9751085321963183941

noncomputable section

/-- A160412: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

Offset 0, canonical program `A160412.P9751085321963183941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160410, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160412.P9751085321963183941.a n)

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

/-! ## A160709.P17821594411475444705

`eq[1, ∑{e}[A038822(abs(1-n)), #]]`
-/

namespace A160709.P17821594411475444705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A160709.P17821594411475444705

noncomputable section

/-- A160709: Centuries containing a prime number of primes.

Offset 1, canonical program `A160709.P17821594411475444705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3452 terms. -/
def A160709 (n : ℕ) : ℤ :=
  (A160709.P17821594411475444705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3452 terms. -/
def A160709.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A160792.P10104784036141985292

`∑[A142150(n+1)+A007504(A142150(n))]`
-/

namespace A160792.P10104784036141985292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A007504 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160792.P10104784036141985292

noncomputable section

/-- A160792: Vertex number of a rectangular spiral related to prime numbers. The distances between nearest edges of the spiral that are parallel to the initial edge are the prime numbers, while the distances between nearest edges perpendicular to the initial edge are all one.

Offset 0, canonical program `A160792.P10104784036141985292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160792 (n : ℕ) : ℤ :=
  A160792.P10104784036141985292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160793.P11956426580748944804

`A027656(n)+A007504(∑[A001057(n)])`
-/

namespace A160793.P11956426580748944804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A007504 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A160793.P11956426580748944804

noncomputable section

/-- A160793: Natural numbers and the sum of first n primes interleaved.

Offset 1, canonical program `A160793.P11956426580748944804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160793 (n : ℕ) : ℤ :=
  A160793.P11956426580748944804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160793.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161428.P18072400539995113599

`record[A073846(4-(-1)^n+n)]`
-/

namespace A161428.P18072400539995113599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (4 - (-1) ^ n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A161428.P18072400539995113599

noncomputable section

/-- A161428: a(n) = A161424(n)/4.

Offset 1, canonical program `A161428.P18072400539995113599`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161424, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161428 (n : ℕ) : ℤ :=
  A161428.P18072400539995113599.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161424, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161428.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A163061.P15581848910612517848

`A007504(n+1)+A051349(n)`
-/

namespace A163061.P15581848910612517848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + A051349 n

end

end A163061.P15581848910612517848

noncomputable section

/-- A163061: Sum of the first n primes plus the first n nonprimes.

Offset 1, canonical program `A163061.P15581848910612517848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163061 (n : ℕ) : ℤ :=
  A163061.P15581848910612517848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163061.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163116.P9298683324671648407

`A007504(n+1)-A051349(n)`
-/

namespace A163116.P9298683324671648407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A051349 n

end

end A163116.P9298683324671648407

noncomputable section

/-- A163116: Partial sums of A161671.

Offset 1, canonical program `A163116.P9298683324671648407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163116 (n : ℕ) : ℤ :=
  A163116.P9298683324671648407.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163116.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A163292.P8227225209679286486`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163291, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163292 (n : ℕ) : ℤ :=
  A163292.P8227225209679286486.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163291, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A164295.P6843823552470505705

`A054521(n+1)+A051731(n+1)`
-/

namespace A164295.P6843823552470505705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) + A051731 (n + 1)

end

end A164295.P6843823552470505705

noncomputable section

/-- A164295: Triangle T(n,k) read by rows: sum of the triangles A054521 and A051731.

Offset 1, canonical program `A164295.P6843823552470505705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A164295 (n : ℕ) : ℤ :=
  A164295.P6843823552470505705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A164295.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A165257.P5279491284380606187

`A046899(A132128(n+1))`
-/

namespace A165257.P5279491284380606187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A132128 (n + 1)).toNat

end

end A165257.P5279491284380606187

noncomputable section

/-- A165257: Triangle in which n-th row is binomial(n+k-1,k), for column k=1..n.

Offset 1, canonical program `A165257.P5279491284380606187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165257 (n : ℕ) : ℤ :=
  A165257.P5279491284380606187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165257.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A165453.P13560885071597525990

`A022554(n)+A080344(n)`
-/

namespace A165453.P13560885071597525990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n + A080344 n

end

end A165453.P13560885071597525990

noncomputable section

/-- A165453: Linear interpolation of the sequence that maps an entry of A002378 to the corresponding entry of A006331.

Offset 0, canonical program `A165453.P13560885071597525990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165453 (n : ℕ) : ℤ :=
  A165453.P13560885071597525990.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080344, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165453.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A166724.P18330365380709594796

`A000720(A166546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A166724.P18330365380709594796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A166546 (n + 1)).toNat

end

end A166724.P18330365380709594796

noncomputable section

/-- A166724: a(n) = PrimePi(A166546(n)).

Offset 1, canonical program `A166724.P18330365380709594796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166724 (n : ℕ) : ℤ :=
  A166724.P18330365380709594796.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167366.P4537059373881404542

`A131127(n)%4`
-/

namespace A167366.P4537059373881404542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131127 n) 4

end

end A167366.P4537059373881404542

noncomputable section

/-- A167366: Triangle read by rows, 2*A047999 - A097806 (signed) = twice Sierpinski's gasket - the signed pair sum operator.

Offset 0, canonical program `A167366.P4537059373881404542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167366 (n : ℕ) : ℤ :=
  A167366.P4537059373881404542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167366.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A168517.P3987419255871127776

`A008292(n+1)+A060187(n+1)-A141689(n+1)`
-/

namespace A168517.P3987419255871127776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A060187 (n + 1) - A141689 (n + 1))

end

end A168517.P3987419255871127776

noncomputable section

/-- A168517: Expansion of g.f. (1/2)*( a*(1+x)^n + b*(1-x)^(n+2)*LerchPhi(x, -n-1, 1) + c*2^(n+1)*(1-x)^(n+1)*LerchPhi(x, -n, 1/2) ), where a = -1, b = 1, and c = 1, read by rows.

Offset 0, canonical program `A168517.P3987419255871127776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. -/
def A168517 (n : ℕ) : ℤ :=
  A168517.P3987419255871127776.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. -/
def A168517.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A169894.P10373684678199886542

`A002024(n+1)-gcd(11, A022166(n))`
-/

namespace A169894.P10373684678199886542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - (Int.gcd 11 (A022166 n) : ℤ)

end

end A169894.P10373684678199886542

noncomputable section

/-- A169894: Table of carryless sums i + j, i>=0, j>=0, read by antidiagonals.

Offset 0, canonical program `A169894.P10373684678199886542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A169894 (n : ℕ) : ℤ :=
  A169894.P10373684678199886542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A169894.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171232.P120387607848267038

`A004277(A003988(n+1)*A077049(n+1))-A077049(n+1)`
-/

namespace A171232.P120387607848267038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A003988 (n + 1) * A077049 (n + 1)).toNat - A077049 (n + 1)

end

end A171232.P120387607848267038

noncomputable section

/-- A171232: Array read by antidiagonals, T(n,k) = 2*(n/k) - 1, if n mod k = 0; otherwise, T(n,k) = 1.

Offset 1, canonical program `A171232.P120387607848267038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171232 (n : ℕ) : ℤ :=
  A171232.P120387607848267038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171232.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171651.P1398147796533981043

`2*A171128(n)-A091867(n)`
-/

namespace A171651.P1398147796533981043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171128 n - A091867 n

end

end A171651.P1398147796533981043

noncomputable section

/-- A171651: Triangle T, read by rows : T(n,k) = A007318(n,k)*A005773(n+1-k).

Offset 0, canonical program `A171651.P1398147796533981043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171651 (n : ℕ) : ℤ :=
  A171651.P1398147796533981043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171651.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171814.P9797681691333110312

`A099375(n)*A124644(n)`
-/

namespace A171814.P9797681691333110312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n * A124644 n

end

end A171814.P9797681691333110312

noncomputable section

/-- A171814: Triangle T : T(n,k)= A007318(n,k)*A001700(n-k).

Offset 0, canonical program `A171814.P9797681691333110312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171814 (n : ℕ) : ℤ :=
  A171814.P9797681691333110312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171886.P2069845256079596505

`eq[0, A140513(n)%A008949(n)]`
-/

namespace A171886.P2069845256079596505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140513 n) (A008949 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171886.P2069845256079596505

noncomputable section

/-- A171886: Numbers n such that A008949(n) is a power of 2.

Offset 1, canonical program `A171886.P2069845256079596505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A171886 (n : ℕ) : ℤ :=
  (A171886.P2069845256079596505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A171886.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A172090.P16523150407882409080

`C(A157458(n), C(A157458(n), 2))`
-/

namespace A172090.P16523150407882409080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A157458 n).toNat (Nat.choose (A157458 n).toNat 2)

end

end A172090.P16523150407882409080

noncomputable section

/-- A172090: Triangle T(n, k) = f(n-k) + f(k) - f(n), where f(n) = -3*n with f(0) = 1, f(1) = -2, read by rows.

Offset 0, canonical program `A172090.P16523150407882409080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A172090 (n : ℕ) : ℤ :=
  (A172090.P16523150407882409080.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A172090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172171.P2529637419829214897

`A093644(A099375(n)+1+n)`
-/

namespace A172171.P2529637419829214897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093644 (A099375 n + 1 + (n : ℤ)).toNat

end

end A172171.P2529637419829214897

noncomputable section

/-- A172171: (1, 9) Pascal Triangle read by horizontal rows. Same as A093644, but mirrored and without the additional row/column (1, 9, 9, 9, 9, ...).

Offset 1, canonical program `A172171.P2529637419829214897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A172171 (n : ℕ) : ℤ :=
  A172171.P2529637419829214897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A172171.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A172515.P12895407565169366813

`A134868(Δ[A059563(3*n+4)])`
-/

namespace A172515.P12895407565169366813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059563 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (f1 (n + 1) - f1 n).toNat

end

end A172515.P12895407565169366813

noncomputable section

/-- A172515: First differences of A172513.

Offset 1, canonical program `A172515.P12895407565169366813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A172515 (n : ℕ) : ℤ :=
  A172515.P12895407565169366813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A172515.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A173248.P13069274780353217509

`A173247(n)+A105810(A167499(n)-3)`
-/

namespace A173248.P13069274780353217509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173247 n + A105810 (A167499 n - 3).toNat

end

end A173248.P13069274780353217509

noncomputable section

/-- A173248: a(0) = -1, otherwise a(n) = (-1)^n*(n^3 - 15*n^2 + 2*n - 12)/6.

Offset 0, canonical program `A173248.P13069274780353217509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A173248 (n : ℕ) : ℤ :=
  A173248.P13069274780353217509.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A173248.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A173539.P9511536219603571915

`(1-A077049(n+1))*A002260(n+1)`
-/

namespace A173539.P9511536219603571915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A077049 (n + 1)) * A002260 (n + 1)

end

end A173539.P9511536219603571915

noncomputable section

/-- A173539: Square array read by antidiagonals: T(n,k)=0 if k is a divisor of n, otherwise T(n,k)=k.

Offset 1, canonical program `A173539.P9511536219603571915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A173539 (n : ℕ) : ℤ :=
  A173539.P9511536219603571915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A173539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173667.P1180978088914052584

`A004216(n+1)-A199560(n)%A055642(n)`
-/

namespace A173667.P1180978088914052584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - Int.tmod (A199560 n) (A055642 n)

end

end A173667.P1180978088914052584

noncomputable section

/-- A173667: Number of real zeros of the polynomial whose coefficients are the decimal expansion of n.

Offset 1, canonical program `A173667.P1180978088914052584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A173667 (n : ℕ) : ℤ :=
  A173667.P1180978088914052584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A173667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173786.P17698000632262255612

`A048645(n+2)`
-/

namespace A173786.P17698000632262255612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 2)

end

end A173786.P17698000632262255612

noncomputable section

/-- A173786: Triangle read by rows: T(n,k) = 2^n + 2^k, 0 <= k <= n.

Offset 0, canonical program `A173786.P17698000632262255612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173786 (n : ℕ) : ℤ :=
  A173786.P17698000632262255612.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173786.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173881.P1893856933433499034

`A007318(n)*A155865(n)`
-/

namespace A173881.P1893856933433499034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A155865 n

end

end A173881.P1893856933433499034

noncomputable section

/-- A173881: Triangle T(n,k) = k*binomial(n,k)*binomial(n-1,k) with T(n,0) = T(n,n) = 1, read by rows.

Offset 0, canonical program `A173881.P1893856933433499034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173881 (n : ℕ) : ℤ :=
  A173881.P1893856933433499034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A173881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174035.P9243138014454562383

`floor(A141689(n+1)+A007318(n)/2)`
-/

namespace A174035.P9243138014454562383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141689 (n + 1) : ℚ) + (A007318 n : ℚ) / 2⌋

end

end A174035.P9243138014454562383

noncomputable section

/-- A174035: Triangle read by rows: T(n,m) = binomial(n, m) + floor(Eulerian(n + 1, m)/2).

Offset 0, canonical program `A174035.P9243138014454562383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A174035 (n : ℕ) : ℤ :=
  A174035.P9243138014454562383.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A174035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174126.P13474313142427055093

`A155865(n)²`
-/

namespace A174126.P13474313142427055093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 n ^ 2

end

end A174126.P13474313142427055093

noncomputable section

/-- A174126: Triangle T(n, k) = (n-k)^2 * binomial(n-1, k-1)^2 with T(n, 0) = T(n, n) = 1, read by rows.

Offset 0, canonical program `A174126.P13474313142427055093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A174126 (n : ℕ) : ℤ :=
  A174126.P13474313142427055093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A174126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174127.P6296285191855407287

`A155865(n)^3`
-/

namespace A174127.P6296285191855407287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 n ^ 3

end

end A174127.P6296285191855407287

noncomputable section

/-- A174127: Triangle T(n, k) = (n-k)^3 * binomial(n-1, k-1)^3 with T(n, 0) = T(n, n) = 1, read by rows.

Offset 0, canonical program `A174127.P6296285191855407287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A174127 (n : ℕ) : ℤ :=
  A174127.P6296285191855407287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A174127.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174373.P18021089655363768877

`A007918(A007318(n))`
-/

namespace A174373.P18021089655363768877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A007318 n).toNat

end

end A174373.P18021089655363768877

noncomputable section

/-- A174373: Triangle T(n,m) = nextprime(binomial(n,m)) read by rows.

Offset 0, canonical program `A174373.P18021089655363768877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174373 (n : ℕ) : ℤ :=
  A174373.P18021089655363768877.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174377.P13587580538317066246

`A108411(A157458(n))*A159623(n)`
-/

namespace A174377.P13587580538317066246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A157458 n).toNat * A159623 n

end

end A174377.P13587580538317066246

noncomputable section

/-- A174377: Triangle T(n, k) = n!*q^k/(n-k)! if floor(n/2) > k-1 otherwise n!*q^(n-k)/k!, with q = 3, read by rows.

Offset 0, canonical program `A174377.P13587580538317066246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174377 (n : ℕ) : ℤ :=
  A174377.P13587580538317066246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174377.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174834.P23583234180718487

`(A014473(n)+1)*A154843(A028310(n))`
-/

namespace A174834.P23583234180718487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A154843 (A028310 n).toNat

end

end A174834.P23583234180718487

noncomputable section

/-- A174834: Triangle read by rows: T(n,k) = (Stirling1(n,k) + Stirling1(n,n-k)) * binomial(n,k) with T(0,0)=1.

Offset 0, canonical program `A174834.P23583234180718487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2154 terms. -/
def A174834 (n : ℕ) : ℤ :=
  A174834.P23583234180718487.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2154 terms. -/
def A174834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174912.P10765614382381412807

`(A168523(n)-A168524(n))²+1`
-/

namespace A174912.P10765614382381412807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168523 n - A168524 n) ^ 2 + 1

end

end A174912.P10765614382381412807

noncomputable section

/-- A174912: Triangle read by rows: T(n, m) = 1 + (binomial(n, m) - Eulerian(n+1, m))^2.

Offset 0, canonical program `A174912.P10765614382381412807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 879 terms. -/
def A174912 (n : ℕ) : ℤ :=
  A174912.P10765614382381412807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 879 terms. -/
def A174912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174918.P17161499693219016145

`(A007318(n)-A022166(n))²+1`
-/

namespace A174918.P17161499693219016145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 n - A022166 n) ^ 2 + 1

end

end A174918.P17161499693219016145

noncomputable section

/-- A174918: Triangle read by rows: T(n,k) = 1 + (A022166(n,k) - binomial(n,k))^2.

Offset 0, canonical program `A174918.P17161499693219016145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A174918 (n : ℕ) : ℤ :=
  A174918.P17161499693219016145.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 362 terms. -/
def A174918.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175004.P13038235216757040563

`A035513(A066182(n+1)+1)-1`
-/

namespace A175004.P13038235216757040563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (A066182 (n + 1) + 1).toNat - 1

end

end A175004.P13038235216757040563

noncomputable section

/-- A175004: Interspersion related to the Wythoff Array.

Offset 1, canonical program `A175004.P13038235216757040563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. -/
def A175004 (n : ℕ) : ℤ :=
  A175004.P13038235216757040563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. -/
def A175004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175308.P17929908493020829210

`eq[A260222(n+1), A270313(n+1)]`
-/

namespace A175308.P17929908493020829210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270313 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175308.P17929908493020829210

noncomputable section

/-- A175308: Numbers k such that (Sum_{i=0..k} F(i)^2) / (k+1) is an integer, where F(i) is the i-th Fibonacci number.

Offset 1, canonical program `A175308.P17929908493020829210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A175308 (n : ℕ) : ℤ :=
  (A175308.P17929908493020829210.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A175308.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175992.P4475088882485289309

`and(A051731(n+1), A071762(n))`
-/

namespace A175992.P4475088882485289309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051731 (n + 1)) (A071762 n)

end

end A175992.P4475088882485289309

noncomputable section

/-- A175992: Triangle T(n,k) read by rows. If n=k then 0, else if k divides n then 1 else 0.

Offset 1, canonical program `A175992.P4475088882485289309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A175992 (n : ℕ) : ℤ :=
  A175992.P4475088882485289309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A175992.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A176231.P2236781922509874742

`A096713(lt[0, floor(sqrt(4*n+1))%2])`
-/

namespace A176231.P2236781922509874742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (4 * n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096713 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176231.P2236781922509874742

noncomputable section

/-- A176231: Coefficient array of orthogonal polynomials whose moment sequence is the double factorial numbers A001147.

Offset 0, canonical program `A176231.P2236781922509874742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. -/
def A176231 (n : ℕ) : ℤ :=
  A176231.P2236781922509874742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1773 terms. -/
def A176231.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A176420.P16704905755318038212

`A022166(n)-A014473(n)`
-/

namespace A176420.P16704905755318038212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n - A014473 n

end

end A176420.P16704905755318038212

noncomputable section

/-- A176420: Triangle read by rows: T(n,k) = 1 + (q-binomial coefficient [n,k] for q=2) - binomial(n,k).

Offset 0, canonical program `A176420.P16704905755318038212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A176420 (n : ℕ) : ℤ :=
  A176420.P16704905755318038212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 719 terms. -/
def A176420.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A177121.P3320387375115592110

`A035214(n+1)-A127093(A099375(n)+1+n)`
-/

namespace A177121.P3320387375115592110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (n + 1) - A127093 (A099375 n + 1 + (n : ℤ)).toNat

end

end A177121.P3320387375115592110

noncomputable section

/-- A177121: Square array T(n,k) read by antidiagonals up: T(n,k) = 1 if n=1; otherwise if n divides k then T(n,k) = -n+1; otherwise T(n,k) = 1.

Offset 1, canonical program `A177121.P3320387375115592110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177121 (n : ℕ) : ℤ :=
  A177121.P3320387375115592110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177121.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A178059.P15288762009250662244

`A005811(A008292(n+1))`
-/

namespace A178059.P15288762009250662244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A008292 (n + 1)).toNat

end

end A178059.P15288762009250662244

noncomputable section

/-- A178059: Triangle read by rows: Number of 1's in the Gray code of Eulerian(n,m), 1<=m<=n.

Offset 1, canonical program `A178059.P15288762009250662244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008292, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178059 (n : ℕ) : ℤ :=
  A178059.P15288762009250662244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008292, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A178059.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A178952.P16316959360273851306

`A003991(n+1)-∏{e}[A036561(n), A117571(#)]`
-/

namespace A178952.P16316959360273851306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A117571 (Nat.factorization (f1 n).natAbs p)

end

end A178952.P16316959360273851306

noncomputable section

/-- A178952: T(n,k)=Log base 2 of the number of nXk binary arrays with no element equal to the modulo 2 sum of its king-move neighbors.

Offset 1, canonical program `A178952.P16316959360273851306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A178952 (n : ℕ) : ℤ :=
  A178952.P16316959360273851306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A178952.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A182349.P14070112260938002511

`A073373(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A182349.P14070112260938002511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073373 n + 2 * a (n - 1)

end

end A182349.P14070112260938002511

noncomputable section

/-- A182349: G.f.: exp( Sum_{n>=1} 6 * A084214(n) * x^n/n ) where g.f. of A084214 is (1+x^2)/((1+x)*(1-2*x)).

Offset 0, canonical program `A182349.P14070112260938002511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A182349 (n : ℕ) : ℤ :=
  A182349.P14070112260938002511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A182349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182459.P10129799007268171558

`A081615(n+1)-1`
-/

namespace A182459.P10129799007268171558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081615 (n + 1) - 1

end

end A182459.P10129799007268171558

noncomputable section

/-- A182459: a(n) is the number of initial persons such that the n-th person survives in the duck-duck-goose game.

Offset 1, canonical program `A182459.P10129799007268171558`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182459 (n : ℕ) : ℤ :=
  A182459.P10129799007268171558.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182459.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A183110.P12340529520489190935

`A128064(n)+a(n-1)` with `a(0)=1`
-/

namespace A183110.P12340529520489190935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A128064 n + a (n - 1)

end

end A183110.P12340529520489190935

noncomputable section

/-- A183110: Period-length of the ultimate periodic behavior of the orbit of a list [1,1,1,...,1] of n 1's under the mapping defined in the comments.

Offset 1, canonical program `A183110.P12340529520489190935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A183110 (n : ℕ) : ℤ :=
  A183110.P12340529520489190935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A183110.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A184881.P26239738405913723

`A068555(A055998(n))/A280560(n)`
-/

namespace A184881.P26239738405913723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068555 (A055998 n).toNat : ℚ) / (A280560 n : ℚ)

end

end A184881.P26239738405913723

noncomputable section

/-- A184881: a(n) = A184879(2*n, n) - A184879(2*n, n+1) where A184879(n, k) = Hypergeometric2F1(-2*k, 2*k-2*n, 1, -1) if 0<=k<=n.

Offset 0, canonical program `A184881.P26239738405913723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A184881 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A184881.P26239738405913723.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A184881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185180.P8964455806358880815

`A064789(A038722(n+1))`
-/

namespace A185180.P8964455806358880815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A038722 (n + 1)).toNat

end

end A185180.P8964455806358880815

noncomputable section

/-- A185180: Enumeration table T(n,k) by antidiagonals. The order of the list is symmetrical movement from center to edges diagonal.

Offset 1, canonical program `A185180.P8964455806358880815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A185180 (n : ℕ) : ℤ :=
  A185180.P8964455806358880815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A185180.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A185908.P15290961818141262910

`A002260(n+1)+val(A036561(n), 6)`
-/

namespace A185908.P15290961818141262910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (SequenceMachineLib.valuation (A036561 n).toNat 6 : ℤ)

end

end A185908.P15290961818141262910

noncomputable section

/-- A185908: Array: T(n,k) = n-1 + min{n,k}, by antidiagonals.

Offset 1, canonical program `A185908.P15290961818141262910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185908 (n : ℕ) : ℤ :=
  A185908.P15290961818141262910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185908.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A186396.P9270384960959991498

`eq[4, A038822(n)]`
-/

namespace A186396.P9270384960959991498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186396.P9270384960959991498

noncomputable section

/-- A186396: Numbers k such that there are 4 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186396.P9270384960959991498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A186396 (n : ℕ) : ℤ :=
  (A186396.P9270384960959991498.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. -/
def A186396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186397.P10717240694144090029

`eq[5, A038822(n)]`
-/

namespace A186397.P10717240694144090029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186397.P10717240694144090029

noncomputable section

/-- A186397: Numbers k such that there are 5 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186397.P10717240694144090029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A186397 (n : ℕ) : ℤ :=
  (A186397.P10717240694144090029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A186397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186398.P13833723901522807066

`eq[6, A038822(n)]`
-/

namespace A186398.P13833723901522807066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186398.P13833723901522807066

noncomputable section

/-- A186398: Numbers k such that there are 6 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186398.P13833723901522807066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1362 terms. -/
def A186398 (n : ℕ) : ℤ :=
  (A186398.P13833723901522807066.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1362 terms. -/
def A186398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186399.P16215507080511579483

`eq[7, A038822(n)]`
-/

namespace A186399.P16215507080511579483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186399.P16215507080511579483

noncomputable section

/-- A186399: Numbers k such that there are 7 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186399.P16215507080511579483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A186399 (n : ℕ) : ℤ :=
  (A186399.P16215507080511579483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1765 terms. -/
def A186399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186400.P11758599787224733223

`eq[8, A038822(n)]`
-/

namespace A186400.P11758599787224733223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186400.P11758599787224733223

noncomputable section

/-- A186400: Numbers k such that there are 8 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186400.P11758599787224733223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1821 terms. -/
def A186400 (n : ℕ) : ℤ :=
  (A186400.P11758599787224733223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1821 terms. -/
def A186400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186401.P4089262343024343082

`eq[9, A038822(n)]`
-/

namespace A186401.P4089262343024343082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186401.P4089262343024343082

noncomputable section

/-- A186401: Numbers k such that there are 9 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186401.P4089262343024343082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1554 terms. -/
def A186401 (n : ℕ) : ℤ :=
  (A186401.P4089262343024343082.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1554 terms. -/
def A186401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186402.P7756721520341911561

`eq[10, A038822(n)]`
-/

namespace A186402.P7756721520341911561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186402.P7756721520341911561

noncomputable section

/-- A186402: Numbers k such that there are 10 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186402.P7756721520341911561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A186402 (n : ℕ) : ℤ :=
  (A186402.P7756721520341911561.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1058 terms. -/
def A186402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186403.P16845647133054184679

`eq[11, A038822(n)]`
-/

namespace A186403.P16845647133054184679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186403.P16845647133054184679

noncomputable section

/-- A186403: Numbers k such that there are 11 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186403.P16845647133054184679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A186403 (n : ℕ) : ℤ :=
  (A186403.P16845647133054184679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A186403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186404.P8566508972377476060

`eq[12, A038822(n)]`
-/

namespace A186404.P8566508972377476060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186404.P8566508972377476060

noncomputable section

/-- A186404: Numbers k such that there are 12 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186404.P8566508972377476060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A186404 (n : ℕ) : ℤ :=
  (A186404.P8566508972377476060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A186404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186405.P8956491586801803310

`eq[13, A038822(n)]`
-/

namespace A186405.P8956491586801803310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186405.P8956491586801803310

noncomputable section

/-- A186405: Numbers k such that there are 13 primes between 100*k and 100*k + 99.

Offset 1, canonical program `A186405.P8956491586801803310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A186405 (n : ℕ) : ℤ :=
  (A186405.P8956491586801803310.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A186405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186826.P6773412279720560038

`A144944(A061579(n))`
-/

namespace A186826.P6773412279720560038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144944 (A061579 n).toNat

end

end A186826.P6773412279720560038

noncomputable section

/-- A186826: Riordan array (s(x),x*S(x)) where s(x) is the g.f. of the little Schroeder numbers A001003, and S(x) is the g.f. of the large Schroeder numbers A006318.

Offset 0, canonical program `A186826.P6773412279720560038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A186826 (n : ℕ) : ℤ :=
  A186826.P6773412279720560038.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A186826.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A187487.P4860417623296774577

`n*A002805(n+1)-A064169(n+1)`
-/

namespace A187487.P4860417623296774577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002805 (n + 1) - A064169 (n + 1)

end

end A187487.P4860417623296774577

noncomputable section

/-- A187487: Numerator of n minus n-th harmonic number.

Offset 1, canonical program `A187487.P4860417623296774577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A187487 (n : ℕ) : ℤ :=
  A187487.P4860417623296774577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A187487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187555.P808605712727958012

`A180013(n+1)/A002024(n+1)*A028310(A014473(n)+1)`
-/

namespace A187555.P808605712727958012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180013 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ) * (A028310 (A014473 n + 1).toNat : ℚ)

end

end A187555.P808605712727958012

noncomputable section

/-- A187555: Triangle read by rows, defined by T(n,k)=binomial(n,k)*|Stirling1(n,k)|, 0<=k<=n.

Offset 0, canonical program `A187555.P808605712727958012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A187555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A187555.P808605712727958012.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A187555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187677.P9791756543765287417

`∩[A091823(n+1), A065384(n+2)]`
-/

namespace A187677.P9791756543765287417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187677.P9791756543765287417

noncomputable section

/-- A187677: Primes of the form 8*k^2 + 6*k - 1 for positive k.

Offset 1, canonical program `A187677.P9791756543765287417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 748 terms. -/
def A187677 (n : ℕ) : ℤ :=
  (A187677.P9791756543765287417.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 748 terms. -/
def A187677.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A187954.P4208797145457920853

`A127093(A185868(n+1))`
-/

namespace A187954.P4208797145457920853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A185868 (n + 1)).toNat

end

end A187954.P4208797145457920853

noncomputable section

/-- A187954: Triangle by rows, divisors of odd integers.

Offset 0, canonical program `A187954.P4208797145457920853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A187954 (n : ℕ) : ℤ :=
  A187954.P4208797145457920853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A187954.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A189013.P15026936849006250875

`comp[A189012(n+1)-1]+1`
-/

namespace A189013.P15026936849006250875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189012 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189013.P15026936849006250875

noncomputable section

/-- A189013: Positions of 1 in A189011; complement of A189012.

Offset 1, canonical program `A189013.P15026936849006250875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189013 (n : ℕ) : ℤ :=
  (A189013.P15026936849006250875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189013.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A191329.P14559015055408526172

`A085002(n+1)+A171587(n)`
-/

namespace A191329.P14559015055408526172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (n + 1) + A171587 n

end

end A191329.P14559015055408526172

noncomputable section

/-- A191329: (Lower Wythoff sequence mod 2)+(Upper Wythoff sequence mod 2).

Offset 1, canonical program `A191329.P14559015055408526172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191329 (n : ℕ) : ℤ :=
  A191329.P14559015055408526172.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A171587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191329.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A191448.P14418744543329355143

`A075300(A066182(n+1))`
-/

namespace A191448.P14418744543329355143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 (A066182 (n + 1)).toNat

end

end A191448.P14418744543329355143

noncomputable section

/-- A191448: Dispersion of the odd integers greater than 1, by antidiagonals.

Offset 1, canonical program `A191448.P14418744543329355143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A191448 (n : ℕ) : ℤ :=
  A191448.P14418744543329355143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A191448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191904.P13641530380614696573

`1-A002260(n+1)*A077049(n+1)`
-/

namespace A191904.P13641530380614696573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002260 (n + 1) * A077049 (n + 1)

end

end A191904.P13641530380614696573

noncomputable section

/-- A191904: Square array read by antidiagonals up: T(n,k) = 1-k if k divides n, else 1.

Offset 1, canonical program `A191904.P13641530380614696573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191904 (n : ℕ) : ℤ :=
  A191904.P13641530380614696573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191910.P11685670682958930902

`A127093(n+1)+A023531(n)-1`
-/

namespace A191910.P11685670682958930902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + A023531 n - 1

end

end A191910.P11685670682958930902

noncomputable section

/-- A191910: Triangle read by rows: T(n,n)=n; T(n,k) = k-1 if k divides n and k < n, otherwise -1.

Offset 1, canonical program `A191910.P11685670682958930902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191910 (n : ℕ) : ℤ :=
  A191910.P11685670682958930902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192310.P2475868322072867542

`A192306(n+1)+A014286(n)`
-/

namespace A192310.P2475868322072867542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192306 (n + 1) + A014286 n

end

end A192310.P2475868322072867542

noncomputable section

/-- A192310: 1-sequence of reduction of (3n-1) by x^2 -> x+1.

Offset 1, canonical program `A192310.P2475868322072867542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192310 (n : ℕ) : ℤ :=
  A192310.P2475868322072867542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A192310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192473.P18018568247263992611

`A192471(n+2)-1`
-/

namespace A192473.P18018568247263992611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192471 (n + 2) - 1

end

end A192473.P18018568247263992611

noncomputable section

/-- A192473: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x)=1+x^n+x^(2n+2).

Offset 1, canonical program `A192473.P18018568247263992611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A192473 (n : ℕ) : ℤ :=
  A192473.P18018568247263992611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A192473.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A129492.P1594792937777551858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A129492 (n : ℕ) : ℤ :=
  (A129492.P1594792937777551858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A129492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129690.P14713627052820705592

`A007318(n+1)+A135230(n)-A103451(n)`
-/

namespace A129690.P14713627052820705592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A135230 n - A103451 n)

end

end A129690.P14713627052820705592

noncomputable section

/-- A129690: A129688 * A007318.

Offset 1, canonical program `A129690.P14713627052820705592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129690 (n : ℕ) : ℤ :=
  A129690.P14713627052820705592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129910.P2665300731369713795

`floor(A107309(n)/3)`
-/

namespace A129910.P2665300731369713795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107309 n : ℚ) / 3⌋

end

end A129910.P2665300731369713795

noncomputable section

/-- A129910: Quotient of the decimal representation of concatenated twin primes in reverse divided by 3.

Offset 1, canonical program `A129910.P2665300731369713795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129910 (n : ℕ) : ℤ :=
  A129910.P2665300731369713795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A129910.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130209.P2278813470092535691

`A023531(n)*A051194(n+1)`
-/

namespace A130209.P2278813470092535691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A051194 (n + 1)

end

end A130209.P2278813470092535691

noncomputable section

/-- A130209: Diagonalized matrix of d(n), A000005, number of divisors of n.

Offset 1, canonical program `A130209.P2278813470092535691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130209 (n : ℕ) : ℤ :=
  A130209.P2278813470092535691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130209.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130297.P826751733099478638

`A135223(n+1)+A114327(n)`
-/

namespace A130297.P826751733099478638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) + A114327 n

end

end A130297.P826751733099478638

noncomputable section

/-- A130297: A130296^2.

Offset 1, canonical program `A130297.P826751733099478638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130297 (n : ℕ) : ℤ :=
  A130297.P826751733099478638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130638.P11945976620762067139

`A000007(A051950(n+2)²)`
-/

namespace A130638.P11945976620762067139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051950 (n + 2) ^ 2).toNat

end

end A130638.P11945976620762067139

noncomputable section

/-- A130638: a(n) = 1 iff d(n) = d(n+1), otherwise a(n)=0, where d(n) is the number of divisors of n, A000005.

Offset 1, canonical program `A130638.P11945976620762067139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130638 (n : ℕ) : ℤ :=
  A130638.P11945976620762067139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130638.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A131036.P6939937367863112215

`Δ[A131725(n)]-A131711(n)`
-/

namespace A131036.P6939937367863112215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131711 n

end

end A131036.P6939937367863112215

noncomputable section

/-- A131036: First differences of A131711.

Offset 0, canonical program `A131036.P6939937367863112215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131036 (n : ℕ) : ℤ :=
  A131036.P6939937367863112215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131084.P7589424651343713133

`A029653(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A131084.P7589424651343713133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029653 (n - 1) - a (n - 1)

end

end A131084.P7589424651343713133

noncomputable section

/-- A131084: A129686 * A007318. Riordan triangle (1+x, x/(1-x)).

Offset 1, canonical program `A131084.P7589424651343713133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131084 (n : ℕ) : ℤ :=
  A131084.P7589424651343713133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131198.P17134115705625064705

`A367270(n)/A128227(n)`
-/

namespace A131198.P17134115705625064705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367270 n : ℚ) / (A128227 n : ℚ)

end

end A131198.P17134115705625064705

noncomputable section

/-- A131198: Triangle T(n,k), 0 <= k <= n, read by rows, given by [1,0,1,0,1,0,1,0,...] DELTA [0,1,0,1,0,1,0,1,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A131198.P17134115705625064705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131198 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131198.P17134115705625064705.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131399.P11219258702927112905

`A131402(n)+A014473(n)`
-/

namespace A131399.P11219258702927112905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131402 n + A014473 n

end

end A131399.P11219258702927112905

noncomputable section

/-- A131399: 3*A007318 - A046854 - A065941.

Offset 0, canonical program `A131399.P11219258702927112905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131399 (n : ℕ) : ℤ :=
  A131399.P11219258702927112905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131635.P15231796072732893040

`A132818(A245300(n)+1)`
-/

namespace A131635.P15231796072732893040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132818 (A245300 n + 1).toNat

end

end A131635.P15231796072732893040

noncomputable section

/-- A131635: Triangle T(n,m)=m*n*binomial(m+n,m)^2/(2*(m+n)) read by rows.

Offset 1, canonical program `A131635.P15231796072732893040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A131635 (n : ℕ) : ℤ :=
  A131635.P15231796072732893040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A131635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132046.P838827158964499590

`A028326(n)-A103451(n)`
-/

namespace A132046.P838827158964499590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A103451 n

end

end A132046.P838827158964499590

noncomputable section

/-- A132046: Triangle read by rows: T(n,0) = T(n,n) = 1, and T(n,k) = 2*binomial(n,k) for 1 <= k <= n - 1.

Offset 0, canonical program `A132046.P838827158964499590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132046 (n : ℕ) : ℤ :=
  A132046.P838827158964499590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132047.P15438420452738550569

`3*A007318(n)-2*A103451(n)`
-/

namespace A132047.P15438420452738550569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007318 n - 2 * A103451 n

end

end A132047.P15438420452738550569

noncomputable section

/-- A132047: 3*A007318 - 2*A103451 as infinite lower triangular matrices.

Offset 0, canonical program `A132047.P15438420452738550569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132047 (n : ℕ) : ℤ :=
  A132047.P15438420452738550569.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103451, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132068.P1201751376170146837

`Δ[eq[1, A300294(A028310(n))]]`
-/

namespace A132068.P1201751376170146837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300294 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A132068.P1201751376170146837

noncomputable section

/-- A132068: Irregular array: row n has A000010(n) terms: the sum of the first m terms of row n is the m-th positive integer which is coprime to n.

Offset 1, canonical program `A132068.P1201751376170146837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A132068 (n : ℕ) : ℤ :=
  A132068.P1201751376170146837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A132068.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A132106.P15830577859777000377`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132106 (n : ℕ) : ℤ :=
  A132106.P15830577859777000377.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132169.P12794010027182556537

`A141616(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132169.P12794010027182556537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141616 (n + 1) : ℚ) / 4

end

end A132169.P12794010027182556537

noncomputable section

/-- A132169: Irregular triangle read by rows. A141616(n)/4.

Offset 0, canonical program `A132169.P12794010027182556537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132169 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132169.P12794010027182556537.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132169.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A132589.P7281527089305530724

`gcd(A038566(n+1), n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132589.P7281527089305530724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038566 (n + 1)) (n + 1 : ℤ)

end

end A132589.P7281527089305530724

noncomputable section

/-- A132589: a(n) = gcd(A038566(n), n).

Offset 1, canonical program `A132589.P7281527089305530724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132589 (n : ℕ) : ℤ :=
  (A132589.P7281527089305530724.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038566, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132589.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A133128.P6744000441068247650

`A141620(A057428(n)+n)%∑[n+3]`
-/

namespace A133128.P6744000441068247650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141620 (A057428 n + (n : ℤ)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A133128.P6744000441068247650

noncomputable section

/-- A133128: Triangle of first differences of A120070 with a leftmost column of A002522.

Offset 0, canonical program `A133128.P6744000441068247650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133128 (n : ℕ) : ℤ :=
  A133128.P6744000441068247650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133128.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A133698.P17080952443487719908

`A023531(n)*A133699(n+1)`
-/

namespace A133698.P17080952443487719908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A133699 (n + 1)

end

end A133698.P17080952443487719908

noncomputable section

/-- A133698: Triangle, diagonal = A001227 with the rest zeros.

Offset 1, canonical program `A133698.P17080952443487719908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133698 (n : ℕ) : ℤ :=
  A133698.P17080952443487719908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133698.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134315.P18118181357833699062

`A158780(A132774(n+1))`
-/

namespace A134315.P18118181357833699062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A132774 (n + 1)).toNat

end

end A134315.P18118181357833699062

noncomputable section

/-- A134315: A134309 * A097806.

Offset 1, canonical program `A134315.P18118181357833699062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134315 (n : ℕ) : ℤ :=
  A134315.P18118181357833699062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134315.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A134536.P11411839955593535513

`gcd(A002808(n+1), A002808(2*(n+1)))`
-/

namespace A134536.P11411839955593535513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002808 (n + 1)) (A002808 (2 * (n + 1)))

end

end A134536.P11411839955593535513

noncomputable section

/-- A134536: a(n) = gcd(c(n), c(2n)), where c(n) is the n-th composite positive integer.

Offset 1, canonical program `A134536.P11411839955593535513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134536 (n : ℕ) : ℤ :=
  (A134536.P11411839955593535513.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134536.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A134870.P924456470311345683

`A051731(n+1)+1-A103451(n)`
-/

namespace A134870.P924456470311345683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (1 - A103451 n)

end

end A134870.P924456470311345683

noncomputable section

/-- A134870: A051731 + A000012 - A103451.

Offset 1, canonical program `A134870.P924456470311345683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134870 (n : ℕ) : ℤ :=
  A134870.P924456470311345683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134870.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A135291.P15334371247132927282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135291 (n : ℕ) : ℤ :=
  A135291.P15334371247132927282.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135291.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A135871.P7097473593831335136

`A000244(A002262(n))*A049310(n)`
-/

namespace A135871.P7097473593831335136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A049310 n

end

end A135871.P7097473593831335136

noncomputable section

/-- A135871: Triangle by columns: A013610 signed and interleaved with zeros.

Offset 1, canonical program `A135871.P7097473593831335136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135871 (n : ℕ) : ℤ :=
  A135871.P7097473593831335136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135871.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A136255.P17077608537681163223

`A049310(n)*A127948(n)`
-/

namespace A136255.P17077608537681163223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A127948 n

end

end A136255.P17077608537681163223

noncomputable section

/-- A136255: Triangle T(n,k) read by rows: T(n,k) = (k+1) * A137276(n,k+1).

Offset 1, canonical program `A136255.P17077608537681163223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136255 (n : ℕ) : ℤ :=
  A136255.P17077608537681163223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136255.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A137180.P9009157084453984634

`A136687(n)-1`
-/

namespace A137180.P9009157084453984634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136687 n - 1

end

end A137180.P9009157084453984634

noncomputable section

/-- A137180: Number of palindromes in the range [1,n] inclusive.

Offset 0, canonical program `A137180.P9009157084453984634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137180 (n : ℕ) : ℤ :=
  A137180.P9009157084453984634.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136687, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137257.P10786127464413507786

`lt[1, gcd(n+1, A005361(n+1))]+1`
-/

namespace A137257.P10786127464413507786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005361 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A137257.P10786127464413507786

noncomputable section

/-- A137257: A number k is included if there is at least one (nonzero) exponent in the prime factorization of k that is not coprime to k.

Offset 1, canonical program `A137257.P10786127464413507786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137257 (n : ℕ) : ℤ :=
  (A137257.P10786127464413507786.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137257.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A137319.P10681023325901659618`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137319 (n : ℕ) : ℤ :=
  A137319.P10681023325901659618.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137319.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A137409.P1497138613230208861

`comp[A222946(n+2)]`
-/

namespace A137409.P1497138613230208861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A137409.P1497138613230208861

noncomputable section

/-- A137409: Numbers that cannot be the value of 'C' in a primitive Pythagorean triple (A < B; A^2 + B^2 = C^2).

Offset 1, canonical program `A137409.P1497138613230208861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A137409 (n : ℕ) : ℤ :=
  (A137409.P1497138613230208861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6748 terms. -/
def A137409.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A138010.P7109806690642076622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138010 (n : ℕ) : ℤ :=
  A138010.P7109806690642076622.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138010.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A138222.P16088204697107012078

`A070939(and(A034729(n+1), A100587(n+1)))`
-/

namespace A138222.P16088204697107012078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.land (A034729 (n + 1)) (A100587 (n + 1))).toNat

end

end A138222.P16088204697107012078

noncomputable section

/-- A138222: a(n) = the largest divisor of n that is <= the number of positive divisors of n.

Offset 1, canonical program `A138222.P16088204697107012078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A138222 (n : ℕ) : ℤ :=
  A138222.P16088204697107012078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A138222.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138462.P1509641166466070185

`A006318(2*n)`
-/

namespace A138462.P1509641166466070185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (2 * n)

end

end A138462.P1509641166466070185

noncomputable section

/-- A138462: A bisection of A006318.

Offset 0, canonical program `A138462.P1509641166466070185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138462 (n : ℕ) : ℤ :=
  A138462.P1509641166466070185.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138463.P11537261983961229773

`A006318(2*n+1)`
-/

namespace A138463.P11537261983961229773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (2 * n + 1)

end

end A138463.P11537261983961229773

noncomputable section

/-- A138463: A bisection of A006318.

Offset 0, canonical program `A138463.P11537261983961229773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138463 (n : ℕ) : ℤ :=
  A138463.P11537261983961229773.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138463.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A138948.P4888699677792137686

`val(A002808(A002024(n+1)), A037126(n+1))`
-/

namespace A138948.P4888699677792137686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002808 (A002024 (n + 1)).toNat).toNat (A037126 (n + 1)).toNat

end

end A138948.P4888699677792137686

noncomputable section

/-- A138948: Triangle T[i,j] = exponent of prime A000040(j) in factorization of composite A002808(i).

Offset 1, canonical program `A138948.P4888699677792137686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138948 (n : ℕ) : ℤ :=
  (A138948.P4888699677792137686.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138948.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139821.P1827317290986140753

`or(C(n, n²), A210553(A038722(n+1)))`
-/

namespace A139821.P1827317290986140753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n (n ^ 2) : ℤ) (A210553 (A038722 (n + 1)).toNat)

end

end A139821.P1827317290986140753

noncomputable section

/-- A139821: Triangle T(i,j) read by rows: T(i,1) = Fibonacci(i) for all i; T(i,i) = i for all i; T(i,j) = T(i-1,j) + T(i-2,j) + T(i-1,j-1) - T(i-2,j-1).

Offset 1, canonical program `A139821.P1827317290986140753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A139821 (n : ℕ) : ℤ :=
  A139821.P1827317290986140753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A139821.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139879.P5833802946474482157

`∩[A106972(n+1), A107181(n+1)]`
-/

namespace A139879.P5833802946474482157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P5833802946474482157

noncomputable section

/-- A139879: Primes of the form 12x^2+12xy+17y^2.

Offset 1, canonical program `A139879.P5833802946474482157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A139879 (n : ℕ) : ℤ :=
  (A139879.P5833802946474482157.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A139879.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A140365.P10973033398787177259

`(6*(n+1)-5)*A010051(6*(n+1)-5)+(6*(n+1)-1)*A010051(6*(n+1)-1)`
-/

namespace A140365.P10973033398787177259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * (n + 1) : ℤ) - 5) * A010051 (6 * (n + 1) - 5) + ((6 * (n + 1) : ℤ) - 1) * A010051 (6 * (n + 1) - 1)

end

end A140365.P10973033398787177259

noncomputable section

/-- A140365: a(n) = sum of primes in {6*n-5, 6*n-1}.

Offset 1, canonical program `A140365.P10973033398787177259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140365 (n : ℕ) : ℤ :=
  A140365.P10973033398787177259.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140366.P6586416998045081192

`A010051(6*(n+1)-1)+2*A010051(6*(n+1)-5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140366.P6586416998045081192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (6 * (n + 1) - 1) + 2 * A010051 (6 * (n + 1) - 5)

end

end A140366.P6586416998045081192

noncomputable section

/-- A140366: a(n) = isprime(6n-1) + 2*isprime(6n-5), where isprime = A010051.

Offset 1, canonical program `A140366.P6586416998045081192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140366 (n : ℕ) : ℤ :=
  A140366.P6586416998045081192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140366.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A141674.P6920368319490395348

`A000005(∑[A010054(n)])*A126988(n+1)`
-/

namespace A141674.P6920368319490395348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A126988 (n + 1)

end

end A141674.P6920368319490395348

noncomputable section

/-- A141674: Triangle T(n,m) read by rows: T(n,m) = sigma_0(n) * A126988(n,m).

Offset 1, canonical program `A141674.P6920368319490395348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141674 (n : ℕ) : ℤ :=
  A141674.P6920368319490395348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A141674.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143121.P10222713866998147310

`A194939(A038722(n+1))`
-/

namespace A143121.P10222713866998147310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194939 (A038722 (n + 1)).toNat

end

end A143121.P10222713866998147310

noncomputable section

/-- A143121: Triangle read by rows, T(n,k) = Sum_{j=k..n} prime(j), 1 <= k <= n.

Offset 1, canonical program `A143121.P10222713866998147310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A143121 (n : ℕ) : ℤ :=
  A143121.P10222713866998147310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A143121.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143185.P1168285322455693736

`A007318(n)*A008619(A157654(n))`
-/

namespace A143185.P1168285322455693736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A008619 (A157654 n).toNat

end

end A143185.P1168285322455693736

noncomputable section

/-- A143185: Triangle read by rows: T(n, k) = (1 + abs(n-2*k))*binomial(n,k), with T(n, 0) = T(n, n) = 1.

Offset 0, canonical program `A143185.P1168285322455693736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143185 (n : ℕ) : ℤ :=
  A143185.P1168285322455693736.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A143185.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A143236.P13310137451305250568`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A006218(n+1)` (program `A143236.P13310137451305250568`, by `A143236.P13310137451305250568.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143236 (n : ℕ) : ℤ :=
  A143236.P13310137451305250568.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A006218(n+1)` (program `A143236.P13310137451305250568`, by `A143236.P13310137451305250568.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143236.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A143261.P1394366374782698619

`A030101(A003188(C(row(n), col(n))))`
-/

namespace A143261.P1394366374782698619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A003188 (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n))).toNat

end

end A143261.P1394366374782698619

noncomputable section

/-- A143261: Triangle read by rows: binary reversed Gray code of binomial(n,m).

Offset 0, canonical program `A143261.P1394366374782698619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143261 (n : ℕ) : ℤ :=
  A143261.P1394366374782698619.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143261.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A143274.P852831069115198320`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A006218(n+1)` (program `A143274.P852831069115198320`, by `A143274.P852831069115198320.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143274 (n : ℕ) : ℤ :=
  A143274.P852831069115198320.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A006218(n+1)` (program `A143274.P852831069115198320`, by `A143274.P852831069115198320.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143274.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A143730.P16899165122371351592

`A141616(n+1)-A100181(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143730.P16899165122371351592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141616 (n + 1) - A100181 (n + 1)

end

end A143730.P16899165122371351592

noncomputable section

/-- A143730: a(n) = A141616(n) - A100181(n).

Offset 1, canonical program `A143730.P16899165122371351592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100181, A141616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A143730 (n : ℕ) : ℤ :=
  A143730.P16899165122371351592.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100181, A141616, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A143730.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A144066.P13750958635095974206

`A007318(n)*A112857(n)`
-/

namespace A144066.P13750958635095974206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A112857 n

end

end A144066.P13750958635095974206

noncomputable section

/-- A144066: T(n, k) is the number of order-preserving partial transformations (of an n-element chain) of height k (height(alpha) = |Im(alpha)|); triangle T read by rows.

Offset 0, canonical program `A144066.P13750958635095974206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9099 terms. -/
def A144066 (n : ℕ) : ℤ :=
  A144066.P13750958635095974206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9099 terms. -/
def A144066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144146.P5158168376452986911

`eq[1, gcd(n+1, A005361(n+1))]+1`
-/

namespace A144146.P5158168376452986911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005361 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A144146.P5158168376452986911

noncomputable section

/-- A144146: A positive integer k is included if every nonzero exponent in the prime factorization of k is coprime to k.

Offset 1, canonical program `A144146.P5158168376452986911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144146 (n : ℕ) : ℤ :=
  (A144146.P5158168376452986911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144384.P4609313334345118213

`∏{d}[A051777(n+1), A001221(#)-1]`
-/

namespace A144384.P4609313334345118213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (A001221 d - 1)

end

end A144384.P4609313334345118213

noncomputable section

/-- A144384: T(1,k) = 1 and T(n,k) = [t^k] (1 - t)/(1 - t^n) for n >= 2, square array read by ascending antidiagonals (n >= 1, k >= 0).

Offset 1, canonical program `A144384.P4609313334345118213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144384 (n : ℕ) : ℤ :=
  A144384.P4609313334345118213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A144384.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144680.P12713142862218865544

`A002024(n+1)+A177877(n)-A141419(n+1)`
-/

namespace A144680.P12713142862218865544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A177877 n - A141419 (n + 1))

end

end A144680.P12713142862218865544

noncomputable section

/-- A144680: Triangle read by rows, lower half of an array formed by A004736 * A144328 (transform).

Offset 1, canonical program `A144680.P12713142862218865544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144680 (n : ℕ) : ℤ :=
  A144680.P12713142862218865544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144680.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A145337.P14852323097851792559`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145337 (n : ℕ) : ℤ :=
  A145337.P14852323097851792559.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145337.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A145888.P2166201089829665938

`A136125(∑[char[∑[n]]]²-n)`
-/

namespace A145888.P2166201089829665938
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136125 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A145888.P2166201089829665938

noncomputable section

/-- A145888: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} in which k is the largest entry in the cycle containing 1 (1 <= k <= n).

Offset 1, canonical program `A145888.P2166201089829665938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A145888 (n : ℕ) : ℤ :=
  A145888.P2166201089829665938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A145888.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A147810.P3662463774335131867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147810 (n : ℕ) : ℤ :=
  A147810.P3662463774335131867.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A147810.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A151763.P6942849392600597335

`(2-(n+1)%4)*A010051(n+1)`
-/

namespace A151763.P6942849392600597335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (((n + 1) % 4 : ℕ) : ℤ)) * A010051 (n + 1)

end

end A151763.P6942849392600597335

noncomputable section

/-- A151763: If n is a prime == 1 mod 4 then a(n) = 1, if n is a prime == 3 mod 4 then a(n) = -1, otherwise a(n) = 0.

Offset 1, canonical program `A151763.P6942849392600597335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151763 (n : ℕ) : ℤ :=
  A151763.P6942849392600597335.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151763.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152421.P9969378652125199696

`C(A000290(n+1), A006218(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152421.P9969378652125199696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000290 (n + 1)).toNat (A006218 (n + 1)).toNat

end

end A152421.P9969378652125199696

noncomputable section

/-- A152421: a(n) = binomial(A000290(n), A006218(n)).

Offset 1, canonical program `A152421.P9969378652125199696`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000290(n+1), A006218(n+1))` (program `A152421.P9969378652125199696`, by `A152421.P9969378652125199696.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A152421 (n : ℕ) : ℤ :=
  (A152421.P9969378652125199696.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000290(n+1), A006218(n+1))` (program `A152421.P9969378652125199696`, by `A152421.P9969378652125199696.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A152421.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A152535.P13397589103669949259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152535 (n : ℕ) : ℤ :=
  A152535.P13397589103669949259.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

Offset 1, canonical program `A152674.P4037238558150557697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152674 (n : ℕ) : ℤ :=
  A152674.P4037238558150557697.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152674.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A152770.P4996422170920482869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152770 (n : ℕ) : ℤ :=
  A152770.P4996422170920482869.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152770.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A152771.P13412887130094788285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152771 (n : ℕ) : ℤ :=
  A152771.P13412887130094788285.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152771.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A152992.P10206136984884417694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152992 (n : ℕ) : ℤ :=
  A152992.P10206136984884417694.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152992.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A153369.P10571265008529743106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A153369 (n : ℕ) : ℤ :=
  (A153369.P10571265008529743106.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A153369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153661.P2102351254161465420

`(2^(A002808(row(n)+1)-A002808(col(n)+1)))%A002808(row(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153661.P2102351254161465420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002808 (SequenceMachineLib.triRow n + 1) - A002808 (SequenceMachineLib.triCol n + 1) : ℤ))) (A002808 (SequenceMachineLib.triRow n + 1))

end

end A153661.P2102351254161465420

noncomputable section

/-- A153661: Triangle read by rows: R(n,k) = 2^(composite(n)-composite(k)) mod composite(n), 1<=k<=n.

Offset 1, canonical program `A153661.P2102351254161465420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153661 (n : ℕ) : ℤ :=
  A153661.P2102351254161465420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153661.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A153788.P4198305978530068517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153788 (n : ℕ) : ℤ :=
  A153788.P4198305978530068517.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153788.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A153816.P9630201049829707410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153816 (n : ℕ) : ℤ :=
  A153816.P9630201049829707410.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153816.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A153823.P12958428199370976494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153823 (n : ℕ) : ℤ :=
  A153823.P12958428199370976494.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153823.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A154337.P2678158000755905541

`2*A060187(n+1)-A154334(n)`
-/

namespace A154337.P2678158000755905541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060187 (n + 1) - A154334 n

end

end A154337.P2678158000755905541

noncomputable section

/-- A154337: A triangular sequence of coefficients of polynomials: p(x,n)=(3*(x - 1)^(n)*Sum[(((-1)^(n)*(2*k + 1)^(n - 1)))*x^k, {k,0, Infinity}] -(x - 1)^(n + 1)*Sum[((-1)^(n + 1)*k^n)*x^k, {k, 0, Infinity}]/x)/2.

Offset 0, canonical program `A154337.P2678158000755905541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A154337 (n : ℕ) : ℤ :=
  A154337.P2678158000755905541.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A154337.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A155043.P15229404394103528317`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155043 (n : ℕ) : ℤ :=
  (A155043.P15229404394103528317.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155043.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A155516.P17990118231390158911

`A001263(A185868(n+1))`
-/

namespace A155516.P17990118231390158911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A185868 (n + 1)).toNat

end

end A155516.P17990118231390158911

noncomputable section

/-- A155516: Triangle T(n, k) = binomial(2*n, 2*k)*binomial(2*n+1, 2*k+1)/(2*n-2*k+1), read by rows.

Offset 0, canonical program `A155516.P17990118231390158911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A155516 (n : ℕ) : ℤ :=
  A155516.P17990118231390158911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A155516.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A156017.P8308625821762049719

`2^n*A006318(n)`
-/

namespace A156017.P8308625821762049719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006318 n

end

end A156017.P8308625821762049719

noncomputable section

/-- A156017: Schroeder paths with two rise colors and two level colors.

Offset 0, canonical program `A156017.P8308625821762049719`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156017 (n : ℕ) : ℤ :=
  A156017.P8308625821762049719.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156017.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A156745.P4004578976620637230`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+A006218(n+1)` (program `A156745.P4004578976620637230`, by `A156745.P4004578976620637230.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A156745 (n : ℕ) : ℤ :=
  A156745.P4004578976620637230.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+A006218(n+1)` (program `A156745.P4004578976620637230`, by `A156745.P4004578976620637230.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A156745.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A157224.P6199870463600327874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157224 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157224.P6199870463600327874.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157224.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 2, canonical program `A157672.P13298075479636358401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157672 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157672.P13298075479636358401.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157898.P17830117301384184696

`A046854(n)*A166692(n)`
-/

namespace A157898.P17830117301384184696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n * A166692 n

end

end A157898.P17830117301384184696

noncomputable section

/-- A157898: Triangle read by rows: inverse binomial transform of A059576.

Offset 0, canonical program `A157898.P17830117301384184696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A157898 (n : ℕ) : ℤ :=
  A157898.P17830117301384184696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A157898.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A158474.P4356683303186768697

`A135950(∑[2*n]%comp[∑[n]])`
-/

namespace A158474.P4356683303186768697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135950 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A158474.P4356683303186768697

noncomputable section

/-- A158474: Triangle read by rows generated from (x-1)*(x-2)*(x-4)*...

Offset 0, canonical program `A158474.P4356683303186768697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A158474 (n : ℕ) : ℤ :=
  A158474.P4356683303186768697.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A158474.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A158901.P2411227311583190290`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158901 (n : ℕ) : ℤ :=
  A158901.P2411227311583190290.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A158901.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159006.P4450605599924677905

`A036044(A000040(n+1))`
-/

namespace A159006.P4450605599924677905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A000040 (n + 1)).toNat

end

end A159006.P4450605599924677905

noncomputable section

/-- A159006: Transformation of prime(n): flip digits in the binary representation, revert the sequence of digits, and convert back to decimal.

Offset 1, canonical program `A159006.P4450605599924677905`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159006 (n : ℕ) : ℤ :=
  A159006.P4450605599924677905.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036044, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A159006.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A160337.P9545662688461462744

`∩[A008578(n+1), A202267(n+1)]`
-/

namespace A160337.P9545662688461462744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160337.P9545662688461462744

noncomputable section

/-- A160337: 1 plus primes using only digits {0, 1, 2, 3, 5, 7}.

Offset 1, canonical program `A160337.P9545662688461462744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1088 terms. -/
def A160337 (n : ℕ) : ℤ :=
  (A160337.P9545662688461462744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1088 terms. -/
def A160337.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A160811.P17665539378844618350

`round(∑[9/∑[A207605(n+1)]]/2+n)`
-/

namespace A160811.P17665539378844618350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207605 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) / 2 + (n : ℚ))

end

end A160811.P17665539378844618350

noncomputable section

/-- A160811: Numbers not dividing 24.

Offset 1, canonical program `A160811.P17665539378844618350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160811 (n : ℕ) : ℤ :=
  A160811.P17665539378844618350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161187.P14587540227680804446

`A117490(n+1)+∑[A010051(n+1)+1]`
-/

namespace A161187.P14587540227680804446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A161187.P14587540227680804446

noncomputable section

/-- A161187: Let S = A089237\{0} = union of primes and nonzero squares; sequence gives indices of squares.

Offset 1, canonical program `A161187.P14587540227680804446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161187 (n : ℕ) : ℤ :=
  A161187.P14587540227680804446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161187.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A161654.P13899316953508437492

`1-A054008(n+1)+n`
-/

namespace A161654.P13899316953508437492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054008 (n + 1) + (n : ℤ)

end

end A161654.P13899316953508437492

noncomputable section

/-- A161654: a(n) = the largest multiple of {the number of divisors of n} that is <= n.

Offset 1, canonical program `A161654.P13899316953508437492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A161654 (n : ℕ) : ℤ :=
  A161654.P13899316953508437492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A161654.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A161664.P17260438586018701071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161664 (n : ℕ) : ℤ :=
  A161664.P17260438586018701071.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161664.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A161825.P16867486800459318953

`gcd(A030101(n+1), n+1)`
-/

namespace A161825.P16867486800459318953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030101 (n + 1)) (n + 1 : ℤ)

end

end A161825.P16867486800459318953

noncomputable section

/-- A161825: a(n) is the GCD of n and {the number made by reversing the order of the digits of n written in binary}.

Offset 1, canonical program `A161825.P16867486800459318953`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161825 (n : ℕ) : ℤ :=
  (A161825.P16867486800459318953.a (n - 1) : ℤ)

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

Offset 0, canonical program `A161912.P2457371058280528067`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A040976(n+1)-A006218(n)` (program `A161912.P2457371058280528067`, by `A161912.P2457371058280528067.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A161912 (n : ℕ) : ℤ :=
  A161912.P2457371058280528067.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A040976(n+1)-A006218(n)` (program `A161912.P2457371058280528067`, by `A161912.P2457371058280528067.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A161912.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A162515.P17021776676229320120

`abs(A049310(A038722(n+1)))`
-/

namespace A162515.P17021776676229320120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049310 (A038722 (n + 1)).toNat|

end

end A162515.P17021776676229320120

noncomputable section

/-- A162515: Triangle of coefficients of polynomials defined by Binet form: P(n,x) = (U^n - L^n)/d, where U = (x + d)/2, L = (x - d)/2, d = sqrt(x^2 + 4).

Offset 0, canonical program `A162515.P17021776676229320120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5152 terms. -/
def A162515 (n : ℕ) : ℤ :=
  A162515.P17021776676229320120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5152 terms. -/
def A162515.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A162641.P7922189454188814525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162641 (n : ℕ) : ℤ :=
  A162641.P7922189454188814525.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162738.P1285176498515320745

`A002808(n+1)*ceil(A000040(n+1)/A002808(n+1))`
-/

namespace A162738.P1285176498515320745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * ⌈(A000040 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)⌉

end

end A162738.P1285176498515320745

noncomputable section

/-- A162738: a(n) is the smallest positive multiple of {the n-th composite} that is greater than the n-th prime.

Offset 1, canonical program `A162738.P1285176498515320745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162738 (n : ℕ) : ℤ :=
  A162738.P1285176498515320745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162738.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163205.P15967753427940304355

`record[A143088(n)%A176204(n)]`
-/

namespace A163205.P15967753427940304355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143088 n) (A176204 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163205.P15967753427940304355

noncomputable section

/-- A163205: The non-repetitive Kaprekar binary numbers in decimal.

Offset 1, canonical program `A163205.P15967753427940304355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1219 terms. -/
def A163205 (n : ℕ) : ℤ :=
  A163205.P15967753427940304355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1219 terms. -/
def A163205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163327.P8461444291336420103

`A037314(A163326(n))+3*A037314(A163325(n))`
-/

namespace A163327.P8461444291336420103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A163326 n).toNat + 3 * A037314 (A163325 n).toNat

end

end A163327.P8461444291336420103

noncomputable section

/-- A163327: Self-inverse permutation of integers: swap the odd- and even-positioned digits in the ternary expansion of n, then convert back to decimal.

Offset 0, canonical program `A163327.P8461444291336420103`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163327 (n : ℕ) : ℤ :=
  A163327.P8461444291336420103.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163327.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A163504.P9591765712020297815`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163504 (n : ℕ) : ℤ :=
  A163504.P9591765712020297815.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163504.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163505.P16929550261276324882

`A014076(n+1)%(2*(n+1)-1)`
-/

namespace A163505.P16929550261276324882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014076 (n + 1)) ((2 * (n + 1) : ℤ) - 1)

end

end A163505.P16929550261276324882

noncomputable section

/-- A163505: a(n) = (n-th odd nonprime) mod (n-th odd number).

Offset 1, canonical program `A163505.P16929550261276324882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163505 (n : ℕ) : ℤ :=
  A163505.P16929550261276324882.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163505.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A163636.P17482581980774521076

`(A014076(n+1)+2*(n+1)-1)*(A014076(n+1)-2*(n+1)+3)/4`
-/

namespace A163636.P17482581980774521076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014076 (n + 1) + (2 * (n + 1) : ℤ) - 1) * (A014076 (n + 1) - (2 * (n + 1) : ℤ) + 3) : ℚ) / 4

end

end A163636.P17482581980774521076

noncomputable section

/-- A163636: The sum of all odd numbers from 2n-1 up to the n-th odd nonprime.

Offset 1, canonical program `A163636.P17482581980774521076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163636 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163636.P17482581980774521076.a (n - 1))

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

Offset 1, canonical program `A165797.P12784172842606566617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165797 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A165797.P12784172842606566617.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165797.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A166236.P17306406694189176569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166236 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A166236.P17306406694189176569.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A166527.P3407768485719253100

`eq[1, A077478(n+1)]+1`
-/

namespace A166527.P3407768485719253100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166527.P3407768485719253100

noncomputable section

/-- A166527: Complement of A076537.

Offset 1, canonical program `A166527.P3407768485719253100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A166527 (n : ℕ) : ℤ :=
  (A166527.P3407768485719253100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A166527.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A166687.P18219030986989704232

`A001481(n+1)+1`
-/

namespace A166687.P18219030986989704232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) + 1

end

end A166687.P18219030986989704232

noncomputable section

/-- A166687: Numbers of the form x^2 + y^2 + 1, x, y integers.

Offset 1, canonical program `A166687.P18219030986989704232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166687 (n : ℕ) : ℤ :=
  A166687.P18219030986989704232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166687.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A167020.P15197977975662884992

`A010051(6*(n+1)-1)`
-/

namespace A167020.P15197977975662884992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (6 * (n + 1) - 1)

end

end A167020.P15197977975662884992

noncomputable section

/-- A167020: a(n) = 1 iff 6n-1 is prime.

Offset 1, canonical program `A167020.P15197977975662884992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167020 (n : ℕ) : ℤ :=
  A167020.P15197977975662884992.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167020.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167021.P302791220929737804

`A010051(6*(n+1)+1)`
-/

namespace A167021.P302791220929737804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (6 * (n + 1) + 1)

end

end A167021.P302791220929737804

noncomputable section

/-- A167021: a(n) = 1 iff 6n+1 is prime.

Offset 1, canonical program `A167021.P302791220929737804`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167021 (n : ℕ) : ℤ :=
  A167021.P302791220929737804.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167021.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A168272.P13748373025009212725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168272 (n : ℕ) : ℤ :=
  A168272.P13748373025009212725.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007821, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A169613.P2033703515470004183

`A169615(A038722(n+1))+C(n, A008486(n))`
-/

namespace A169613.P2033703515470004183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169615 (A038722 (n + 1)).toNat + (Nat.choose n (A008486 n).toNat : ℤ)

end

end A169613.P2033703515470004183

noncomputable section

/-- A169613: Triangular array: T(n,k)=floor(F(n)/F(n-k)), k=1,2,...,n-2; n>=3, where F=A000045 (Fibonacci numbers).

Offset 3, canonical program `A169613.P2033703515470004183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A169613 (n : ℕ) : ℤ :=
  A169613.P2033703515470004183.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A169613.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A171730.P9109354056744307278

`A193922(n)+char[∑[n+1]]`
-/

namespace A171730.P9109354056744307278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171730.P9109354056744307278

noncomputable section

/-- A171730: Triangle of differences of Fibonacci numbers, rows descending.

Offset 1, canonical program `A171730.P9109354056744307278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171730 (n : ℕ) : ℤ :=
  A171730.P9109354056744307278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171730.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A172370.P12160375368130657257

`A120072(∑[char[∑[n]]]²-n+1)`
-/

namespace A172370.P12160375368130657257
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120072 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A172370.P12160375368130657257

noncomputable section

/-- A172370: Mirrored triangle A120072 read by rows.

Offset 2, canonical program `A172370.P12160375368130657257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A172370 (n : ℕ) : ℤ :=
  A172370.P12160375368130657257.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A172370.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A173256.P14061795327720257061

`∑[A001481(n+1)]`
-/

namespace A173256.P14061795327720257061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173256.P14061795327720257061

noncomputable section

/-- A173256: Partial sums of A001481.

Offset 1, canonical program `A173256.P14061795327720257061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173256 (n : ℕ) : ℤ :=
  A173256.P14061795327720257061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173256.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A173438.P11158591540045006980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173438 (n : ℕ) : ℤ :=
  A173438.P11158591540045006980.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173540.P7434116664741020737

`A173541(record[gcd(n+1, A126988(n+1))])`
-/

namespace A173540.P7434116664741020737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A126988 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173541 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A173540.P7434116664741020737

noncomputable section

/-- A173540: Triangle read by rows in which row n lists the proper nondivisors of n, or zero if n <= 2.

Offset 1, canonical program `A173540.P7434116664741020737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9280 terms. -/
def A173540 (n : ℕ) : ℤ :=
  A173540.P7434116664741020737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9280 terms. -/
def A173540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173828.P5328705190027313365

`∩[A135932(n+1), A173827(n+1)]`
-/

namespace A173828.P5328705190027313365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173828.P5328705190027313365

noncomputable section

/-- A173828: Primes p such that p-+(floor(Sqrt(p)))^2 are primes.

Offset 1, canonical program `A173828.P5328705190027313365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. -/
def A173828 (n : ℕ) : ℤ :=
  (A173828.P5328705190027313365.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 985 terms. -/
def A173828.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174440.P16633761848471278973

`∑[A022544(n+1)]`
-/

namespace A174440.P16633761848471278973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174440.P16633761848471278973

noncomputable section

/-- A174440: Partial sums of A022544.

Offset 1, canonical program `A174440.P16633761848471278973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174440 (n : ℕ) : ℤ :=
  A174440.P16633761848471278973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174660.P18203838442809272468

`(2^A158611(n+1))%A002808(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174660.P18203838442809272468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A158611 (n + 1) : ℤ))) (A002808 (n + 1))

end

end A174660.P18203838442809272468

noncomputable section

/-- A174660: a(n) = 2^A158611(n) mod A002808(n).

Offset 1, canonical program `A174660.P18203838442809272468`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A158611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174660 (n : ℕ) : ℤ :=
  A174660.P18203838442809272468.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A158611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A174660.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A175156.P17258388974337502969

`(2^n)%A002808(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175156.P17258388974337502969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (A002808 (n + 1))

end

end A175156.P17258388974337502969

noncomputable section

/-- A175156: a(n) = 2^(n-1) mod composite(n).

Offset 1, canonical program `A175156.P17258388974337502969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175156 (n : ℕ) : ℤ :=
  A175156.P17258388974337502969.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175156.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175217.P17364733855604031209

`A000040(n+1)+2+A010051(A000040(n+1)+1)+A010051(A000040(n+1)+2)+A010051(A000040(n+1)+3)`
-/

namespace A175217.P17364733855604031209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 + A010051 (A000040 (n + 1) + 1).toNat + A010051 (A000040 (n + 1) + 2).toNat + A010051 (A000040 (n + 1) + 3).toNat

end

end A175217.P17364733855604031209

noncomputable section

/-- A175217: The second nonprimes after the primes.

Offset 1, canonical program `A175217.P17364733855604031209`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175217 (n : ℕ) : ℤ :=
  A175217.P17364733855604031209.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175217.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A175247.P4698162389150652956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175247 (n : ℕ) : ℤ :=
  A175247.P4698162389150652956.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A175621.P9450483601849473088

`(2^(A002808(n+1)-4))%A002808(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175621.P9450483601849473088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002808 (n + 1) - 4 : ℤ))) (A002808 (n + 1))

end

end A175621.P9450483601849473088

noncomputable section

/-- A175621: a(n) = 2^(composite(n)-4) mod composite(n).

Offset 1, canonical program `A175621.P9450483601849473088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175621 (n : ℕ) : ℤ :=
  A175621.P9450483601849473088.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175621.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A176101.P13722665777164572792

`(4^(A002808(n+1)-4))%A002808(n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176101.P13722665777164572792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A002808 (n + 1) - 4 : ℤ))) (A002808 (n + 5))

end

end A176101.P13722665777164572792

noncomputable section

/-- A176101: a(n) = 4^(composite(n) - 4) mod composite(n+4).

Offset 1, canonical program `A176101.P13722665777164572792`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176101 (n : ℕ) : ℤ :=
  A176101.P13722665777164572792.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176101.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176346.P2858540763397008978

`A048158(n+1)+A051777(n+1)+1`
-/

namespace A176346.P2858540763397008978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + (A051777 (n + 1) + 1)

end

end A176346.P2858540763397008978

noncomputable section

/-- A176346: A dual remainder symmetrical triangle sequence T(n, m) = 1 + 2*(n+1) - (m+1)*floor((n+1)/(m+1)) - (n-m+1)*floor((n+1)/( n-m+1)), read by rows.

Offset 0, canonical program `A176346.P2858540763397008978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176346 (n : ℕ) : ℤ :=
  A176346.P2858540763397008978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176988.P11168993376640129873

`A064789(A218890(n+1))`
-/

namespace A176988.P11168993376640129873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (A218890 (n + 1)).toNat

end

end A176988.P11168993376640129873

noncomputable section

/-- A176988: Triangle read by rows, which contains Noll's indices of Zernike polynomials in row n sorted along increasing index of the azimuthal quantum number.

Offset 0, canonical program `A176988.P11168993376640129873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A176988 (n : ℕ) : ℤ :=
  A176988.P11168993376640129873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A176988.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A177236.P14113996674392224070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A177235, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177236 (n : ℕ) : ℤ :=
  A177236.P14113996674392224070.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A177235, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A177970.P282440303243635367

`A003506(A185868(n+1))-A279891(n)`
-/

namespace A177970.P282440303243635367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (A185868 (n + 1)).toNat - A279891 n

end

end A177970.P282440303243635367

noncomputable section

/-- A177970: Array T(n,m) = A177944(2*n,2*m) read by antidiagonals.

Offset 0, canonical program `A177970.P282440303243635367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A177970 (n : ℕ) : ℤ :=
  A177970.P282440303243635367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A177970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177991.P11359817822590575411

`A115514(n+1)/A177994(n)`
-/

namespace A177991.P11359817822590575411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115514 (n + 1) : ℚ) / (A177994 n : ℚ)

end

end A177991.P11359817822590575411

noncomputable section

/-- A177991: Triangle read by rows, A070909 * A177990.

Offset 0, canonical program `A177991.P11359817822590575411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A177991.P11359817822590575411.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178763.P16595432844807789865

`lcm(A061446(n+1), A299232(n+1))/A299232(n+1)`
-/

namespace A178763.P16595432844807789865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A061446 (n + 1)) (A299232 (n + 1)) : ℚ) / (A299232 (n + 1) : ℚ)

end

end A178763.P16595432844807789865

noncomputable section

/-- A178763: Product of primitive prime factors of Fibonacci(n).

Offset 1, canonical program `A178763.P16595432844807789865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A178763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A178763.P16595432844807789865.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A178763.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A181183.P18430112990416005991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181183 (n : ℕ) : ℤ :=
  A181183.P18430112990416005991.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181183.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A181550.P13432480176131539971

`floor((row(n)+1)/(col(n)+1))*A181549(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181550.P13432480176131539971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.triRow n + 1 : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)⌋ * A181549 (SequenceMachineLib.triCol n + 1)

end

end A181550.P13432480176131539971

noncomputable section

/-- A181550: T(n,k) = floor(n/k)*A181549(k), triangle read by rows.

Offset 1, canonical program `A181550.P13432480176131539971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181550 (n : ℕ) : ℤ :=
  A181550.P13432480176131539971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181550.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181552.P14371791422649182277

`gcd(row(n)+1, col(n)+1)*A181549(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181552.P14371791422649182277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) : ℤ) * A181549 (SequenceMachineLib.triCol n + 1)

end

end A181552.P14371791422649182277

noncomputable section

/-- A181552: T(n,k) = gcd(n,k) A181549(k), triangle read by rows.

Offset 1, canonical program `A181552.P14371791422649182277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181552 (n : ℕ) : ℤ :=
  A181552.P14371791422649182277.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181549, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181552.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181932.P11204992688967279884

`A003136(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A181932.P11204992688967279884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003136 (n + 1)) 2

end

end A181932.P11204992688967279884

noncomputable section

/-- A181932: A003136(n) mod 2.

Offset 1, canonical program `A181932.P11204992688967279884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181932 (n : ℕ) : ℤ :=
  A181932.P11204992688967279884.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181932.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A181967.P15063776674140415528

`(n+1)!*(A013939(n+1)-floor((n+3)/4))/2`
-/

namespace A181967.P15063776674140415528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * (A013939 (n + 1) - ⌊(n + 3 : ℚ) / 4⌋) : ℚ) / 2

end

end A181967.P15063776674140415528

noncomputable section

/-- A181967: Sum of the sizes of the normalizers of all prime order cyclic subgroups of the alternating group A_n.

Offset 1, canonical program `A181967.P15063776674140415528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181967 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A181967.P15063776674140415528.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A181967.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A183063.P14549643650991336837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183063 (n : ℕ) : ℤ :=
  A183063.P14549643650991336837.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183063.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A183093.P17608197149960352927`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183093 (n : ℕ) : ℤ :=
  A183093.P17608197149960352927.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183094.P2300528291682876645

`A005361(n+1)-1`
-/

namespace A183094.P2300528291682876645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - 1

end

end A183094.P2300528291682876645

noncomputable section

/-- A183094: a(n) = number of powerful divisors d (excluding 1) of n.

Offset 1, canonical program `A183094.P2300528291682876645`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183094 (n : ℕ) : ℤ :=
  A183094.P2300528291682876645.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A183094.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A183103.P15947555032237724278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183103 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183103.P15947555032237724278.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183103.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A184390.P5275387814831515097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184390 (n : ℕ) : ℤ :=
  A184390.P5275387814831515097.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184390.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A184391.P2181629435017711796`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184391 (n : ℕ) : ℤ :=
  (A184391.P2181629435017711796.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184391.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A185587.P7291945286253065846

`2*A348647(n)-1`
-/

namespace A185587.P7291945286253065846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348647 n - 1

end

end A185587.P7291945286253065846

noncomputable section

/-- A185587: Irregular triangle read by rows: row n gives a list of the lengths of the free spaces at the n-th stage in a Rule 18 cellular automaton.

Offset 1, canonical program `A185587.P7291945286253065846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6305 terms. -/
def A185587 (n : ℕ) : ℤ :=
  A185587.P7291945286253065846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6305 terms. -/
def A185587.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A186648.P1074601965307673804

`(A264960(n)-A000984(n))/2`
-/

namespace A186648.P1074601965307673804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264960 n - A000984 n : ℚ) / 2

end

end A186648.P1074601965307673804

noncomputable section

/-- A186648: Number of walks f length n on a square lattice ending with x > 0 and y > 0.

Offset 0, canonical program `A186648.P1074601965307673804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A186648 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A186648.P1074601965307673804.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A186648.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A187680.P7320752672487898907

`A007955(n+1)%A000203(n+1)`
-/

namespace A187680.P7320752672487898907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007955 (n + 1)) (A000203 (n + 1))

end

end A187680.P7320752672487898907

noncomputable section

/-- A187680: a(n) = (product of divisors of n) mod (sum of divisors of n).

Offset 1, canonical program `A187680.P7320752672487898907`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187680 (n : ℕ) : ℤ :=
  A187680.P7320752672487898907.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188019.P17014770103561860153

`comp[A188018(n+1)-1]+1`
-/

namespace A188019.P17014770103561860153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188019.P17014770103561860153

noncomputable section

/-- A188019: Positions of 1 in A188017; complement of A188018.

Offset 1, canonical program `A188019.P17014770103561860153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188019 (n : ℕ) : ℤ :=
  (A188019.P17014770103561860153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188025.P8051068989946620211

`A188469(n+1)+A188013(n+1)`
-/

namespace A188025.P8051068989946620211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (n + 1) + A188013 (n + 1)

end

end A188025.P8051068989946620211

noncomputable section

/-- A188025: Positions of 1 in A188020; complement of A188024.

Offset 1, canonical program `A188025.P8051068989946620211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188025 (n : ℕ) : ℤ :=
  A188025.P8051068989946620211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188025.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188341.P7441460803417477000

`floor(A044966(n+2)/3)`
-/

namespace A188341.P7441460803417477000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A044966 (n + 2) : ℚ) / 3⌋

end

end A188341.P7441460803417477000

noncomputable section

/-- A188341: Numbers having no 0's and not more than one 1 in their representation in base 3.

Offset 1, canonical program `A188341.P7441460803417477000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A188341 (n : ℕ) : ℤ :=
  A188341.P7441460803417477000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A188341.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188467.P12427925613613652829

`A267871(n)-A188014(n+1)`
-/

namespace A188467.P12427925613613652829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n - A188014 (n + 1)

end

end A188467.P12427925613613652829

noncomputable section

/-- A188467: [4r]-[nr]-[4r-nr], where r=(1+sqrt(5))/2 and [.]=floor.

Offset 1, canonical program `A188467.P12427925613613652829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188467 (n : ℕ) : ℤ :=
  A188467.P12427925613613652829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188467.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190088.P10356372276694908

`C(A131894(n), 2*A002262(n))`
-/

namespace A190088.P10356372276694908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131894 n).toNat (2 * A002262 n).toNat

end

end A190088.P10356372276694908

noncomputable section

/-- A190088: Triangle of binomial coefficients binomial(3*n-k+1,3*n-3*k+1).

Offset 0, canonical program `A190088.P10356372276694908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6509 terms. -/
def A190088 (n : ℕ) : ℤ :=
  (A190088.P10356372276694908.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6509 terms. -/
def A190088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190152.P9394055725372174339

`C(A131894(n)-1, A005843(A002262(n)))`
-/

namespace A190152.P9394055725372174339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131894 n - 1).toNat (A005843 (A002262 n).toNat).toNat

end

end A190152.P9394055725372174339

noncomputable section

/-- A190152: Triangle of binomial coefficients binomial(3*n-k,3*n-3*k).

Offset 0, canonical program `A190152.P9394055725372174339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6622 terms. -/
def A190152 (n : ℕ) : ℤ :=
  (A190152.P9394055725372174339.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6622 terms. -/
def A190152.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A190692.P17579498809585757927

`eq[A024548(A022838(n+1)), A327180(n)]`
-/

namespace A190692.P17579498809585757927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024548 (A022838 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190692.P17579498809585757927

noncomputable section

/-- A190692: Positions of 3 in A190688.

Offset 1, canonical program `A190692.P17579498809585757927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 893 terms. -/
def A190692 (n : ℕ) : ℤ :=
  (A190692.P17579498809585757927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 893 terms. -/
def A190692.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A192439.P16826612195742642164

`a(n-1)+(1-2*A010051(n+1))*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A192439.P16826612195742642164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (1 - 2 * A010051 (n + 1)) * a (n - 2)

end

end A192439.P16826612195742642164

noncomputable section

/-- A192439: a(n) = a(n-1) - a(n-2) if n is prime or a(n-1) + a(n-2) otherwise. a(1) = a(2) = 1.

Offset 1, canonical program `A192439.P16826612195742642164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192439 (n : ℕ) : ℤ :=
  A192439.P16826612195742642164.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A192439.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A193350.P7605107557020847514`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193350 (n : ℕ) : ℤ :=
  A193350.P7605107557020847514.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193350.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A136011.P92647182053313749

`A008277(A056536(n+1))`
-/

namespace A136011.P92647182053313749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A056536 (n + 1)).toNat

end

end A136011.P92647182053313749

noncomputable section

/-- A136011: Irregular triangle read by rows, Stirling numbers of the second kind: columns shifted to allow (1, 1, 2, 2, 3, 3, ...) terms per row.

Offset 1, canonical program `A136011.P92647182053313749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2070 terms. -/
def A136011 (n : ℕ) : ℤ :=
  A136011.P92647182053313749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2070 terms. -/
def A136011.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A154689.P8500291516967621561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A154689 (n : ℕ) : ℤ :=
  (A154689.P8500291516967621561.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A154689.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A162318.P14374044090284231223

`∪[A227874(n+1), A230115(n+1)]`
-/

namespace A162318.P14374044090284231223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162318.P14374044090284231223

noncomputable section

/-- A162318: A positive integer n is included if |d(n+1)-d(n)| = 2, where d(n) is the number of divisors of n.

Offset 1, canonical program `A162318.P14374044090284231223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3997 terms. -/
def A162318 (n : ℕ) : ℤ :=
  (A162318.P14374044090284231223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3997 terms. -/
def A162318.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A166340.P14544244281529848433

`2*A166344(n+1)-A008292(n+1)`
-/

namespace A166340.P14544244281529848433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166344 (n + 1) - A008292 (n + 1)

end

end A166340.P14544244281529848433

noncomputable section

/-- A166340: Triangle T(n, k) = coefficients of ( t(n, x) ) where t(n, x) = (1-x)^(n+1)*p(n, x)/x, p(n, x) = x*D( p(n-1, x) ), with p(1, x) = x/(1-x)^2, p(2, x) = x*(1+x)/(1-x)^3, and p(3, x) = x*(1+8*x+x^2)/(1-x)^4, read by rows.

Offset 1, canonical program `A166340.P14544244281529848433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A166340 (n : ℕ) : ℤ :=
  A166340.P14544244281529848433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A166340.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174605.P3556819156427171389

`n*(n+1)/2-A000788(n)`
-/

namespace A174605.P3556819156427171389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) : ℚ) / 2 - (A000788 n : ℚ)

end

end A174605.P3556819156427171389

noncomputable section

/-- A174605: Partial sums of A011371.

Offset 0, canonical program `A174605.P3556819156427171389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174605 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174605.P3556819156427171389.a n)

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

/-! ## A185164.P14849761123550653350

`A075856(A056536(n+1))`
-/

namespace A185164.P14849761123550653350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075856 (A056536 (n + 1)).toNat

end

end A185164.P14849761123550653350

noncomputable section

/-- A185164: Coefficients of a set of polynomials associated with the derivatives of x^x.

Offset 2, canonical program `A185164.P14849761123550653350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. -/
def A185164 (n : ℕ) : ℤ :=
  A185164.P14849761123550653350.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 870 terms. -/
def A185164.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A193347.P15363500856293231746`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193347 (n : ℕ) : ℤ :=
  A193347.P15363500856293231746.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193347.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A162630.P7067745107647930616

`2*A130517(n+1)`
-/

namespace A162630.P7067745107647930616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130517 (n + 1)

end

end A162630.P7067745107647930616

noncomputable section

/-- A162630: Triangle read by rows in which row n lists the number of states of the subshells of the n-th shell of the nuclear shell model ordered by energy level in increasing order.

Offset 1, canonical program `A162630.P7067745107647930616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130517, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162630 (n : ℕ) : ℤ :=
  A162630.P7067745107647930616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130517, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162630.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163464.P1746648833047574952

`A054896(Δ[A007504(n)])`
-/

namespace A163464.P1746648833047574952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (f1 (n + 1) - f1 n).toNat

end

end A163464.P1746648833047574952

noncomputable section

/-- A163464: Cumulative sum of a repeated shift-and-add operation on the base-7 representation of prime(n).

Offset 1, canonical program `A163464.P1746648833047574952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A163464 (n : ℕ) : ℤ :=
  A163464.P1746648833047574952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A163464.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A183092.P9748846358186423691`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183092 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A183092.P9748846358186423691.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A136251.P2724709432083116831

`A070635(A000040(n+1))`
-/

namespace A136251.P2724709432083116831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A000040 (n + 1)).toNat

end

end A136251.P2724709432083116831

noncomputable section

/-- A136251: a(n) = n-th prime reduced modulo the sum of its digits.

Offset 1, canonical program `A136251.P2724709432083116831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136251 (n : ℕ) : ℤ :=
  A136251.P2724709432083116831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136251.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A143164.P3614239325576593876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A143164 (n : ℕ) : ℤ :=
  (A143164.P3614239325576593876.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A143164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143869.P7252286459323011956

`(n+1)*(A055653(n+1)+1)/2`
-/

namespace A143869.P7252286459323011956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A055653 (n + 1) + 1) : ℚ) / 2

end

end A143869.P7252286459323011956

noncomputable section

/-- A143869: An integer k is called regular (mod n) if there is an integer x such that k^2 x == k (mod n). Then these numbers are the sum of regular integers k (mod n) such that 1 <= k <= n for n=1,2,... .

Offset 1, canonical program `A143869.P7252286459323011956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143869 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143869.P7252286459323011956.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143869.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A157845.P13110102773483925305

`A007088(A092391(A028897(a(n-1))))` with `a(0)=1, a(1)=1`
-/

namespace A157845.P13110102773483925305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007088 (A092391 (A028897 (a (n - 1)).toNat).toNat).toNat

end

end A157845.P13110102773483925305

noncomputable section

/-- A157845: a(0) = 1, a(n) = sum of binary digits of all prior terms, expressed in binary.

Offset 0, canonical program `A157845.P13110102773483925305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157845 (n : ℕ) : ℤ :=
  A157845.P13110102773483925305.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157845.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A160939.P10335950988782502839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160939 (n : ℕ) : ℤ :=
  A160939.P10335950988782502839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062028, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160939.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A162720.P4575705943581837590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162720 (n : ℕ) : ℤ :=
  A162720.P4575705943581837590.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163235.P15833778733709445613

`A057300(A163233(n))`
-/

namespace A163235.P15833778733709445613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A163233 n).toNat

end

end A163235.P15833778733709445613

noncomputable section

/-- A163235: Two-dimensional Binary Reflected Gray Code, transposed version: a(i,j) = bits of binary expansion of A003188(j) interleaved with that of A003188(i).

Offset 0, canonical program `A163235.P15833778733709445613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2080 terms. -/
def A163235 (n : ℕ) : ℤ :=
  A163235.P15833778733709445613.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2080 terms. -/
def A163235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163239.P2622362110739984627

`A004468(A163233(n))`
-/

namespace A163239.P2622362110739984627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A163233 n).toNat

end

end A163239.P2622362110739984627

noncomputable section

/-- A163239: Transpose of array A163237.

Offset 0, canonical program `A163239.P2622362110739984627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2080 terms. -/
def A163239 (n : ℕ) : ℤ :=
  A163239.P2622362110739984627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2080 terms. -/
def A163239.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A164370.P15740221419071987727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A164370 (n : ℕ) : ℤ :=
  (A164370.P15740221419071987727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A164370.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A188641.P10949182267148863194

`A000007(A070635(n+1))`
-/

namespace A188641.P10949182267148863194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A070635 (n + 1)).toNat

end

end A188641.P10949182267148863194

noncomputable section

/-- A188641: Characteristic function of Niven (or Harshad) numbers.

Offset 1, canonical program `A188641.P10949182267148863194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188641 (n : ℕ) : ℤ :=
  A188641.P10949182267148863194.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070635, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188641.provenance : SequenceMachineLib.Provenance := .conditional

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

