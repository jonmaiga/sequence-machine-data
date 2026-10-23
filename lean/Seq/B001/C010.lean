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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A390525.P327141548468234781

`A000217(n)*A000045(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390525.P327141548468234781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000045 n

end

end A390525.P327141548468234781

noncomputable section

/-- A390525: a(n) = A000217(n)*A000045(n).

Offset 0, canonical program `A390525.P327141548468234781`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n)*A000045(n)` (program `A390525.P327141548468234781`, by `A390525.P327141548468234781.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390525 (n : ℕ) : ℤ :=
  A390525.P327141548468234781.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n)*A000045(n)` (program `A390525.P327141548468234781`, by `A390525.P327141548468234781.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390525.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A380083.P7207422318684722739

`A204327(n+1)/A000129(n+1)`
-/

namespace A380083.P7207422318684722739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204327 (n + 1) : ℚ) / (A000129 (n + 1) : ℚ)

end

end A380083.P7207422318684722739

noncomputable section

/-- A380083: a(n) = Pell(n^2)/Pell(n).

Offset 1, canonical program `A380083.P7207422318684722739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380083.P7207422318684722739.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380083.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380110.P5586239892308066860

`n-A063695(n)/2`
-/

namespace A380110.P5586239892308066860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A063695 n : ℚ) / 2

end

end A380110.P5586239892308066860

noncomputable section

/-- A380110: In the base 4 expansion of n: map 0->0, 1->1, 2->1, 3->2.

Offset 0, canonical program `A380110.P5586239892308066860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380110 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380110.P5586239892308066860.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380230.P9860135547969315712

`n*A070939(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380230.P9860135547969315712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070939 n

end

end A380230.P9860135547969315712

noncomputable section

/-- A380230: a(n) = n*A070939(n).

Offset 0, canonical program `A380230.P9860135547969315712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380230 (n : ℕ) : ℤ :=
  A380230.P9860135547969315712.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380230.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380353.P13682949951401919771

`A051624(A000124(n))`
-/

namespace A380353.P13682949951401919771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 (A000124 n).toNat

end

end A380353.P13682949951401919771

noncomputable section

/-- A380353: a(n) = (n^2 - n + 2) * (5*n^2 - 5*n + 2) / 4.

Offset 1, canonical program `A380353.P13682949951401919771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380353 (n : ℕ) : ℤ :=
  A380353.P13682949951401919771.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380484.P430126235261906034

`A079998(floor(n/6))`
-/

namespace A380484.P430126235261906034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 ⌊(n : ℚ) / 6⌋.toNat

end

end A380484.P430126235261906034

noncomputable section

/-- A380484: a(n) = 1 if n is congruent to {0, 1, 2, 3, 4, 5} mod 30, otherwise 0.

Offset 0, canonical program `A380484.P430126235261906034`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380484 (n : ℕ) : ℤ :=
  A380484.P430126235261906034.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380763.P586275446285360426

`A000217(A053615(n))`
-/

namespace A380763.P586275446285360426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A053615 n).toNat

end

end A380763.P586275446285360426

noncomputable section

/-- A380763: List triangular numbers up to increasingly large values and back down to 0.

Offset 0, canonical program `A380763.P586275446285360426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380763 (n : ℕ) : ℤ :=
  A380763.P586275446285360426.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380821.P10996316985306517664

`2*A000032(n)+1`
-/

namespace A380821.P10996316985306517664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n + 1

end

end A380821.P10996316985306517664

noncomputable section

/-- A380821: Length of the shorts leg in the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A380821.P10996316985306517664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380821 (n : ℕ) : ℤ :=
  A380821.P10996316985306517664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380821.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380855.P12946928765439253338

`a(A053645(n))-a(A053645(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A380855.P12946928765439253338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (A053645 n).toNat - a (A053645 (n - 1)).toNat

end

end A380855.P12946928765439253338

noncomputable section

/-- A380855: The unique sequence starting with a(0) = 1, a(1) = 0 and partial sums are 1 followed by the sequence terms themselves repeated in successive blocks a(0..2^k-1) for k >= 0.

Offset 0, canonical program `A380855.P12946928765439253338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380855 (n : ℕ) : ℤ :=
  A380855.P12946928765439253338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380960.P14528990618773538882

`A003849(n)+n`
-/

namespace A380960.P14528990618773538882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + (n : ℤ)

end

end A380960.P14528990618773538882

noncomputable section

/-- A380960: Sum of n and the n-th bit of the infinite Fibonacci word.

Offset 0, canonical program `A380960.P14528990618773538882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380960 (n : ℕ) : ℤ :=
  A380960.P14528990618773538882.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381009.P15990344275163368300

`A381005(n+1)*A381006(n+1)/2`
-/

namespace A381009.P15990344275163368300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381005 (n + 1) * A381006 (n + 1) : ℚ) / 2

end

end A381009.P15990344275163368300

noncomputable section

/-- A381009: Ordered areas of the Pythagorean triangles defined by a = 2^(4n) + 2^(2n+1), b = 2^(4n) - 2^(4n-2) - 2^(2n) - 1, c = 2^(4n) + 2^(4n-2) + 2^(2n) + 1.

Offset 1, canonical program `A381009.P15990344275163368300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381009 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381009.P15990344275163368300.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381288.P16481357389649938989

`a(n-1)+(-1)^(n-1)*(A104521(n-1)+1)` with `a(0)=0`
-/

namespace A381288.P16481357389649938989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (-1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A104521 (n - 1) + 1 : ℚ)

end

end A381288.P16481357389649938989

noncomputable section

/-- A381288: Partial alternating sums of the trajectory of 2 under the morphism 2->{2,1,2}, 1->{2}.

Offset 0, canonical program `A381288.P16481357389649938989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381288.P16481357389649938989.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381483.P13239247248519645367

`A000108(n)*(A000108(n)+1)*(2*A000108(n)+1)`
-/

namespace A381483.P13239247248519645367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (A000108 n + 1) * (2 * A000108 n + 1)

end

end A381483.P13239247248519645367

noncomputable section

/-- A381483: Area of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A381483.P13239247248519645367`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381483 (n : ℕ) : ℤ :=
  A381483.P13239247248519645367.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381794.P7718667864799923666

`4^(n+1)-A000032(2*(n+1))+2*(2^(n+1)-1)*A000032(n+1)+1+4*(n+1)`
-/

namespace A381794.P7718667864799923666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - A000032 (2 * (n + 1)) + 2 * ((2 ^ (n + 1) : ℤ) - 1) * A000032 (n + 1) + 1 + (4 * (n + 1) : ℤ)

end

end A381794.P7718667864799923666

noncomputable section

/-- A381794: Number of connected dominating sets in the n-trapezohedral graph.

Offset 1, canonical program `A381794.P7718667864799923666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381794 (n : ℕ) : ℤ :=
  A381794.P7718667864799923666.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381794.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382114.P18285456847627497086

`(A000108(n)+1)*(2*A000108(n)+1)`
-/

namespace A382114.P18285456847627497086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000108 n + 1) * (2 * A000108 n + 1)

end

end A382114.P18285456847627497086

noncomputable section

/-- A382114: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382114.P18285456847627497086`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382114 (n : ℕ) : ℤ :=
  A382114.P18285456847627497086.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382379.P10739304604407682157

`2*A000032(n)*(A000032(n)-1)`
-/

namespace A382379.P10739304604407682157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n * (A000032 n - 1)

end

end A382379.P10739304604407682157

noncomputable section

/-- A382379: Length of the long leg in the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382379.P10739304604407682157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382379 (n : ℕ) : ℤ :=
  A382379.P10739304604407682157.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382379.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382411.P13968524649925157096

`A000142(n+1)*A152947(n+1)`
-/

namespace A382411.P13968524649925157096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A152947 (n + 1)

end

end A382411.P13968524649925157096

noncomputable section

/-- A382411: a(n) is the greatest possible length of a circular sequence on n symbols such that: no two adjacent symbols are the same, any group of n adjacent symbols contains at least n-1 different symbols, and all groups of n adjacent symbols within the sequence are unique.

Offset 1, canonical program `A382411.P13968524649925157096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382411 (n : ℕ) : ℤ :=
  A382411.P13968524649925157096.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382488.P2299356055555741481

`abs(A181982(n+10))`
-/

namespace A382488.P2299356055555741481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181982 (n + 10)|

end

end A382488.P2299356055555741481

noncomputable section

/-- A382488: The number of unitary 3-smooth divisors of n.

Offset 1, canonical program `A382488.P2299356055555741481`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382488 (n : ℕ) : ℤ :=
  A382488.P2299356055555741481.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382527.P17963097231273716000

`(2*(n+1))!/2*A060493(n+1)`
-/

namespace A382527.P17963097231273716000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * (n + 1)) : ℚ) / 2 * (A060493 (n + 1) : ℚ)

end

end A382527.P17963097231273716000

noncomputable section

/-- A382527: a(n) = Sum_{j = 1..n} (-1)^(n+j) * j^(2*n+4) * binomial(2*n, n-j).

