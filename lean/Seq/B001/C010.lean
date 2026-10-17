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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A374927.P3559897404562707274

`A135318(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374927.P3559897404562707274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n ^ 2

end

end A374927.P3559897404562707274

noncomputable section

/-- A374927: a(n) = A135318(n)^2.

Offset 0, canonical program `A374927.P3559897404562707274`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A135318(n)²` (program `A374927.P3559897404562707274`, by `A374927.P3559897404562707274.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374927 (n : ℕ) : ℤ :=
  A374927.P3559897404562707274.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A135318(n)²` (program `A374927.P3559897404562707274`, by `A374927.P3559897404562707274.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374927.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A371986.P14453910396972068629

`A000032(n)*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371986.P14453910396972068629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000108 n

end

end A371986.P14453910396972068629

noncomputable section

/-- A371986: Product of Lucas and Catalan numbers: a(n) = A000032(n)*A000108(n).

Offset 0, canonical program `A371986.P14453910396972068629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371986 (n : ℕ) : ℤ :=
  A371986.P14453910396972068629.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372015.P9509441470734535511

`A000045(n+1)*A001629(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372015.P9509441470734535511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001629 (n + 1)

end

end A372015.P9509441470734535511

noncomputable section

/-- A372015: Product of Fibonacci and self-convolution of Fibonacci numbers: a(n) = A000045(n+1)*A001629(n+1).

Offset 0, canonical program `A372015.P9509441470734535511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372015 (n : ℕ) : ℤ :=
  A372015.P9509441470734535511.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372015.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372242.P5502421371705567030

`1+A153382(n)`
-/

namespace A372242.P5502421371705567030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A153382 n

end

end A372242.P5502421371705567030

noncomputable section

/-- A372242: a(n) = 10*Fibonacci(n) + (-1)^n.

Offset 0, canonical program `A372242.P5502421371705567030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372242 (n : ℕ) : ℤ :=
  A372242.P5502421371705567030.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372242.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372252.P9407473101100021253

`A000045(n+1)*A000292(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372252.P9407473101100021253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000292 n

end

end A372252.P9407473101100021253

noncomputable section

/-- A372252: a(n) = A000045(n+1)*A000292(n) (product of a Fibonacci number and a tetrahedral number).

Offset 0, canonical program `A372252.P9407473101100021253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372252 (n : ℕ) : ℤ :=
  A372252.P9407473101100021253.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372252.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372302.P1592687612405792873

`A035338(n)+1`
-/

namespace A372302.P1592687612405792873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035338 n + 1

end

end A372302.P1592687612405792873

noncomputable section

/-- A372302: Numbers k for which the Zeckendorf representation A014417(k) ends with "1001".

Offset 1, canonical program `A372302.P1592687612405792873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372302 (n : ℕ) : ℤ :=
  A372302.P1592687612405792873.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372421.P10170577374281833840

`A000217(a(n-1))+n` with `a(0)=0`
-/

namespace A372421.P10170577374281833840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000217 (a (n - 1)).toNat + (n : ℤ)

end

end A372421.P10170577374281833840

noncomputable section

/-- A372421: Number of steps required to kill the hydra in a version of the hydra game (see comments) where, at each step, the rightmost head is chopped off and new heads grow to the left.

Offset 0, canonical program `A372421.P10170577374281833840`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372421 (n : ℕ) : ℤ :=
  A372421.P10170577374281833840.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373048.P12956872335884234756

`A055226(n+1)-A055226(n)`
-/

namespace A373048.P12956872335884234756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055226 (n + 1) - A055226 n

end

end A373048.P12956872335884234756

noncomputable section

/-- A373048: Number of squares between n! and (n+1)!, exclusive.

Offset 0, canonical program `A373048.P12956872335884234756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373048 (n : ℕ) : ℤ :=
  A373048.P12956872335884234756.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373245.P9496879938608800847

`A114203(n+1)/2`
-/

namespace A373245.P9496879938608800847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114203 (n + 1) : ℚ) / 2

end

end A373245.P9496879938608800847

noncomputable section

/-- A373245: Binomial transform of A135318.

Offset 0, canonical program `A373245.P9496879938608800847`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373245 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373245.P9496879938608800847.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373340.P8185917160170023749

`A000142(n)-A373339(n)`
-/

namespace A373340.P8185917160170023749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A373339 n

end

end A373340.P8185917160170023749

noncomputable section

/-- A373340: Number of permutations of symmetric group S_n with an odd number of cycles of length 2 or more.

Offset 0, canonical program `A373340.P8185917160170023749`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373340 (n : ℕ) : ℤ :=
  A373340.P8185917160170023749.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373445.P16392507257831332484

`(A000073(n+2)+A103143(n+2))/2-A077947(n)`
-/

namespace A373445.P16392507257831332484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000073 (n + 2) + A103143 (n + 2) : ℚ) / 2 - (A077947 n : ℚ)

end

end A373445.P16392507257831332484

noncomputable section

/-- A373445: Triple convolution of the three tribonacci-like sequences A000073(n), A077947(n-2), and A103143(n).

Offset 0, canonical program `A373445.P16392507257831332484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373445 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373445.P16392507257831332484.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373584.P2276909497308722420

`A003215(n)-6*A011848(n+1)`
-/

namespace A373584.P2276909497308722420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - 6 * A011848 (n + 1)

end

end A373584.P2276909497308722420

noncomputable section

/-- A373584: a(n) is equal to the number of shaded cells in a regular hexagon with side n drawn on a hexagonal grid.

Offset 1, canonical program `A373584.P2276909497308722420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373584 (n : ℕ) : ℤ :=
  A373584.P2276909497308722420.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373584.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373614.P13726783927910491980

`A007598(n)*A000108(n)`
-/

namespace A373614.P13726783927910491980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A000108 n

end

end A373614.P13726783927910491980

noncomputable section

/-- A373614: a(n) = Fibonacci(n)^2 * Catalan(n).

Offset 0, canonical program `A373614.P13726783927910491980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373614 (n : ℕ) : ℤ :=
  A373614.P13726783927910491980.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373622.P5649308913863551623

`A000032(n)*A000045(n)*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373622.P5649308913863551623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000045 n * A000108 n

end

end A373622.P5649308913863551623

noncomputable section

/-- A373622: a(n) = A000032(n)*A000045(n)*A000108(n).

Offset 0, canonical program `A373622.P5649308913863551623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373622 (n : ℕ) : ℤ :=
  A373622.P5649308913863551623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373733.P1392411414185310364

`A000217(A000292(n))`
-/

namespace A373733.P1392411414185310364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000292 n).toNat

end

end A373733.P1392411414185310364

noncomputable section

/-- A373733: Triangular numbers with tetrahedral indices: a(n) = (1/72) * (n*(n+1)*(n+2)*(n+3)*(n^2+2)).

Offset 0, canonical program `A373733.P1392411414185310364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373733 (n : ℕ) : ℤ :=
  A373733.P1392411414185310364.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373890.P3933045878343609463

`A005710(8*n)`
-/

namespace A373890.P3933045878343609463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (8 * n)

end

end A373890.P3933045878343609463

noncomputable section

/-- A373890: Number of compositions of 8*n into parts 1 and 8.

Offset 0, canonical program `A373890.P3933045878343609463`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373890 (n : ℕ) : ℤ :=
  A373890.P3933045878343609463.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373907.P15282238610584887245

`A005709(7*n)`
-/

namespace A373907.P15282238610584887245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * n)

end

end A373907.P15282238610584887245

noncomputable section

/-- A373907: Number of compositions of 7*n into parts 1 and 7.

Offset 0, canonical program `A373907.P15282238610584887245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373907 (n : ℕ) : ℤ :=
  A373907.P15282238610584887245.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373908.P9546572299438946991

`A369813(7*n)`
-/

namespace A373908.P9546572299438946991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369813 (7 * n)

end

end A373908.P9546572299438946991

noncomputable section

/-- A373908: Number of compositions of 7*n into parts 2 and 7.

Offset 0, canonical program `A373908.P9546572299438946991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373908 (n : ℕ) : ℤ :=
  A373908.P9546572299438946991.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373909.P2908949416516809937

`A369814(7*n)`
-/

namespace A373909.P2908949416516809937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (7 * n)

end

end A373909.P2908949416516809937

noncomputable section

/-- A373909: Number of compositions of 7*n into parts 3 and 7.

Offset 0, canonical program `A373909.P2908949416516809937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373909 (n : ℕ) : ℤ :=
  A373909.P2908949416516809937.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373910.P2187591033375915871

`A369815(7*n)`
-/

namespace A373910.P2187591033375915871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369815 (7 * n)

end

end A373910.P2187591033375915871

noncomputable section

/-- A373910: Number of compositions of 7*n into parts 4 and 7.

Offset 0, canonical program `A373910.P2187591033375915871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373910 (n : ℕ) : ℤ :=
  A373910.P2187591033375915871.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373911.P3384175063987620122

`A369816(7*n)`
-/

namespace A373911.P3384175063987620122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369816 (7 * n)

end

end A373911.P3384175063987620122

noncomputable section

/-- A373911: Number of compositions of 7*n into parts 5 and 7.

Offset 0, canonical program `A373911.P3384175063987620122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373911 (n : ℕ) : ℤ :=
  A373911.P3384175063987620122.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373911.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373912.P4395864615512526356

`A017847(7*n)`
-/

namespace A373912.P4395864615512526356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (7 * n)

end

end A373912.P4395864615512526356

noncomputable section

/-- A373912: Number of compositions of 7*n into parts 6 and 7.

Offset 0, canonical program `A373912.P4395864615512526356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373912 (n : ℕ) : ℤ :=
  A373912.P4395864615512526356.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373912.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373913.P4676741196729923475

`A017857(8*n)`
-/

namespace A373913.P4676741196729923475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (8 * n)

end

end A373913.P4676741196729923475

noncomputable section

/-- A373913: Number of compositions of 8*n into parts 7 and 8.

Offset 0, canonical program `A373913.P4676741196729923475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373913 (n : ℕ) : ℤ :=
  A373913.P4676741196729923475.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373913.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375090.P11228353597567828703

`(A003010(n)-4)/10`
-/

namespace A375090.P11228353597567828703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003010 n - 4 : ℚ) / 10

end

end A375090.P11228353597567828703

noncomputable section

/-- A375090: Omit the trailing 4 from the terms of the Lucas-Lehmer sequence A003010.

Offset 0, canonical program `A375090.P11228353597567828703`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375090.P11228353597567828703.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375308.P15703181248884195186

`A375279(2*n)`
-/

namespace A375308.P15703181248884195186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375279 (2 * n)

end

end A375308.P15703181248884195186

noncomputable section

/-- A375308: a(n) = Sum_{k=0..floor(2*n/3)} binomial(4*n-4*k,2*k).

Offset 0, canonical program `A375308.P15703181248884195186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375308 (n : ℕ) : ℤ :=
  A375308.P15703181248884195186.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375308.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375489.P9278473890610164610

`A000165(n)/10^A027868(n)`
-/

namespace A375489.P9278473890610164610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (10 : ℚ) ^ (A027868 n : ℤ)

end

end A375489.P9278473890610164610

noncomputable section

/-- A375489: Omit the trailing zeros from double factorial of even numbers (A000165).

Offset 0, canonical program `A375489.P9278473890610164610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375489 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375489.P9278473890610164610.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376322.P15000761500640788639

`a(n-1)*A062709(n)` with `a(0)=1`
-/

namespace A376322.P15000761500640788639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A062709 n

end

end A376322.P15000761500640788639

noncomputable section

/-- A376322: (1/4) times obverse convolution (2)**(2^n + 1); see Comments.

Offset 0, canonical program `A376322.P15000761500640788639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376322 (n : ℕ) : ℤ :=
  A376322.P15000761500640788639.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376323.P14265089320724040884

`2*a(n-1)*A052548(n-1)` with `a(0)=1`
-/

namespace A376323.P14265089320724040884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * A052548 (n - 1)

end

end A376323.P14265089320724040884

noncomputable section

/-- A376323: (1/5) times obverse convolution (3)**(2^n + 1); see Comments.

Offset 0, canonical program `A376323.P14265089320724040884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376323 (n : ℕ) : ℤ :=
  A376323.P14265089320724040884.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376323.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376324.P6294847534775206759

`a(n-1)*A168614(n)` with `a(0)=1`
-/

namespace A376324.P6294847534775206759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A168614 n

end

end A376324.P6294847534775206759

noncomputable section

/-- A376324: (1/6) times obverse convolution (4)**(2^n + 1); see Comments.

Offset 0, canonical program `A376324.P6294847534775206759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376324 (n : ℕ) : ℤ :=
  A376324.P6294847534775206759.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376868.P7740210885381345666

`A000142(n)*A053763(n)`
-/

namespace A376868.P7740210885381345666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A053763 n

end

end A376868.P7740210885381345666

noncomputable section

/-- A376868: a(n) = n! * 4^binomial(n, 2).

Offset 0, canonical program `A376868.P7740210885381345666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376868 (n : ℕ) : ℤ :=
  A376868.P7740210885381345666.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377016.P1722148904578130006

`(A002315(n)+2*A008844(n)-1)/2`
-/

namespace A377016.P1722148904578130006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002315 n + 2 * A008844 n - 1 : ℚ) / 2

end

end A377016.P1722148904578130006

noncomputable section

/-- A377016: Semiperimeter of the unique primitive Pythagorean triple whose short leg is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A377016.P1722148904578130006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377016 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377016.P1722148904578130006.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377017.P14959448990342282630

`A002315(n)*(A008844(n)-1)/2`
-/

namespace A377017.P14959448990342282630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002315 n : ℚ) * ((A008844 n - 1 : ℚ) / 2)

end

end A377017.P14959448990342282630

noncomputable section

/-- A377017: Area of the unique primitive Pythagorean triple whose short leg is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A377017.P14959448990342282630`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377017 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377017.P14959448990342282630.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377368.P9845472719769353126