Offset 1, canonical program `A382527.P17963097231273716000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382527 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382527.P17963097231273716000.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382733.P7983275454340441927

`A382732(n)+1`
-/

namespace A382733.P7983275454340441927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382732 n + 1

end

end A382733.P7983275454340441927

noncomputable section

/-- A382733: Number of hypercubic bipartitions of n.

Offset 0, canonical program `A382733.P7983275454340441927`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382733 (n : ℕ) : ℤ :=
  A382733.P7983275454340441927.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382910.P8650629878727328270

`a(n-1)*A007598(n)` with `a(0)=1`
-/

namespace A382910.P8650629878727328270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A007598 n

end

end A382910.P8650629878727328270

noncomputable section

/-- A382910: a(n) = A003266(n)^2.

Offset 0, canonical program `A382910.P8650629878727328270`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382910 (n : ℕ) : ℤ :=
  A382910.P8650629878727328270.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382989.P8482641082575908324

`(3^(n+1)+2*A002426(n+1)-A002426(n+2)-3*A002426(n+3)+A002426(n+4))/2`
-/

namespace A382989.P8482641082575908324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) + 2 * A002426 (n + 1) - A002426 (n + 2) - 3 * A002426 (n + 3) + A002426 (n + 4) : ℚ) / 2

end

end A382989.P8482641082575908324

noncomputable section

/-- A382989: a(n) is the total sum of area over all (>=,>=)-polyominoes of length n.

Offset 0, canonical program `A382989.P8482641082575908324`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382989 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382989.P8482641082575908324.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383039.P9143552430524653141

`2*A001254(n)-1`
-/

namespace A383039.P9143552430524653141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001254 n - 1

end

end A383039.P9143552430524653141

noncomputable section

/-- A383039: Sum of the legs of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000032(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383039.P9143552430524653141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383039 (n : ℕ) : ℤ :=
  A383039.P9143552430524653141.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383251.P10776672623636940607

`2*A000108(n)+1`
-/

namespace A383251.P10776672623636940607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n + 1

end

end A383251.P10776672623636940607

noncomputable section

/-- A383251: Short leg of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383251.P10776672623636940607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383251 (n : ℕ) : ℤ :=
  A383251.P10776672623636940607.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383833.P17811188111289876932

`A000217(n)*(A000217(n)+1)*(2*A000217(n)+1)`
-/

namespace A383833.P17811188111289876932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * (A000217 n + 1) * (2 * A000217 n + 1)

end

end A383833.P17811188111289876932

noncomputable section

/-- A383833: Area of the unique primitive Pythagorean triple whose inradius is A000217(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383833.P17811188111289876932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383833 (n : ℕ) : ℤ :=
  A383833.P17811188111289876932.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383834.P10743144755230545223

`6*A006007(n)+1`
-/

namespace A383834.P10743144755230545223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006007 n + 1

end

end A383834.P10743144755230545223

noncomputable section

/-- A383834: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000217(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383834.P10743144755230545223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383834 (n : ℕ) : ℤ :=
  A383834.P10743144755230545223.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383834.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383922.P6416788775665426922

`A002104(n)+A002104(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383922.P6416788775665426922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n + A002104 (n + 1) - 1

end

end A383922.P6416788775665426922

noncomputable section

/-- A383922: a(n) = A002104(n) + A002104(n+1) - 1.

Offset 0, canonical program `A383922.P6416788775665426922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383922 (n : ℕ) : ℤ :=
  A383922.P6416788775665426922.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383957.P8900195989436403223

`2*A000108(n)²+4*A000108(n)+1`
-/

namespace A383957.P8900195989436403223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n ^ 2 + 4 * A000108 n + 1

end

end A383957.P8900195989436403223

noncomputable section

/-- A383957: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383957.P8900195989436403223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383957 (n : ℕ) : ℤ :=
  A383957.P8900195989436403223.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383957.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384561.P5420392690080599210

`A382644(n+4)/2`
-/

namespace A384561.P5420392690080599210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382644 (n + 4) : ℚ) / 2

end

end A384561.P5420392690080599210

noncomputable section

/-- A384561: One fourth of the number of permutations of [n] with |p(i+1) - p(i)| >= 2, for i = 1..(n-1) and n appears at position i = 1 or i = n.

Offset 5, canonical program `A384561.P5420392690080599210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384561 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384561.P5420392690080599210.a (n - 5))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384688.P10707158175314299968

`ceil(A053186(4*n+1)/2)`
-/

namespace A384688.P10707158175314299968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053186 (4 * n + 1) : ℚ) / 2⌉

end

end A384688.P10707158175314299968

noncomputable section

/-- A384688: Runs of t in the range 0 <= t <= k and the same parity as k, for successive k >= 0.

Offset 0, canonical program `A384688.P10707158175314299968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384688 (n : ℕ) : ℤ :=
  A384688.P10707158175314299968.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385563.P12664143766579300426

`C(n+2, 2)*A002212(n+1)`
-/

namespace A385563.P12664143766579300426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A002212 (n + 1)

end

end A385563.P12664143766579300426

noncomputable section

/-- A385563: Expansion of 1/((1-x) * (1-5*x))^(3/2).

Offset 0, canonical program `A385563.P12664143766579300426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385563 (n : ℕ) : ℤ :=
  A385563.P12664143766579300426.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385728.P6895606513719186912

`C(n+2, 2)*A005572(n)`
-/

namespace A385728.P6895606513719186912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A005572 n

end

end A385728.P6895606513719186912

noncomputable section

/-- A385728: Expansion of 1/((1-2*x) * (1-6*x))^(3/2).

Offset 0, canonical program `A385728.P6895606513719186912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385728 (n : ℕ) : ℤ :=
  A385728.P6895606513719186912.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385977.P16877403268120504790

`2*A002315(n)*(A002315(n)+1)`
-/

namespace A385977.P16877403268120504790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n * (A002315 n + 1)

end

end A385977.P16877403268120504790

noncomputable section

/-- A385977: Length of the long leg of the triangles defined in A377725.

Offset 0, canonical program `A385977.P16877403268120504790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385977 (n : ℕ) : ℤ :=
  A385977.P16877403268120504790.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386201.P11856909807172330877

`2*A000032(n)*(A000032(n)+1)`
-/

namespace A386201.P11856909807172330877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n * (A000032 n + 1)

end

end A386201.P11856909807172330877

noncomputable section

/-- A386201: Lengths of the long leg in the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A386201.P11856909807172330877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386201 (n : ℕ) : ℤ :=
  A386201.P11856909807172330877.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386291.P6378607592052834356

`2*A000108(n)*(A000108(n)+1)`
-/

namespace A386291.P6378607592052834356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n * (A000108 n + 1)

end

end A386291.P6378607592052834356

noncomputable section

/-- A386291: Long leg of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A386291.P6378607592052834356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386291 (n : ℕ) : ℤ :=
  A386291.P6378607592052834356.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386517.P2721402725429736476

`60*A005809(n)/(n+2)`
-/

namespace A386517.P2721402725429736476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (60 * A005809 n : ℚ) / (n + 2 : ℚ)

end

end A386517.P2721402725429736476

noncomputable section

/-- A386517: a(n) = 60*binomial(3*n,n)/(n+2).

Offset 0, canonical program `A386517.P2721402725429736476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386517 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A386517.P2721402725429736476.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387249.P9723774275975948807

`(3*n+2)/2*A007272(3*n)`
-/

namespace A387249.P9723774275975948807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℚ) / 2 * (A007272 (3 * n) : ℚ)

end

end A387249.P9723774275975948807

noncomputable section

/-- A387249: a(n) = 10/(n + 1) * Catalan(3*n).

Offset 0, canonical program `A387249.P9723774275975948807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387249 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387249.P9723774275975948807.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387263.P7341233109122044462

`a(n-2)-(n+1)+A383527(n)` with `a(0)=0, a(1)=0`
-/

namespace A387263.P7341233109122044462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) - (n + 1 : ℤ) + A383527 n

end

end A387263.P7341233109122044462

noncomputable section

/-- A387263: Partial sums of A247287.

Offset 0, canonical program `A387263.P7341233109122044462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387263 (n : ℕ) : ℤ :=
  A387263.P7341233109122044462.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387341.P2794587713551805196

`A277660(n+2)/2`
-/

namespace A387341.P2794587713551805196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277660 (n + 2) : ℚ) / 2

end

end A387341.P2794587713551805196

noncomputable section

/-- A387341: Expansion of 1/(1 - 6*x + x^2)^(5/2).

Offset 0, canonical program `A387341.P2794587713551805196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387341 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387341.P2794587713551805196.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388072.P14779318985125589135

`A080891(n)*A188510(n)`
-/

namespace A388072.P14779318985125589135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n * A188510 n

end

end A388072.P14779318985125589135

noncomputable section

/-- A388072: a(n) = Kronecker symbol (-10/n).

Offset 0, canonical program `A388072.P14779318985125589135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388072 (n : ℕ) : ℤ :=
  A388072.P14779318985125589135.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390137.P6598231683345126993

`5*a(n-1)+(-1)^n*A000984(n)` with `a(0)=1`
-/

namespace A390137.P6598231683345126993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (-1) ^ n * A000984 n

end

end A390137.P6598231683345126993

noncomputable section

/-- A390137: Expansion of 1/((1-5*x) * sqrt(1+4*x)).

Offset 0, canonical program `A390137.P6598231683345126993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390137 (n : ℕ) : ℤ :=
  A390137.P6598231683345126993.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390254.P15560212173112391131

`A087192(n+1)+1`
-/

namespace A390254.P15560212173112391131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087192 (n + 1) + 1

end

end A390254.P15560212173112391131

noncomputable section

/-- A390254: a(0) = 2, thereafter a(n+1) is the nearest integer to 4*a(n)/3.

Offset 0, canonical program `A390254.P15560212173112391131`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390254 (n : ℕ) : ℤ :=
  A390254.P15560212173112391131.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390254.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A391588.P7030029554672891423

`xor(A003817(n+1), A003817(n+1)*(n+1))`
-/

namespace A391588.P7030029554672891423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (n + 1)) (A003817 (n + 1) * (n + 1 : ℤ))

end

end A391588.P7030029554672891423

noncomputable section

/-- A391588: a(n) = A003817(n) XOR (A003817(n)*n).

Offset 1, canonical program `A391588.P7030029554672891423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391588 (n : ℕ) : ℤ :=
  A391588.P7030029554672891423.a (n - 1)

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

/-! ## A393496.P1782685945993566905

`gcd(A174344(n+1), A274923(n+1))`
-/

namespace A393496.P1782685945993566905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174344 (n + 1)) (A274923 (n + 1))

end

end A393496.P1782685945993566905

noncomputable section

/-- A393496: a(n) is the GCD of the X and Y-coordinates of the n-th point of the square spiral.

Offset 1, canonical program `A393496.P1782685945993566905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393496 (n : ℕ) : ℤ :=
  (A393496.P1782685945993566905.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393496.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A394529.P4813404703482126856

`(n²*A000108(n)+A008549(n))/2`
-/

namespace A394529.P4813404703482126856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A000108 n + A008549 n : ℚ) / 2

end

end A394529.P4813404703482126856

noncomputable section

/-- A394529: Total number of cells under all Dyck paths of semilength n in the first quadrant of the square grid.

Offset 0, canonical program `A394529.P4813404703482126856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394529.P4813404703482126856.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394529.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A394883.P1645665538627354432

`(n+1)*A060493(n+1)`
-/

namespace A394883.P1645665538627354432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060493 (n + 1)

end

end A394883.P1645665538627354432

noncomputable section

/-- A394883: a(n) = n^2*(n + 1)*(n + 2)*(2*n + 1)*(2*n + 3)*(5*n - 1)/360.

Offset 1, canonical program `A394883.P1645665538627354432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394883 (n : ℕ) : ℤ :=
  A394883.P1645665538627354432.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394883.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A394896.P2662756544387131280`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394896 (n : ℕ) : ℤ :=
  A394896.P2662756544387131280.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395196.P17729750059770065000

`4*A110611(n+1)-2*(n+1)*(n+2)+n+1`
-/

namespace A395196.P17729750059770065000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A110611 (n + 1) - (2 * (n + 1) * (n + 2) : ℤ) + (n + 1 : ℤ)

end

end A395196.P17729750059770065000

noncomputable section

/-- A395196: Minimal value of Sum_{i=1..n} p(i)*p(i+1), where p(n+1)=p(1), as p ranges over all permutations of odd numbers {1,3,...,2*n-1}.

Offset 1, canonical program `A395196.P17729750059770065000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395196 (n : ℕ) : ℤ :=
  A395196.P17729750059770065000.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395196.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A395675.P10573458847951959363`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395675 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395675.P10573458847951959363.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395675.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A396467.P1293345253100451359

`A396285(n+1)-C(n+1, 3)`
-/

namespace A396467.P1293345253100451359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396285 (n + 1) - (Nat.choose (n + 1) 3 : ℤ)

end

end A396467.P1293345253100451359

noncomputable section

/-- A396467: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation and excluding the centers of three triangles in a same symmetrical axis.

Offset 1, canonical program `A396467.P1293345253100451359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396467 (n : ℕ) : ℤ :=
  A396467.P1293345253100451359.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396467.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A379732.P15172099030873058908

`9-A021212(n)`
-/

namespace A379732.P15172099030873058908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A021212 n

end

end A379732.P15172099030873058908

noncomputable section

/-- A379732: Decimal expansion of 207/208.

Offset 0, canonical program `A379732.P15172099030873058908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379732 (n : ℕ) : ℤ :=
  A379732.P15172099030873058908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379813.P10472357877815493423

`A000203(n+1)*A001158(n+1)`
-/

namespace A379813.P10472357877815493423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001158 (n + 1)

end

end A379813.P10472357877815493423

noncomputable section

/-- A379813: a(n) = sigma_1(n) * sigma_3(n).

Offset 1, canonical program `A379813.P10472357877815493423`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379813 (n : ℕ) : ℤ :=
  A379813.P10472357877815493423.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379813.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379952.P2246859147419391597

`A379480(A142150(n))`
-/

namespace A379952.P2246859147419391597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 (A142150 n).toNat

end

end A379952.P2246859147419391597

noncomputable section

/-- A379952: a(n) = 1 if n is an odd number or a perfect square, otherwise 0.

Offset 0, canonical program `A379952.P2246859147419391597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379952 (n : ℕ) : ℤ :=
  A379952.P2246859147419391597.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379971.P13806193812172545761

`A323239(n)*A323239(n+2)`
-/

namespace A379971.P13806193812172545761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n * A323239 (n + 2)

end

end A379971.P13806193812172545761

noncomputable section

/-- A379971: a(n) = 1 if n^2-1 is squarefree, otherwise 0.

Offset 1, canonical program `A379971.P13806193812172545761`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379971 (n : ℕ) : ℤ :=
  A379971.P13806193812172545761.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380548.P5588617361391462724

`∑[n]+n-C(A083920(n), 2)+1`
-/

namespace A380548.P5588617361391462724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - (Nat.choose (A083920 n).toNat 2 : ℤ)) + 1

end

end A380548.P5588617361391462724

noncomputable section

/-- A380548: Main diagonal of A125585.

Offset 1, canonical program `A380548.P5588617361391462724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380548 (n : ℕ) : ℤ :=
  A380548.P5588617361391462724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380788.P17890132981315215586

`eq[2, A105700(A070939(n)²)]`
-/

namespace A380788.P17890132981315215586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A070939 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380788.P17890132981315215586

noncomputable section

/-- A380788: Numbers with a prime number of binary digits.

Offset 1, canonical program `A380788.P17890132981315215586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. -/
def A380788 (n : ℕ) : ℤ :=
  (A380788.P17890132981315215586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. -/
def A380788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380909.P658941744693780821

`A006882(n)/A095987(n)`
-/

namespace A380909.P658941744693780821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 n : ℚ) / (A095987 n : ℚ)

end

end A380909.P658941744693780821

noncomputable section

/-- A380909: a(n) = numerator(n!! / (n - 1)!!).

Offset 0, canonical program `A380909.P658941744693780821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380909 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380909.P658941744693780821.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381096.P9367970727555691698

`(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%(n+1)-A032741((n+1)/∏{p}[n+1, #])`
-/

namespace A381096.P9367970727555691698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (n + 1 : ℤ) - A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ))).toNat

end

end A381096.P9367970727555691698

noncomputable section

/-- A381096: Number of k <= n such that k is neither coprime to n and rad(k) != rad(n), where rad = A007947.

Offset 1, canonical program `A381096.P9367970727555691698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381096 (n : ℕ) : ℤ :=
  A381096.P9367970727555691698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381122.P9181683385261929794

`eq[n, A110146(n)]`
-/

namespace A381122.P9181683385261929794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381122.P9181683385261929794

noncomputable section

/-- A381122: Numbers k such that k^(k+1) == k (mod k+2).

Offset 1, canonical program `A381122.P9181683385261929794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 703 terms. -/
def A381122 (n : ℕ) : ℤ :=
  (A381122.P9181683385261929794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 703 terms. -/
def A381122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381233.P13633514905474936498

`A001057(n-floor(sqrt(n))²)`
-/

namespace A381233.P13633514905474936498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n - Nat.sqrt n ^ 2)

end

end A381233.P13633514905474936498

noncomputable section

/-- A381233: Concatenate the sequences S(k) = [0, 1, -1, ..., k, -k] for k = 0, 1, ...