`A255978(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377368.P9845472719769353126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255978 n + 1

end

end A377368.P9845472719769353126

noncomputable section

/-- A377368: a(n) = A255978(n) + 1.

Offset 0, canonical program `A377368.P9845472719769353126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377368 (n : ℕ) : ℤ :=
  A377368.P9845472719769353126.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377601.P14384301913357752278

`A034841(n)-A000142(n)`
-/

namespace A377601.P14384301913357752278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034841 n - A000142 n

end

end A377601.P14384301913357752278

noncomputable section

/-- A377601: Number of permutations of the multiset {1^n, 2^n,..., n^n} excluding permutations where all objects of all types are contiguous.

Offset 0, canonical program `A377601.P14384301913357752278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377601 (n : ℕ) : ℤ :=
  A377601.P14384301913357752278.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377659.P12368812019478080147

`A001006(n)-A011782(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377659.P12368812019478080147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A011782 n

end

end A377659.P12368812019478080147

noncomputable section

/-- A377659: a(n) = Motzkin(n) - 2^(n - 1 + 0^n) = A001006(n) - A011782(n).

Offset 0, canonical program `A377659.P12368812019478080147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377659 (n : ℕ) : ℤ :=
  A377659.P12368812019478080147.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377725.P10966813579059079895

`2*A002315(n)+1`
-/

namespace A377725.P10966813579059079895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n + 1

end

end A377725.P10966813579059079895

noncomputable section

/-- A377725: Length of the short leg of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A377725.P10966813579059079895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377725 (n : ℕ) : ℤ :=
  A377725.P10966813579059079895.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377726.P10665330491965238398

`2*A002315(n)*(A002315(n)-1)`
-/

namespace A377726.P10665330491965238398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n * (A002315 n - 1)

end

end A377726.P10665330491965238398

noncomputable section

/-- A377726: Length of the long leg of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A377726.P10665330491965238398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377726 (n : ℕ) : ℤ :=
  A377726.P10665330491965238398.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377809.P8601556192277993531

`A002024(n+1)*(A002024(n+1)+3)/2`
-/

namespace A377809.P8601556192277993531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) * ((A002024 (n + 1) + 3 : ℚ) / 2)

end

end A377809.P8601556192277993531

noncomputable section

/-- A377809: k*(k+3)/2 appears k times.

Offset 1, canonical program `A377809.P8601556192277993531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377809 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377809.P8601556192277993531.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377809.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378100.P5253957062667002361

`A000085(n)-A123023(n)`
-/

namespace A378100.P5253957062667002361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A123023 n

end

end A378100.P5253957062667002361

noncomputable section

/-- A378100: Number of involutions in the symmetric group S_n with at least one fixed point.

Offset 0, canonical program `A378100.P5253957062667002361`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378100 (n : ℕ) : ℤ :=
  A378100.P5253957062667002361.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378380.P9757006306424432664

`(A002315(n)+1)*(2*A002315(n)+1)`
-/

namespace A378380.P9757006306424432664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002315 n + 1) * (2 * A002315 n + 1)

end

end A378380.P9757006306424432664

noncomputable section

/-- A378380: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A378380.P9757006306424432664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378380 (n : ℕ) : ℤ :=
  A378380.P9757006306424432664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378386.P7801827745219322292

`A002315(n)*(A002315(n)+1)*(2*A002315(n)+1)`
-/

namespace A378386.P7801827745219322292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * ((A002315 n + 1) * (2 * A002315 n + 1))

end

end A378386.P7801827745219322292

noncomputable section

/-- A378386: Area of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A378386.P7801827745219322292`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378386 (n : ℕ) : ℤ :=
  A378386.P7801827745219322292.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378386.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378965.P16390378883255238781

`A002315(n)*(2*A002315(n)-1)`
-/

namespace A378965.P16390378883255238781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * (2 * A002315 n - 1)

end

end A378965.P16390378883255238781

noncomputable section

/-- A378965: Semiperimeter of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A378965.P16390378883255238781`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378965 (n : ℕ) : ℤ :=
  A378965.P16390378883255238781.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378966.P9728082263736134258

`A002315(n)*(A002315(n)-1)*(2*A002315(n)-1)`
-/

namespace A378966.P9728082263736134258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * ((A002315 n - 1) * (2 * A002315 n - 1))

end

end A378966.P9728082263736134258

noncomputable section

/-- A378966: Area of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A378966.P9728082263736134258`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378966 (n : ℕ) : ℤ :=
  A378966.P9728082263736134258.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379223.P937292123785489780

`A000203(A016754(n))`
-/

namespace A379223.P937292123785489780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A016754 n).toNat

end

end A379223.P937292123785489780

noncomputable section

/-- A379223: Sum of the divisors of the n-th odd square: a(n) = sigma((2*n-1)^2).

Offset 1, canonical program `A379223.P937292123785489780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379223 (n : ℕ) : ℤ :=
  A379223.P937292123785489780.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379223.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A381483.P6677562382322012643

`A000108(n)*(A000108(n)+1)*(2*A000108(n)+1)`
-/

namespace A381483.P6677562382322012643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * ((A000108 n + 1) * (2 * A000108 n + 1))

end

end A381483.P6677562382322012643

noncomputable section

/-- A381483: Area of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A381483.P6677562382322012643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381483 (n : ℕ) : ℤ :=
  A381483.P6677562382322012643.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381483.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A382843.P16467974130948964599

`2*A000045(n)*(A000045(n)-1)`
-/

namespace A382843.P16467974130948964599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n * (A000045 n - 1)

end

end A382843.P16467974130948964599

noncomputable section