Offset 0, canonical program `A381233.P13633514905474936498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381233 (n : ℕ) : ℤ :=
  A381233.P13633514905474936498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381255.P14805503171048512925

`comp[floor(A056469(n)/5)]`
-/

namespace A381255.P14805503171048512925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056469 n : ℚ) / 5⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A381255.P14805503171048512925

noncomputable section

/-- A381255: Positive integers not of the form round(2^(k+2)/5). Complement of A007910.

Offset 1, canonical program `A381255.P14805503171048512925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381255 (n : ℕ) : ℤ :=
  (A381255.P14805503171048512925.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381319.P14834546129870653751

`1+A063994(n+2)`
-/

namespace A381319.P14834546129870653751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A063994 (n + 2)

end

end A381319.P14834546129870653751

noncomputable section

/-- A381319: Order of linear recurrence with constant coefficients of solutions of k satisfying k^(n-1) == 1 (mod n^2) for a given n.

Offset 2, canonical program `A381319.P14834546129870653751`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381319 (n : ℕ) : ℤ :=
  A381319.P14834546129870653751.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381847.P7980523954427739077

`A387598(n+1)+A052928(n)`
-/

namespace A381847.P7980523954427739077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387598 (n + 1) + A052928 n

end

end A381847.P7980523954427739077

noncomputable section

/-- A381847: Number of 3 element sets of distinct integer sided rectangles that fill an n X n square.

Offset 1, canonical program `A381847.P7980523954427739077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 775 terms. -/
def A381847 (n : ℕ) : ℤ :=
  A381847.P7980523954427739077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 775 terms. -/
def A381847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381952.P13602993248681907933

`gcd(n+1, A051903(n+1))`
-/

namespace A381952.P13602993248681907933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A051903 (n + 1))

end

end A381952.P13602993248681907933

noncomputable section

/-- A381952: a(n) is the greatest common divisor of n and the maximum exponent in the prime factorization of n.

Offset 1, canonical program `A381952.P13602993248681907933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381952 (n : ℕ) : ℤ :=
  (A381952.P13602993248681907933.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381955.P11228825937713064055

`A000035(A051903(n+1))`
-/

namespace A381955.P11228825937713064055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A051903 (n + 1)).toNat

end

end A381955.P11228825937713064055

noncomputable section

/-- A381955: a(n) = A051903(n) mod 2.

Offset 1, canonical program `A381955.P11228825937713064055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381955 (n : ℕ) : ℤ :=
  A381955.P11228825937713064055.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381972.P8049536125631911176

`lt[Δ[A001414(n+1)], 1]+2`
-/

namespace A381972.P8049536125631911176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A381972.P8049536125631911176

noncomputable section

/-- A381972: Numbers k>=3 such that k/A001414(k) > (k-1)/A001414(k-1).

Offset 1, canonical program `A381972.P8049536125631911176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. -/
def A381972 (n : ℕ) : ℤ :=
  (A381972.P8049536125631911176.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. -/
def A381972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382185.P3573012059671383348

`∑[A001590(n)]%A000040(n+1)`
-/

namespace A382185.P3573012059671383348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A382185.P3573012059671383348

noncomputable section

/-- A382185: a(n) is the n-th tribonacci number modulo the n-th prime.

Offset 1, canonical program `A382185.P3573012059671383348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A382185 (n : ℕ) : ℤ :=
  A382185.P3573012059671383348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A382185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382308.P5793244383514553140

`2*(A000045(n)+1)²-1`
-/

namespace A382308.P5793244383514553140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 n + 1) ^ 2 - 1

end

end A382308.P5793244383514553140

noncomputable section

/-- A382308: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382308.P5793244383514553140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A382308 (n : ℕ) : ℤ :=
  A382308.P5793244383514553140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A382308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382410.P17047852700032732974

`(A000032(n)-1)*A382409(n)`
-/

namespace A382410.P17047852700032732974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - 1) * A382409 n

end

end A382410.P17047852700032732974

noncomputable section

/-- A382410: Area of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382410.P17047852700032732974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A382410 (n : ℕ) : ℤ :=
  A382410.P17047852700032732974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A382410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382432.P11268986047534422817

`Δ[A176085(n)]`
-/

namespace A382432.P11268986047534422817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382432.P11268986047534422817

noncomputable section

/-- A382432: a(n) = A074829(2*n-1, n).

Offset 1, canonical program `A382432.P11268986047534422817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A382432 (n : ℕ) : ℤ :=
  A382432.P11268986047534422817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A382432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382744.P11948343297158825481

`comp[(n+1)*A062157(val(n+1, 5))]`
-/

namespace A382744.P11948343297158825481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062157 (SequenceMachineLib.valuation (n + 1) 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382744.P11948343297158825481

noncomputable section

/-- A382744: If k appears, 5*k does not.

Offset 1, canonical program `A382744.P11948343297158825481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382744 (n : ℕ) : ℤ :=
  (A382744.P11948343297158825481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382745.P15305106904039031028

`record[A033999(val(n+1, 7))+n]`
-/

namespace A382745.P15305106904039031028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.valuation (n + 1) 7) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382745.P15305106904039031028

noncomputable section

/-- A382745: If k appears, 7*k does not.

Offset 1, canonical program `A382745.P15305106904039031028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382745 (n : ℕ) : ℤ :=
  A382745.P15305106904039031028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382789.P16110672853359686492

`∑[∑{e}[1-A000040(A028310(n)), #]]`
-/

namespace A382789.P16110672853359686492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382789.P16110672853359686492

noncomputable section

/-- A382789: The number of prime factors of Euler phi of the n-th primorial number, counted with multiplicity.

Offset 0, canonical program `A382789.P16110672853359686492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382789 (n : ℕ) : ℤ :=
  (A382789.P16110672853359686492.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382844.P3099565265804280121

`(A000045(n)-1)*A095122(n)`
-/

namespace A382844.P3099565265804280121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n - 1) * A095122 n

end

end A382844.P3099565265804280121

noncomputable section

/-- A382844: Area of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000045(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382844.P3099565265804280121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A382844 (n : ℕ) : ℤ :=
  A382844.P3099565265804280121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A382844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383077.P12520996747514148992

`A006358(n+1)+Δ[A006358(n)]`
-/

namespace A383077.P12520996747514148992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 (n + 1) + (f1 (n + 1) - f1 n)

end

end A383077.P12520996747514148992

noncomputable section

/-- A383077: Number of n-digit positive integers where all pairs of consecutive digits have a difference of at least 5.

Offset 1, canonical program `A383077.P12520996747514148992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A383077 (n : ℕ) : ℤ :=
  A383077.P12520996747514148992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A383077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383078.P12298779047005222962

`A373568(n+1)+A373568(n+1)-A006357(n)`
-/

namespace A383078.P12298779047005222962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373568 (n + 1) + (A373568 (n + 1) - A006357 n)

end

end A383078.P12298779047005222962

noncomputable section

/-- A383078: Number of n-digit positive integers where all pairs of consecutive digits have a difference of at least 6.

Offset 1, canonical program `A383078.P12298779047005222962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A383078 (n : ℕ) : ℤ :=
  A383078.P12298779047005222962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A383078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383156.P4501511777961019996

`∑{d}[n+1, A051903(#)]`
-/

namespace A383156.P4501511777961019996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051903 d

end

end A383156.P4501511777961019996

noncomputable section

/-- A383156: The sum of the maximum exponents in the prime factorizations of the divisors of n.

Offset 1, canonical program `A383156.P4501511777961019996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383156 (n : ℕ) : ℤ :=
  A383156.P4501511777961019996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383259.P13748571776509736098

`A065033(n)-A033271(n+1)`
-/

namespace A383259.P13748571776509736098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - A033271 (n + 1)

end

end A383259.P13748571776509736098

noncomputable section

/-- A383259: a(n) is the excess of even composites over odd composites in the first n positive integers.

Offset 1, canonical program `A383259.P13748571776509736098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383259 (n : ℕ) : ℤ :=
  A383259.P13748571776509736098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383325.P8303941941289924886

`comp[A383324(n)]`
-/

namespace A383325.P8303941941289924886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383324 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383325.P8303941941289924886

noncomputable section

/-- A383325: Numbers not of the form round(3^k/5). Complement of A383324.

Offset 1, canonical program `A383325.P8303941941289924886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383325 (n : ℕ) : ℤ :=
  (A383325.P8303941941289924886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383431.P12354164242503902528

`A051920(2*n+1)/A000034(∏{p}[n+1, #-1])`
-/

namespace A383431.P12354164242503902528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051920 (2 * n + 1) : ℚ) / (A000034 (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat : ℚ)

end

end A383431.P12354164242503902528

noncomputable section

/-- A383431: a(n) is the denominator of tanh(Sum_{k=1..n-1} artanh(k/n)), where artanh is the inverse hyperbolic tangent function.

Offset 1, canonical program `A383431.P12354164242503902528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A383431 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A383431.P12354164242503902528.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A383431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383578.P17294025589639841997

`A000040(n+1)^(char[(n*a(n-1))²+n]+1)` with `a(0)=2`
-/

namespace A383578.P17294025589639841997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  (n * f1 (n - 1)) ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A383578.P17294025589639841997

noncomputable section

/-- A383578: Let p = prime(n), then a(n) is the p-smooth part of (p-1)! + 1.

Offset 1, canonical program `A383578.P17294025589639841997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383578 (n : ℕ) : ℤ :=
  A383578.P17294025589639841997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383601.P257771129488146488

`∑[A377233(n)]`
-/

namespace A383601.P257771129488146488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383601.P257771129488146488

noncomputable section

/-- A383601: Expansion of 1/( (1-x) * (1-10*x)^2 )^(1/3).

Offset 0, canonical program `A383601.P257771129488146488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A383601 (n : ℕ) : ℤ :=
  A383601.P257771129488146488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A383601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383670.P12936080934003293389

`A188432(n+1)+A188432(n+1)+A003849(n)`
-/

namespace A383670.P12936080934003293389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1) + (A188432 (n + 1) + A003849 n)

end

end A383670.P12936080934003293389

noncomputable section

/-- A383670: Limiting word, as a sequence, obtained by prefixing with 0 the limiting sequence of s(n) defined by s(0) = 0, s(1) = 12, s(n) = the concatenation of s(n - 1) and s(n - 2).

Offset 1, canonical program `A383670.P12936080934003293389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383670 (n : ℕ) : ℤ :=
  A383670.P12936080934003293389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383705.P15354307696166593991

`∏{e}[n+1, A127974(#)]`
-/

namespace A383705.P15354307696166593991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A127974 (Nat.factorization (f1 n) p)

end

end A383705.P15354307696166593991

noncomputable section

/-- A383705: Numerator of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s)^(2/3).

Offset 1, canonical program `A383705.P15354307696166593991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383705 (n : ℕ) : ℤ :=
  A383705.P15354307696166593991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383911.P13606611818806099941

`A383913(n)+A383913(n)-A383910(n)`
-/

namespace A383911.P13606611818806099941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383913 n + (A383913 n - A383910 n)

end

end A383911.P13606611818806099941

noncomputable section

/-- A383911: Expansion of Product_{k=0..4} (1 + k*x)/(1 - k*x).

Offset 0, canonical program `A383911.P13606611818806099941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A383911 (n : ℕ) : ℤ :=
  A383911.P13606611818806099941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A383911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383946.P16362307403769968417

`Δ[A000217(n)*A059231(n)]`
-/

namespace A383946.P16362307403769968417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A059231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383946.P16362307403769968417

noncomputable section

/-- A383946: Expansion of 1/sqrt((1-9*x)^3 * (1-x)).

Offset 0, canonical program `A383946.P16362307403769968417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A383946 (n : ℕ) : ℤ :=
  A383946.P16362307403769968417.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A383946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383999.P17329043194853492655

`xor(A003849(n)+1, A003849(n+2))`
-/

namespace A383999.P17329043194853492655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003849 n + 1) (A003849 (n + 2))

end

end A383999.P17329043194853492655

noncomputable section

/-- A383999: Sequence obtained by replacing 3-term subwords of A003849 by 0,1,2,3 as described in Comments.

Offset 1, canonical program `A383999.P17329043194853492655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383999 (n : ℕ) : ℤ :=
  A383999.P17329043194853492655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384096.P3432400259258719839

`2*n-A053646(n+1)`
-/

namespace A384096.P3432400259258719839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A053646 (n + 1)

end

end A384096.P3432400259258719839

noncomputable section

/-- A384096: a(n) = 2*n - A080776(n).

Offset 0, canonical program `A384096.P3432400259258719839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384096 (n : ℕ) : ℤ :=
  A384096.P3432400259258719839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384153.P11731211239372390351

`2^n-A005251(n+2)`
-/

namespace A384153.P11731211239372390351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A005251 (n + 2)

end

end A384153.P11731211239372390351

noncomputable section

/-- A384153: a(n) is the number of binary strings of length n whose shortest run of 1s is of length 1.

Offset 0, canonical program `A384153.P11731211239372390351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A384153 (n : ℕ) : ℤ :=
  A384153.P11731211239372390351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A384153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384154.P3815110510942756679

`A005251(n+2)-A005252(n+1)`
-/

namespace A384154.P3815110510942756679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 2) - A005252 (n + 1)

end

end A384154.P3815110510942756679

noncomputable section

/-- A384154: a(n) is the number of binary strings of length n whose shortest run of 1s is of length 2.

Offset 0, canonical program `A384154.P3815110510942756679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A384154 (n : ℕ) : ℤ :=
  A384154.P3815110510942756679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A384154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384197.P16927393950934576976

`floor(A000302(A070939(n+1))/(n+1))`
-/

namespace A384197.P16927393950934576976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000302 (A070939 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A384197.P16927393950934576976

noncomputable section

/-- A384197: The Barret reducer reciprocal mod n.

Offset 1, canonical program `A384197.P16927393950934576976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384197 (n : ℕ) : ℤ :=
  A384197.P16927393950934576976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384219.P9210733678085374232

`A070550(3*n+1)`
-/

namespace A384219.P9210733678085374232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (3 * n + 1)

end

end A384219.P9210733678085374232

noncomputable section

/-- A384219: Areas of triangles whose three vertices are consecutive ordered pairs of consecutive odd Fibonacci numbers such that an ordered pair's y-value is the next ordered pair's x-value.

Offset 1, canonical program `A384219.P9210733678085374232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A384219 (n : ℕ) : ℤ :=
  A384219.P9210733678085374232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A384219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384543.P10493386867404407549

`A352228(A352228(3*n+1)+A004755(n+1))`
-/

namespace A384543.P10493386867404407549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352228 (A352228 (3 * n + 1) + A004755 (n + 1)).toNat

end

end A384543.P10493386867404407549

noncomputable section

/-- A384543: Number of distinct values from the bitwise operation i XOR j for all integers i and j in the range [1, n].

Offset 1, canonical program `A384543.P10493386867404407549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A384543 (n : ℕ) : ℤ :=
  A384543.P10493386867404407549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A384543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384601.P16727066867523399097

`∩[A283769(n+1), A016789(n)]`
-/

namespace A384601.P16727066867523399097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384601.P16727066867523399097

noncomputable section

/-- A384601: Numbers k such that T(k, 1) mod 3 = 1 and T(k, 2) mod 3 = 1, where T is the Wythoff array (A035513).

Offset 1, canonical program `A384601.P16727066867523399097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A384601 (n : ℕ) : ℤ :=
  (A384601.P16727066867523399097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A384601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384602.P13490862903164101311

`∩[A283770(n+1), A016777(n)]`
-/

namespace A384602.P13490862903164101311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384602.P13490862903164101311

noncomputable section

/-- A384602: Numbers k such that T(k, 1) mod 3 = 1 and T(k, 2) mod 3 = 2, where T is the Wythoff array (A035513).

Offset 1, canonical program `A384602.P13490862903164101311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A384602 (n : ℕ) : ℤ :=
  (A384602.P13490862903164101311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A384602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384812.P3201192687683523015

`∑{e}[n+1, A000040(#)]`
-/

namespace A384812.P3201192687683523015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)

end

end A384812.P3201192687683523015

noncomputable section

/-- A384812: If n = Product prime(i)^e(i) then a(n) = Sum prime(e(i)).

Offset 1, canonical program `A384812.P3201192687683523015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384812 (n : ℕ) : ℤ :=
  A384812.P3201192687683523015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384922.P6445870207053674092

`A002379(n)%10`
-/

namespace A384922.P6445870207053674092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002379 n) 10

end

end A384922.P6445870207053674092

noncomputable section

/-- A384922: a(n) is the first digit to the left of the decimal point in (3/2)^n.

Offset 0, canonical program `A384922.P6445870207053674092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. -/
def A384922 (n : ℕ) : ℤ :=
  A384922.P6445870207053674092.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. -/
def A384922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385134.P16551405868450602547

`∑{d}[n+1, #*A307430((n+1)/#)]`
-/

namespace A385134.P16551405868450602547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A307430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385134.P16551405868450602547

noncomputable section

/-- A385134: The sum of divisors d of n such that n/d is a biquadratefree number (A046100).

Offset 1, canonical program `A385134.P16551405868450602547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385134 (n : ℕ) : ℤ :=
  A385134.P16551405868450602547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385135.P2610461928447885844

`∑{d}[n+1, #*A295316((n+1)/#)]`
-/

namespace A385135.P2610461928447885844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A295316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385135.P2610461928447885844

noncomputable section

/-- A385135: The sum of divisors d of n such that n/d is an exponentially odd number (A268335).

Offset 1, canonical program `A385135.P2610461928447885844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385135 (n : ℕ) : ℤ :=
  A385135.P2610461928447885844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385167.P4826086116355619044

`∪[A142187(n+1), A142198(n+1)]`
-/

namespace A385167.P4826086116355619044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385167.P4826086116355619044

noncomputable section

/-- A385167: Primes p == 3 (mod 4) such that (p+1) * ord(5,p) / ord(2+-i,p) is even. Here ord(a,m) is the multiplicative order of a modulo m.

Offset 1, canonical program `A385167.P4826086116355619044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385167 (n : ℕ) : ℤ :=
  (A385167.P4826086116355619044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385177.P2434834977820488632

`A183136(n+1)+n+1`
-/

namespace A385177.P2434834977820488632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183136 (n + 1) + (n + 1 : ℤ)

end

end A385177.P2434834977820488632

noncomputable section

/-- A385177: a(n) = Sum_{k=1..n} ceiling(k/phi), where phi is the golden ratio (A001622).

Offset 1, canonical program `A385177.P2434834977820488632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385177 (n : ℕ) : ℤ :=
  A385177.P2434834977820488632.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385177.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385182.P1223750767979018473

`comp[A181972(n+1)]-n`
-/

namespace A385182.P1223750767979018473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181972 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A385182.P1223750767979018473

noncomputable section

/-- A385182: Values of u in the quartets (1,u,v,w); i.e., values of u for solutions to (1+u) = v*(v+w), in positive integers, with v>1, sorted by nondecreasing values of u; see Comments.

Offset 1, canonical program `A385182.P1223750767979018473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385182 (n : ℕ) : ℤ :=
  A385182.P1223750767979018473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385378.P16507919324572335447

`∑{e}[n+1, A003056(#)]`
-/

namespace A385378.P16507919324572335447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A003056 (Nat.factorization (f1 n) p)

end

end A385378.P16507919324572335447

noncomputable section

/-- A385378: The maximum possible number of distinct factors in the factorization of n into prime powers (A246655).

Offset 1, canonical program `A385378.P16507919324572335447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385378 (n : ℕ) : ℤ :=
  A385378.P16507919324572335447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385412.P1663864152010749443

`∩[A007916(n+1), A038687(n+1)]`
-/

namespace A385412.P1663864152010749443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385412.P1663864152010749443

noncomputable section

/-- A385412: Numbers k that are not perfect powers and whose trailing digits form a power of b, where 1 < b < k.

Offset 1, canonical program `A385412.P1663864152010749443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9885 terms. -/
def A385412 (n : ℕ) : ℤ :=
  (A385412.P1663864152010749443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9885 terms. -/
def A385412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385457.P1892993541243509914

`A071044(A131452(n))`
-/

namespace A385457.P1892993541243509914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A131452 n).toNat

end

end A385457.P1892993541243509914

noncomputable section

/-- A385457: Number of odd entries in row n of the Fibonomial triangle (A010048).

Offset 0, canonical program `A385457.P1892993541243509914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A385457 (n : ℕ) : ℤ :=
  A385457.P1892993541243509914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A385457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385476.P6490758313331182239

`comp[∑[A032741(n)]]-n+2`
-/

namespace A385476.P6490758313331182239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 2

end

end A385476.P6490758313331182239

noncomputable section

/-- A385476: Values of u in the quartets (1, u, v, w) of type 3; i.e., values of u for solutions to (1 - u) = v(v - w), in distinct positive integers, with v > 1, sorted by nondecreasing values of u; see Comments.

Offset 1, canonical program `A385476.P6490758313331182239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385476 (n : ℕ) : ℤ :=
  A385476.P6490758313331182239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385494.P9916212289199863013

`∑{d}[n+1, A268643(#)]`
-/

namespace A385494.P9916212289199863013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A268643 d

end

end A385494.P9916212289199863013

noncomputable section

/-- A385494: Total number of 1's in the decimal digits of the divisors of n.

Offset 1, canonical program `A385494.P9916212289199863013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385494 (n : ℕ) : ℤ :=
  A385494.P9916212289199863013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385554.P5664007560876723036

`A062383(n)*A385552(n)`
-/

namespace A385554.P5664007560876723036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A385552 n

end

end A385554.P5664007560876723036

noncomputable section

/-- A385554: Period of {binomial(N,n) mod 10: N in Z}.

Offset 0, canonical program `A385554.P5664007560876723036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385554 (n : ℕ) : ℤ :=
  A385554.P5664007560876723036.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385610.P4272775089795650141

`A006368(2*a(floor(n/2))-(-1)^n)` with `a(0)=1`
-/

namespace A385610.P4272775089795650141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006368 (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n).toNat

end

end A385610.P4272775089795650141

noncomputable section

/-- A385610: Galileo sequence with ratio k = 2: a(1) = 1, a(2) = k, a(2*n-1) = floor(((k + 1)*a(n) -1)/2), and a(2*n) = floor((k + 1)*a(n)/2) + 1 for n > 2.

Offset 1, canonical program `A385610.P4272775089795650141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385610 (n : ℕ) : ℤ :=
  A385610.P4272775089795650141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385704.P143017808627893424

`comp[A184535(n+1)-1]+1`
-/

namespace A385704.P143017808627893424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184535 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A385704.P143017808627893424

noncomputable section

/-- A385704: Complement of A184535.

Offset 1, canonical program `A385704.P143017808627893424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385704 (n : ℕ) : ℤ :=
  (A385704.P143017808627893424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385827.P17938306064123805802

`ceil(log2(A082685(n)))`
-/

namespace A385827.P17938306064123805802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A082685 n : ℝ)⌉

end

end A385827.P17938306064123805802

noncomputable section

/-- A385827: a(n) is the unique k such that 2^k is closest to 5^n.

Offset 0, canonical program `A385827.P17938306064123805802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A385827 (n : ℕ) : ℤ :=
  A385827.P17938306064123805802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A385827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385879.P5429911478239775443

`∑[char[∑[A069905(n)]]]+2`
-/

namespace A385879.P5429911478239775443
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A385879.P5429911478239775443

noncomputable section

/-- A385879: Values of u in triples (u, v, w) such that the polynomial x^3 + u*x^2 + v*x + w has 3 (possibly repeated) negative integer zeros; the triples are ordered by the inequality u < v.

Offset 1, canonical program `A385879.P5429911478239775443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385879 (n : ℕ) : ℤ :=
  (A385879.P5429911478239775443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385938.P15670182765899731212

`A318972(A004772(n+1))`
-/

namespace A385938.P15670182765899731212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318972 (A004772 (n + 1)).toNat

end

end A385938.P15670182765899731212

noncomputable section

/-- A385938: a(n) = 2*n/3 if n == 0 (mod 3), (2*n+1)/3 if n == 1 (mod 3), (7*n+1)/3 if n == 2 (mod 3).

Offset 0, canonical program `A385938.P15670182765899731212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A385938 (n : ℕ) : ℤ :=
  A385938.P15670182765899731212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A385938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386206.P108020433531004343

`A292564(n)-2*n`
-/

namespace A386206.P108020433531004343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292564 n - (2 * n : ℤ)

end

end A386206.P108020433531004343

noncomputable section

/-- A386206: Triangle read by rows: T(n,k) = n^2 - k, with 0 <= k <= n.

Offset 0, canonical program `A386206.P108020433531004343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386206 (n : ℕ) : ℤ :=
  A386206.P108020433531004343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386262.P4974348746514539254

`A051903(A066301(n+1)+1)`
-/

namespace A386262.P4974348746514539254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A066301 (n + 1) + 1).toNat

end

end A386262.P4974348746514539254

noncomputable section

/-- A386262: a(n) = A051903(A051903(n)) for n >= 2, a(1) = 0.

Offset 1, canonical program `A386262.P4974348746514539254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386262 (n : ℕ) : ℤ :=
  A386262.P4974348746514539254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386270.P15296392339893213735

`A045623(n)-A122391(n)`
-/

namespace A386270.P15296392339893213735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A122391 n

end

end A386270.P15296392339893213735

noncomputable section

/-- A386270: Total number of ones in runs of 1s of length <=2 over all binary strings of length n.

Offset 0, canonical program `A386270.P15296392339893213735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A386270 (n : ℕ) : ℤ :=
  A386270.P15296392339893213735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A386270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386477.P859100336923927337

`A063128(n)+a(n-1)` with `a(0)=1`
-/

namespace A386477.P859100336923927337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063128 n + a (n - 1)

end

end A386477.P859100336923927337

noncomputable section

/-- A386477: a(0) = 1; thereafter a(n) = 2*(6*n^2 - 3*n + 1).

Offset 0, canonical program `A386477.P859100336923927337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386477 (n : ℕ) : ℤ :=
  A386477.P859100336923927337.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386588.P11068232531911968151

`A000079(a(n-1))%(n+1)` with `a(0)=1`
-/

namespace A386588.P11068232531911968151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A000079 (a (n - 1)).toNat) (n + 1 : ℤ)

end

end A386588.P11068232531911968151

noncomputable section

/-- A386588: a(n) = 2^a(n-1) mod n, with a(1) = 1.

Offset 1, canonical program `A386588.P11068232531911968151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A386588 (n : ℕ) : ℤ :=
  A386588.P11068232531911968151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A386588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386758.P2105322873788982803

`∑{digits}[A000032(n), A055642(#)]`
-/

namespace A386758.P2105322873788982803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A386758.P2105322873788982803

noncomputable section

/-- A386758: Number of decimal digits in the n-th Lucas number.

Offset 0, canonical program `A386758.P2105322873788982803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A386758 (n : ℕ) : ℤ :=
  A386758.P2105322873788982803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A386758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386796.P17260301346217221759

`eq[2, A368885(n+1)]+1`
-/

namespace A386796.P17260301346217221759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A386796.P17260301346217221759

noncomputable section

/-- A386796: Numbers that have exactly one exponent in their prime factorization that is equal to 2.

Offset 1, canonical program `A386796.P17260301346217221759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2263 terms. -/
def A386796 (n : ℕ) : ℤ :=
  (A386796.P17260301346217221759.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2263 terms. -/
def A386796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386884.P4556650635656247242

`(n-3)*C(A004526(n), 2)`
-/

namespace A386884.P4556650635656247242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (Nat.choose (A004526 n).toNat 2 : ℤ)

end

end A386884.P4556650635656247242

noncomputable section

/-- A386884: a(n) is the number of distinct four-cuboid combinations that fill an n X n X n cube using only strict cuboids.

Offset 1, canonical program `A386884.P4556650635656247242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A386884 (n : ℕ) : ℤ :=
  A386884.P4556650635656247242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A386884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387038.P17225137594155425418

`A139398(3*n+2)`
-/

namespace A387038.P17225137594155425418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (3 * n + 2)

end

end A387038.P17225137594155425418

noncomputable section

/-- A387038: a(n) = Sum_{k=0..n} binomial(3*n+2,5*k).

Offset 0, canonical program `A387038.P17225137594155425418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A387038 (n : ℕ) : ℤ :=
  A387038.P17225137594155425418.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A387038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387209.P14191999222405322353

`A025828(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A387209.P14191999222405322353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A025828 n + a (n - 2)

end

end A387209.P14191999222405322353

noncomputable section

/-- A387209: Number of convex polygons with perimeter n on the regular triangular lattice, not counting rotations and reflections as distinct.

Offset 0, canonical program `A387209.P14191999222405322353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387209 (n : ℕ) : ℤ :=
  A387209.P14191999222405322353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387228.P6541808313867296877

`∑[∑[A377199(n)]]`
-/

namespace A387228.P6541808313867296877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387228.P6541808313867296877

noncomputable section

/-- A387228: Expansion of sqrt((1-x) / (1-5*x)^5).

Offset 0, canonical program `A387228.P6541808313867296877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A387228 (n : ℕ) : ℤ :=
  A387228.P6541808313867296877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A387228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387312.P4428100148096621254

`xor(A004526(n), A163617(n))`
-/

namespace A387312.P4428100148096621254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 n) (A163617 n)

end

end A387312.P4428100148096621254

noncomputable section

/-- A387312: a(n) is the action of "Rule 30" elementary cellular automaton on the binary representation of n if the cells may only expand into the significant bit.

Offset 0, canonical program `A387312.P4428100148096621254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387312 (n : ℕ) : ℤ :=
  A387312.P4428100148096621254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387332.P6355845914133237599

`2^n-A028495(n+1)`
-/

namespace A387332.P6355845914133237599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A028495 (n + 1)

end

end A387332.P6355845914133237599

noncomputable section

/-- A387332: Number of binary strings of length n that contain at least one maximal run of ones of even length.

Offset 0, canonical program `A387332.P6355845914133237599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A387332 (n : ℕ) : ℤ :=
  A387332.P6355845914133237599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A387332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387394.P3160881083450002832

`∑{d}[n+1, A316863(#)]`
-/

namespace A387394.P3160881083450002832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316863 d

end

end A387394.P3160881083450002832

noncomputable section

/-- A387394: Total number of 2's in the decimal digits of the divisors of n.

Offset 1, canonical program `A387394.P3160881083450002832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387394 (n : ℕ) : ℤ :=
  A387394.P3160881083450002832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387463.P7935693683231435009

`∑{d}[n+1, A316864(#)]`
-/

namespace A387463.P7935693683231435009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316864 d

end

end A387463.P7935693683231435009

noncomputable section

/-- A387463: Total number of 3's in the decimal digits of the divisors of n.

Offset 1, canonical program `A387463.P7935693683231435009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387463 (n : ℕ) : ℤ :=
  A387463.P7935693683231435009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387470.P8261482053908746042

`A066959(n+1)-(n+1)`
-/

namespace A387470.P8261482053908746042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (n + 1) - (n + 1 : ℤ)

end

end A387470.P8261482053908746042

noncomputable section

/-- A387470: a(n) = n*(Omega(n) - 1), where Omega = A001222.

Offset 1, canonical program `A387470.P8261482053908746042`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387470 (n : ℕ) : ℤ :=
  A387470.P8261482053908746042.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066959, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387470.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387644.P12775165900026762

`A002264(A092200(A216256(n+1)))+n`
-/

namespace A387644.P12775165900026762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A092200 (A216256 (n + 1)).toNat).toNat + (n : ℤ)

end

end A387644.P12775165900026762

noncomputable section

/-- A387644: Complement of A045944.

Offset 1, canonical program `A387644.P12775165900026762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387644 (n : ℕ) : ℤ :=
  A387644.P12775165900026762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387844.P39258131773140473

`A139398(2*n)`
-/

namespace A387844.P39258131773140473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (2 * n)

end

end A387844.P39258131773140473

noncomputable section

/-- A387844: a(n) = Sum_{k=0..n} binomial(2*n,5*k).

Offset 0, canonical program `A387844.P39258131773140473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A387844 (n : ℕ) : ℤ :=
  A387844.P39258131773140473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A387844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387847.P7653341057243768813

`A139398(3*n)`
-/

namespace A387847.P7653341057243768813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (3 * n)

end

end A387847.P7653341057243768813

noncomputable section

/-- A387847: a(n) = Sum_{k=0..n} binomial(3*n,5*k).

Offset 0, canonical program `A387847.P7653341057243768813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A387847 (n : ℕ) : ℤ :=
  A387847.P7653341057243768813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A387847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387871.P16244056214977471768

`A139398(Δ[n²])`
-/

namespace A387871.P16244056214977471768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A387871.P16244056214977471768

noncomputable section

/-- A387871: a(n) = Sum_{k=0..n} binomial(2*n+1,5*k).

Offset 0, canonical program `A387871.P16244056214977471768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387871 (n : ℕ) : ℤ :=
  A387871.P16244056214977471768.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387872.P4622119094112307466

`A139398(3*n+1)`
-/

namespace A387872.P4622119094112307466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (3 * n + 1)

end

end A387872.P4622119094112307466

noncomputable section

/-- A387872: a(n) = Sum_{k=0..n} binomial(3*n+1,5*k).

Offset 0, canonical program `A387872.P4622119094112307466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A387872 (n : ℕ) : ℤ :=
  A387872.P4622119094112307466.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A387872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387883.P10055298116302213478

`A374584(A004274(n+1))`
-/

namespace A387883.P10055298116302213478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374584 (A004274 (n + 1)).toNat

end

end A387883.P10055298116302213478

noncomputable section

/-- A387883: a(n) is the number of regions into which the plane is divided by n^2 circles of radius 1, the centers of which are located at the nodes of a square lattice n X n.

Offset 0, canonical program `A387883.P10055298116302213478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A387883 (n : ℕ) : ℤ :=
  A387883.P10055298116302213478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A387883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388073.P2282890064848621379

`A102283(n)*A011583(n)`
-/

namespace A388073.P2282890064848621379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A011583 n

end

end A388073.P2282890064848621379

noncomputable section

/-- A388073: a(n) = Kronecker symbol (-39/n) = (n/39).

Offset 0, canonical program `A388073.P2282890064848621379`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011583, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388073 (n : ℕ) : ℤ :=
  A388073.P2282890064848621379.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011583, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388073.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388077.P17750427128830897830

`eq[0, A256436(n)]`
-/

namespace A388077.P17750427128830897830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A388077.P17750427128830897830

noncomputable section

/-- A388077: Complement of A000332.

Offset 1, canonical program `A388077.P17750427128830897830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388077 (n : ℕ) : ℤ :=
  (A388077.P17750427128830897830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389227.P12429541221648021924

`filter[A341646(n+1), A087049(#)]`
-/

namespace A389227.P12429541221648021924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A389227.P12429541221648021924

noncomputable section

/-- A389227: Numbers in A126706 that are less than the square of their squarefree kernel.

Offset 1, canonical program `A389227.P12429541221648021924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3711 terms. -/
def A389227 (n : ℕ) : ℤ :=
  A389227.P12429541221648021924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3711 terms. -/
def A389227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389460.P4100129062004937204

`A000203(n+1)-A075423(n+1)`
-/

namespace A389460.P4100129062004937204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A075423 (n + 1)

end

end A389460.P4100129062004937204

noncomputable section

/-- A389460: a(n) = sigma(n) - A075423(n).

Offset 1, canonical program `A389460.P4100129062004937204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389460 (n : ℕ) : ℤ :=
  A389460.P4100129062004937204.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389471.P8174744093872280267

`∑[A257633(n)]`
-/

namespace A389471.P8174744093872280267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389471.P8174744093872280267

noncomputable section

/-- A389471: a(n) = Sum_{k=0..n} binomial(4*k+2,k).

Offset 0, canonical program `A389471.P8174744093872280267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A389471 (n : ℕ) : ℤ :=
  A389471.P8174744093872280267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A389471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389594.P16283464142215270582

`A057716(a(n-1))` with `a(0)=1`
-/

namespace A389594.P16283464142215270582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057716 (a (n - 1)).toNat

end

end A389594.P16283464142215270582

noncomputable section

/-- A389594: a(1) = 1; a(n+1) = a(n)-th positive integer that is not a power of 2.

Offset 1, canonical program `A389594.P16283464142215270582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389594 (n : ℕ) : ℤ :=
  A389594.P16283464142215270582.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389607.P8527242215205205422

`2*(A110293(n+1)-1)`
-/

namespace A389607.P8527242215205205422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A110293 (n + 1) - 1)

end

end A389607.P8527242215205205422

noncomputable section

/-- A389607: A bisection of A221075.

Offset 1, canonical program `A389607.P8527242215205205422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A389607 (n : ℕ) : ℤ :=
  A389607.P8527242215205205422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A389607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389698.P11786458541430065540

`∏{e}[n+1, A005899(#)]`
-/

namespace A389698.P11786458541430065540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A005899 (Nat.factorization (f1 n) p)

end

end A389698.P11786458541430065540

noncomputable section

/-- A389698: Multiplicative sequence a(n) with a(p^e) = 4 * e^2 + 2 for prime p and e > 0.

Offset 1, canonical program `A389698.P11786458541430065540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389698 (n : ℕ) : ℤ :=
  A389698.P11786458541430065540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389809.P18305442377972474179

`A000040(A003057(n+2))`
-/

namespace A389809.P18305442377972474179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003057 (n + 2)).toNat

end

end A389809.P18305442377972474179

noncomputable section

/-- A389809: Sequence containing k-1 occurrences of prime(k) ordered by k.

Offset 1, canonical program `A389809.P18305442377972474179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389809 (n : ℕ) : ℤ :=
  A389809.P18305442377972474179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389832.P16160485029740737369

`∏{e}[n+1, A098178(#)]`
-/

namespace A389832.P16160485029740737369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A098178 (Nat.factorization (f1 n) p)

end

end A389832.P16160485029740737369

noncomputable section

/-- A389832: Multiplicative sequence a(n) with a(p^e) = abs(2 - (e mod 4)) for prime p and e > 0.

Offset 1, canonical program `A389832.P16160485029740737369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389832 (n : ℕ) : ℤ :=
  A389832.P16160485029740737369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389886.P7524365829226021367

`A007283(n)-A020701(n)`
-/

namespace A389886.P7524365829226021367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - A020701 n

end

end A389886.P7524365829226021367

noncomputable section

/-- A389886: Number of proper 3-partitions of the vertices of the fan graph on n vertices such that every triangle uses exactly 2 colors.

Offset 3, canonical program `A389886.P7524365829226021367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A389886 (n : ℕ) : ℤ :=
  A389886.P7524365829226021367.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A389886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389887.P17353469086998159465

`∑{d}[n+1, A303915(#)]`
-/

namespace A389887.P17353469086998159465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A303915 d

end

end A389887.P17353469086998159465

noncomputable section

/-- A389887: Multiplicative sequence a(n) with a(p^e) = (3 + (-1)^e * (2*e+1)) / 4 for prime p and e >= 0.

Offset 1, canonical program `A389887.P17353469086998159465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389887 (n : ℕ) : ℤ :=
  A389887.P17353469086998159465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389921.P16454545496110612837

`A094373(n)-A350102(n)`
-/

namespace A389921.P16454545496110612837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n - A350102 n

end

end A389921.P16454545496110612837

noncomputable section

/-- A389921: Number of subsets of {1..n} that contain n but do not form a finite arithmetic progression.

Offset 0, canonical program `A389921.P16454545496110612837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A389921 (n : ℕ) : ℤ :=
  A389921.P16454545496110612837.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A389921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389978.P11057801239353336725

`(A367866(n+1)+A389977(n+1)+A367865(n+1)+A389775(n+1))/4`
-/

namespace A389978.P11057801239353336725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367866 (n + 1) + A389977 (n + 1) + A367865 (n + 1) + A389775 (n + 1) : ℚ) / 4

end

end A389978.P11057801239353336725

noncomputable section

/-- A389978: Arithmetic mean of A367866(n), A389977(n), A367865(n), and A389775(n).

Offset 1, canonical program `A389978.P11057801239353336725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367865, A367866, A389775, A389977, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389978 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389978.P11057801239353336725.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367865, A367866, A389775, A389977, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389989.P16156357177488395831

`A100103(n)%A134064(n)`
-/

namespace A389989.P16156357177488395831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100103 n) (A134064 n)

end

end A389989.P16156357177488395831

noncomputable section

/-- A389989: a(n) = 3^n - 2^n - 2*n - 1, n > 1; a(0)=a(1)=0.

Offset 0, canonical program `A389989.P16156357177488395831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A389989 (n : ℕ) : ℤ :=
  A389989.P16156357177488395831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A389989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390326.P10922664327684501157

`A002378(lt[A209229(n), A164089(n+1)])`
-/

namespace A390326.P10922664327684501157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390326.P10922664327684501157

noncomputable section

/-- A390326: Oblong numbers not of the forms 2^k*(2^k - 1) or 2^k*(2^k + 1).

Offset 1, canonical program `A390326.P10922664327684501157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. -/
def A390326 (n : ℕ) : ℤ :=
  A390326.P10922664327684501157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. -/
def A390326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390349.P13503297479383831927

`A192804(n)+A004695(n)`
-/

namespace A390349.P13503297479383831927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n + A004695 n

end

end A390349.P13503297479383831927

noncomputable section

/-- A390349: Upper (1/2)-midsequence of Fibonacci numbers (A000045) and tribonacci numbers (A000213); see Comments.

Offset 0, canonical program `A390349.P13503297479383831927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A390349 (n : ℕ) : ℤ :=
  A390349.P13503297479383831927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A390349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390411.P2957758563450737005

`∑[A052203(n)]`
-/

namespace A390411.P2957758563450737005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390411.P2957758563450737005

noncomputable section

/-- A390411: a(n) = Sum_{k=0..n} binomial(4*k+1,k).

Offset 0, canonical program `A390411.P2957758563450737005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A390411 (n : ℕ) : ℤ :=
  A390411.P2957758563450737005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A390411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390437.P11752335666826313270

`eq[0, A366124(n+1)]+1`
-/

namespace A390437.P11752335666826313270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366124 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390437.P11752335666826313270

noncomputable section

/-- A390437: Numbers whose prime factorization exponents are not divisible by 3.

Offset 1, canonical program `A390437.P11752335666826313270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8955 terms. -/
def A390437 (n : ℕ) : ℤ :=
  (A390437.P11752335666826313270.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8955 terms. -/
def A390437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390442.P3251703464741091877

`A061503(10^n)`
-/

namespace A390442.P3251703464741091877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061503 (10 ^ n)

end

end A390442.P3251703464741091877

noncomputable section

/-- A390442: a(n) = Sum_{k<=10^n} d(k^2), where d(k^2) = number of divisors function A000005 for k^2.

Offset 0, canonical program `A390442.P3251703464741091877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390442 (n : ℕ) : ℤ :=
  A390442.P3251703464741091877.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390483.P1083108438533826406

`A002819(2^n)`
-/

namespace A390483.P1083108438533826406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 (2 ^ n)

end

end A390483.P1083108438533826406

noncomputable section

/-- A390483: Values of L(2^n), where L(n) is the summatory function of the Liouville function A008836(n).

Offset 0, canonical program `A390483.P1083108438533826406`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390483 (n : ℕ) : ℤ :=
  A390483.P1083108438533826406.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390541.P3504011345047521333

`A045721(n)-a(n-1)` with `a(0)=1`
-/

namespace A390541.P3504011345047521333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045721 n - a (n - 1)

end

end A390541.P3504011345047521333

noncomputable section

/-- A390541: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(3*k+1,k).

Offset 0, canonical program `A390541.P3504011345047521333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A390541 (n : ℕ) : ℤ :=
  A390541.P3504011345047521333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A390541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390559.P4001292015129294840

`A131577(n)+A004695(n)`
-/

namespace A390559.P4001292015129294840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A004695 n

end

end A390559.P4001292015129294840

noncomputable section

/-- A390559: Lower (1/2)-midsequence of (2^n) and F(n), where F = A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A390559.P4001292015129294840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A390559 (n : ℕ) : ℤ :=
  A390559.P4001292015129294840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A390559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390560.P2938574800519434169

`A173173(n)+A011782(n)`
-/

namespace A390560.P2938574800519434169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 n + A011782 n

end

end A390560.P2938574800519434169

noncomputable section

/-- A390560: Upper (1/2)-midsequence of (2^n) and F(n), where F = A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A390560.P2938574800519434169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A390560 (n : ℕ) : ℤ :=
  A390560.P2938574800519434169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A390560.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391682.P12413487597952990575

`∑[A079289(n)]`
-/

namespace A391682.P12413487597952990575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391682.P12413487597952990575

noncomputable section

/-- A391682: Number of integer compositions of n that are the first sums of more than one nonnegative sequence.

Offset 1, canonical program `A391682.P12413487597952990575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A391682 (n : ℕ) : ℤ :=
  A391682.P12413487597952990575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A391682.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391826.P2783923816481553111

`1+A180762(n+1)+A230813(n+1)/2`
-/

namespace A391826.P2783923816481553111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A180762 (n + 1) : ℚ) + (A230813 (n + 1) : ℚ) / 2

end

end A391826.P2783923816481553111

noncomputable section

/-- A391826: Number of partitions of the vertices of the n-ladder graph into dominating sets.

Offset 1, canonical program `A391826.P2783923816481553111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180762, A230813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391826 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391826.P2783923816481553111.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180762, A230813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391826.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A391992.P8143672549398333328

`∑{digits}[A000984(n), A055642(#)]`
-/

namespace A391992.P8143672549398333328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A391992.P8143672549398333328

noncomputable section

/-- A391992: Number of digits in the decimal expansion of binomial(2*n,n).

Offset 0, canonical program `A391992.P8143672549398333328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A391992 (n : ℕ) : ℤ :=
  A391992.P8143672549398333328.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A391992.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A393907.P7757244301669931271

`floor((A092055(n)+1)/2)`
-/

namespace A393907.P7757244301669931271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092055 n + 1 : ℚ) / 2⌋

end

end A393907.P7757244301669931271

noncomputable section

/-- A393907: Number of planar embedding isomorphism classes of the n-Hanoi graph.

Offset 1, canonical program `A393907.P7757244301669931271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A393907 (n : ℕ) : ℤ :=
  A393907.P7757244301669931271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A393907.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395700.P10863328374740441814

`eq[n, A181859(n)]`
-/

namespace A395700.P10863328374740441814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395700.P10863328374740441814

noncomputable section

/-- A395700: k is term if and only if k = gcd(k^2, k!) / gcd(k^2, k!/floor(k/2)!^2).

Offset 1, canonical program `A395700.P10863328374740441814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A395700 (n : ℕ) : ℤ :=
  (A395700.P10863328374740441814.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. -/
def A395700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395767.P6540470511524819013

`A394572(n)+2^n`
-/

namespace A395767.P6540470511524819013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394572 n + (2 ^ n : ℤ)

end

end A395767.P6540470511524819013

noncomputable section

/-- A395767: Minimal value of p(1) + Sum_{i=2...n} p(i-1)*p(i), as p ranges over all permutations of powers of 2 {1,2,4,...,2^(n-1)}.

Offset 1, canonical program `A395767.P6540470511524819013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A395767 (n : ℕ) : ℤ :=
  A395767.P6540470511524819013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A395767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395770.P6054457820381532371

`A394572(n)+A131577(n)`
-/

namespace A395770.P6054457820381532371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394572 n + A131577 n

end

end A395770.P6054457820381532371

noncomputable section

/-- A395770: Minimal value of Sum_{i=1..n-1} p(i)*p(i+1), as p ranges over all permutations of powers of 2 {1,2,4,...,2^(n-1)}.

Offset 1, canonical program `A395770.P6054457820381532371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A395770 (n : ℕ) : ℤ :=
  A395770.P6054457820381532371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A395770.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A397085.P2550365972256081373

`A062157(A053186(n))`
-/

namespace A397085.P2550365972256081373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A053186 n).toNat

end

end A397085.P2550365972256081373

noncomputable section

/-- A397085: a(n) = (-1)^(n-floor(sqrt(n))^2-1) if n is not a perfect square and 0 otherwise.

Offset 0, canonical program `A397085.P2550365972256081373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397085 (n : ℕ) : ℤ :=
  A397085.P2550365972256081373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397085.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A380454.P17620072490413482272

`1-(A359471(n+1)+A359472(n+1))`
-/

namespace A380454.P17620072490413482272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A359471 (n + 1) + A359472 (n + 1))

end

end A380454.P17620072490413482272

noncomputable section

/-- A380454: a(n) = 1 if the product of exponents in its prime factorization is greater than 3, otherwise 0.

Offset 1, canonical program `A380454.P17620072490413482272`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359471, A359472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380454 (n : ℕ) : ℤ :=
  A380454.P17620072490413482272.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359471, A359472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381488.P698145488236481017

`filter[A000326(n+1), A294934(#)]`
-/

namespace A381488.P698145488236481017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381488.P698145488236481017

noncomputable section

/-- A381488: Pentagonal numbers that are deficient.

Offset 1, canonical program `A381488.P698145488236481017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A381488 (n : ℕ) : ℤ :=
  A381488.P698145488236481017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A381488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381647.P11576463338051621201

`filter[A005448(n+1), A294934(#)]`
-/

namespace A381647.P11576463338051621201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381647.P11576463338051621201

noncomputable section

/-- A381647: Centered triangular numbers that are deficient.

Offset 1, canonical program `A381647.P11576463338051621201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A381647 (n : ℕ) : ℤ :=
  A381647.P11576463338051621201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A381647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382511.P17328053456808510659

`(A069359(n+1)+A322078(n+1))/2`
-/

namespace A382511.P17328053456808510659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069359 (n + 1) + A322078 (n + 1) : ℚ) / 2

end

end A382511.P17328053456808510659

noncomputable section

/-- A382511: Expansion of Sum_{p prime} x^p / (1 - x^p)^3.

Offset 1, canonical program `A382511.P17328053456808510659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069359, A322078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382511.P17328053456808510659.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069359, A322078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383025.P585027559849338286

`filter[A005891(n), A294934(#)]`
-/

namespace A383025.P585027559849338286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A383025.P585027559849338286

noncomputable section

/-- A383025: Centered pentagonal numbers that are deficient.

Offset 1, canonical program `A383025.P585027559849338286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A383025 (n : ℕ) : ℤ :=
  A383025.P585027559849338286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A383025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383037.P13364932948584734470

`A210469(n+1)-A000720(2*(n+1))+1`
-/

namespace A383037.P13364932948584734470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 1) - A000720 (2 * (n + 1)) + 1

end

end A383037.P13364932948584734470

noncomputable section

/-- A383037: a(n) is the excess of composites over primes in the first n odd positive integers.

Offset 1, canonical program `A383037.P13364932948584734470`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A210469, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A383037 (n : ℕ) : ℤ :=
  A383037.P13364932948584734470.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A210469, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A383037.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394454.P627526309176184517

`A008472(A000984(n+1))`
-/

namespace A394454.P627526309176184517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000984 (n + 1)).toNat

end

end A394454.P627526309176184517

noncomputable section

/-- A394454: Sum of distinct prime divisors of C(2*n, n).

Offset 1, canonical program `A394454.P627526309176184517`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394454 (n : ℕ) : ℤ :=
  A394454.P627526309176184517.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394454.provenance : SequenceMachineLib.Provenance := .conditional

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