/-- A382843: Length of the long leg in the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 = A000045(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382843.P16467974130948964599`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382843 (n : ℕ) : ℤ :=
  A382843.P16467974130948964599.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382843.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A389172.P14805376516312795625

`A290718(n+1)+1`
-/

namespace A389172.P14805376516312795625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290718 (n + 1) + 1

end

end A389172.P14805376516312795625

noncomputable section

/-- A389172: a(n) = 2^(n+1) + 4^(n-1) - 1.

Offset 1, canonical program `A389172.P14805376516312795625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389172 (n : ℕ) : ℤ :=
  A389172.P14805376516312795625.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389172.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A376056.P875746772787377381

`(2*n+1)*A376057(n)+1`
-/

namespace A376056.P875746772787377381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A376057 n + 1

end

end A376056.P875746772787377381

noncomputable section

/-- A376056: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, S(n) = Sum_{k = 1..n} (2*k-1)/a(k) < 1.

Offset 1, canonical program `A376056.P875746772787377381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376056 (n : ℕ) : ℤ :=
  A376056.P875746772787377381.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376056.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A371491.P18626456264356765

`∑{d}[n+1, A013956(#)*A334659((n+1)/#)]`
-/

namespace A371491.P18626456264356765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013956 d * A334659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371491.P18626456264356765

noncomputable section

/-- A371491: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} ( n/gcd(x_1, x_2, x_3, x_4, x_5, n) )^3.

Offset 1, canonical program `A371491.P18626456264356765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371491 (n : ℕ) : ℤ :=
  A371491.P18626456264356765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371629.P6292007437965494300

`∑[A179298(val(n+1, 2)+1)]`
-/

namespace A371629.P6292007437965494300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179298 (SequenceMachineLib.valuation (n + 1) 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371629.P6292007437965494300

noncomputable section

/-- A371629: If 2n = Sum 2^e(k) then a(n) = Sum e(k)^3.

Offset 1, canonical program `A371629.P6292007437965494300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371629 (n : ℕ) : ℤ :=
  A371629.P6292007437965494300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371640.P6272718172563112277

`3^A371638(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371640.P6272718172563112277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A371638 (n + 1) : ℤ)

end

end A371640.P6272718172563112277

noncomputable section

/-- A371640: a(n) = 3^(2*n + valuation(n, 3)) = 3^A371638(n).

Offset 1, canonical program `A371640.P6272718172563112277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371638, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371640 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A371640.P6272718172563112277.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371638, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371820.P8078043311279219929

`A260878(n)+3*a(n-1)-1` with `a(0)=1`
-/

namespace A371820.P8078043311279219929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260878 n + (3 * a (n - 1) - 1)

end

end A371820.P8078043311279219929

noncomputable section

/-- A371820: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * binomial(2*n+2,n-3*k).

Offset 0, canonical program `A371820.P8078043311279219929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A371820 (n : ℕ) : ℤ :=
  A371820.P8078043311279219929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A371820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371888.P8395399809220968351

`∑[A100223(n)]`
-/

namespace A371888.P8395399809220968351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371888.P8395399809220968351

noncomputable section

/-- A371888: G.f. A(x) satisfies A(x) = 1 - x/A(x) * (1 - A(x) - A(x)^2).

Offset 0, canonical program `A371888.P8395399809220968351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A371888 (n : ℕ) : ℤ :=
  A371888.P8395399809220968351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A371888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372076.P11698522728107779967

`Δ[Δ[A097122(n)/3]]`
-/

namespace A372076.P11698522728107779967
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097122 n : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A372076.P11698522728107779967

noncomputable section

/-- A372076: The sequence T_{3,1}(n,3).

Offset 0, canonical program `A372076.P11698522728107779967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A372076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372076.P11698522728107779967.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A372076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372148.P507033719497536603

`A091344(n)+A383910(n)+A091344(n)`
-/

namespace A372148.P507033719497536603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091344 n + (A383910 n + A091344 n)

end

end A372148.P507033719497536603

noncomputable section

/-- A372148: a(n) = A371764(n, 2).

Offset 1, canonical program `A372148.P507033719497536603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A372148 (n : ℕ) : ℤ :=
  A372148.P507033719497536603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A372148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372216.P238168631124425667

`A000108(n+1)*A000129(n+1)`
-/

namespace A372216.P238168631124425667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A000129 (n + 1)

end

end A372216.P238168631124425667

noncomputable section

/-- A372216: Product of n-th Pell number and n-th Catalan number: a(n) = A000129(n)*A000108(n).

Offset 1, canonical program `A372216.P238168631124425667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A372216 (n : ℕ) : ℤ :=
  A372216.P238168631124425667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A372216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372225.P14310858455345929520

`A000032(n+1)*A001654(n+1)`
-/

namespace A372225.P14310858455345929520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A001654 (n + 1)

end

end A372225.P14310858455345929520

noncomputable section

/-- A372225: a(n) = Fibonacci(n+1)*Fibonacci(2n).

Offset 1, canonical program `A372225.P14310858455345929520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A372225 (n : ℕ) : ℤ :=
  A372225.P14310858455345929520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A372225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372231.P17378448464905865327

`∑[n+1]-A005206(n)`
-/

namespace A372231.P17378448464905865327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A005206 n

end

end A372231.P17378448464905865327

noncomputable section

/-- A372231: Fixed points of A372341.

Offset 1, canonical program `A372231.P17378448464905865327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372231 (n : ℕ) : ℤ :=
  A372231.P17378448464905865327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372330.P18180619389445412267

`∏{e}[n+1, A062383(#)]`
-/

namespace A372330.P18180619389445412267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A062383 (Nat.factorization (f1 n) p)

end

end A372330.P18180619389445412267

noncomputable section

/-- A372330: The number of divisors of the smallest multiple of n whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372330.P18180619389445412267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372330 (n : ℕ) : ℤ :=
  A372330.P18180619389445412267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372380.P16009025847209616017

`∏{e}[n+1, A070939(#+1)]`
-/

namespace A372380.P16009025847209616017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A070939 (Nat.factorization (f1 n) p + 1)

end

end A372380.P16009025847209616017

noncomputable section

/-- A372380: The number of divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A372380.P16009025847209616017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372380 (n : ℕ) : ℤ :=
  A372380.P16009025847209616017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372381.P12777939245543083101

`∏{e}[n+1, A053644(#+1)]`
-/

namespace A372381.P12777939245543083101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A053644 (Nat.factorization (f1 n) p + 1)

end

end A372381.P12777939245543083101

noncomputable section

/-- A372381: The number of divisors of the largest divisor of n whose number of divisors is a power of 2.

Offset 1, canonical program `A372381.P12777939245543083101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372381 (n : ℕ) : ℤ :=
  A372381.P12777939245543083101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372397.P7539782668515379309

`∩[A005375(2*n+1), A005375(2*n)]`
-/

namespace A372397.P7539782668515379309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005375 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005375 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372397.P7539782668515379309

noncomputable section

/-- A372397: Numbers occurring exactly twice in Hofstadter G/H-like sequence H_4 (A005375).

Offset 1, canonical program `A372397.P7539782668515379309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. -/
def A372397 (n : ℕ) : ℤ :=
  (A372397.P7539782668515379309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. -/
def A372397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372583.P1790897862877408443

`A132122(n)+A108650(n)`
-/

namespace A372583.P1790897862877408443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132122 n + A108650 n

end

end A372583.P1790897862877408443

noncomputable section

/-- A372583: a(n) = (3*n^5 + 5*n^3)/8.

Offset 1, canonical program `A372583.P1790897862877408443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372583 (n : ℕ) : ℤ :=
  A372583.P1790897862877408443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372602.P14612393718629536272

`A052928(A051903(n+1))`
-/

namespace A372602.P14612393718629536272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A051903 (n + 1)).toNat

end

end A372602.P14612393718629536272

noncomputable section

/-- A372602: The maximal exponent in the prime factorization of the largest square dividing n.

Offset 1, canonical program `A372602.P14612393718629536272`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372602 (n : ℕ) : ℤ :=
  A372602.P14612393718629536272.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372603.P15885825996250797991

`A051903(A057521(n+1))`
-/

namespace A372603.P15885825996250797991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A057521 (n + 1)).toNat

end

end A372603.P15885825996250797991

noncomputable section

/-- A372603: The maximal exponent in the prime factorization of the powerful part of n.

Offset 1, canonical program `A372603.P15885825996250797991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372603 (n : ℕ) : ℤ :=
  A372603.P15885825996250797991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372604.P12316326984431536577

`A092323(A051903(n+1)+1)`
-/

namespace A372604.P12316326984431536577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092323 (A051903 (n + 1) + 1).toNat

end

end A372604.P12316326984431536577

noncomputable section

/-- A372604: The maximal exponent in the prime factorization of the largest divisor of n whose number of divisors is a power of 2.

Offset 1, canonical program `A372604.P12316326984431536577`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A092323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372604 (n : ℕ) : ℤ :=
  A372604.P12316326984431536577.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A092323, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A372604.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372620.P7316708398144382108

`∑{p}[n+1, A128913(#)]`
-/

namespace A372620.P7316708398144382108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A128913 p

end

end A372620.P7316708398144382108

noncomputable section

/-- A372620: Expansion of Sum_{k>=1} k * prime(k) * x^prime(k) / (1 - x^prime(k)).

Offset 1, canonical program `A372620.P7316708398144382108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372620 (n : ℕ) : ℤ :=
  A372620.P7316708398144382108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372712.P3148887297849627967

`(Δ[A193744(n)]+n+1)²`
-/

namespace A372712.P3148887297849627967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n + 1 : ℤ)) ^ 2

end

end A372712.P3148887297849627967

noncomputable section

/-- A372712: Numbers of minimal total dominating sets in the n-trapezohedral graph.

Offset 1, canonical program `A372712.P3148887297849627967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A372712 (n : ℕ) : ℤ :=
  A372712.P3148887297849627967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A372712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372792.P6482983763779509482

`A372786(2*(n+1))`
-/

namespace A372792.P6482983763779509482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372786 (2 * (n + 1))

end

end A372792.P6482983763779509482

noncomputable section

/-- A372792: Number of divisors of 12n; a(n) = tau(12*n) = A000005(12*n).

Offset 1, canonical program `A372792.P6482983763779509482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372792 (n : ℕ) : ℤ :=
  A372792.P6482983763779509482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372852.P15104788530967950264

`A372872(n+1)+A082133(n)`
-/

namespace A372852.P15104788530967950264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372872 (n + 1) + A082133 n

end

end A372852.P15104788530967950264

noncomputable section

/-- A372852: a(n) is the total number of runs of ascents over all flattened Catalan words of length n.

Offset 1, canonical program `A372852.P15104788530967950264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A372852 (n : ℕ) : ℤ :=
  A372852.P15104788530967950264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A372852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372866.P5052813688178563770

`∑[∑{d}[n+1, A055155(#)*A271102((n+1)/#)]]`
-/

namespace A372866.P5052813688178563770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A055155 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372866.P5052813688178563770

noncomputable section

/-- A372866: a(n) is the sum, over all positive integers x, y such that x*y <= n, of phi(gcd(x,y)).

Offset 1, canonical program `A372866.P5052813688178563770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372866 (n : ℕ) : ℤ :=
  A372866.P5052813688178563770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372874.P1949124011323353207

`ceil(A082133(n)+(3^n+1)*(n+2)/4)`
-/

namespace A372874.P1949124011323353207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082133 n : ℚ) + (3 ^ n + 1 : ℚ) * ((n + 2 : ℚ) / 4)⌉

end

end A372874.P1949124011323353207

noncomputable section

/-- A372874: a(n) is the total number of runs of descents over all flattened Catalan words of length n.

Offset 1, canonical program `A372874.P1949124011323353207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A372874 (n : ℕ) : ℤ :=
  A372874.P1949124011323353207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A372874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372878.P12595233021687929036

`and(∑[A261064(n+1)], -1)`
-/

namespace A372878.P12595233021687929036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A372878.P12595233021687929036

noncomputable section

/-- A372878: a(n) is the sum of all symmetric valleys in the set of flattened Catalan words of length n.

Offset 4, canonical program `A372878.P12595233021687929036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A372878 (n : ℕ) : ℤ :=
  A372878.P12595233021687929036.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A372878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372884.P11822860001837489135

`∑[∑[∑[A038765(n)]]]`
-/

namespace A372884.P11822860001837489135
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372884.P11822860001837489135

noncomputable section

/-- A372884: a(n) is the sum of all symmetric peaks in the set of flattened Catalan words of length n.

Offset 3, canonical program `A372884.P11822860001837489135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A372884 (n : ℕ) : ℤ :=
  A372884.P11822860001837489135.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A372884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372924.P2536163758219034350

`(A004164(n)-n)/3`
-/

namespace A372924.P2536163758219034350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004164 n - (n : ℤ) : ℚ) / 3

end

end A372924.P2536163758219034350

noncomputable section

/-- A372924: a(n) = (sum_digits(n^3)-n)/3.

Offset 0, canonical program `A372924.P2536163758219034350`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372924 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372924.P2536163758219034350.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004164, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372924.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372963.P12207039363107687182

`∑{d}[n+1, A013954(#)*A334657((n+1)/#)]`
-/

namespace A372963.P12207039363107687182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013954 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372963.P12207039363107687182

noncomputable section

/-- A372963: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} ( n/gcd(x_1, x_2, x_3, x_4, n) )^2.

Offset 1, canonical program `A372963.P12207039363107687182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372963 (n : ℕ) : ℤ :=
  A372963.P12207039363107687182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372964.P15124062222904903698

`∑{d}[n+1, A013955(#)*A334659((n+1)/#)]`
-/

namespace A372964.P15124062222904903698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013955 d * A334659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372964.P15124062222904903698

noncomputable section

/-- A372964: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} ( n/gcd(x_1, x_2, x_3, x_4, n) )^3.

Offset 1, canonical program `A372964.P15124062222904903698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372964 (n : ℕ) : ℤ :=
  A372964.P15124062222904903698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373007.P1458280276416540724

`∑{d}[n+1, A013955(#)*A334657((n+1)/#)]`
-/

namespace A373007.P1458280276416540724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013955 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373007.P1458280276416540724

noncomputable section

/-- A373007: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} ( n/gcd(x_1, x_2, x_3, x_4, x_5, n) )^2.

Offset 1, canonical program `A373007.P1458280276416540724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373007 (n : ℕ) : ℤ :=
  A373007.P1458280276416540724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373112.P4173467111376349020

`∑[A022934(n)]+1`
-/

namespace A373112.P4173467111376349020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A373112.P4173467111376349020

noncomputable section

/-- A373112: Number of binary digits in the integer part of e^n.

Offset 1, canonical program `A373112.P4173467111376349020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6503 terms. -/
def A373112 (n : ℕ) : ℤ :=
  A373112.P4173467111376349020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6503 terms. -/
def A373112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373185.P3689991770781756836

`∑{d}[n+1, A084432(#)*A154269((n+1)/#)]`
-/

namespace A373185.P3689991770781756836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084432 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373185.P3689991770781756836

noncomputable section

/-- A373185: G.f. A(x) satisfies A(x) = 1/(1 - x)^2 - 1 + A(x^4).

Offset 1, canonical program `A373185.P3689991770781756836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373185 (n : ℕ) : ℤ :=
  A373185.P3689991770781756836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373216.P7487443510787612831

`A122841(n+1)+1`
-/

namespace A373216.P7487443510787612831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (n + 1) + 1

end

end A373216.P7487443510787612831

noncomputable section

/-- A373216: Expansion of Sum_{k>=0} x^(6^k) / (1 - x^(6^k)).

Offset 1, canonical program `A373216.P7487443510787612831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373216 (n : ℕ) : ℤ :=
  A373216.P7487443510787612831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373216.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373217.P7760522525502481097

`A214411(n+1)+1`
-/

namespace A373217.P7760522525502481097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (n + 1) + 1

end

end A373217.P7760522525502481097

noncomputable section

/-- A373217: Expansion of Sum_{k>=0} x^(7^k) / (1 - x^(7^k)).

Offset 1, canonical program `A373217.P7760522525502481097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373217 (n : ℕ) : ℤ :=
  A373217.P7760522525502481097.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373279.P14889796649480526603

`∑{d}[n+1, A034730(#)*A156277((n+1)/#)]`
-/

namespace A373279.P14889796649480526603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034730 d * A156277 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373279.P14889796649480526603

noncomputable section

/-- A373279: Expansion of Sum_{k>=0} x^(3^k) / (1 - 3*x^(3^k)).

Offset 1, canonical program `A373279.P14889796649480526603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A373279 (n : ℕ) : ℤ :=
  A373279.P14889796649480526603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A373279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373302.P12867367967885197696

`A373639(3*n+2)`
-/

namespace A373302.P12867367967885197696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373639 (3 * n + 2)

end

end A373302.P12867367967885197696

noncomputable section

/-- A373302: Number of compositions of 6*n-2 into parts 1 and 6.

Offset 1, canonical program `A373302.P12867367967885197696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A373302 (n : ℕ) : ℤ :=
  A373302.P12867367967885197696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A373302.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373327.P9323461838594572864

`record[A064784(n+1)]`
-/

namespace A373327.P9323461838594572864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373327.P9323461838594572864

noncomputable section

/-- A373327: Records of A064784.

Offset 1, canonical program `A373327.P9323461838594572864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A373327 (n : ℕ) : ℤ :=
  A373327.P9323461838594572864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A373327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373330.P5266584107700828928

`A037270(n)-A373329(n)²`
-/

namespace A373330.P5266584107700828928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A373329 n ^ 2

end

end A373330.P5266584107700828928

noncomputable section

/-- A373330: a(n) is the difference between T = A000217(n^2) and the greatest square not exceeding T.

Offset 0, canonical program `A373330.P5266584107700828928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373330 (n : ℕ) : ℤ :=
  A373330.P5266584107700828928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373336.P14531621389767268669

`∑{d}[n+1, A014016(#-1)]`
-/

namespace A373336.P14531621389767268669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014016 (d - 1)

end

end A373336.P14531621389767268669

noncomputable section

/-- A373336: Expansion of Sum_{k>=1} x^k / (1 + x^k + x^(2*k) + x^(3*k) + x^(4*k) + x^(5*k) + x^(6*k)).

Offset 1, canonical program `A373336.P14531621389767268669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373336 (n : ℕ) : ℤ :=
  A373336.P14531621389767268669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373368.P4100013784742238472

`gcd(xor(n, -1), A341865(n+1))`
-/

namespace A373368.P4100013784742238472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A341865 (n + 1))

end

end A373368.P4100013784742238472

noncomputable section

/-- A373368: a(n) = gcd(n, A059975(n)), where A059975 is fully additive with a(p) = p-1.

Offset 1, canonical program `A373368.P4100013784742238472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373368 (n : ℕ) : ℤ :=
  (A373368.P4100013784742238472.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373371.P8971541744785258536

`C(A001414(3*(n+1))+2, 2)%3`
-/

namespace A373371.P8971541744785258536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001414 (3 * (n + 1)) + 2).toNat 2 % 3

end

end A373371.P8971541744785258536

noncomputable section

/-- A373371: a(n) = 1 if the sum of prime factors with repetition is a multiple of 3, otherwise 0.

Offset 1, canonical program `A373371.P8971541744785258536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373371 (n : ℕ) : ℤ :=
  (A373371.P8971541744785258536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373440.P6703772280667380685

`A017668(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A373440.P6703772280667380685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017668 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A373440.P6703772280667380685

noncomputable section

/-- A373440: Denominator of sum of reciprocals of square divisors of n.

Offset 1, canonical program `A373440.P6703772280667380685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373440 (n : ℕ) : ℤ :=
  A373440.P6703772280667380685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373546.P4206591312085507531

`xor(1, A236348(n))+1`
-/

namespace A373546.P4206591312085507531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A236348 n) + 1

end

end A373546.P4206591312085507531

noncomputable section

/-- A373546: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest unused positive number that shares a factor with a(n-1) if a(n-1) is even otherwise is coprime to a(n-1) if a(n-1) is odd.

Offset 1, canonical program `A373546.P4206591312085507531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373546 (n : ℕ) : ℤ :=
  A373546.P4206591312085507531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373709.P5618252851889292635

`A061168(n+1)-A011371(n+1)`
-/

namespace A373709.P5618252851889292635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (n + 1) - A011371 (n + 1)

end

end A373709.P5618252851889292635

noncomputable section

/-- A373709: Partial sums of A119387.

Offset 0, canonical program `A373709.P5618252851889292635`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373709 (n : ℕ) : ℤ :=
  A373709.P5618252851889292635.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061168, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373709.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373928.P2243349821995510404

`A005709(A017041(n))`
-/

namespace A373928.P2243349821995510404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (A017041 n).toNat

end

end A373928.P2243349821995510404

noncomputable section

/-- A373928: Number of compositions of 7*n-2 into parts 1 and 7.

Offset 1, canonical program `A373928.P2243349821995510404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A373928 (n : ℕ) : ℤ :=
  A373928.P2243349821995510404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A373928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373929.P3872925337621135969

`A005709(A017029(n))`
-/

namespace A373929.P3872925337621135969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (A017029 n).toNat

end

end A373929.P3872925337621135969

noncomputable section

/-- A373929: Number of compositions of 7*n-3 into parts 1 and 7.

Offset 1, canonical program `A373929.P3872925337621135969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A373929 (n : ℕ) : ℤ :=
  A373929.P3872925337621135969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A373929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373930.P9977518236919125744

`A005709(A017017(n))`
-/

namespace A373930.P9977518236919125744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (A017017 n).toNat

end

end A373930.P9977518236919125744

noncomputable section

/-- A373930: Number of compositions of 7*n-4 into parts 1 and 7.

Offset 1, canonical program `A373930.P9977518236919125744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A373930 (n : ℕ) : ℤ :=
  A373930.P9977518236919125744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A373930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373937.P9735313546590149831

`A017847(A017005(n))`
-/

namespace A373937.P9735313546590149831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (A017005 n).toNat

end

end A373937.P9735313546590149831

noncomputable section

/-- A373937: Number of compositions of 7*n-5 into parts 6 and 7.

Offset 1, canonical program `A373937.P9735313546590149831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A373937 (n : ℕ) : ℤ :=
  A373937.P9735313546590149831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A373937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373958.P12973132884033630806

`A373638(Δ[n²])`
-/

namespace A373958.P12973132884033630806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373638 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A373958.P12973132884033630806

noncomputable section

/-- A373958: Number of compositions of 6*n-3 into parts 1 and 6.

Offset 1, canonical program `A373958.P12973132884033630806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A373958 (n : ℕ) : ℤ :=
  A373958.P12973132884033630806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A373958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373959.P11445214460317666905

`A373653(Δ[n²])`
-/

namespace A373959.P11445214460317666905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373653 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A373959.P11445214460317666905

noncomputable section

/-- A373959: Number of compositions of 6*n-4 into parts 1 and 6.

Offset 1, canonical program `A373959.P11445214460317666905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A373959 (n : ℕ) : ℤ :=
  A373959.P11445214460317666905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A373959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373964.P10142936655586529531

`A391265(3*n+1)`
-/

namespace A373964.P10142936655586529531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391265 (3 * n + 1)

end

end A373964.P10142936655586529531

noncomputable section

/-- A373964: Number of compositions of 6*n-4 into parts 5 and 6.

Offset 1, canonical program `A373964.P10142936655586529531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A373964 (n : ℕ) : ℤ :=
  A373964.P10142936655586529531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A373964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373977.P2023498345375672924

`A073898(n+1)%A087204(n)`
-/

namespace A373977.P2023498345375672924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073898 (n + 1)) (A087204 n)

end

end A373977.P2023498345375672924

noncomputable section

/-- A373977: a(n) = 1 if n is a nonprime of the form 3*k + 1, otherwise 0.

Offset 1, canonical program `A373977.P2023498345375672924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373977 (n : ℕ) : ℤ :=
  A373977.P2023498345375672924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373978.P17916728233483269752

`A121262(A113637(n+1))`
-/

namespace A373978.P17916728233483269752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A113637 (n + 1)).toNat

end

end A373978.P17916728233483269752

noncomputable section

/-- A373978: a(n) = 1 if n is a nonprime of the form 4*k + 1, otherwise 0.

Offset 1, canonical program `A373978.P17916728233483269752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373978 (n : ℕ) : ℤ :=
  A373978.P17916728233483269752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373979.P3246657904887622498

`A006002(n)%A118136(n)`
-/

namespace A373979.P3246657904887622498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006002 n) (A118136 n)

end

end A373979.P3246657904887622498

noncomputable section

/-- A373979: a(n) = 1 if n is a nonprime of the form 4*k + 3, otherwise 0.

Offset 1, canonical program `A373979.P3246657904887622498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373979 (n : ℕ) : ℤ :=
  A373979.P3246657904887622498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374043.P16126426236597978968

`and(A008747(n), A373157(n+1))`
-/

namespace A374043.P16126426236597978968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008747 n) (A373157 (n + 1))

end

end A374043.P16126426236597978968

noncomputable section

/-- A374043: a(n) = 1 if n is a non-multiple of 3 whose 2-adic valuation is a multiple of 3, otherwise 0.

Offset 1, canonical program `A374043.P16126426236597978968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374043 (n : ℕ) : ℤ :=
  A374043.P16126426236597978968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374054.P11266633794218928703

`A062153(n+1)+A061282(A260316(n+1))`
-/

namespace A374054.P11266633794218928703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1) + A061282 (A260316 (n + 1)).toNat

end

end A374054.P11266633794218928703

noncomputable section

/-- A374054: a(n) = max_{i=0..n} S_3(i) + S_3(n-i) where S_3(x) = A053735(x) is the base-3 digit sum of x.

Offset 0, canonical program `A374054.P11266633794218928703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A374054 (n : ℕ) : ℤ :=
  A374054.P11266633794218928703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A374054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374102.P10809450866151071324

`p?[A010061(n+1)]`
-/

namespace A374102.P10809450866151071324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A374102.P10809450866151071324

noncomputable section

/-- A374102: Prime binary self (or Colombian) numbers: primes not expressible as the sum of an integer and its binary weight.

Offset 1, canonical program `A374102.P10809450866151071324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 976 terms. -/
def A374102 (n : ℕ) : ℤ :=
  A374102.P10809450866151071324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 976 terms. -/
def A374102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374216.P15062092016913693210

`val(A001414(n+2), 2)`
-/

namespace A374216.P15062092016913693210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001414 (n + 2)).toNat 2

end

end A374216.P15062092016913693210

noncomputable section

/-- A374216: The 2-adic valuation of sopfr(n), where sopfr is the sum of prime factors with repetition, A001414.

Offset 2, canonical program `A374216.P15062092016913693210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374216 (n : ℕ) : ℤ :=
  (A374216.P15062092016913693210.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374217.P15647163906979812584

`val(A001414(n+2), 3)`
-/

namespace A374217.P15647163906979812584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001414 (n + 2)).toNat 3

end

end A374217.P15647163906979812584

noncomputable section

/-- A374217: The 3-adic valuation of sopfr(n), where sopfr is the sum of prime factors with repetition, A001414.

Offset 2, canonical program `A374217.P15647163906979812584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374217 (n : ℕ) : ℤ :=
  (A374217.P15647163906979812584.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374222.P6993703694642363716

`A079978(A374126(n+1))`
-/

namespace A374222.P6993703694642363716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A374126 (n + 1)).toNat

end

end A374222.P6993703694642363716

noncomputable section

/-- A374222: a(n) = 1 if sigma(n) and sopfr(n) are both multiples of 3, otherwise 0, where sigma is the sum of divisors, and sopfr is the sum of prime factors with repetition.

Offset 1, canonical program `A374222.P6993703694642363716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374222 (n : ℕ) : ℤ :=
  A374222.P6993703694642363716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374126, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374384.P8550118917188238012

`A100583(n)+A016777(n)`
-/

namespace A374384.P8550118917188238012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100583 n + A016777 n

end

end A374384.P8550118917188238012

noncomputable section

/-- A374384: a(n) = floor(Sum_{k=n^3..(n+1)^3} k^(1/3)).

Offset 0, canonical program `A374384.P8550118917188238012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374384 (n : ℕ) : ℤ :=
  A374384.P8550118917188238012.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374446.P17465126024641626848

`Δ[A224923(n)]+n`
-/

namespace A374446.P17465126024641626848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A374446.P17465126024641626848

noncomputable section

/-- A374446: Positions of zeros in the expansion of Product_{k>=0} (1 - x^(2^k))^3; A373308(a(n)) = 0 for n >= 1.

Offset 1, canonical program `A374446.P17465126024641626848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A374446 (n : ℕ) : ℤ :=
  A374446.P17465126024641626848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A374446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374492.P9547584820120626624

`comp[∪[A047221(n+1), n²]]`
-/

namespace A374492.P9547584820120626624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A374492.P9547584820120626624

noncomputable section

/-- A374492: Nonsquares with last digit in {0, 1, 4, 5, 6, 9}.

Offset 1, canonical program `A374492.P9547584820120626624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374492 (n : ℕ) : ℤ :=
  (A374492.P9547584820120626624.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374730.P15477775403620783569

`n*C(A070939(n), 2)`
-/

namespace A374730.P15477775403620783569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (A070939 n).toNat 2

end

end A374730.P15477775403620783569

noncomputable section

/-- A374730: a(n) = n * binomial(floor(log_2(n)) + 1, 2).

Offset 0, canonical program `A374730.P15477775403620783569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374730 (n : ℕ) : ℤ :=
  (A374730.P15477775403620783569.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374913.P1762315298387983128

`∩[A279507(A003628(n+1)), A007494(n)]`
-/

namespace A374913.P1762315298387983128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279507 (A003628 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374913.P1762315298387983128

noncomputable section

/-- A374913: Numbers k such that k^(k + 1) == k + 1 (mod 2*k + 1).

Offset 1, canonical program `A374913.P1762315298387983128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A374913 (n : ℕ) : ℤ :=
  (A374913.P1762315298387983128.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A374913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375020.P9231730803761729613

`A068773(10^n)`
-/

namespace A375020.P9231730803761729613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068773 (10 ^ n)

end

end A375020.P9231730803761729613

noncomputable section

/-- A375020: Alternating sum phi(1) - phi(2) + phi(3) - phi(4) + ... + ((-1)^(10^n+1))*phi(10^n).

Offset 0, canonical program `A375020.P9231730803761729613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375020 (n : ℕ) : ℤ :=
  A375020.P9231730803761729613.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068773, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375020.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375039.P1824785250283838263

`A051903(2*n+1)`
-/

namespace A375039.P1824785250283838263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * n + 1)

end

end A375039.P1824785250283838263

noncomputable section

/-- A375039: The maximum exponent in the prime factorization of 2*n-1.

Offset 1, canonical program `A375039.P1824785250283838263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375039 (n : ℕ) : ℤ :=
  A375039.P1824785250283838263.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375040.P3424596127254957025

`A051903(2*(n+1))`
-/

namespace A375040.P3424596127254957025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * (n + 1))

end

end A375040.P3424596127254957025

noncomputable section

/-- A375040: The maximum exponent in the prime factorization of 2*n.

Offset 1, canonical program `A375040.P3424596127254957025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375040 (n : ℕ) : ℤ :=
  A375040.P3424596127254957025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375166.P13823784569073551818

`filter[A056991(n+3), A049240(#)]`
-/

namespace A375166.P13823784569073551818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A375166.P13823784569073551818

noncomputable section

/-- A375166: Nonsquares congruent to {0, 1, 4, 7} modulo 9.

Offset 1, canonical program `A375166.P13823784569073551818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9852 terms. -/
def A375166 (n : ℕ) : ℤ :=
  A375166.P13823784569073551818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9852 terms. -/
def A375166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375241.P10688031051260759881

`filter[A055264(n+1), A123110(#)]`
-/

namespace A375241.P10688031051260759881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A375241.P10688031051260759881

noncomputable section

/-- A375241: Nontriangular numbers with digital root in {1, 3, 6, 9}.

Offset 1, canonical program `A375241.P10688031051260759881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9637 terms. -/
def A375241 (n : ℕ) : ℤ :=
  A375241.P10688031051260759881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9637 terms. -/
def A375241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375245.P12644491884728268425

`∑[A307430(n+1)]`
-/

namespace A375245.P12644491884728268425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375245.P12644491884728268425

noncomputable section

/-- A375245: Number of biquadratefree numbers <= n.

Offset 1, canonical program `A375245.P12644491884728268425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375245 (n : ℕ) : ℤ :=
  A375245.P12644491884728268425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375359.P18365082364199674777

`ceil(A051903(n+1)/2)`
-/

namespace A375359.P18365082364199674777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051903 (n + 1) : ℚ) / 2⌉

end

end A375359.P18365082364199674777

noncomputable section

/-- A375359: The maximum exponent in the prime factorization of the smallest number whose square is divisible by n.

Offset 1, canonical program `A375359.P18365082364199674777`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375359 (n : ℕ) : ℤ :=
  A375359.P18365082364199674777.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375363.P13736224185288456756

`A375362(n)-a(n-1)` with `a(0)=1`
-/

namespace A375363.P13736224185288456756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375362 n - a (n - 1)

end

end A375363.P13736224185288456756

noncomputable section

/-- A375363: Expansion of 1/( (1 + x)^2 * (1 - x*(1 + x)^3) ).

Offset 0, canonical program `A375363.P13736224185288456756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A375363 (n : ℕ) : ℤ :=
  A375363.P13736224185288456756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A375363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375364.P14787909337924663698

`A116090(n)-a(n-1)` with `a(0)=1`
-/

namespace A375364.P14787909337924663698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116090 n - a (n - 1)

end

end A375364.P14787909337924663698

noncomputable section

/-- A375364: Expansion of 1/( (1 + x) * (1 - x^2*(1 + x)^3) ).

Offset 0, canonical program `A375364.P14787909337924663698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 364 terms. -/
def A375364 (n : ℕ) : ℤ :=
  A375364.P14787909337924663698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 364 terms. -/
def A375364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375371.P8607918206982037116

`A135851(2*n+3)+A099254(3*n)`
-/

namespace A375371.P8607918206982037116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (2 * n + 3) + A099254 (3 * n)

end

end A375371.P8607918206982037116

noncomputable section

/-- A375371: Expansion of 1/( (1 + x)^2 * (1 - x*(1 + x)^2) ).

Offset 0, canonical program `A375371.P8607918206982037116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A375371 (n : ℕ) : ℤ :=
  A375371.P8607918206982037116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A375371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375372.P16005709320309913202

`A094686(n)-a(n-1)` with `a(0)=1`
-/

namespace A375372.P16005709320309913202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094686 n - a (n - 1)

end

end A375372.P16005709320309913202

noncomputable section

/-- A375372: Expansion of 1/( (1 + x) * (1 - x^2*(1 + x)^2) ).

Offset 0, canonical program `A375372.P16005709320309913202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A375372 (n : ℕ) : ℤ :=
  A375372.P16005709320309913202.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A375372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375430.P15072398528399193857

`A000045(ceil(log((A051903(n+1)+1)²)))`
-/

namespace A375430.P15072398528399193857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.log ((A051903 (n + 1) + 1) ^ 2 : ℝ)⌉.toNat

end

end A375430.P15072398528399193857

noncomputable section

/-- A375430: The maximum exponent in the unique factorization of n in terms of distinct terms of A115975 using the dual Zeckendorf representation of the exponents in the prime factorization of n; a(1) = 0.

Offset 1, canonical program `A375430.P15072398528399193857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375430 (n : ℕ) : ℤ :=
  A375430.P15072398528399193857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375501.P6564674146108838587

`∑[A128587(n+3)²*A033999(n)]`
-/

namespace A375501.P6564674146108838587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128587 (n + 3) ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375501.P6564674146108838587

noncomputable section

/-- A375501: a(n) = Sum_{k=0..n} (-1)^k*A001595(k)^2.

Offset 0, canonical program `A375501.P6564674146108838587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A375501 (n : ℕ) : ℤ :=
  A375501.P6564674146108838587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A375501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375551.P17811213240839334410

`2*A099027(n)`
-/

namespace A375551.P17811213240839334410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099027 n

end

end A375551.P17811213240839334410

noncomputable section

/-- A375551: a(n) = Sum_{k=0..n} k XOR n-k, where XOR is the bitwise exclusive disjunction. Row sums of A003987.

Offset 0, canonical program `A375551.P17811213240839334410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375551 (n : ℕ) : ℤ :=
  A375551.P17811213240839334410.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375667.P6684781765441991120

`A051903(A007310(n+1))`
-/

namespace A375667.P6684781765441991120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A007310 (n + 1)).toNat

end

end A375667.P6684781765441991120

noncomputable section

/-- A375667: The maximum exponent in the prime factorization of the 5-rough numbers (A007310).

Offset 1, canonical program `A375667.P6684781765441991120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375667 (n : ℕ) : ℤ :=
  A375667.P6684781765441991120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375668.P7310849845523855614

`A051903(A007775(n+1))`
-/

namespace A375668.P7310849845523855614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A007775 (n + 1)).toNat

end

end A375668.P7310849845523855614

noncomputable section

/-- A375668: The maximum exponent in the prime factorization of the 7-rough numbers (A007775).

Offset 1, canonical program `A375668.P7310849845523855614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375668 (n : ℕ) : ℤ :=
  A375668.P7310849845523855614.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375706.P12414521071869908907

`A007916(n+2)-A007916(n+1)`
-/

namespace A375706.P12414521071869908907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 2) - A007916 (n + 1)

end

end A375706.P12414521071869908907

noncomputable section

/-- A375706: First differences of non-perfect-powers.

Offset 1, canonical program `A375706.P12414521071869908907`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375706 (n : ℕ) : ℤ :=
  A375706.P12414521071869908907.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375706.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375852.P8022826770874438667

`A047242(A248375(n+1))`
-/

namespace A375852.P8022826770874438667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (A248375 (n + 1)).toNat

end

end A375852.P8022826770874438667

noncomputable section

/-- A375852: Numbers congruent to {0, 1, 3, 6, 7, 9, 12, 15} mod 18.

Offset 1, canonical program `A375852.P8022826770874438667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8889 terms. -/
def A375852 (n : ℕ) : ℤ :=
  A375852.P8022826770874438667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8889 terms. -/
def A375852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375882.P4989773900037239940

`(1-2*n%2)*Δ[A375885(n)]`
-/

namespace A375882.P4989773900037239940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((2 * (n % 2) : ℕ) : ℤ)) * (f1 (n + 1) - f1 n)

end

end A375882.P4989773900037239940

noncomputable section

/-- A375882: a(n) = 4^n*cos(nC), where C is the angle opposite side AB in a triangle ABC having sidelengths |BC|=2, |CA| = 3, |AB| = 4; ABC is the smallest integer-sided scalene triangle.

Offset 0, canonical program `A375882.P4989773900037239940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A375882 (n : ℕ) : ℤ :=
  A375882.P4989773900037239940.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A375882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375976.P12460029172972807041

`A003132(A000079(n))`
-/

namespace A375976.P12460029172972807041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A000079 n).toNat

end

end A375976.P12460029172972807041

noncomputable section

/-- A375976: Sum of squares of the decimal digits of 2^n.

Offset 0, canonical program `A375976.P12460029172972807041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375976 (n : ℕ) : ℤ :=
  A375976.P12460029172972807041.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376072.P14133024279741145432

`∑[∑[∑[A083672(n)]]]`
-/

namespace A376072.P14133024279741145432
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376072.P14133024279741145432

noncomputable section

/-- A376072: a(n) are half the sums of the gamma coefficients of the n-th row-generating function of triangle A375853.

Offset 2, canonical program `A376072.P14133024279741145432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A376072 (n : ℕ) : ℤ :=
  A376072.P14133024279741145432.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A376072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376132.P3293630522299707843

`A000295(A376116(n+2)-A376116(n+1)+1)`
-/

namespace A376132.P3293630522299707843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (A376116 (n + 2) - A376116 (n + 1) + 1).toNat

end

end A376132.P3293630522299707843

noncomputable section

/-- A376132: First differences of A376131.

Offset 1, canonical program `A376132.P3293630522299707843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A376116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376132 (n : ℕ) : ℤ :=
  A376132.P3293630522299707843.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A376116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376139.P13428466626577619161

`(-1)^A051903(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376139.P13428466626577619161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A051903 (n + 1) : ℤ)

end

end A376139.P13428466626577619161

noncomputable section

/-- A376139: a(n) = (-1)^A051903(n).

Offset 1, canonical program `A376139.P13428466626577619161`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376139 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376139.P13428466626577619161.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376139.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376270.P2407315113390054031

`A000030(n)*A003132(n)`
-/

namespace A376270.P2407315113390054031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n * A003132 n

end

end A376270.P2407315113390054031

noncomputable section

/-- A376270: a(n) is the product of the leading digit of n and the sum of the squares of its digits.

Offset 0, canonical program `A376270.P2407315113390054031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A003132, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376270 (n : ℕ) : ℤ :=
  A376270.P2407315113390054031.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A003132, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376279.P14030068633923779886

`lt[0, A010057(n*n²%3)]`
-/

namespace A376279.P14030068633923779886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (n * (n ^ 2 % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376279.P14030068633923779886

noncomputable section

/-- A376279: Numbers k such that k^k is a cube.

Offset 1, canonical program `A376279.P14030068633923779886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1693 terms. -/
def A376279 (n : ℕ) : ℤ :=
  (A376279.P14030068633923779886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1693 terms. -/
def A376279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376357.P16342717570296244240

`lt[4, (n-1)*a(n-A000196(n)²)]` with `a(0)=3`
-/

namespace A376357.P16342717570296244240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  ((n : ℤ) - 1) * f2 ((n : ℤ) - A000196 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376357.P16342717570296244240

noncomputable section

/-- A376357: Positions of numbers in A007961 that end in 0.

Offset 1, canonical program `A376357.P16342717570296244240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A376357 (n : ℕ) : ℤ :=
  (A376357.P16342717570296244240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A376357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376360.P17607441378898775448

`lt[1, floor(a(A053186(n)))]` with `a(0)=-1, a(1)=1, a(2)=1, a(3)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A376360.P17607441378898775448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1, 7] fun n f2 =>
  f2 (A053186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376360.P17607441378898775448

noncomputable section

/-- A376360: Positions of numbers in A007961 that end in 3.

Offset 1, canonical program `A376360.P17607441378898775448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A376360 (n : ℕ) : ℤ :=
  (A376360.P17607441378898775448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A376360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376507.P3628631858648821774

`A056021(A047425(n+1))`
-/

namespace A376507.P3628631858648821774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (A047425 (n + 1)).toNat

end

end A376507.P3628631858648821774

noncomputable section

/-- A376507: Natural numbers whose iterated squaring modulo 100 eventually settles at the attractor 76.

Offset 1, canonical program `A376507.P3628631858648821774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376507 (n : ℕ) : ℤ :=
  A376507.P3628631858648821774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376538.P147642025610415414

`A056082(A047527(n+2))`
-/

namespace A376538.P147642025610415414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (A047527 (n + 2)).toNat

end

end A376538.P147642025610415414

noncomputable section

/-- A376538: Natural numbers whose iterated squaring modulo 1000 eventually settles at the attractor 1.

Offset 1, canonical program `A376538.P147642025610415414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376538 (n : ℕ) : ℤ :=
  A376538.P147642025610415414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376539.P10670533322709829725

`A056082(A047425(n+1))`
-/

namespace A376539.P10670533322709829725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (A047425 (n + 1)).toNat

end

end A376539.P10670533322709829725

noncomputable section

/-- A376539: Natural numbers whose iterated squaring modulo 1000 eventually settles at the attractor 376.

Offset 1, canonical program `A376539.P10670533322709829725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376539 (n : ℕ) : ℤ :=
  A376539.P10670533322709829725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376714.P15979935111988966873

`A003132(A000040(n+1))`
-/

namespace A376714.P15979935111988966873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A000040 (n + 1)).toNat

end

end A376714.P15979935111988966873

noncomputable section

/-- A376714: Sum of squares of the decimal digits of the n-th prime.

Offset 1, canonical program `A376714.P15979935111988966873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A003132, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376714 (n : ℕ) : ℤ :=
  A376714.P15979935111988966873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A003132, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377414.P9376123289896213115

`and(n, xor(n, A002264(2^ceil(log2(n+1)))))`
-/

namespace A377414.P9376123289896213115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.xor (n : ℤ) (A002264 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat))

end

end A377414.P9376123289896213115

noncomputable section

/-- A377414: a(n) is the largest term of A126684, say b, such that n AND b = b (where AND denotes the bitwise AND operator).

Offset 0, canonical program `A377414.P9376123289896213115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A377414 (n : ℕ) : ℤ :=
  A377414.P9376123289896213115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A377414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377537.P12302867549382455240

`C(A095117(n+1)-1, n+1)`
-/

namespace A377537.P12302867549382455240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A095117 (n + 1) - 1).toNat (n + 1)

end

end A377537.P12302867549382455240

noncomputable section

/-- A377537: a(n) is the number of positive integers that have n prime factors and these are all <= n.

Offset 1, canonical program `A377537.P12302867549382455240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A377537 (n : ℕ) : ℤ :=
  (A377537.P12302867549382455240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. -/
def A377537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377573.P10716120878224455127

`A094052(abs(1-n))`
-/

namespace A377573.P10716120878224455127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094052 |1 - (n : ℤ)|.toNat

end

end A377573.P10716120878224455127

noncomputable section

/-- A377573: Cogrowth sequence for the 14-element dihedral group D7 = .

Offset 0, canonical program `A377573.P10716120878224455127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A377573 (n : ℕ) : ℤ :=
  A377573.P10716120878224455127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A377573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377721.P13608278594952562135

`A074279(n+1)+n`
-/

namespace A377721.P13608278594952562135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (n + 1) + (n : ℤ)

end

end A377721.P13608278594952562135

noncomputable section

/-- A377721: Numbers that are not of the form k(k+1)(2k+1)/6 + k.

Offset 1, canonical program `A377721.P13608278594952562135`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074279, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377721 (n : ℕ) : ℤ :=
  A377721.P13608278594952562135.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074279, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377728.P7667033957001193499

`A126646(n)-A066629(n)`
-/

namespace A377728.P7667033957001193499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A066629 n

end

end A377728.P7667033957001193499

noncomputable section

/-- A377728: Convolution of Leonardo numbers with Jacobsthal numbers.

Offset 0, canonical program `A377728.P7667033957001193499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A377728 (n : ℕ) : ℤ :=
  A377728.P7667033957001193499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A377728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377866.P11288015747233166131

`A010049(2*A289207(n))`
-/

namespace A377866.P11288015747233166131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * A289207 n).toNat

end

end A377866.P11288015747233166131

noncomputable section

/-- A377866: Number of subwords of the form DUUD or DDUUD in nondecreasing Dyck paths of length 2n.

Offset 0, canonical program `A377866.P11288015747233166131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A377866 (n : ℕ) : ℤ :=
  A377866.P11288015747233166131.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A377866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377897.P9367662986809864385

`eq[A131378(n), A135528(n+1)]`
-/

namespace A377897.P9367662986809864385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377897.P9367662986809864385

noncomputable section

/-- A377897: Numbers k such that k + PrimePi(k) is even.

Offset 1, canonical program `A377897.P9367662986809864385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A377897 (n : ℕ) : ℤ :=
  (A377897.P9367662986809864385.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A377897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377943.P419477848472387058

`or(1, A002452(n))`
-/

namespace A377943.P419477848472387058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002452 n)

end

end A377943.P419477848472387058

noncomputable section

/-- A377943: Cogrowth sequence of the 16-element Pauli group C4 o D4 = .

Offset 0, canonical program `A377943.P419477848472387058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A377943 (n : ℕ) : ℤ :=
  A377943.P419477848472387058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A377943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377946.P16763880135453843413

`A038503(n)²+A038505(n)²`
-/

namespace A377946.P16763880135453843413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n ^ 2 + A038505 n ^ 2

end

end A377946.P16763880135453843413

noncomputable section

/-- A377946: Cogrowth sequence of the 16-element group C2^2:C4 = .

Offset 0, canonical program `A377946.P16763880135453843413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377946 (n : ℕ) : ℤ :=
  A377946.P16763880135453843413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377979.P7080257391251934501

`ceil(ceil(A135370(n+1)/2)/2)%(n+1)²`
-/

namespace A377979.P7080257391251934501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(⌈(A135370 (n + 1) : ℚ) / 2⌉ : ℚ) / 2⌉ ((n + 1) ^ 2 : ℤ)

end

end A377979.P7080257391251934501

noncomputable section

/-- A377979: List of exponents in the expansion of (1 - q)*Sum_{n >= 0} q^(2*n*(n+1))*Product_{k >= 2*n+1} 1 - q^k.

Offset 1, canonical program `A377979.P7080257391251934501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377979 (n : ℕ) : ℤ :=
  A377979.P7080257391251934501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378053.P13354335164074839749

`gcd(A020696(n+1), A377484(n+1))`
-/

namespace A378053.P13354335164074839749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020696 (n + 1)) (A377484 (n + 1))

end

end A378053.P13354335164074839749

noncomputable section

/-- A378053: a(n) = gcd(Product_{d|n} (d + 1), Product_{d|n, d>1} (d - 1)) = gcd(A020696(n), A377484(n)).

Offset 1, canonical program `A378053.P13354335164074839749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A378053 (n : ℕ) : ℤ :=
  (A378053.P13354335164074839749.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A378053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378123.P2638914175828168044

`∑{e}[∏{p}[∑[A000040(n+2)], #], #]`
-/

namespace A378123.P2638914175828168044
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A378123.P2638914175828168044

noncomputable section

/-- A378123: a(n) = number of prime divisors of the sum of the first n odd primes.

Offset 1, canonical program `A378123.P2638914175828168044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 545 terms. -/
def A378123 (n : ℕ) : ℤ :=
  (A378123.P2638914175828168044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 545 terms. -/
def A378123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378301.P12860967816760152657

`A214857(n+1)-A022846(n)`
-/

namespace A378301.P12860967816760152657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (n + 1) - A022846 n

end

end A378301.P12860967816760152657

noncomputable section

/-- A378301: a(n) is the number of triangular numbers (A000217) in the interval [n^2, (n + 1)^2].

Offset 0, canonical program `A378301.P12860967816760152657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378301 (n : ℕ) : ℤ :=
  A378301.P12860967816760152657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378497.P8746426100364290314

`A037667(n+1)-A004171(n)`
-/

namespace A378497.P8746426100364290314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037667 (n + 1) - A004171 n

end

end A378497.P8746426100364290314

noncomputable section

/-- A378497: a(n) is the number whose base-4 digits are 1 followed by the first n-1 terms of the periodic sequence with initial period 2,0,3.

Offset 1, canonical program `A378497.P8746426100364290314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A378497 (n : ℕ) : ℤ :=
  A378497.P8746426100364290314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A378497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378624.P4838368887206382302

`lt[(2*(A003278(n+1)-1)+1)%10, 2]`
-/

namespace A378624.P4838368887206382302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A003278 (n + 1) - 1) + 1) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A378624.P4838368887206382302

noncomputable section

/-- A378624: Numbers whose binary representation interpreted as being base-3 is divisible by 5.

Offset 1, canonical program `A378624.P4838368887206382302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A378624 (n : ℕ) : ℤ :=
  (A378624.P4838368887206382302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A378624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378725.P17767535879698643150

`A378724(n+2)-A378724(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378725.P17767535879698643150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378724 (n + 2) - A378724 (n + 1)

end

end A378725.P17767535879698643150

noncomputable section

/-- A378725: a(n) = A378724(n+1) - A378724(n).

Offset 1, canonical program `A378725.P17767535879698643150`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378725 (n : ℕ) : ℤ :=
  A378725.P17767535879698643150.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378744.P4748667220349122921

`ceil(log(2)/log(A000040(n+2)/A000040(n+1)))`
-/

namespace A378744.P4748667220349122921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (2 : ℝ) / Real.log ((A000040 (n + 2) : ℚ) / (A000040 (n + 1) : ℚ) : ℝ)⌉

end

end A378744.P4748667220349122921

noncomputable section

/-- A378744: The least k such that prime(1+n)^k > 2 * prime(n)^k.

Offset 1, canonical program `A378744.P4748667220349122921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378744 (n : ℕ) : ℤ :=
  A378744.P4748667220349122921.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378744.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378788.P15862671358062057024

`A007980(n)-A002264(n*A079978(n))`
-/

namespace A378788.P15862671358062057024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n - A002264 ((n : ℤ) * A079978 n).toNat

end

end A378788.P15862671358062057024

noncomputable section

/-- A378788: Lower matching number of the (n,n)-stacked book graph.

Offset 1, canonical program `A378788.P15862671358062057024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378788 (n : ℕ) : ℤ :=
  A378788.P15862671358062057024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378790.P611562375653118169

`round(A032438(n+1)/2)`
-/

namespace A378790.P611562375653118169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032438 (n + 1) : ℚ) / 2)

end

end A378790.P611562375653118169

noncomputable section

/-- A378790: Lower matching number of the n X n king graph.

Offset 1, canonical program `A378790.P611562375653118169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378790 (n : ℕ) : ℤ :=
  A378790.P611562375653118169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378816.P12073139735814832910

`Δ[Δ[A005773(n)]*A033999(n)]`
-/

namespace A378816.P12073139735814832910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378816.P12073139735814832910

noncomputable section

/-- A378816: Expansion of 2*(x - 1)^3/(3*x^3 - 5*x^2 + x + 1 + sqrt(-(x - 1)^3*(x + 1)^2*(3*x + 1))).

Offset 0, canonical program `A378816.P12073139735814832910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A378816 (n : ℕ) : ℤ :=
  A378816.P12073139735814832910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A378816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378930.P6933035363972546027

`A009230(n+1)/A009191(n+1)`
-/

namespace A378930.P6933035363972546027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009230 (n + 1) : ℚ) / (A009191 (n + 1) : ℚ)

end

end A378930.P6933035363972546027

noncomputable section

/-- A378930: a(n) = n * d(n) / gcd(n, d(n))^2, where d = A000005.

Offset 1, canonical program `A378930.P6933035363972546027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009191, A009230, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378930 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378930.P6933035363972546027.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009191, A009230, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378930.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378937.P14598443046258048291

`A134165(n+1)-2`
-/

namespace A378937.P14598443046258048291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 (n + 1) - 2

end

end A378937.P14598443046258048291

noncomputable section

/-- A378937: Number of minimal edge cuts in the 2 X n rook graph.

Offset 1, canonical program `A378937.P14598443046258048291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A378937 (n : ℕ) : ℤ :=
  A378937.P14598443046258048291.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A378937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378962.P5441024568918404344

`A000340(A378724(n+2)-A378724(n+1)-1)`
-/

namespace A378962.P5441024568918404344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 (A378724 (n + 2) - A378724 (n + 1) - 1).toNat

end

end A378962.P5441024568918404344

noncomputable section

/-- A378962: First differences of A378726.

Offset 1, canonical program `A378962.P5441024568918404344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378962 (n : ℕ) : ℤ :=
  A378962.P5441024568918404344.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378978.P14446462380616579900

`Δ[n²]-A346880(n+1)`
-/

namespace A378978.P14446462380616579900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A346880 (n + 1)

end

end A378978.P14446462380616579900

noncomputable section

/-- A378978: Deficiency of even numbers: a(n) = 4*n - sigma(2*n).

Offset 1, canonical program `A378978.P14446462380616579900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378978 (n : ℕ) : ℤ :=
  A378978.P14446462380616579900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379009.P2960411214881512137

`A378988((n+1)²)`
-/

namespace A379009.P2960411214881512137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378988 ((n + 1) ^ 2)

end

end A379009.P2960411214881512137

noncomputable section

/-- A379009: a(n) = 2*n^2 XOR 1+sigma(n^2).

Offset 1, canonical program `A379009.P2960411214881512137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. -/
def A379009 (n : ℕ) : ℤ :=
  A379009.P2960411214881512137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 181 terms. -/
def A379009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379028.P1083358816384689747

`∏{e}[n+1, A252505(#+1)]`
-/

namespace A379028.P1083358816384689747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A252505 (Nat.factorization (f1 n) p + 1)

end

end A379028.P1083358816384689747

noncomputable section

/-- A379028: The number of modified exponential divisors of n.

Offset 1, canonical program `A379028.P1083358816384689747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379028 (n : ℕ) : ℤ :=
  A379028.P1083358816384689747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379184.P17108702326998689864

`A379183(n+1)%2`
-/

namespace A379184.P17108702326998689864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379183 (n + 1)) 2

end

end A379184.P17108702326998689864

noncomputable section

/-- A379184: a(n) = A379183(n) mod 2.

Offset 1, canonical program `A379184.P17108702326998689864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379184 (n : ℕ) : ℤ :=
  A379184.P17108702326998689864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379215.P8620567409241679117

`A103517(n)+A087291(n)`
-/

namespace A379215.P8620567409241679117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A087291 n

end

end A379215.P8620567409241679117

noncomputable section

/-- A379215: Number of minimal edge cuts in the complete bipartite graph K_{n,n}.

Offset 1, canonical program `A379215.P8620567409241679117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A379215 (n : ℕ) : ℤ :=
  A379215.P8620567409241679117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A379215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379274.P5229334467215772690

`A135414(n+1)%2`
-/

namespace A379274.P5229334467215772690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135414 (n + 1)) 2

end

end A379274.P5229334467215772690

noncomputable section

/-- A379274: a(n) = A135414(n) mod 2.

Offset 1, canonical program `A379274.P5229334467215772690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379274 (n : ℕ) : ℤ :=
  A379274.P5229334467215772690.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379421.P17566647080812889774

`A133872(A005563(n))+A063247(n+1)`
-/

namespace A379421.P17566647080812889774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A005563 n).toNat + A063247 (n + 1)

end

end A379421.P17566647080812889774

noncomputable section

/-- A379421: a(n) = n + floor(n*r/s) + floor(n*t/s), where r = 5^(1/4), s = 5^(1/2), t = 5^(3/4).

Offset 1, canonical program `A379421.P17566647080812889774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A379421 (n : ℕ) : ℤ :=
  A379421.P17566647080812889774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A379421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379473.P3493494606135795682

`gcd(A001160(n+1), A098355(n))`
-/

namespace A379473.P3493494606135795682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001160 (n + 1)) (A098355 n)

end

end A379473.P3493494606135795682

noncomputable section

/-- A379473: a(n) is the highest power of 3 dividing the sum of divisors of n.

Offset 1, canonical program `A379473.P3493494606135795682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379473 (n : ℕ) : ℤ :=
  (A379473.P3493494606135795682.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379728.P7822751634517358611

`abs(A343173(n))`
-/

namespace A379728.P7822751634517358611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343173 n|

end

end A379728.P7822751634517358611

noncomputable section

/-- A379728: Absolute value of first differences of paperfolding sequence A014577.

Offset 1, canonical program `A379728.P7822751634517358611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379728 (n : ℕ) : ℤ :=
  A379728.P7822751634517358611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379728.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379745.P11737362338162636344

`n*A003462(n)-A001047(n)`
-/

namespace A379745.P11737362338162636344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003462 n - A001047 n

end

end A379745.P11737362338162636344

noncomputable section

/-- A379745: a(n) = Sum_{k=1..n-1} binomial(n,k)*2^(n-k-1)*(k-1).

Offset 1, canonical program `A379745.P11737362338162636344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A379745 (n : ℕ) : ℤ :=
  A379745.P11737362338162636344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A379745.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379971.P9387652127789106861

`A323239(A353569(n+2)+n)`
-/

namespace A379971.P9387652127789106861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A353569 (n + 2) + (n : ℤ)).toNat

end

end A379971.P9387652127789106861

noncomputable section

/-- A379971: a(n) = 1 if n^2-1 is squarefree, otherwise 0.

Offset 1, canonical program `A379971.P9387652127789106861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379971 (n : ℕ) : ℤ :=
  A379971.P9387652127789106861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380049.P17814208362061361068

`∑[A072203(n+1)]`
-/

namespace A380049.P17814208362061361068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380049.P17814208362061361068

noncomputable section

/-- A380049: Partial sums of A072203.

Offset 1, canonical program `A380049.P17814208362061361068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380049 (n : ℕ) : ℤ :=
  A380049.P17814208362061361068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380322.P972265971040687329

`∑{d}[n+1, A102631(#)]`
-/

namespace A380322.P972265971040687329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A102631 d

end

end A380322.P972265971040687329

noncomputable section

/-- A380322: a(n) is the sum of exponentially odd divisors of n^2.

Offset 1, canonical program `A380322.P972265971040687329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380322 (n : ℕ) : ℤ :=
  A380322.P972265971040687329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380440.P5442109127590069685

`A380439(n+1)+A227291(n+1)`
-/

namespace A380440.P5442109127590069685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380439 (n + 1) + A227291 (n + 1)

end

end A380440.P5442109127590069685

noncomputable section

/-- A380440: a(n) = 1 if n has no squarefree divisor d such that d^2 > n, otherwise 0.

Offset 1, canonical program `A380440.P5442109127590069685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380440 (n : ℕ) : ℤ :=
  A380440.P5442109127590069685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380440.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A381952.P13602993248681907933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381952 (n : ℕ) : ℤ :=
  (A381952.P13602993248681907933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381952.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382727.P6303332765018915185

`∑[A382721(n)]`
-/

namespace A382727.P6303332765018915185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382727.P6303332765018915185

noncomputable section

/-- A382727: Total number of entries in rows 0,1,...,n of Pascal's triangle not divisible by 11.

Offset 0, canonical program `A382727.P6303332765018915185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382727 (n : ℕ) : ℤ :=
  A382727.P6303332765018915185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382727.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382819.P15750206394619055152

`A144677(n)-n`
-/

namespace A382819.P15750206394619055152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 n - (n : ℤ)

end

end A382819.P15750206394619055152

noncomputable section

/-- A382819: Number of Grassmannian permutations on [n] of order dividing 3.

Offset 0, canonical program `A382819.P15750206394619055152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382819 (n : ℕ) : ℤ :=
  A382819.P15750206394619055152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382819.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382865.P12036789506198600243

`xor(A047541(n+1), A093178(n))`
-/

namespace A382865.P12036789506198600243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047541 (n + 1)) (A093178 n)

end

end A382865.P12036789506198600243

noncomputable section

/-- A382865: Bitwise XOR of all integers between n and 2n (endpoints included).

Offset 0, canonical program `A382865.P12036789506198600243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382865 (n : ℕ) : ℤ :=
  A382865.P12036789506198600243.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383032.P16309839113678773205

`val(A028982(n+1), 2)`
-/

namespace A383032.P16309839113678773205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028982 (n + 1)).toNat 2

end

end A383032.P16309839113678773205

noncomputable section

/-- A383032: Exponent of the highest power of 2 dividing the n-th number that is either a square or twice a square.

Offset 1, canonical program `A383032.P16309839113678773205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383032 (n : ℕ) : ℤ :=
  (A383032.P16309839113678773205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383037.P2722841206939316007

`2*A210469(n+1)-n`
-/

namespace A383037.P2722841206939316007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210469 (n + 1) - (n : ℤ)

end

end A383037.P2722841206939316007

noncomputable section

/-- A383037: a(n) is the excess of composites over primes in the first n odd positive integers.

Offset 1, canonical program `A383037.P2722841206939316007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383037 (n : ℕ) : ℤ :=
  A383037.P2722841206939316007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383037.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A384415.P2331890663038993253

`A000302(n)-A382618(n)`
-/

namespace A384415.P2331890663038993253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A382618 n

end

end A384415.P2331890663038993253

noncomputable section

/-- A384415: a(n) = 4^n - 3^n - n*3^(n-1) - binomial(n,2)*3^(n-2).

Offset 0, canonical program `A384415.P2331890663038993253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A384415 (n : ℕ) : ℤ :=
  A384415.P2331890663038993253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A384415.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A384611.P8663616739095400439

`A079162(n)+A005824(n+1)`
-/

namespace A384611.P8663616739095400439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 n + A005824 (n + 1)

end

end A384611.P8663616739095400439

noncomputable section

/-- A384611: Expansion of (1+2*x-x^3) / (1-5*x^2+2*x^4).

Offset 0, canonical program `A384611.P8663616739095400439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A384611 (n : ℕ) : ℤ :=
  A384611.P8663616739095400439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A384611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384678.P1232342742926874065

`A091141(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A384678.P1232342742926874065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091141 (n + 1) - a (n - 1)

end

end A384678.P1232342742926874065

noncomputable section

/-- A384678: Expansion of (1+x) / (1-2*x-4*x^2+2*x^3).

Offset 0, canonical program `A384678.P1232342742926874065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A384678 (n : ℕ) : ℤ :=
  A384678.P1232342742926874065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A384678.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A384988.P10940862512247689382

`A000392(n+1)+A000225(n)²`
-/

namespace A384988.P10940862512247689382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) + A000225 n ^ 2

end

end A384988.P10940862512247689382

noncomputable section

/-- A384988: a(n) = Stirling2(n,2)^2 + Stirling2(n,3).

Offset 1, canonical program `A384988.P10940862512247689382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A384988 (n : ℕ) : ℤ :=
  A384988.P10940862512247689382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A384988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385029.P15177436436229749162

`A006331(n+1)*A016754(n+1)`
-/

namespace A385029.P15177436436229749162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (n + 1) * A016754 (n + 1)

end

end A385029.P15177436436229749162

noncomputable section

/-- A385029: a(n) = Sum_{-n <= a, b, c <= n} (b^2 - 4*a*c).

Offset 1, canonical program `A385029.P15177436436229749162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385029 (n : ℕ) : ℤ :=
  A385029.P15177436436229749162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385029.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A385556.P5054288155651630220

`A146308(n+1)-6`
-/

namespace A385556.P5054288155651630220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146308 (n + 1) - 6

end

end A385556.P5054288155651630220

noncomputable section

/-- A385556: Period of {binomial(N,4) mod n: N in Z}.

Offset 1, canonical program `A385556.P5054288155651630220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385556 (n : ℕ) : ℤ :=
  A385556.P5054288155651630220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385556.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387156.P4696553104120467965

`A000203(n+1)/A080398(n+1)`
-/

namespace A387156.P4696553104120467965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A080398 (n + 1) : ℚ)

end

end A387156.P4696553104120467965

noncomputable section

/-- A387156: a(n) = A003557(sigma(n)), where A003557(n) is multiplicative with a(p^e) = p^(e-1), and sigma is the sum of divisors function.

Offset 1, canonical program `A387156.P4696553104120467965`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080398, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387156 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387156.P4696553104120467965.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080398, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387156.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A387429.P919686495244011043

`∑[A222408(n)]`
-/

namespace A387429.P919686495244011043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387429.P919686495244011043

noncomputable section

/-- A387429: Self-convolution of n-th antidiagonal of the natural number array (so named in the Comments section of A000027).

Offset 1, canonical program `A387429.P919686495244011043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387429 (n : ℕ) : ℤ :=
  A387429.P919686495244011043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387429.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387645.P1073610776290966673

`A002411(∑[or(1, n)-1]+n)`
-/

namespace A387645.P1073610776290966673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A387645.P1073610776290966673

noncomputable section

/-- A387645: Detour index of the n X n black bishop graph.

Offset 1, canonical program `A387645.P1073610776290966673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A387645 (n : ℕ) : ℤ :=
  A387645.P1073610776290966673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A387645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387726.P1293557622798291560

`A057521(∑{d}[n+1, #])`
-/

namespace A387726.P1293557622798291560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A387726.P1293557622798291560

noncomputable section

/-- A387726: Powerful part of the sum of divisors of n: a(n) = A057521(A000203(n)).

Offset 1, canonical program `A387726.P1293557622798291560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A387726 (n : ℕ) : ℤ :=
  A387726.P1293557622798291560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A387726.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387922.P11727995871184624636

`A003409(n+2)-A117950(n+2)`
-/

namespace A387922.P11727995871184624636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003409 (n + 2) - A117950 (n + 2)

end

end A387922.P11727995871184624636

noncomputable section

/-- A387922: a(n) = 3*binomial(2*n+1,n+1) - n^2 - 2*n - 4.

Offset 1, canonical program `A387922.P11727995871184624636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387922 (n : ℕ) : ℤ :=
  A387922.P11727995871184624636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387922.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A388283.P448465908817760903

`A033885(n+1)/A009194(n+1)`
-/

namespace A388283.P448465908817760903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033885 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A388283.P448465908817760903

noncomputable section

/-- A388283: Numerator of (3*n - sigma(n)) / n.

Offset 1, canonical program `A388283.P448465908817760903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, A033885, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388283 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388283.P448465908817760903.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, A033885, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388283.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388994.P3930905186296382464

`A048250(n+1)-A162296(n+1)`
-/

namespace A388994.P3930905186296382464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A162296 (n + 1)

end

end A388994.P3930905186296382464

noncomputable section

/-- A388994: a(n) = {sum of squarefree divisors of n} minus {sum of divisors of n that have a square factor}.

Offset 1, canonical program `A388994.P3930905186296382464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A162296, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388994 (n : ℕ) : ℤ :=
  A388994.P3930905186296382464.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A162296, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388994.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A389244.P17005348703816827582

`A057521(n+1)*A057521(n+2)`
-/

namespace A389244.P17005348703816827582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) * A057521 (n + 2)

end

end A389244.P17005348703816827582

noncomputable section

/-- A389244: Powerful part of n*(n+1): a(n) = A057521(n*(n+1)).

Offset 1, canonical program `A389244.P17005348703816827582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389244 (n : ℕ) : ℤ :=
  A389244.P17005348703816827582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389244.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389461.P15261002970931308837

`A001065(n+1)-A075423(n+1)`
-/

namespace A389461.P15261002970931308837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A075423 (n + 1)

end

end A389461.P15261002970931308837

noncomputable section

/-- A389461: a(n) = sigma(n) - A075423(n) - n.

Offset 1, canonical program `A389461.P15261002970931308837`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A075423, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389461 (n : ℕ) : ℤ :=
  A389461.P15261002970931308837.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A075423, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389461.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A390325.P4552499830918674768

`2*A137173(n+2)`
-/

namespace A390325.P4552499830918674768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137173 (n + 2)

end

end A390325.P4552499830918674768

noncomputable section

/-- A390325: Oblong numbers of the form 2^k*(2^k - 1) or 2^k*(2^k + 1).

Offset 1, canonical program `A390325.P4552499830918674768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A390325 (n : ℕ) : ℤ :=
  A390325.P4552499830918674768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A390325.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390346.P11413656568958657896

`A212772(n)-1`
-/

namespace A390346.P11413656568958657896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212772 n - 1

end

end A390346.P11413656568958657896

noncomputable section

/-- A390346: Lower (1/2)-midsequence of binomial(n,3) and (-1)*binomial(n,2); see Comments.

Offset 0, canonical program `A390346.P11413656568958657896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390346 (n : ℕ) : ℤ :=
  A390346.P11413656568958657896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390347.P10844774536264225896

`A011894(n)-A011848(n)`
-/

namespace A390347.P10844774536264225896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 n - A011848 n

end

end A390347.P10844774536264225896

noncomputable section

/-- A390347: Upper (1/2)-midsequence of binomial(n,3) and (-1)*binomial(n,2); see Comments.

Offset 0, canonical program `A390347.P10844774536264225896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390347 (n : ℕ) : ℤ :=
  A390347.P10844774536264225896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390347.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390458.P808166892872410916

`A060018(A137228(n+2))`
-/

namespace A390458.P808166892872410916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (A137228 (n + 2)).toNat

end

end A390458.P808166892872410916

noncomputable section

/-- A390458: Minimum site perimeter of a polyiamond with n cells.

Offset 1, canonical program `A390458.P808166892872410916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. -/
def A390458 (n : ℕ) : ℤ :=
  A390458.P808166892872410916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. -/
def A390458.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390501.P18240785796849532156

`A084174(n)+A036239(n+1)`
-/

namespace A390501.P18240785796849532156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084174 n + A036239 (n + 1)

end

end A390501.P18240785796849532156

noncomputable section

/-- A390501: a(n) = floor((4^n - 3^n - n + 2)/2).

Offset 1, canonical program `A390501.P18240785796849532156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A390501 (n : ℕ) : ℤ :=
  A390501.P18240785796849532156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A390501.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390805.P8009665670188086551

`∑{d}[n+1, A023896(#)*A065332((n+1)/#)]`
-/

namespace A390805.P8009665670188086551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A065332 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390805.P8009665670188086551

noncomputable section

/-- A390805: The sum of the integers k from 1 to n such that gcd(n, k) is a 3-smooth number (A003586).

Offset 1, canonical program `A390805.P8009665670188086551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390805 (n : ℕ) : ℤ :=
  A390805.P8009665670188086551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391196.P12753570277924246305

`lcm(A008619(n), A056051(n+2))`
-/

namespace A391196.P12753570277924246305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008619 n) (A056051 (n + 2))

end

end A391196.P12753570277924246305

noncomputable section

/-- A391196: a(n) = (2^(n-2) * (n-2)! + floor(n/2)) mod n for n > 1.

Offset 2, canonical program `A391196.P12753570277924246305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391196 (n : ℕ) : ℤ :=
  (A391196.P12753570277924246305.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391196.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391588.P6497053860182132008

`n*A076877(n+1)`
-/

namespace A391588.P6497053860182132008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A076877 (n + 1)

end

end A391588.P6497053860182132008

noncomputable section

/-- A391588: a(n) = A003817(n) XOR (A003817(n)*n).

Offset 1, canonical program `A391588.P6497053860182132008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391588 (n : ℕ) : ℤ :=
  A391588.P6497053860182132008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391588.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391680.P7832317568989532546

`2^n-(A063759(n)-A164001(n+1))`
-/

namespace A391680.P7832317568989532546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (A063759 n - A164001 (n + 1))

end

end A391680.P7832317568989532546

noncomputable section

/-- A391680: Number of integer compositions of n that are not the first sums of any composition.

Offset 1, canonical program `A391680.P7832317568989532546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A391680 (n : ℕ) : ℤ :=
  A391680.P7832317568989532546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A391680.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391778.P10992993137501596681

`∑[A161680(n)]*A139756(n)`
-/

namespace A391778.P10992993137501596681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A139756 n

end

end A391778.P10992993137501596681

noncomputable section

/-- A391778: a(n) = n*(n-1)*(n- 2)^2*2^(n-4)/3.

Offset 1, canonical program `A391778.P10992993137501596681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A391778 (n : ℕ) : ℤ :=
  A391778.P10992993137501596681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A391778.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 2, canonical program `A392281.P15155535942076632488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392281 (n : ℕ) : ℤ :=
  A392281.P15155535942076632488.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392281.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392547.P3635859238195614292

`A390035(2*n+7)`
-/

namespace A392547.P3635859238195614292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390035 (2 * n + 7)

end

end A392547.P3635859238195614292

noncomputable section

/-- A392547: Expansion of 1 / ((1-x)^6 - x^7).

Offset 0, canonical program `A392547.P3635859238195614292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A392547 (n : ℕ) : ℤ :=
  A392547.P3635859238195614292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A392547.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A393661.P2270166270458882446

`3^n*A125169(n+1)`
-/

namespace A393661.P2270166270458882446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A125169 (n + 1)

end

end A393661.P2270166270458882446

noncomputable section

/-- A393661: A sequence appearing in the 3-Bratteli diagram, a(n)=3^(n-3)*(16*n-17), n>=3.

Offset 3, canonical program `A393661.P2270166270458882446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A393661 (n : ℕ) : ℤ :=
  A393661.P2270166270458882446.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A393661.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A394217.P17364854151603139210

`n+1-A060973(a(n-1))` with `a(0)=1`
-/

namespace A394217.P17364854151603139210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - A060973 (a (n - 1)).toNat

end

end A394217.P17364854151603139210

noncomputable section

/-- A394217: Earliest monotonic sequence satisfying a(1)=1 and a(a(n)+a(n-1))=n for n>=1 (with a(k)=0 for k<=0).

Offset 1, canonical program `A394217.P17364854151603139210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394217 (n : ℕ) : ℤ :=
  A394217.P17364854151603139210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394217.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A394865.P9137160498680794797

`∑[A373155(n+1)]`
-/

namespace A394865.P9137160498680794797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394865.P9137160498680794797

noncomputable section

/-- A394865: a(n) is the size of the largest subset A of {1, ..., n} such that x does not divide 2*y for each pair of distinct elements x, y in A.

Offset 1, canonical program `A394865.P9137160498680794797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394865 (n : ℕ) : ℤ :=
  A394865.P9137160498680794797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394865.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A394896.P2662756544387131280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A394896 (n : ℕ) : ℤ :=
  A394896.P2662756544387131280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A394896.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395196.P11171667205337858448

`A179783(n)+3*n`
-/

namespace A395196.P11171667205337858448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179783 n + (3 * n : ℤ)

end

end A395196.P11171667205337858448

noncomputable section

/-- A395196: Minimal value of Sum_{i=1..n} p(i)*p(i+1), where p(n+1)=p(1), as p ranges over all permutations of odd numbers {1,3,...,2*n-1}.

Offset 1, canonical program `A395196.P11171667205337858448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395196 (n : ℕ) : ℤ :=
  A395196.P11171667205337858448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395196.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A395581.P5928758976938920943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395581 (n : ℕ) : ℤ :=
  A395581.P5928758976938920943.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395581.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396345.P16309646855747641725

`∑[A396344(n+1)]-n`
-/

namespace A396345.P16309646855747641725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A396345.P16309646855747641725

noncomputable section

/-- A396345: Expansion of x * (3+3*x-8*x^2-3*x^3+2*x^4-3*x^5+4*x^6+x^7-x^8)/((1-x)^2 * (1+x) * (1-3*x^2-x^4+x^6)).

Offset 1, canonical program `A396345.P16309646855747641725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 393 terms. -/
def A396345 (n : ℕ) : ℤ :=
  A396345.P16309646855747641725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 393 terms. -/
def A396345.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A397106.P2853879594404481346

`2*n+3-A341865(n+1)`
-/

namespace A397106.P2853879594404481346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A341865 (n + 1)

end

end A397106.P2853879594404481346

noncomputable section

/-- A397106: a(n) = n + A275314(n), for n >= 1.

Offset 1, canonical program `A397106.P2853879594404481346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397106 (n : ℕ) : ℤ :=
  A397106.P2853879594404481346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397106.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A397617.P18291588646543566020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3679 terms. -/
def A397617 (n : ℕ) : ℤ :=
  A397617.P18291588646543566020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3679 terms. -/
def A397617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397618.P11715210147118597924

`A000040(comp[floor(e*n)])`
-/

namespace A397618.P11715210147118597924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A397618.P11715210147118597924

noncomputable section

/-- A397618: a(n) = prime(floor(n*e/(e-1))).

Offset 1, canonical program `A397618.P11715210147118597924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6321 terms. -/
def A397618 (n : ℕ) : ℤ :=
  A397618.P11715210147118597924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6321 terms. -/
def A397618.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A398300.P1299227352544880924

`A027709(A017017(n))`
-/

namespace A398300.P1299227352544880924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027709 (A017017 n).toNat

end

end A398300.P1299227352544880924

noncomputable section

/-- A398300: a(n) is the minimum possible sum of the numbers on all non-mine cells when n mines are placed on an infinite Minesweeper board (each non-mine cell's number is the count of mines among its up to 8 neighbors).

Offset 1, canonical program `A398300.P1299227352544880924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A398300 (n : ℕ) : ℤ :=
  A398300.P1299227352544880924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A398300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398389.P6222252586482190489

`A177712(n+1)+2`
-/

namespace A398389.P6222252586482190489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1) + 2

end

end A398389.P6222252586482190489

noncomputable section

/-- A398389: Even positive numbers m such that m - 2^k is composite for all k > 0 with 2^k < m.

Offset 1, canonical program `A398389.P6222252586482190489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398389 (n : ℕ) : ℤ :=
  A398389.P6222252586482190489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398389.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A398709.P7989658470484696830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A398709 (n : ℕ) : ℤ :=
  A398709.P7989658470484696830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A398709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381973.P380861839472755798

`A120503(A381974(n+1))`
-/

namespace A381973.P380861839472755798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120503 (A381974 (n + 1)).toNat

end

end A381973.P380861839472755798

noncomputable section

/-- A381973: Numbers m such that Sum_{k >= 0} floor(m/3^k) is prime.

Offset 1, canonical program `A381973.P380861839472755798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A381973 (n : ℕ) : ℤ :=
  A381973.P380861839472755798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A381973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385558.P8802880236635373907

`lcm(A385557(n+1), A394223(n+1))`
-/

namespace A385558.P8802880236635373907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A385557 (n + 1)) (A394223 (n + 1))

end

end A385558.P8802880236635373907

noncomputable section

/-- A385558: Period of {binomial(N,7) mod n: N in Z}.

Offset 1, canonical program `A385558.P8802880236635373907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385558 (n : ℕ) : ℤ :=
  (A385558.P8802880236635373907.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385558.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373087.P7180067676949029928

`(eq[3, A001221(2*(n+1))]+1)²`
-/

namespace A373087.P7180067676949029928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A373087.P7180067676949029928

noncomputable section

/-- A373087: k is a term if k is a square and its odd part is divisible by exactly two distinct primes.

Offset 1, canonical program `A373087.P7180067676949029928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373087 (n : ℕ) : ℤ :=
  (A373087.P7180067676949029928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374356.P5036985431895007089

`n-A374355(n)`
-/

namespace A374356.P5036985431895007089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A374355 n

end

end A374356.P5036985431895007089

noncomputable section

/-- A374356: a(n) is the greatest fibbinary number f <= n such that n - f is also a fibbinary number whose binary expansion has no common 1's with that of f (where fibbinary numbers correspond to A003714).

Offset 0, canonical program `A374356.P5036985431895007089`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374355, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374356 (n : ℕ) : ℤ :=
  A374356.P5036985431895007089.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374355, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374362.P13095679311797135054

`A005836(1+A289814(n))`
-/

namespace A374362.P13095679311797135054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (1 + A289814 n).toNat

end

end A374362.P13095679311797135054

noncomputable section

/-- A374362: a(n) is the least term t of A005836 such that n - t also belongs to A005836.

Offset 0, canonical program `A374362.P13095679311797135054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374362 (n : ℕ) : ℤ :=
  A374362.P13095679311797135054.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375145.P4922130066098864515

`eq[1, A295659(n+1)]+1`
-/

namespace A375145.P4922130066098864515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375145.P4922130066098864515

noncomputable section

/-- A375145: Numbers whose prime factorization has exactly one exponent that is larger than 2.

Offset 1, canonical program `A375145.P4922130066098864515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8078 terms. -/
def A375145 (n : ℕ) : ℤ :=
  (A375145.P4922130066098864515.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8078 terms. -/
def A375145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375378.P14882579800046314677

`A065120(n)^a(A053645(n))` with `a(0)=1`
-/

namespace A375378.P14882579800046314677
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A065120 n : ℝ) ^ (a (A053645 n).toNat)

end

end A375378.P14882579800046314677

noncomputable section

/-- A375378: Value of the power tower formed by the numbers in the n-th composition (in standard order).

Offset 0, canonical program `A375378.P14882579800046314677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, A065120, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375378 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375378.P14882579800046314677.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, A065120, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375379.P12503235433013472216

`(A065120(n)+1)^a(A053645(n))` with `a(0)=1`
-/

namespace A375379.P12503235433013472216
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A065120 n + 1 : ℝ) ^ (a (A053645 n).toNat)

end

end A375379.P12503235433013472216

noncomputable section

/-- A375379: Value of the power tower formed by the numbers obtained by adding 1 to the terms in the n-th composition (in standard order).

Offset 0, canonical program `A375379.P12503235433013472216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, A065120, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375379 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375379.P12503235433013472216.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, A065120, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375379.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376074.P11076744248211188563

`A099777(A355264(n+1))`
-/

namespace A376074.P11076744248211188563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A355264 (n + 1)).toNat

end

end A376074.P11076744248211188563

noncomputable section

/-- A376074: a(n) is the number of distinct right circular cones with integer radius and height having the same volume as a sphere with radius n.

Offset 1, canonical program `A376074.P11076744248211188563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A376074 (n : ℕ) : ℤ :=
  A376074.P11076744248211188563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A376074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377817.P402920297205935675

`lt[1, A162641(n+1)]+1`
-/

namespace A377817.P402920297205935675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377817.P402920297205935675

noncomputable section

/-- A377817: Numbers that have more than one even exponent in their prime factorization.

Offset 1, canonical program `A377817.P402920297205935675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A377817 (n : ℕ) : ℤ :=
  (A377817.P402920297205935675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A377817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378933.P7499219059448651818

`A166761(n+1)/2`
-/

namespace A378933.P7499219059448651818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166761 (n + 1) : ℚ) / 2

end

end A378933.P7499219059448651818

noncomputable section

/-- A378933: Number of minimal edge cuts in the 3 X n grid graph.

Offset 1, canonical program `A378933.P7499219059448651818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166761, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378933 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378933.P7499219059448651818.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166761, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378933.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A380457.P14810033455213116904

`A000203(n+1)+A001221(n+1)`
-/

namespace A380457.P14810033455213116904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A001221 (n + 1)

end

end A380457.P14810033455213116904

noncomputable section

/-- A380457: Sum of divisors of n plus the number of distinct prime divisors of n: a(n) = sigma(n) + omega(n).

Offset 1, canonical program `A380457.P14810033455213116904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380457 (n : ℕ) : ℤ :=
  A380457.P14810033455213116904.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380457.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A380855.P12946928765439253338`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380855 (n : ℕ) : ℤ :=
  A380855.P12946928765439253338.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380855.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A386571.P6980462762357179349

`comp[n-A001221(n+1)]+1`
-/

namespace A386571.P6980462762357179349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A386571.P6980462762357179349

noncomputable section

/-- A386571: Numbers that are not of the form k - omega(k), where omega(k) is the number of distinct primes dividing k.

Offset 1, canonical program `A386571.P6980462762357179349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386571 (n : ℕ) : ℤ :=
  (A386571.P6980462762357179349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386799.P15179117450760273896

`eq[0, A295883(n+1)]+1`
-/

namespace A386799.P15179117450760273896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A386799.P15179117450760273896

noncomputable section

/-- A386799: Numbers without an exponent 3 in their prime factorization.

Offset 1, canonical program `A386799.P15179117450760273896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386799 (n : ℕ) : ℤ :=
  (A386799.P15179117450760273896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390555.P11327072982713698783

`∏{e}[n+1, A099777(#)]`
-/

namespace A390555.P11327072982713698783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A099777 (Nat.factorization (f1 n) p)

end

end A390555.P11327072982713698783

noncomputable section

/-- A390555: The number of exponential divisors of n^2.

Offset 1, canonical program `A390555.P11327072982713698783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390555 (n : ℕ) : ℤ :=
  A390555.P11327072982713698783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394085.P10152136709517601280

`A000203(n+1)-A063956(n+1)+A056169(n+1)`
-/

namespace A394085.P10152136709517601280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A063956 (n + 1) + A056169 (n + 1)

end

end A394085.P10152136709517601280

noncomputable section

/-- A394085: a(n) = sigma(n) - Sum_{p|n, p prime, gcd(p,n/p) = 1} (p-1).

Offset 1, canonical program `A394085.P10152136709517601280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394085 (n : ℕ) : ℤ :=
  A394085.P10152136709517601280.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394085.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A397071.P1842801038344067177

`n²+6*n+3+2*A006218(n)`
-/

namespace A397071.P1842801038344067177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 6 * n : ℤ) + (3 + 2 * A006218 n)

end

end A397071.P1842801038344067177

noncomputable section

/-- A397071: Number of true statements (x op y) = z, where 0 <= x, y, z <= n, op is in {+,-,*,/}.

Offset 0, canonical program `A397071.P1842801038344067177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397071 (n : ℕ) : ℤ :=
  A397071.P1842801038344067177.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397071.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 0, canonical program `A397801.P10674669512506407556`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397801 (n : ℕ) : ℤ :=
  A397801.P10674669512506407556.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397801.provenance : SequenceMachineLib.Provenance := .conditional

