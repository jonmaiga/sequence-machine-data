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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A033638.P14460038369392948833

`A002620(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033638.P14460038369392948833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + 1

end

end A033638.P14460038369392948833

noncomputable section

/-- A033638: Quarter-squares plus 1 (that is, a(n) = A002620(n) + 1).

Offset 0, canonical program `A033638.P14460038369392948833`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002620(n)+1` (program `A033638.P14460038369392948833`, by `A033638.P14460038369392948833.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A033638 (n : ℕ) : ℤ :=
  A033638.P14460038369392948833.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002620(n)+1` (program `A033638.P14460038369392948833`, by `A033638.P14460038369392948833.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A033638.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A043699.P18270398425961927853

`A000129(n)*A000129(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A043699.P18270398425961927853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A000129 (2 * n)

end

end A043699.P18270398425961927853

noncomputable section

/-- A043699: a(n)= A000129(n)*A000129(2*n) where A000129(n) are the Pell numbers.

Offset 0, canonical program `A043699.P18270398425961927853`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)*A000129(2*n)` (program `A043699.P18270398425961927853`, by `A043699.P18270398425961927853.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A043699 (n : ℕ) : ℤ :=
  A043699.P18270398425961927853.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)*A000129(2*n)` (program `A043699.P18270398425961927853`, by `A043699.P18270398425961927853.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A043699.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052631.P4676402812199021169

`n!*A000129(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052631.P4676402812199021169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000129 n

end

end A052631.P4676402812199021169

noncomputable section

/-- A052631: a(n) = n!*Pell(n) (or n!*A000129(n)).

Offset 0, canonical program `A052631.P4676402812199021169`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*A000129(n)` (program `A052631.P4676402812199021169`, by `A052631.P4676402812199021169.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A052631 (n : ℕ) : ℤ :=
  A052631.P4676402812199021169.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*A000129(n)` (program `A052631.P4676402812199021169`, by `A052631.P4676402812199021169.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A052631.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A027974.P578989068893304175

`2^(n+3)-A000032(n+4)`
-/

namespace A027974.P578989068893304175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A000032 (n + 4)

end

end A027974.P578989068893304175

noncomputable section

/-- A027974: a(n) = Sum_{k=1..n+1} A027960(n+1, n+1+k).

Offset 0, canonical program `A027974.P578989068893304175`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027974 (n : ℕ) : ℤ :=
  A027974.P578989068893304175.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027984.P16612598708902994729

`1/2*(5*A000045(2*n+2)+A000032(2*n+1)-A000032(n+3))`
-/

namespace A027984.P16612598708902994729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (5 * A000045 (2 * n + 2) + A000032 (2 * n + 1) - A000032 (n + 3) : ℚ)

end

end A027984.P16612598708902994729

noncomputable section

/-- A027984: a(n) = Sum_{k=0..n} T(n, k)*T(n, n+k), T given by A027960.

Offset 0, canonical program `A027984.P16612598708902994729`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027984 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A027984.P16612598708902994729.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028322.P16461626621945796643

`(n+1)*(7*n-2)*A000108(n)/(2*(2*n-1))`
-/

namespace A028322.P16461626621945796643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((7 * n : ℤ) - 2) * A000108 n : ℚ) / (2 * ((2 * n : ℤ) - 1) : ℚ)

end

end A028322.P16461626621945796643

noncomputable section

/-- A028322: Central elements in the 5-Pascal triangle A028313.

Offset 0, canonical program `A028322.P16461626621945796643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028322 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028322.P16461626621945796643.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028329.P2723209719397665586

`2*A000984(n)`
-/

namespace A028329.P2723209719397665586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n

end

end A028329.P2723209719397665586

noncomputable section

/-- A028329: Twice central binomial coefficients.

Offset 0, canonical program `A028329.P2723209719397665586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028329 (n : ℕ) : ℤ :=
  A028329.P2723209719397665586.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028365.P14324510846143956834

`2^A000217(n)*A005329(n)`
-/

namespace A028365.P14324510846143956834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000217 n : ℤ) * (A005329 n : ℚ)

end

end A028365.P14324510846143956834

noncomputable section

/-- A028365: Order of general affine group over GF(2), AGL(n,2).

Offset 0, canonical program `A028365.P14324510846143956834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028365 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A028365.P14324510846143956834.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028365.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028401.P16782666663805839320

`a(n-1)+3*A000217(2^(n-1))` with `a(0)=3`
-/

namespace A028401.P16782666663805839320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 3 * A000217 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A028401.P16782666663805839320

noncomputable section

/-- A028401: The (2^n+1)-th triangular number (cf. A000217).

Offset 2, canonical program `A028401.P16782666663805839320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028401 (n : ℕ) : ℤ :=
  A028401.P16782666663805839320.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028401.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028892.P5650523089754077425

`A000045(n)-A016116(n)`
-/

namespace A028892.P5650523089754077425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A016116 n

end

end A028892.P5650523089754077425

noncomputable section

/-- A028892: a(n) = Fibonacci(n) - 2^(floor(n/2)).

Offset 0, canonical program `A028892.P5650523089754077425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028892 (n : ℕ) : ℤ :=
  A028892.P5650523089754077425.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028892.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028935.P1136129241853609240

`A006720(n)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028935.P1136129241853609240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 n ^ 3

end

end A028935.P1136129241853609240

noncomputable section

/-- A028935: a(n) = A006720(n)^3 (cubed terms of Somos-4 sequence).

Offset 0, canonical program `A028935.P1136129241853609240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028935 (n : ℕ) : ℤ :=
  A028935.P1136129241853609240.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028935.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028936.P3915045730177328267

`A006720(n+2)*A006720(n+3)`
-/

namespace A028936.P3915045730177328267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 (n + 2) * A006720 (n + 3)

end

end A028936.P3915045730177328267

noncomputable section

/-- A028936: Numerator of x-coordinate of (2n)*P where P is the generator for rational points on the curve y^2 + y = x^3 - x.

Offset 1, canonical program `A028936.P3915045730177328267`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028936 (n : ℕ) : ℤ :=
  A028936.P3915045730177328267.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028945.P9063600272498406862

`A006720(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A028945.P9063600272498406862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 n ^ 2

end

end A028945.P9063600272498406862

noncomputable section

/-- A028945: a(n) = A006720(n)^2 (squared terms of Somos-4 sequence).

Offset 0, canonical program `A028945.P9063600272498406862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028945 (n : ℕ) : ℤ :=
  A028945.P9063600272498406862.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029549.P2226111609078348210

`a(n-1)+A001109(2*n)` with `a(0)=0`
-/

namespace A029549.P2226111609078348210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001109 (2 * n)

end

end A029549.P2226111609078348210

noncomputable section

/-- A029549: a(n + 3) = 35*a(n + 2) - 35*a(n + 1) + a(n), with a(0) = 0, a(1) = 6, a(2) = 210.

Offset 0, canonical program `A029549.P2226111609078348210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029549 (n : ℕ) : ℤ :=
  A029549.P2226111609078348210.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029887.P13365086827215929725

`4*a(n-1)+A000531(n+1)` with `a(0)=1`
-/

namespace A029887.P13365086827215929725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + A000531 (n + 1)

end

end A029887.P13365086827215929725

noncomputable section

/-- A029887: A sum over scaled A000531 related to Catalan numbers C(n).

Offset 0, canonical program `A029887.P13365086827215929725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029887 (n : ℕ) : ℤ :=
  A029887.P13365086827215929725.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029887.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029907.P6582962671373940873

`A010049(n+1)+A152163(n+1)`
-/

namespace A029907.P6582962671373940873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + A152163 (n + 1)

end

end A029907.P6582962671373940873

noncomputable section

/-- A029907: a(n+1) = a(n) + a(n-1) + Fibonacci(n), with a(0) = 0 and a(1) = 1.

Offset 0, canonical program `A029907.P6582962671373940873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029907 (n : ℕ) : ℤ :=
  A029907.P6582962671373940873.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030270.P806497287701641262

`(A001333(n)+A001333(floor((n+2)/2)))/2`
-/

namespace A030270.P806497287701641262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n + A001333 ⌊(n + 2 : ℚ) / 2⌋.toNat : ℚ) / 2

end

end A030270.P806497287701641262

noncomputable section

/-- A030270: Number of nonisomorphic and nonantiisomorphic reflexive transitive and cotransitive (complement is transitive) relations.

Offset 0, canonical program `A030270.P806497287701641262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030270 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A030270.P806497287701641262.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030270.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030301.P5875718275954375788

`1-A030300(n+1)`
-/

namespace A030301.P5875718275954375788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030300 (n + 1)

end

end A030301.P5875718275954375788

noncomputable section

/-- A030301: n-th run has length 2^(n-1).

Offset 1, canonical program `A030301.P5875718275954375788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030301 (n : ℕ) : ℤ :=
  A030301.P5875718275954375788.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030301.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A030428.P15846834439160890083

`A000178(n)-1`
-/

namespace A030428.P15846834439160890083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n - 1

end

end A030428.P15846834439160890083

noncomputable section

/-- A030428: a(n) = 0! * 1! * 2! * ... * n! - 1.

Offset 0, canonical program `A030428.P15846834439160890083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030428 (n : ℕ) : ℤ :=
  A030428.P15846834439160890083.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A030428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032091.P3822543457742477574

`2*A002624(n)`
-/

namespace A032091.P3822543457742477574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002624 n

end

end A032091.P3822543457742477574

noncomputable section

/-- A032091: Number of reversible strings with n-1 beads of 2 colors. 4 beads are black. String is not palindromic.

Offset 6, canonical program `A032091.P3822543457742477574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032091 (n : ℕ) : ℤ :=
  A032091.P3822543457742477574.a (n - 6)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032091.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032279.P18072235396307489489

`(A008646(n)+C(floor((n+4)/2), 2))/2`
-/

namespace A032279.P18072235396307489489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008646 n + (Nat.choose ⌊(n + 4 : ℚ) / 2⌋.toNat 2 : ℤ) : ℚ) / 2

end

end A032279.P18072235396307489489

noncomputable section

/-- A032279: Number of bracelets (turnover necklaces) of n beads of 2 colors, 5 of them black.

Offset 5, canonical program `A032279.P18072235396307489489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032279 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A032279.P18072235396307489489.a (n - 5))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032279.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032357.P17874980805433282385

`A000108(n)-a(n-1)` with `a(0)=1`
-/

namespace A032357.P17874980805433282385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 n - a (n - 1)

end

end A032357.P17874980805433282385

noncomputable section

/-- A032357: Convolution of Catalan numbers and powers of -1.

Offset 0, canonical program `A032357.P17874980805433282385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032357 (n : ℕ) : ℤ :=
  A032357.P17874980805433282385.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032443.P9008347100965592758

`4*a(n-1)-A000108(n-1)` with `a(0)=1`
-/

namespace A032443.P9008347100965592758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - A000108 (n - 1)

end

end A032443.P9008347100965592758

noncomputable section

/-- A032443: a(n) = Sum_{i=0..n} binomial(2*n, i).

Offset 0, canonical program `A032443.P9008347100965592758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032443 (n : ℕ) : ℤ :=
  A032443.P9008347100965592758.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032616.P17004683288078199390

`A032615(n²)`
-/

namespace A032616.P17004683288078199390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (n ^ 2)

end

end A032616.P17004683288078199390

noncomputable section

/-- A032616: a(n) = floor(n^2/Pi).

Offset 0, canonical program `A032616.P17004683288078199390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032616 (n : ℕ) : ℤ :=
  A032616.P17004683288078199390.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032616.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033162.P7238810650914516972

`A005836(n+1)+3`
-/

namespace A033162.P7238810650914516972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + 3

end

end A033162.P7238810650914516972

noncomputable section

/-- A033162: Begins with (3, 4); avoids 3-term arithmetic progressions.

Offset 1, canonical program `A033162.P7238810650914516972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033162 (n : ℕ) : ℤ :=
  A033162.P7238810650914516972.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033536.P213110946454861906

`A000108(n)^3`
-/

namespace A033536.P213110946454861906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 3

end

end A033536.P213110946454861906

noncomputable section

/-- A033536: Cubes of Catalan numbers (A000108).

Offset 0, canonical program `A033536.P213110946454861906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033536 (n : ℕ) : ℤ :=
  A033536.P213110946454861906.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033540.P6769842975327938376

`n!+A007526(n)`
-/

namespace A033540.P6769842975327938376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + A007526 n

end

end A033540.P6769842975327938376

noncomputable section

/-- A033540: a(n+1) = n*(a(n) + 1) for n >= 1, a(1) = 1.

Offset 1, canonical program `A033540.P6769842975327938376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033540 (n : ℕ) : ℤ :=
  A033540.P6769842975327938376.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033814.P15086063226539162751

`A000032(n+8)-11*(n+1)-29`
-/

namespace A033814.P15086063226539162751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 8) - (11 * (n + 1) : ℤ) - 29

end

end A033814.P15086063226539162751

noncomputable section

/-- A033814: Convolution of positive integers n with Lucas numbers L(k)(A000032) for k >= 4.

Offset 1, canonical program `A033814.P15086063226539162751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033814 (n : ℕ) : ℤ :=
  A033814.P15086063226539162751.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033814.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033885.P17185518779977576955

`A008585(n+1)-A000203(n+1)`
-/

namespace A033885.P17185518779977576955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) - A000203 (n + 1)

end

end A033885.P17185518779977576955

noncomputable section

/-- A033885: a(n) = 3*n - sum of divisors of n.

Offset 1, canonical program `A033885.P17185518779977576955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033885 (n : ℕ) : ℤ :=
  A033885.P17185518779977576955.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033994.P18096815922724586734

`A000292(n+1)+A002412(n+1)`
-/

namespace A033994.P18096815922724586734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + A002412 (n + 1)

end

end A033994.P18096815922724586734

noncomputable section

/-- A033994: a(n) = n*(n+1)*(5*n+1)/6.

Offset 1, canonical program `A033994.P18096815922724586734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033994 (n : ℕ) : ℤ :=
  A033994.P18096815922724586734.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034299.P5111804517773824309

`2*a(n-1)+A001057(n+1)` with `a(0)=1`
-/

namespace A034299.P5111804517773824309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A001057 (n + 1)

end

end A034299.P5111804517773824309

noncomputable section

/-- A034299: Alternating sum transform (PSumSIGN) of A000975.

Offset 0, canonical program `A034299.P5111804517773824309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034299 (n : ℕ) : ℤ :=
  A034299.P5111804517773824309.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034586.P15851041090830579209

`log2(A034585(n+1))`
-/

namespace A034586.P15851041090830579209
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A034585 (n + 1) : ℝ)

end

end A034586.P15851041090830579209

noncomputable section

/-- A034586: Log_2 of dimension of an irreducible Z_2 graded H-module for Clifford algebra Cl_n.

Offset 1, canonical program `A034586.P15851041090830579209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034586 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034586.P15851041090830579209.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034687.P241853137032285340

`5^n*A008548(n+1)/(n+1)!`
-/

namespace A034687.P241853137032285340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) * A008548 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A034687.P241853137032285340

noncomputable section

/-- A034687: Related to quintic factorial numbers A008548.

Offset 1, canonical program `A034687.P241853137032285340`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034687 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034687.P241853137032285340.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034688.P6817771666164140094

`5^n/n!*A008548(n)`
-/

namespace A034688.P6817771666164140094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) / (Nat.factorial n : ℚ) * (A008548 n : ℚ)

end

end A034688.P6817771666164140094

noncomputable section

/-- A034688: Expansion of (1-25*x)^(-1/5), related to quintic factorial numbers A008548.

Offset 0, canonical program `A034688.P6817771666164140094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034688 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034688.P6817771666164140094.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034832.P8619315066311098185

`A147585(n+2)/5`
-/

namespace A034832.P8619315066311098185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147585 (n + 2) : ℚ) / 5

end

end A034832.P8619315066311098185

noncomputable section

/-- A034832: a(n) = n-th sept-factorial number divided by 5.

Offset 1, canonical program `A034832.P8619315066311098185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034832 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034832.P8619315066311098185.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034832.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034941.P11163364113472100620

`A034940(n)/(2*n+1)`
-/

namespace A034941.P11163364113472100620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034940 n : ℚ) / (2 * n + 1 : ℚ)

end

end A034941.P11163364113472100620

noncomputable section

/-- A034941: Number of labeled triangular cacti with 2n+1 nodes (n triangles).

Offset 0, canonical program `A034941.P11163364113472100620`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034941.P11163364113472100620.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035101.P13719855296267505059

`(n+1)!*2^n-A001147(n+1)`
-/

namespace A035101.P13719855296267505059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) * 2 ^ n : ℤ) - A001147 (n + 1)

end

end A035101.P13719855296267505059

noncomputable section

/-- A035101: E.g.f. x*(c(x/2)-1)/(1-2*x), where c(x) = g.f. for Catalan numbers A000108.

Offset 1, canonical program `A035101.P13719855296267505059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035101 (n : ℕ) : ℤ :=
  A035101.P13719855296267505059.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035319.P17598320388168911366

`A001147(2*n)/(2*n+1)`
-/

namespace A035319.P17598320388168911366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A035319.P17598320388168911366

noncomputable section

/-- A035319: Number of rooted maps of genus n with one vertex and one face; the maps are considered on orientable surfaces and contain 2n edges.

Offset 0, canonical program `A035319.P17598320388168911366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035319 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A035319.P17598320388168911366.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035598.P1854205204112997453

`a(n-1)+A035597(n)+A035597(n-1)` with `a(0)=0`
-/

namespace A035598.P1854205204112997453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A035597 n + A035597 (n - 1)

end

end A035598.P1854205204112997453

noncomputable section

/-- A035598: Number of points of L1 norm 4 in cubic lattice Z^n.

Offset 0, canonical program `A035598.P1854205204112997453`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035598 (n : ℕ) : ℤ :=
  A035598.P1854205204112997453.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035598.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035599.P13326345351470852908

`A001847(n)-A001846(n)`
-/

namespace A035599.P13326345351470852908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001847 n - A001846 n

end

end A035599.P13326345351470852908

noncomputable section

/-- A035599: Number of points of L1 norm 5 in cubic lattice Z^n.

Offset 0, canonical program `A035599.P13326345351470852908`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035599 (n : ℕ) : ℤ :=
  A035599.P13326345351470852908.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035599.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036217.P8966412653220585463

`3^n*A000332(n+4)`
-/

namespace A036217.P8966412653220585463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000332 (n + 4)

end

end A036217.P8966412653220585463

noncomputable section

/-- A036217: Expansion of 1/(1-3*x)^5; 5-fold convolution of A000244 (powers of 3).

Offset 0, canonical program `A036217.P8966412653220585463`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036217 (n : ℕ) : ℤ :=
  A036217.P8966412653220585463.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036217.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036428.P9645460647208230235

`A028230(n+1)²`
-/

namespace A036428.P9645460647208230235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028230 (n + 1) ^ 2

end

end A036428.P9645460647208230235

noncomputable section

/-- A036428: Square octagonal numbers.

Offset 1, canonical program `A036428.P9645460647208230235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036428 (n : ℕ) : ℤ :=
  A036428.P9645460647208230235.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036782.P7982926472072455360

`A036781(n)-1`
-/

namespace A036782.P7982926472072455360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036781 n - 1

end

end A036782.P7982926472072455360

noncomputable section

/-- A036782: a(n) = n - 1 + Sum_{j=0..n} j!.

Offset 0, canonical program `A036782.P7982926472072455360`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036782 (n : ℕ) : ℤ :=
  A036782.P7982926472072455360.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036909.P4177836558209038842

`2/3*4^(n+1)*A005809(n+1)`
-/

namespace A036909.P4177836558209038842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (4 ^ (n + 1) : ℚ) * (A005809 (n + 1) : ℚ)

end

end A036909.P4177836558209038842

noncomputable section

/-- A036909: a(n) = (2/3) * 4^n * binomial(3*n, n).

Offset 1, canonical program `A036909.P4177836558209038842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036909 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036909.P4177836558209038842.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036910.P2892870728817735227

`(A001448(n)+A000984(n)²)/2`
-/

namespace A036910.P2892870728817735227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001448 n + A000984 n ^ 2 : ℚ) / 2

end

end A036910.P2892870728817735227

noncomputable section

/-- A036910: a(n) = (binomial(4*n, 2*n) + binomial(2*n, n)^2)/2.

Offset 0, canonical program `A036910.P2892870728817735227`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036910 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036910.P2892870728817735227.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036911.P1814180691766575448

`1/2*((2*n+1)*A000108(2*n)+(-1)^n*(n+1)²*A000108(n)²)`
-/

namespace A036911.P1814180691766575448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((2 * n + 1 : ℤ) * A000108 (2 * n) + (-1) ^ n * ((n + 1) ^ 2 : ℤ) * A000108 n ^ 2 : ℚ)

end

end A036911.P1814180691766575448

noncomputable section

/-- A036911: a(n) = (binomial(4*n, 2*n) + (-1)^n*binomial(2*n, n)^2)/2.

Offset 0, canonical program `A036911.P1814180691766575448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036911 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036911.P1814180691766575448.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A036911.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037267.P18310968918639958944

`A045621(2^n)`
-/

namespace A037267.P18310968918639958944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 ^ n)

end

end A037267.P18310968918639958944

noncomputable section

/-- A037267: Number of Boolean functions on n inputs with representing polynomial of max degree n.

Offset 0, canonical program `A037267.P18310968918639958944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037267 (n : ℕ) : ℤ :=
  A037267.P18310968918639958944.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037293.P6104022534626570522

`A001405(2^n)`
-/

namespace A037293.P6104022534626570522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 ^ n)

end

end A037293.P6104022534626570522

noncomputable section

/-- A037293: a(n) = Sum_{i=0..2^(n-1)} binomial(2^(n-1), i)^2.

Offset 0, canonical program `A037293.P6104022534626570522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037293 (n : ℕ) : ℤ :=
  A037293.P6104022534626570522.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037964.P9357622847062793927

`1/2*(A001448(n)-(-1)^n*A000984(n))`
-/

namespace A037964.P9357622847062793927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A001448 n - (-1) ^ n * A000984 n : ℚ)

end

end A037964.P9357622847062793927

noncomputable section

/-- A037964: a(n) = (1/2)*(binomial(4*n, 2*n) - (-1)^n*binomial(2*n,n)).

Offset 0, canonical program `A037964.P9357622847062793927`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037964 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A037964.P9357622847062793927.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037967.P14716872253266186912

`A000217(A000984(n))`
-/

namespace A037967.P14716872253266186912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000984 n).toNat

end

end A037967.P14716872253266186912

noncomputable section

/-- A037967: a(n) = (binomial(2*n, n)^2 + binomial(2*n, n))/2.

Offset 0, canonical program `A037967.P14716872253266186912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037967 (n : ℕ) : ℤ :=
  A037967.P14716872253266186912.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038003.P17566269793570053852

`A000108(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038003.P17566269793570053852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 ^ n - 1)

end

end A038003.P17566269793570053852

noncomputable section

/-- A038003: Odd Catalan numbers: a(n) = A000108(2^n-1).

Offset 0, canonical program `A038003.P17566269793570053852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038003 (n : ℕ) : ℤ :=
  A038003.P17566269793570053852.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038003.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038033.P5148770297336248297

`A000166(n+2)*(n+3)*(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038033.P5148770297336248297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 2) * (n + 3 : ℤ) * (n + 2 : ℤ)

end

end A038033.P5148770297336248297

noncomputable section

/-- A038033: a(n) = A000166(n-1)*n*(n-1).

Offset 3, canonical program `A038033.P5148770297336248297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038033 (n : ℕ) : ℤ :=
  A038033.P5148770297336248297.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038033.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038048.P17481964441828824104

`A000142(n)*A000203(n+1)`
-/

namespace A038048.P17481964441828824104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000203 (n + 1)

end

end A038048.P17481964441828824104

noncomputable section

/-- A038048: a(n) = (n-1)! * sigma(n).

Offset 1, canonical program `A038048.P17481964441828824104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038048 (n : ℕ) : ℤ :=
  A038048.P17481964441828824104.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038155.P3945699651781914259

`A038154(n)/2`
-/

namespace A038155.P3945699651781914259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038154 n : ℚ) / 2

end

end A038155.P3945699651781914259

noncomputable section

/-- A038155: a(n) = (n!/2) * Sum_{k=0..n-2} 1/k!.

Offset 0, canonical program `A038155.P3945699651781914259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038155 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038155.P3945699651781914259.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038360.P13331399108565173454

`A000079(n+1)-A000931(n+6)`
-/

namespace A038360.P13331399108565173454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A000931 (n + 6)

end

end A038360.P13331399108565173454

noncomputable section

/-- A038360: Ranks of certain relations among Euler sums of weight n.

Offset 3, canonical program `A038360.P13331399108565173454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038360 (n : ℕ) : ℤ :=
  A038360.P13331399108565173454.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038544.P6421879482260911790

`A037156(n)²`
-/

namespace A038544.P6421879482260911790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037156 n ^ 2

end

end A038544.P6421879482260911790

noncomputable section

/-- A038544: a(n) = Sum_{i=0..10^n} i^3.

Offset 0, canonical program `A038544.P6421879482260911790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038544 (n : ℕ) : ℤ :=
  A038544.P6421879482260911790.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038721.P7529972670454928615

`2*A016269(n)`
-/

namespace A038721.P7529972670454928615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016269 n

end

end A038721.P7529972670454928615

noncomputable section

/-- A038721: k=2 column of A038719.

Offset 1, canonical program `A038721.P7529972670454928615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038721 (n : ℕ) : ℤ :=
  A038721.P7529972670454928615.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039964.P6848612455107307311

`A001006(n)%3`
-/

namespace A039964.P6848612455107307311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) 3

end

end A039964.P6848612455107307311

noncomputable section

/-- A039964: Motzkin numbers A001006 read mod 3.

Offset 0, canonical program `A039964.P6848612455107307311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039964 (n : ℕ) : ℤ :=
  A039964.P6848612455107307311.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040039.P12377440783297537610

`1/2*A018819(n+2)`
-/

namespace A040039.P12377440783297537610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A018819 (n + 2) : ℚ)

end

end A040039.P12377440783297537610

noncomputable section

/-- A040039: First differences of A033485; also A033485 with terms repeated.

Offset 0, canonical program `A040039.P12377440783297537610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A040039.P12377440783297537610.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040977.P17094286001024075111

`A000579(n+5)+A000579(n+6)`
-/

namespace A040977.P17094286001024075111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5) + A000579 (n + 6)

end

end A040977.P17094286001024075111

noncomputable section

/-- A040977: a(n) = binomial(n+5,5)*(n+3)/3.

Offset 0, canonical program `A040977.P17094286001024075111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040977 (n : ℕ) : ℤ :=
  A040977.P17094286001024075111.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A043529.P13978693915657788930

`2-A036987(n)`
-/

namespace A043529.P13978693915657788930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036987 n

end

end A043529.P13978693915657788930

noncomputable section

/-- A043529: Number of distinct base-2 digits of n.

Offset 0, canonical program `A043529.P13978693915657788930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043529 (n : ℕ) : ℤ :=
  A043529.P13978693915657788930.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A043545.P6199121594405564387

`1-A036987(n)`
-/

namespace A043545.P6199121594405564387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A036987 n

end

end A043545.P6199121594405564387

noncomputable section

/-- A043545: (Maximal base-2 digit of n) - (minimal base-2 digit of n).

Offset 0, canonical program `A043545.P6199121594405564387`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043545 (n : ℕ) : ℤ :=
  A043545.P6199121594405564387.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045445.P8537979393669909021

`A002212(n+2)-3*A002212(n+1)`
-/

namespace A045445.P8537979393669909021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 2) - 3 * A002212 (n + 1)

end

end A045445.P8537979393669909021

noncomputable section

/-- A045445: Number of nonisomorphic systems of catafusenes for the unsymmetrical schemes (group C_s) with two appendages (see references for precise definition).

Offset 1, canonical program `A045445.P8537979393669909021`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045445 (n : ℕ) : ℤ :=
  A045445.P8537979393669909021.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045502.P18302738244362755206

`40*A278620(n)`
-/

namespace A045502.P18302738244362755206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 * A278620 n

end

end A045502.P18302738244362755206

noncomputable section

/-- A045502: Numbers k such that 2*k+1 and 3*k+1 are squares.

Offset 0, canonical program `A045502.P18302738244362755206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045502 (n : ℕ) : ℤ :=
  A045502.P18302738244362755206.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045502.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045894.P8034186880919807149

`2*(2*n+10)/(n+4)*a(n-1)+4/(n+4)*A045720(n)` with `a(0)=1`
-/

namespace A045894.P8034186880919807149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * (2 * n + 10) : ℚ) / (n + 4 : ℚ) * a (n - 1) + 4 / (n + 4 : ℚ) * (A045720 n : ℚ)

end

end A045894.P8034186880919807149

noncomputable section

/-- A045894: 4-fold convolution of A001700(n), n >= 0.

Offset 0, canonical program `A045894.P8034186880919807149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045894 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045894.P8034186880919807149.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046161.P11774724709527425901

`2^A005187(n)`
-/

namespace A046161.P11774724709527425901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005187 n : ℤ)

end

end A046161.P11774724709527425901

noncomputable section

/-- A046161: a(n) = denominator of binomial(2n,n)/4^n.

Offset 0, canonical program `A046161.P11774724709527425901`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046161 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046161.P11774724709527425901.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046177.P8767503573281854959

`A001110(2*(n+1)-1)`
-/

namespace A046177.P8767503573281854959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001110 (2 * (n + 1) - 1)

end

end A046177.P8767503573281854959

noncomputable section

/-- A046177: Squares (A000290) which are also hexagonal numbers (A000384).

Offset 1, canonical program `A046177.P8767503573281854959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046177 (n : ℕ) : ℤ :=
  A046177.P8767503573281854959.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046177.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046748.P11181252808619968199

`5*a(n-1)-2*A000108(n-1)` with `a(0)=1`
-/

namespace A046748.P11181252808619968199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - 2 * A000108 (n - 1)

end

end A046748.P11181252808619968199

noncomputable section

/-- A046748: Row sums of triangle A046521.

Offset 0, canonical program `A046748.P11181252808619968199`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046748 (n : ℕ) : ℤ :=
  A046748.P11181252808619968199.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046748.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046901.P15262064477382565449

`A008343(n+2)+1`
-/

namespace A046901.P15262064477382565449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008343 (n + 2) + 1

end

end A046901.P15262064477382565449

noncomputable section

/-- A046901: a(n) = a(n-1) - n if a(n-1) > n, else a(n) = a(n-1) + n.

Offset 1, canonical program `A046901.P15262064477382565449`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046901 (n : ℕ) : ℤ :=
  A046901.P15262064477382565449.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046901.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046913.P8155784351199006177

`A000203(3*(n+1))-3*A000203(n+1)`
-/

namespace A046913.P8155784351199006177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 * (n + 1)) - 3 * A000203 (n + 1)

end

end A046913.P8155784351199006177

noncomputable section

/-- A046913: Sum of divisors of n not congruent to 0 mod 3.

Offset 1, canonical program `A046913.P8155784351199006177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046913 (n : ℕ) : ℤ :=
  A046913.P8155784351199006177.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046913.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047193.P3620569494057212592

`A051033(n+1)-1`
-/

namespace A047193.P3620569494057212592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (n + 1) - 1

end

end A047193.P3620569494057212592

noncomputable section

/-- A047193: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= n/3.

Offset 1, canonical program `A047193.P3620569494057212592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047193 (n : ℕ) : ℤ :=
  A047193.P3620569494057212592.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047193.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047406.P9646542823083722602

`A042964(n+1)*2`
-/

namespace A047406.P9646542823083722602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1) * 2

end

end A047406.P9646542823083722602

noncomputable section

/-- A047406: Numbers that are congruent to {4, 6} mod 8.

Offset 1, canonical program `A047406.P9646542823083722602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047406 (n : ℕ) : ℤ :=
  A047406.P9646542823083722602.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047406.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047463.P15818593353227516967

`2*A042963(n+1)`
-/

namespace A047463.P15818593353227516967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A042963 (n + 1)

end

end A047463.P15818593353227516967

noncomputable section

/-- A047463: Numbers that are congruent to {2, 4} mod 8.

Offset 1, canonical program `A047463.P15818593353227516967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047463 (n : ℕ) : ℤ :=
  A047463.P15818593353227516967.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047463.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047749.P10622084749293652748

`C(A032766(n), floor((n+1)/2))/(2*floor(n/2)+1)`
-/

namespace A047749.P10622084749293652748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A032766 n).toNat ⌊(n + 1 : ℚ) / 2⌋.toNat : ℚ) / (2 * ⌊(n : ℚ) / 2⌋ + 1 : ℚ)

end

end A047749.P10622084749293652748

noncomputable section

/-- A047749: If n = 2*m then a(n) = binomial(3*m, m)/(2*m+1), if n=2*m+1 then a(n) = binomial(3*m+1, m+1)/(2*m+1).

Offset 0, canonical program `A047749.P10622084749293652748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047749 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047749.P10622084749293652748.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047749.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048726.P16462123805614059439

`2*A048724(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048726.P16462123805614059439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048724 n

end

end A048726.P16462123805614059439

noncomputable section

/-- A048726: a(n) = Xmult(n,6), or 2*A048724(n).

Offset 0, canonical program `A048726.P16462123805614059439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048726 (n : ℕ) : ℤ :=
  A048726.P16462123805614059439.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048759.P2829597580028799179

`(n+3)*A029578(n+5)`
-/

namespace A048759.P2829597580028799179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A029578 (n + 5)

end

end A048759.P2829597580028799179

noncomputable section

/-- A048759: Longest perimeter of a Pythagorean triangle with n as length of one of the three sides.

Offset 3, canonical program `A048759.P2829597580028799179`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048759 (n : ℕ) : ℤ :=
  A048759.P2829597580028799179.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048759.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048760.P9900115946027900201

`A000290(A000196(n))`
-/

namespace A048760.P9900115946027900201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000196 n).toNat

end

end A048760.P9900115946027900201

noncomputable section

/-- A048760: Largest square <= n.

Offset 0, canonical program `A048760.P9900115946027900201`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048760 (n : ℕ) : ℤ :=
  A048760.P9900115946027900201.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048760.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048990.P17859373498023319433

`A000108(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048990.P17859373498023319433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n)

end

end A048990.P17859373498023319433

noncomputable section

/-- A048990: Catalan numbers with even index (A000108(2*n), n >= 0): a(n) = binomial(4*n, 2*n)/(2*n+1).

Offset 0, canonical program `A048990.P17859373498023319433`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048990 (n : ℕ) : ℤ :=
  A048990.P17859373498023319433.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049068.P6609318107156725997

`A000037(A000037(n+1))`
-/

namespace A049068.P6609318107156725997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A000037 (n + 1)).toNat

end

end A049068.P6609318107156725997

noncomputable section

/-- A049068: Complement of quarter-squares (A002620).

Offset 1, canonical program `A049068.P6609318107156725997`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049068 (n : ℕ) : ℤ :=
  A049068.P6609318107156725997.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049068.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049606.P14072092178265714622

`n!/2^A011371(n)`
-/

namespace A049606.P14072092178265714622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (2 : ℚ) ^ (A011371 n : ℤ)

end

end A049606.P14072092178265714622

noncomputable section

/-- A049606: Largest odd divisor of n!.

Offset 0, canonical program `A049606.P14072092178265714622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049606 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A049606.P14072092178265714622.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050508.P10501546453218380659

`n*A007067(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050508.P10501546453218380659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007067 n

end

end A050508.P10501546453218380659

noncomputable section

/-- A050508: Golden rectangle numbers: n * A007067(n).

Offset 0, canonical program `A050508.P10501546453218380659`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050508 (n : ℕ) : ℤ :=
  A050508.P10501546453218380659.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050510.P11714962708089619267

`n*A007067(n)*A007067(A007067(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050510.P11714962708089619267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007067 n * A007067 (A007067 n).toNat

end

end A050510.P11714962708089619267

noncomputable section

/-- A050510: Golden rectangular box numbers: a(n) = n*A007067(n)*A007067(A007067(n)).

Offset 0, canonical program `A050510.P11714962708089619267`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050510 (n : ℕ) : ℤ :=
  A050510.P11714962708089619267.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050510.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051027.P5984083100296461897

`A000203(A000203(n+1))`
-/

namespace A051027.P5984083100296461897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat

end

end A051027.P5984083100296461897

noncomputable section

/-- A051027: a(n) = sigma(sigma(n)) = sum of the divisors of the sum of the divisors of n.

Offset 1, canonical program `A051027.P5984083100296461897`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051027 (n : ℕ) : ℤ :=
  A051027.P5984083100296461897.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051027.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051064.P9470330273706946210

`A007949(n+1)+1`
-/

namespace A051064.P9470330273706946210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + 1

end

end A051064.P9470330273706946210

noncomputable section

/-- A051064: 3^a(n) exactly divides 3n. Or, 3-adic valuation of 3n.

Offset 1, canonical program `A051064.P9470330273706946210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051064 (n : ℕ) : ℤ :=
  A051064.P9470330273706946210.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051064.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051105.P9489075769552413309

`A005229(n+2)-A005229(n+1)`
-/

namespace A051105.P9489075769552413309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (n + 2) - A005229 (n + 1)

end

end A051105.P9489075769552413309

noncomputable section

/-- A051105: First differences of A005229.

Offset 1, canonical program `A051105.P9489075769552413309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051105 (n : ℕ) : ℤ :=
  A051105.P9489075769552413309.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051133.P10428894217481512850

`1/2*A000984(n+1)*A000217(n)`
-/

namespace A051133.P10428894217481512850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000984 (n + 1) : ℚ) * (A000217 n : ℚ)

end

end A051133.P10428894217481512850

noncomputable section

/-- A051133: a(n) = binomial(2n,n)*n*(2n+1)/2.

Offset 0, canonical program `A051133.P10428894217481512850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051133 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051133.P10428894217481512850.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051138.P13041293901245438807

`A006769(2*n)`
-/

namespace A051138.P13041293901245438807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 (2 * n)

end

end A051138.P13041293901245438807

noncomputable section

/-- A051138: Divisibility sequence associated with elliptic curve y^2 + y = x^3 - x and point (1, 0).

Offset 0, canonical program `A051138.P13041293901245438807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051138 (n : ℕ) : ℤ :=
  A051138.P13041293901245438807.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051376.P15745039095171772777

`A036240(n+1)-A036239(n+1)+A000918(n+1)`
-/

namespace A051376.P15745039095171772777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036240 (n + 1) - A036239 (n + 1) + A000918 (n + 1)

end

end A051376.P15745039095171772777

noncomputable section

/-- A051376: Number of Boolean functions of n variables and rank 4 from Post class F(5,inf).

Offset 1, canonical program `A051376.P15745039095171772777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051376 (n : ℕ) : ℤ :=
  A051376.P15745039095171772777.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051418.P11524117831190498451

`A003418(n+1)²`
-/

namespace A051418.P11524117831190498451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) ^ 2

end

end A051418.P11524117831190498451

noncomputable section

/-- A051418: Square of LCM of {1, 2, ..., n}.

Offset 1, canonical program `A051418.P11524117831190498451`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051418 (n : ℕ) : ℤ :=
  A051418.P11524117831190498451.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051418.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051552.P10610134321227403053

`A051540(n+1)/A051540(n)`
-/

namespace A051552.P10610134321227403053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051540 (n + 1) : ℚ) / (A051540 n : ℚ)

end

end A051552.P10610134321227403053

noncomputable section

/-- A051552: Quotients of consecutive values of LCM {b(0), b(1) ...,b(n)}, b() = A016789.

Offset 1, canonical program `A051552.P10610134321227403053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051552.P10610134321227403053.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051577.P17076629951215720156

`A001147(n+2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051577.P17076629951215720156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 2) : ℚ) / 3

end

end A051577.P17076629951215720156

noncomputable section

/-- A051577: a(n) = (2*n + 3)!!/3 = A001147(n+2)/3.

Offset 0, canonical program `A051577.P17076629951215720156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051577 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051577.P17076629951215720156.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051619.P6220942825559059437

`A034176(n+2)/7`
-/

namespace A051619.P6220942825559059437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034176 (n + 2) : ℚ) / 7

end

end A051619.P6220942825559059437

noncomputable section

/-- A051619: a(n) = (4*n+7)(!^4)/7(!^4), related to A034176(n+1) ((4*n+3)(!^4) quartic, or 4-factorials).

Offset 0, canonical program `A051619.P6220942825559059437`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051619 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051619.P6220942825559059437.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051620.P15514657218994344111

`A034177(n+2)/8`
-/

namespace A051620.P15514657218994344111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034177 (n + 2) : ℚ) / 8

end

end A051620.P15514657218994344111

noncomputable section

/-- A051620: a(n) = (4*n+8)(!^4)/8(!^4), related to A034177(n+1) ((4*n+4)(!^4) quartic, or 4-factorials).

Offset 0, canonical program `A051620.P15514657218994344111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051620 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051620.P15514657218994344111.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051688.P7422198666084629827

`A034323(n+2)/7`
-/

namespace A051688.P7422198666084629827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034323 (n + 2) : ℚ) / 7

end

end A051688.P7422198666084629827

noncomputable section

/-- A051688: a(n) = (5*n+7)(!^5)/7(!^5), related to A034323 ((5*n+2)(!^5) quintic, or 5-factorials).

Offset 0, canonical program `A051688.P7422198666084629827`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051688 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051688.P7422198666084629827.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051745.P5054150048059455946

`A000389(n+5)+n+1`
-/

namespace A051745.P5054150048059455946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) + (n + 1 : ℤ)

end

end A051745.P5054150048059455946

noncomputable section

/-- A051745: a(n) = n*(n^4 + 10*n^3 + 35*n^2 + 50*n + 144)/120.

Offset 1, canonical program `A051745.P5054150048059455946`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051745 (n : ℕ) : ℤ :=
  A051745.P5054150048059455946.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051847.P18058728621329617621

`A051846(2*(n+1)-1)/(2*(n+1)-1)`
-/

namespace A051847.P18058728621329617621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051846 (2 * (n + 1) - 1) : ℚ) / ((2 * (n + 1) : ℤ) - 1 : ℚ)

end

end A051847.P18058728621329617621

noncomputable section

/-- A051847: Bisection of A051846, divided by the term position.

Offset 1, canonical program `A051847.P18058728621329617621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051847 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051847.P18058728621329617621.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051847.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051885.P11585152797781986562

`A037124(n+1)-1`
-/

namespace A051885.P11585152797781986562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1) - 1

end

end A051885.P11585152797781986562

noncomputable section

/-- A051885: Smallest number whose sum of digits is n.

Offset 0, canonical program `A051885.P11585152797781986562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051885 (n : ℕ) : ℤ :=
  A051885.P11585152797781986562.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051960.P3694803677626322338

`A051924(n+1)+A000108(n)`
-/

namespace A051960.P3694803677626322338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1) + A000108 n

end

end A051960.P3694803677626322338

noncomputable section

/-- A051960: a(n) = C(n)*(3n+2) where C(n) = Catalan numbers = A000108.

Offset 0, canonical program `A051960.P3694803677626322338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051960 (n : ℕ) : ℤ :=
  A051960.P3694803677626322338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052127.P60015521498032768

`n!*A052124(n)`
-/

namespace A052127.P60015521498032768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052124 n

end

end A052127.P60015521498032768

noncomputable section

/-- A052127: Sum_{n >= 0} a(n) * x^n / n!^2 = exp(-2*x)/(1-x)^3.

Offset 0, canonical program `A052127.P60015521498032768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052127 (n : ℕ) : ℤ :=
  A052127.P60015521498032768.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052127.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052146.P2888985692444498422

`A003056(n+1)-1`
-/

namespace A052146.P2888985692444498422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) - 1

end

end A052146.P2888985692444498422

noncomputable section

/-- A052146: a(n) = floor((sqrt(1+8*n)-3)/2).

Offset 1, canonical program `A052146.P2888985692444498422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052146 (n : ℕ) : ℤ :=
  A052146.P2888985692444498422.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052146.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052181.P3293629019242765493

`A027819(n+1)/7`
-/

namespace A052181.P3293629019242765493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027819 (n + 1) : ℚ) / 7

end

end A052181.P3293629019242765493

noncomputable section

/-- A052181: Partial sums of A050483.

Offset 0, canonical program `A052181.P3293629019242765493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052181 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052181.P3293629019242765493.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052181.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052183.P11581236257844654630

`C(n+2, 2)*A000139(n)`
-/

namespace A052183.P11581236257844654630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A000139 n

end

end A052183.P11581236257844654630

noncomputable section

/-- A052183: a(n) = (n + 2) * binomial(3*n, n) / (2*n + 1).

Offset 0, canonical program `A052183.P11581236257844654630`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052183 (n : ℕ) : ℤ :=
  A052183.P11581236257844654630.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052183.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052510.P15062617454397280600

`(2*(n+1)-1)!*A000108(n)`
-/

namespace A052510.P15062617454397280600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((2 * (n + 1) : ℤ) - 1).toNat : ℤ) * A000108 n

end

end A052510.P15062617454397280600

noncomputable section

/-- A052510: Number of labeled planar binary trees with 2n-1 elements (external nodes or internal nodes).

Offset 1, canonical program `A052510.P15062617454397280600`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052510 (n : ℕ) : ℤ :=
  A052510.P15062617454397280600.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052510.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052559.P8913627615231802633

`n!*A077998(n)`
-/

namespace A052559.P8913627615231802633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A077998 n

end

end A052559.P8913627615231802633

noncomputable section

/-- A052559: Expansion of e.g.f. (1-x)/(1 - 2*x - x^2 + x^3).

Offset 0, canonical program `A052559.P8913627615231802633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052559 (n : ℕ) : ℤ :=
  A052559.P8913627615231802633.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052559.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052569.P10109366130611393965

`n!*A008620(n)`
-/

namespace A052569.P10109366130611393965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A008620 n

end

end A052569.P10109366130611393965

noncomputable section

/-- A052569: E.g.f. 1/((1-x)(1-x^3)).

Offset 0, canonical program `A052569.P10109366130611393965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052569 (n : ℕ) : ℤ :=
  A052569.P10109366130611393965.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052574.P6335048710962307925

`n!*A001519(n)`
-/

namespace A052574.P6335048710962307925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001519 n

end

end A052574.P6335048710962307925

noncomputable section

/-- A052574: Expansion of e.g.f. (1-2x)/(1-3x+x^2).

Offset 0, canonical program `A052574.P6335048710962307925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052574 (n : ℕ) : ℤ :=
  A052574.P6335048710962307925.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052574.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052575.P7489531080747848846

`n!*A052528(n)`
-/

namespace A052575.P7489531080747848846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052528 n

end

end A052575.P7489531080747848846

noncomputable section

/-- A052575: Expansion of e.g.f. (1-x)/(1-2*x-2*x^2+2*x^3).

Offset 0, canonical program `A052575.P7489531080747848846`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052575 (n : ℕ) : ℤ :=
  A052575.P7489531080747848846.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052577.P1440392319022274675

`n!*A003462(n+1)`
-/

namespace A052577.P1440392319022274675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003462 (n + 1)

end

end A052577.P1440392319022274675

noncomputable section

/-- A052577: a(n) = (3^(n+1)-1)*n!/2.

Offset 0, canonical program `A052577.P1440392319022274675`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052577 (n : ℕ) : ℤ :=
  A052577.P1440392319022274675.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052581.P9378520260020928493

`n!*A017898(n)`
-/

namespace A052581.P9378520260020928493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A017898 n

end

end A052581.P9378520260020928493

noncomputable section

/-- A052581: E.g.f. (1-x)/(1-x-x^4).

Offset 0, canonical program `A052581.P9378520260020928493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052581 (n : ℕ) : ℤ :=
  A052581.P9378520260020928493.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052585.P9647059601011471314

`n!*A001045(n+1)`
-/

namespace A052585.P9647059601011471314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001045 (n + 1)

end

end A052585.P9647059601011471314

noncomputable section

/-- A052585: E.g.f. 1/(1-x-2*x^2).

Offset 0, canonical program `A052585.P9647059601011471314`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052585 (n : ℕ) : ℤ :=
  A052585.P9647059601011471314.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052588.P12550214512986652467

`n!*A052527(n)`
-/

namespace A052588.P12550214512986652467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052527 n

end

end A052588.P12550214512986652467

noncomputable section

/-- A052588: Expansion of e.g.f.: (1-x)/(1-x-x^2-x^3+x^4).

Offset 0, canonical program `A052588.P12550214512986652467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052588 (n : ℕ) : ℤ :=
  A052588.P12550214512986652467.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052590.P6065693457165867755

`n!*A007052(n)`
-/

namespace A052590.P6065693457165867755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A007052 n

end

end A052590.P6065693457165867755

noncomputable section

/-- A052590: E.g.f. (1-x)/(1-4x+2x^2).

Offset 0, canonical program `A052590.P6065693457165867755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052590 (n : ℕ) : ℤ :=
  A052590.P6065693457165867755.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052593.P16798939789168535615

`n!*A003269(n+1)`
-/

namespace A052593.P16798939789168535615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003269 (n + 1)

end

end A052593.P16798939789168535615

noncomputable section

/-- A052593: E.g.f. 1/(1-x-x^4).

Offset 0, canonical program `A052593.P16798939789168535615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052593 (n : ℕ) : ℤ :=
  A052593.P16798939789168535615.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052595.P8975647524645264757

`n!*A006190(n+1)`
-/

namespace A052595.P8975647524645264757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A006190 (n + 1)

end

end A052595.P8975647524645264757

noncomputable section

/-- A052595: E.g.f. 1/(1-3x-x^2).

Offset 0, canonical program `A052595.P8975647524645264757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052595 (n : ℕ) : ℤ :=
  A052595.P8975647524645264757.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052595.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052597.P7626341955321284122

`n!*A000931(n+3)`
-/

namespace A052597.P7626341955321284122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000931 (n + 3)

end

end A052597.P7626341955321284122

noncomputable section

/-- A052597: E.g.f. 1/(1-x^2-x^3).

Offset 0, canonical program `A052597.P7626341955321284122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052597 (n : ℕ) : ℤ :=
  A052597.P7626341955321284122.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052598.P11690898167567233870

`n!*A078008(n)`
-/

namespace A052598.P11690898167567233870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A078008 n

end

end A052598.P11690898167567233870

noncomputable section

/-- A052598: E.g.f. (1-x)/(1-x-2x^2).

Offset 0, canonical program `A052598.P11690898167567233870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052598 (n : ℕ) : ℤ :=
  A052598.P11690898167567233870.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052598.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052599.P8769073470589604222

`n!*A008998(n)`
-/

namespace A052599.P8769073470589604222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A008998 n

end

end A052599.P8769073470589604222

noncomputable section

/-- A052599: Expansion of e.g.f.: 1/(1-2x-x^3).

Offset 0, canonical program `A052599.P8769073470589604222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052599 (n : ℕ) : ℤ :=
  A052599.P8769073470589604222.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052599.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052600.P16181606672778892051

`n!*A000975(n+1)`
-/

namespace A052600.P16181606672778892051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000975 (n + 1)

end

end A052600.P16181606672778892051

noncomputable section

/-- A052600: Expansion of e.g.f. 1/((1-2*x)*(1-x^2)).

Offset 0, canonical program `A052600.P16181606672778892051`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052600 (n : ℕ) : ℤ :=
  A052600.P16181606672778892051.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052601.P6097260739325422000

`n!*A052537(n)`
-/

namespace A052601.P6097260739325422000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052537 n

end

end A052601.P6097260739325422000

noncomputable section

/-- A052601: E.g.f. (1-x)/(1-x-2x^3).

Offset 0, canonical program `A052601.P6097260739325422000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052601 (n : ℕ) : ℤ :=
  A052601.P6097260739325422000.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052603.P1182644926263903835

`n!*A052529(n)`
-/

namespace A052603.P1182644926263903835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052529 n

end

end A052603.P1182644926263903835

noncomputable section

/-- A052603: E.g.f. (1-x)^3/(1-4x+3x^2-x^3).

Offset 0, canonical program `A052603.P1182644926263903835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052603 (n : ℕ) : ℤ :=
  A052603.P1182644926263903835.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052604.P2152976872534651015

`n!*A052540(n)`
-/

namespace A052604.P2152976872534651015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052540 n

end

end A052604.P2152976872534651015

noncomputable section

/-- A052604: E.g.f. (1-x)/(1-2x-x^3+x^4).

Offset 0, canonical program `A052604.P2152976872534651015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052604 (n : ℕ) : ℤ :=
  A052604.P2152976872534651015.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052604.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052608.P18146699070128100307

`n!*A001333(n)`
-/

namespace A052608.P18146699070128100307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001333 n

end

end A052608.P18146699070128100307

noncomputable section

/-- A052608: E.g.f. (1-x)/(1-2x-x^2).

Offset 0, canonical program `A052608.P18146699070128100307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052608 (n : ℕ) : ℤ :=
  A052608.P18146699070128100307.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052610.P1552636461458398644

`n!*A077949(n)`
-/

namespace A052610.P1552636461458398644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A077949 n

end

end A052610.P1552636461458398644

noncomputable section

/-- A052610: Expansion of e.g.f. 1/(1-x-2*x^3).

Offset 0, canonical program `A052610.P1552636461458398644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052610 (n : ℕ) : ℤ :=
  A052610.P1552636461458398644.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052610.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052611.P1397904844634783383

`n!*A002605(n+1)`
-/

namespace A052611.P1397904844634783383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002605 (n + 1)

end

end A052611.P1397904844634783383

noncomputable section

/-- A052611: Expansion of e.g.f. 1/(1-2*x-2*x^2).

Offset 0, canonical program `A052611.P1397904844634783383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052611 (n : ℕ) : ℤ :=
  A052611.P1397904844634783383.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052611.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052614.P16757192831626302724

`n!*A008621(n)`
-/

namespace A052614.P16757192831626302724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A008621 n

end

end A052614.P16757192831626302724

noncomputable section

/-- A052614: E.g.f. 1/((1-x)(1-x^4)).

Offset 0, canonical program `A052614.P16757192831626302724`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052614 (n : ℕ) : ℤ :=
  A052614.P16757192831626302724.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052617.P9012503568217028669

`n!*A052549(n)`
-/

namespace A052617.P9012503568217028669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052549 n

end

end A052617.P9012503568217028669

noncomputable section

/-- A052617: E.g.f. (1+x-x^2)/((1-x)(1-2x)).

Offset 0, canonical program `A052617.P9012503568217028669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052617 (n : ℕ) : ℤ :=
  A052617.P9012503568217028669.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052620.P836159090083198785

`n!*A052545(n)`
-/

namespace A052620.P836159090083198785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052545 n

end

end A052620.P836159090083198785

noncomputable section

/-- A052620: E.g.f. (1-x)^2/(1-3x+x^3).

Offset 0, canonical program `A052620.P836159090083198785`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052620 (n : ℕ) : ℤ :=
  A052620.P836159090083198785.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052622.P7915650960527604124

`n!*A052542(n)`
-/

namespace A052622.P7915650960527604124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052542 n

end

end A052622.P7915650960527604124

noncomputable section

/-- A052622: E.g.f. (1-x^2)/(1-2x-x^2).

Offset 0, canonical program `A052622.P7915650960527604124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052622 (n : ℕ) : ℤ :=
  A052622.P7915650960527604124.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052625.P17086351383981128262

`(-1)^n*n!*A099529(n)`
-/

namespace A052625.P17086351383981128262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (Nat.factorial n : ℤ) * A099529 n

end

end A052625.P17086351383981128262

noncomputable section

/-- A052625: E.g.f. (1-x)^2/(1-2x+x^2-x^3).

Offset 0, canonical program `A052625.P17086351383981128262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052625 (n : ℕ) : ℤ :=
  A052625.P17086351383981128262.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052627.P669334842084369266

`n!*A017899(n)`
-/

namespace A052627.P669334842084369266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A017899 n

end

end A052627.P669334842084369266

noncomputable section

/-- A052627: E.g.f. (1-x)/(1-x-x^5).

Offset 0, canonical program `A052627.P669334842084369266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052627 (n : ℕ) : ℤ :=
  A052627.P669334842084369266.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052630.P16584179220565295272

`n!*A001076(n+1)`
-/

namespace A052630.P16584179220565295272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001076 (n + 1)

end

end A052630.P16584179220565295272

noncomputable section

/-- A052630: E.g.f. 1/(1-4x-x^2).

Offset 0, canonical program `A052630.P16584179220565295272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052630 (n : ℕ) : ℤ :=
  A052630.P16584179220565295272.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052632.P5093732326110737331

`n!*A003520(n)`
-/

namespace A052632.P5093732326110737331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003520 n

end

end A052632.P5093732326110737331

noncomputable section

/-- A052632: E.g.f. 1/(1-x-x^5).

Offset 0, canonical program `A052632.P5093732326110737331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052632 (n : ℕ) : ℤ :=
  A052632.P5093732326110737331.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052632.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052634.P7928622811804752485

`n!*A052551(n)`
-/

namespace A052634.P7928622811804752485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052551 n

end

end A052634.P7928622811804752485

noncomputable section

/-- A052634: Expansion of e.g.f. 1/((1-2*x^2)*(1-x)).

Offset 0, canonical program `A052634.P7928622811804752485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052634 (n : ℕ) : ℤ :=
  A052634.P7928622811804752485.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052634.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052636.P17679978829731328809

`n!*A052552(n)`
-/

namespace A052636.P17679978829731328809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052552 n

end

end A052636.P17679978829731328809

noncomputable section

/-- A052636: Expansion of e.g.f. (2-x-2*x^2)/((1-x)*(1-2*x^2)).

Offset 0, canonical program `A052636.P17679978829731328809`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052636 (n : ℕ) : ℤ :=
  A052636.P17679978829731328809.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052641.P407062523526101660

`n!*A030186(n)`
-/

namespace A052641.P407062523526101660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A030186 n

end

end A052641.P407062523526101660

noncomputable section

/-- A052641: Expansion of e.g.f. (1-x)/(1-3*x-x^2+x^3).

Offset 0, canonical program `A052641.P407062523526101660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052641 (n : ℕ) : ℤ :=
  A052641.P407062523526101660.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052641.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052646.P275097972406057592

`n!*A000071(n+3)`
-/

namespace A052646.P275097972406057592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000071 (n + 3)

end

end A052646.P275097972406057592

noncomputable section

/-- A052646: E.g.f. 1/((1-x)(1-x-x^2)).

Offset 0, canonical program `A052646.P275097972406057592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052646 (n : ℕ) : ℤ :=
  A052646.P275097972406057592.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052646.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052647.P8074019588344800464

`n!*A052531(n)`
-/

namespace A052647.P8074019588344800464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052531 n

end

end A052647.P8074019588344800464

noncomputable section

/-- A052647: E.g.f. (2-2x-x^2)/((1-2x)(1-x^2)).

Offset 0, canonical program `A052647.P8074019588344800464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052647 (n : ℕ) : ℤ :=
  A052647.P8074019588344800464.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052650.P10438217877803919814

`n!*A000295(n+2)`
-/

namespace A052650.P10438217877803919814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000295 (n + 2)

end

end A052650.P10438217877803919814

noncomputable section

/-- A052650: Expansion of e.g.f. 1/((1-2*x)*(1-x)^2).

Offset 0, canonical program `A052650.P10438217877803919814`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052650 (n : ℕ) : ℤ :=
  A052650.P10438217877803919814.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052651.P16371255860342398021

`n!*A052532(n)`
-/

namespace A052651.P16371255860342398021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052532 n

end

end A052651.P16371255860342398021

noncomputable section

/-- A052651: E.g.f. (1-x)/(1-x-x^3-x^4+x^5).

Offset 0, canonical program `A052651.P16371255860342398021`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052651 (n : ℕ) : ℤ :=
  A052651.P16371255860342398021.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052654.P1644576242063367355

`n!*A002450(n+1)`
-/

namespace A052654.P1644576242063367355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002450 (n + 1)

end

end A052654.P1644576242063367355

noncomputable section

/-- A052654: E.g.f. 1/((1-x)(1-4x)).

Offset 0, canonical program `A052654.P1644576242063367355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052654 (n : ℕ) : ℤ :=
  A052654.P1644576242063367355.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052654.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052660.P2669648298003677181

`n!*A001611(n+1)`
-/

namespace A052660.P2669648298003677181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001611 (n + 1)

end

end A052660.P2669648298003677181

noncomputable section

/-- A052660: Expansion of e.g.f. (2-2*x-x^2)/((1-x)*(1-x-x^2)).

Offset 0, canonical program `A052660.P2669648298003677181`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052660 (n : ℕ) : ℤ :=
  A052660.P2669648298003677181.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052660.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052662.P778079237183081231

`n!*A052534(n)`
-/

namespace A052662.P778079237183081231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052534 n

end

end A052662.P778079237183081231

noncomputable section

/-- A052662: E.g.f. (1-x^2)/(1-2x-x^2+x^3).

Offset 0, canonical program `A052662.P778079237183081231`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052662 (n : ℕ) : ℤ :=
  A052662.P778079237183081231.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052664.P1131064307851730349

`n!*A052538(n)`
-/

namespace A052664.P1131064307851730349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052538 n

end

end A052664.P1131064307851730349

noncomputable section

/-- A052664: E.g.f. (1-x)/(1-2x-3x^2+3x^3).

Offset 0, canonical program `A052664.P1131064307851730349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052664 (n : ℕ) : ℤ :=
  A052664.P1131064307851730349.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052666.P6989449203495029728

`n!*A006130(n)`
-/

namespace A052666.P6989449203495029728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A006130 n

end

end A052666.P6989449203495029728

noncomputable section

/-- A052666: E.g.f. 1/(1-x-3x^2).

Offset 0, canonical program `A052666.P6989449203495029728`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052666 (n : ℕ) : ℤ :=
  A052666.P6989449203495029728.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052667.P15525557154643196081

`n!*A008999(n)`
-/

namespace A052667.P15525557154643196081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A008999 n

end

end A052667.P15525557154643196081

noncomputable section

/-- A052667: E.g.f. 1/(1-2x-x^4).

Offset 0, canonical program `A052667.P15525557154643196081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052667 (n : ℕ) : ℤ :=
  A052667.P15525557154643196081.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052669.P8531867209205819422

`n!*A052550(n)`
-/

namespace A052669.P8531867209205819422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052550 n

end

end A052669.P8531867209205819422

noncomputable section

/-- A052669: Expansion of e.g.f. (1-2*x)/(1-3*x-x^2+2*x^3).

Offset 0, canonical program `A052669.P8531867209205819422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052669 (n : ℕ) : ℤ :=
  A052669.P8531867209205819422.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052669.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052672.P3237679800639530789

`n!*A052547(n)`
-/

namespace A052672.P3237679800639530789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052547 n

end

end A052672.P3237679800639530789

noncomputable section

/-- A052672: Expansion of e.g.f. (1-x)/(1-x-2*x^2+x^3).

Offset 0, canonical program `A052672.P3237679800639530789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052672 (n : ℕ) : ℤ :=
  A052672.P3237679800639530789.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052674.P7507046658556235038

`n!*A052543(n)`
-/

namespace A052674.P7507046658556235038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052543 n

end

end A052674.P7507046658556235038

noncomputable section

/-- A052674: Expansion of e.g.f. (1-x)/(1-3*x-2*x^2+2*x^3).

Offset 0, canonical program `A052674.P7507046658556235038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052674 (n : ℕ) : ℤ :=
  A052674.P7507046658556235038.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052677.P3595838962599087192

`n!*A079935(n+1)`
-/

namespace A052677.P3595838962599087192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A079935 (n + 1)

end

end A052677.P3595838962599087192

noncomputable section

/-- A052677: Expansion of e.g.f. (1-x)/(1-4*x+x^2).

Offset 0, canonical program `A052677.P3595838962599087192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052677 (n : ℕ) : ℤ :=
  A052677.P3595838962599087192.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052679.P683246207456302216

`n!*A000931(n)`
-/

namespace A052679.P683246207456302216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000931 n

end

end A052679.P683246207456302216

noncomputable section

/-- A052679: Expansion of e.g.f. (1-x^2)/(1-x^2-x^3).

Offset 0, canonical program `A052679.P683246207456302216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052679 (n : ℕ) : ℤ :=
  A052679.P683246207456302216.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052679.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052680.P16614700781133846638

`n!*A006012(n)`
-/

namespace A052680.P16614700781133846638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A006012 n

end

end A052680.P16614700781133846638

noncomputable section

/-- A052680: Expansion of e.g.f. (1-2*x)/(1-4*x+2*x^2).

Offset 0, canonical program `A052680.P16614700781133846638`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052680 (n : ℕ) : ℤ :=
  A052680.P16614700781133846638.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052681.P4809825273475906253

`n!*A052546(n)`
-/

namespace A052681.P4809825273475906253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052546 n

end

end A052681.P4809825273475906253

noncomputable section

/-- A052681: Expansion of e.g.f. (1-x)/(1 - x - x^2 - 2*x^3 + 2*x^4).

Offset 0, canonical program `A052681.P4809825273475906253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052681 (n : ℕ) : ℤ :=
  A052681.P4809825273475906253.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052681.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052685.P16906311413695888443

`n!*A052535(n)`
-/

namespace A052685.P16906311413695888443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052535 n

end

end A052685.P16906311413695888443

noncomputable section

/-- A052685: Expansion of e.g.f. (1-x^2)/(1-x-2*x^2+x^4).

Offset 0, canonical program `A052685.P16906311413695888443`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052685 (n : ℕ) : ℤ :=
  A052685.P16906311413695888443.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052689.P7286151108617999677

`n!*A004526(n+3)`
-/

namespace A052689.P7286151108617999677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A004526 (n + 3)

end

end A052689.P7286151108617999677

noncomputable section

/-- A052689: Expansion of e.g.f. (1+x-x^2)/((1-x)*(1-x^2)).

Offset 0, canonical program `A052689.P7286151108617999677`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052689 (n : ℕ) : ℤ :=
  A052689.P7286151108617999677.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052691.P10356724997876748476

`n!*A005251(n+1)`
-/

namespace A052691.P10356724997876748476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A005251 (n + 1)

end

end A052691.P10356724997876748476

noncomputable section

/-- A052691: Expansion of e.g.f. (1-x)/(1-2*x+x^2-x^3).

Offset 0, canonical program `A052691.P10356724997876748476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052691 (n : ℕ) : ℤ :=
  A052691.P10356724997876748476.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052693.P16948172058766083288

`n!*A052536(n)`
-/

namespace A052693.P16948172058766083288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052536 n

end

end A052693.P16948172058766083288

noncomputable section

/-- A052693: Expansion of e.g.f. (1-x)/(1-3*x+x^3).

Offset 0, canonical program `A052693.P16948172058766083288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052693 (n : ℕ) : ℤ :=
  A052693.P16948172058766083288.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052696.P14622444845979297710

`n!*A052544(n)`
-/

namespace A052696.P14622444845979297710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A052544 n

end

end A052696.P14622444845979297710

noncomputable section

/-- A052696: Expansion of e.g.f. (1-x)^2/(1-4*x+3*x^2-x^3).

Offset 0, canonical program `A052696.P14622444845979297710`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052696 (n : ℕ) : ℤ :=
  A052696.P14622444845979297710.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052697.P16514648680947396591

`n!*A017817(n)`
-/

namespace A052697.P16514648680947396591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A017817 n

end

end A052697.P16514648680947396591

noncomputable section

/-- A052697: Expansion of e.g.f. 1/(1-x^3-x^4).

Offset 0, canonical program `A052697.P16514648680947396591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052697 (n : ℕ) : ℤ :=
  A052697.P16514648680947396591.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052697.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053101.P11379254700982069094

`A034689(n+2)/8`
-/

namespace A053101.P11379254700982069094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034689 (n + 2) : ℚ) / 8

end

end A053101.P11379254700982069094

noncomputable section

/-- A053101: a(n) = ((6*n+8)(!^6))/8(!^6), related to A034689 (((6*n+2)(!^6))/2 sextic, or 6-factorials).

Offset 0, canonical program `A053101.P11379254700982069094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053101 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053101.P11379254700982069094.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053102.P1238159986520893648

`A034723(n+2)/9`
-/

namespace A053102.P1238159986520893648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034723 (n + 2) : ℚ) / 9

end

end A053102.P1238159986520893648

noncomputable section

/-- A053102: a(n) = ((6*n+9)(!^6))/9(!^6), related to A034723 (((6*n+3)(!^6))/3 sextic, or 6-factorials).

Offset 0, canonical program `A053102.P1238159986520893648`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053102 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053102.P1238159986520893648.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053102.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053132.P14268853653109633787

`A053127(n+5)/2`
-/

namespace A053132.P14268853653109633787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053127 (n + 5) : ℚ) / 2

end

end A053132.P14268853653109633787

noncomputable section

/-- A053132: One half of binomial coefficients C(2*n-4,5).

Offset 5, canonical program `A053132.P14268853653109633787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053132 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053132.P14268853653109633787.a (n - 5))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053133.P7108646943737555374

`A053131(n+9)/2`
-/

namespace A053133.P7108646943737555374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053131 (n + 9) : ℚ) / 2

end

end A053133.P7108646943737555374

noncomputable section

/-- A053133: One half of binomial coefficients binomial(2*n-8,9).

Offset 9, canonical program `A053133.P7108646943737555374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053133 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053133.P7108646943737555374.a (n - 9))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053222.P10935068220858784370

`A000203(n+2)-A000203(n+1)`
-/

namespace A053222.P10935068220858784370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - A000203 (n + 1)

end

end A053222.P10935068220858784370

noncomputable section

/-- A053222: First differences of sigma(n).

Offset 1, canonical program `A053222.P10935068220858784370`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053222 (n : ℕ) : ℤ :=
  A053222.P10935068220858784370.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053422.P17110885561322789959

`n*A002275(n)`
-/

namespace A053422.P17110885561322789959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002275 n

end

end A053422.P17110885561322789959

noncomputable section

/-- A053422: n times (n 1's): a(n) = n*(10^n - 1)/9.

Offset 0, canonical program `A053422.P17110885561322789959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053422 (n : ℕ) : ℤ :=
  A053422.P17110885561322789959.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053482.P2476702890412107603

`2*A010844(n)-A000522(n)`
-/

namespace A053482.P2476702890412107603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010844 n - A000522 n

end

end A053482.P2476702890412107603

noncomputable section

/-- A053482: Binomial transform of A029767.

Offset 0, canonical program `A053482.P2476702890412107603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053482 (n : ℕ) : ℤ :=
  A053482.P2476702890412107603.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053630.P17107040412440002118

`2*A000058(n)-1`
-/

namespace A053630.P17107040412440002118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000058 n - 1

end

end A053630.P17107040412440002118

noncomputable section

/-- A053630: Pythagorean spiral: a(n-1), a(n)-1 and a(n) are sides of a right triangle.

Offset 1, canonical program `A053630.P17107040412440002118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053630 (n : ℕ) : ℤ :=
  A053630.P17107040412440002118.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053631.P7343869401058660275

`2*A007018(n)`
-/

namespace A053631.P7343869401058660275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007018 n

end

end A053631.P7343869401058660275

noncomputable section

/-- A053631: Pythagorean spiral: a(n-1)+1, a(n) and a(n)+1 are the sides of a right triangle (a primitive Pythagorean triangle).

Offset 1, canonical program `A053631.P7343869401058660275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053631 (n : ℕ) : ℤ :=
  A053631.P7343869401058660275.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053631.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053799.P904661431918655857

`A000982(n)+A008749(n)`
-/

namespace A053799.P904661431918655857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + A008749 n

end

end A053799.P904661431918655857

noncomputable section

/-- A053799: Number of basis partitions of n+9 with Durfee square size 3.

Offset 0, canonical program `A053799.P904661431918655857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053799 (n : ℕ) : ℤ :=
  A053799.P904661431918655857.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053824.P3010568683746929224

`n-4*A027868(n)`
-/

namespace A053824.P3010568683746929224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4 * A027868 n

end

end A053824.P3010568683746929224

noncomputable section

/-- A053824: Sum of digits of (n written in base 5).

Offset 0, canonical program `A053824.P3010568683746929224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053824 (n : ℕ) : ℤ :=
  A053824.P3010568683746929224.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054088.P12267112223667201366

`n+1+A022838(n+1)`
-/

namespace A054088.P12267112223667201366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A022838 (n + 1)

end

end A054088.P12267112223667201366

noncomputable section

/-- A054088: a(n) = A054086(3n); also a bisection of A003511.

Offset 1, canonical program `A054088.P12267112223667201366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054088 (n : ℕ) : ℤ :=
  A054088.P12267112223667201366.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054243.P195251831284751513

`A000079(n)/A062383(n)`
-/

namespace A054243.P195251831284751513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A062383 n : ℚ)

end

end A054243.P195251831284751513

noncomputable section

/-- A054243: Number of partitions of n into distinct positive parts <= n, where parts are combined by XOR.

Offset 0, canonical program `A054243.P195251831284751513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054243 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054243.P195251831284751513.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054323.P5676521096093651374

`4^n*A053126(n+4)`
-/

namespace A054323.P5676521096093651374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A053126 (n + 4)

end

end A054323.P5676521096093651374

noncomputable section

/-- A054323: Fifth column of Lanczos triangle A053125 (decreasing powers).

Offset 0, canonical program `A054323.P5676521096093651374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054323 (n : ℕ) : ℤ :=
  A054323.P5676521096093651374.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054323.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054329.P8572352450619330285

`A054322(n)/4`
-/

namespace A054329.P8572352450619330285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054322 n : ℚ) / 4

end

end A054329.P8572352450619330285

noncomputable section

/-- A054329: One quarter of fourth unsigned column of Lanczos' triangle A053125.

Offset 0, canonical program `A054329.P8572352450619330285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054329 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054329.P8572352450619330285.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054330.P8554570175706362975

`A054324(n)/2`
-/

namespace A054330.P8554570175706362975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054324 n : ℚ) / 2

end

end A054330.P8554570175706362975

noncomputable section

/-- A054330: One half of sixth unsigned column of Lanczos' triangle A053125.

Offset 0, canonical program `A054330.P8554570175706362975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054330 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054330.P8554570175706362975.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054330.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054331.P3198170004335640972

`A054326(n)/8`
-/

namespace A054331.P3198170004335640972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054326 n : ℚ) / 8

end

end A054331.P3198170004335640972

noncomputable section

/-- A054331: One eighth of eighth unsigned column of Lanczos triangle A053125.

Offset 0, canonical program `A054331.P3198170004335640972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054331 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054331.P3198170004335640972.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054331.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054332.P14236572035809434950

`A054328(n)/2`
-/

namespace A054332.P14236572035809434950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054328 n : ℚ) / 2

end

end A054332.P14236572035809434950

noncomputable section

/-- A054332: One half of tenth unsigned column of Lanczos triangle A053125 (decreasing powers).

Offset 0, canonical program `A054332.P14236572035809434950`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054332 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054332.P14236572035809434950.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054332.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054779.P15744182192818486596

`A053625(6*n)`
-/

namespace A054779.P15744182192818486596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053625 (6 * n)

end

end A054779.P15744182192818486596

noncomputable section

/-- A054779: a(n) = 6n*(6n-1)*(6n-2)*(6n-3)*(6n-4)*(6n-5).

Offset 0, canonical program `A054779.P15744182192818486596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054779 (n : ℕ) : ℤ :=
  A054779.P15744182192818486596.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054844.P10228147231781804913

`2*A001227(n+1)`
-/

namespace A054844.P10228147231781804913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001227 (n + 1)

end

end A054844.P10228147231781804913

noncomputable section

/-- A054844: Number of ways to write n as the sum of any number of consecutive integers (including the trivial one-term sum n = n).

Offset 1, canonical program `A054844.P10228147231781804913`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054844 (n : ℕ) : ℤ :=
  A054844.P10228147231781804913.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054844.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055209.P1934713887959445672

`A000178(n)²`
-/

namespace A055209.P1934713887959445672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n ^ 2

end

end A055209.P1934713887959445672

noncomputable section

/-- A055209: a(n) = Product_{i=0..n} i!^2.

Offset 0, canonical program `A055209.P1934713887959445672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055209 (n : ℕ) : ℤ :=
  A055209.P1934713887959445672.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055246.P17023893520990019210

`1+6*A005836(n+1)`
-/

namespace A055246.P17023893520990019210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 6 * A005836 (n + 1)

end

end A055246.P17023893520990019210

noncomputable section

/-- A055246: At step number k >= 1 the 2^(k-1) open intervals that are erased from [0,1] in the Cantor middle-third set construction are I(k,n) = (a(n)/3^k, (1+a(n))/3^k), n=1..2^(k-1).

Offset 1, canonical program `A055246.P17023893520990019210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055246 (n : ℕ) : ℤ :=
  A055246.P17023893520990019210.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055246.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055303.P11658278093285741313

`3*A001754(n+3)`
-/

namespace A055303.P11658278093285741313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001754 (n + 3)

end

end A055303.P11658278093285741313

noncomputable section

/-- A055303: Number of labeled rooted trees with n nodes and 2 leaves.

Offset 3, canonical program `A055303.P11658278093285741313`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055303 (n : ℕ) : ℤ :=
  A055303.P11658278093285741313.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055303.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055401.P8525785156040280502

`a(A055400(n))+1` with `a(0)=0`
-/

namespace A055401.P8525785156040280502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A055400 n).toNat + 1

end

end A055401.P8525785156040280502

noncomputable section

/-- A055401: Number of positive cubes needed to sum to n using the greedy algorithm.

Offset 0, canonical program `A055401.P8525785156040280502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055401 (n : ℕ) : ℤ :=
  (A055401.P8525785156040280502.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055401.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055462.P3276456326602178946

`a(n-1)*A000178(n)` with `a(0)=1`
-/

namespace A055462.P3276456326602178946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000178 n

end

end A055462.P3276456326602178946

noncomputable section

/-- A055462: Superduperfactorials: product of first n superfactorials.

Offset 0, canonical program `A055462.P3276456326602178946`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055462 (n : ℕ) : ℤ :=
  A055462.P3276456326602178946.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055555.P16369070575649091683

`A000217(A000142(n))`
-/

namespace A055555.P16369070575649091683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000142 n).toNat

end

end A055555.P16369070575649091683

noncomputable section

/-- A055555: a(n) = n!*(n!+1)/2.

Offset 0, canonical program `A055555.P16369070575649091683`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055555 (n : ℕ) : ℤ :=
  A055555.P16369070575649091683.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055579.P14572805537248560419

`A000260(3*(n+1)-1)/3`
-/

namespace A055579.P14572805537248560419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000260 (3 * (n + 1) - 1) : ℚ) / 3

end

end A055579.P14572805537248560419

noncomputable section

/-- A055579: a(n) = binomial(12*n-1,3*n-1)/((6*n-1)*(12*n-1)).

Offset 1, canonical program `A055579.P14572805537248560419`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055579 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055579.P14572805537248560419.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056136.P13584570366778439263

`(n+1)*A008619(n+1)/(2*A008619(n+1)-(n+1))`
-/

namespace A056136.P13584570366778439263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A008619 (n + 1) : ℚ) / (2 * A008619 (n + 1) - (n + 1 : ℤ) : ℚ)

end

end A056136.P13584570366778439263

noncomputable section

/-- A056136: Largest positive integer whose harmonic mean with another positive integer is n.

Offset 1, canonical program `A056136.P13584570366778439263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056136 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056136.P13584570366778439263.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056161.P228021813458941099

`floor(A055979(n)/sqrt(2))`
-/

namespace A056161.P228021813458941099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055979 n : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A056161.P228021813458941099

noncomputable section

/-- A056161: Solutions (value of x) of Diophantine equation 2*x^2 + 3*x + 2 = r^2.

Offset 0, canonical program `A056161.P228021813458941099`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056161 (n : ℕ) : ℤ :=
  A056161.P228021813458941099.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056174.P3001330646264561605

`A000312(n)-A045992(n)`
-/

namespace A056174.P3001330646264561605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n - A045992 n

end

end A056174.P3001330646264561605

noncomputable section

/-- A056174: Number of non-monotone maps from 1,...,n to 1,...,n.

Offset 0, canonical program `A056174.P3001330646264561605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056174 (n : ℕ) : ℤ :=
  A056174.P3001330646264561605.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056310.P11527389917992884301

`A032120(n+1)-3*A005418(n+2)+3`
-/

namespace A056310.P11527389917992884301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 (n + 1) - 3 * A005418 (n + 2) + 3

end

end A056310.P11527389917992884301

noncomputable section

/-- A056310: Number of reversible strings with n beads using exactly three different colors.

Offset 1, canonical program `A056310.P11527389917992884301`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056310 (n : ℕ) : ℤ :=
  A056310.P11527389917992884301.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056311.P5975603782250234262

`A032121(n+1)-4*A032120(n+1)+6*A005418(n+2)-4`
-/

namespace A056311.P5975603782250234262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 (n + 1) - 4 * A032120 (n + 1) + 6 * A005418 (n + 2) - 4

end

end A056311.P5975603782250234262

noncomputable section

/-- A056311: Number of reversible strings with n beads using exactly four different colors.

Offset 1, canonical program `A056311.P5975603782250234262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056311 (n : ℕ) : ℤ :=
  A056311.P5975603782250234262.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056311.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056312.P6761963381362431888

`A032122(n+1)-5*A032121(n+1)+10*A032120(n+1)-10*A005418(n+2)+5`
-/

namespace A056312.P6761963381362431888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032122 (n + 1) - 5 * A032121 (n + 1) + 10 * A032120 (n + 1) - 10 * A005418 (n + 2) + 5

end

end A056312.P6761963381362431888

noncomputable section

/-- A056312: Number of reversible strings with n beads using exactly five different colors.

Offset 1, canonical program `A056312.P6761963381362431888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056312 (n : ℕ) : ℤ :=
  A056312.P6761963381362431888.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056313.P5819965532175652516

`A056308(n+1)-6*A032122(n+1)+15*A032121(n+1)-20*A032120(n+1)+15*A005418(n+2)-6`
-/

namespace A056313.P5819965532175652516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056308 (n + 1) - 6 * A032122 (n + 1) + 15 * A032121 (n + 1) - 20 * A032120 (n + 1) + 15 * A005418 (n + 2) - 6

end

end A056313.P5819965532175652516

noncomputable section

/-- A056313: Number of reversible strings with n beads using exactly six different colors.

Offset 1, canonical program `A056313.P5819965532175652516`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056313 (n : ℕ) : ℤ :=
  A056313.P5819965532175652516.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056326.P13285734018320765165

`A005418(n+1)-1`
-/

namespace A056326.P13285734018320765165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) - 1

end

end A056326.P13285734018320765165

noncomputable section

/-- A056326: Number of reversible string structures with n beads using exactly two different colors.

Offset 1, canonical program `A056326.P13285734018320765165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056326 (n : ℕ) : ℤ :=
  A056326.P13285734018320765165.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056327.P11311420995062191100

`A001998(n)-A005418(n+1)`
-/

namespace A056327.P11311420995062191100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 n - A005418 (n + 1)

end

end A056327.P11311420995062191100

noncomputable section

/-- A056327: Number of reversible string structures with n beads using exactly three different colors.

Offset 1, canonical program `A056327.P11311420995062191100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056327 (n : ℕ) : ℤ :=
  A056327.P11311420995062191100.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056570.P8836543462792650410

`A000045(n)^3`
-/

namespace A056570.P8836543462792650410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 3

end

end A056570.P8836543462792650410

noncomputable section

/-- A056570: Third power of Fibonacci numbers (A000045).

Offset 0, canonical program `A056570.P8836543462792650410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056570 (n : ℕ) : ℤ :=
  A056570.P8836543462792650410.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056571.P16308411225797373877

`A007598(n)²`
-/

namespace A056571.P16308411225797373877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n ^ 2

end

end A056571.P16308411225797373877

noncomputable section

/-- A056571: Fourth power of Fibonacci numbers A000045.

Offset 0, canonical program `A056571.P16308411225797373877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056571 (n : ℕ) : ℤ :=
  A056571.P16308411225797373877.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056571.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056982.P17508739079274575033

`4^A005187(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056982.P17508739079274575033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A005187 n : ℤ)

end

end A056982.P17508739079274575033

noncomputable section

/-- A056982: a(n) = 4^A005187(n). The denominators of the Landau constants.

Offset 0, canonical program `A056982.P17508739079274575033`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056982 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056982.P17508739079274575033.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056986.P9248900133846708898

`A000142(n+1)-A000108(n+1)`
-/

namespace A056986.P9248900133846708898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A000108 (n + 1)

end

end A056986.P9248900133846708898

noncomputable section

/-- A056986: Number of permutations on {1,...,n} containing any given pattern alpha in the symmetric group S_3.

Offset 1, canonical program `A056986.P9248900133846708898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056986 (n : ℕ) : ℤ :=
  A056986.P9248900133846708898.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057045.P8533816772793938656

`round(sqrt(2*A000032(n)))`
-/

namespace A057045.P8533816772793938656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A000032 n : ℝ))

end

end A057045.P8533816772793938656

noncomputable section

/-- A057045: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; the n-th Lucas number is in antidiagonal a(n).

Offset 1, canonical program `A057045.P8533816772793938656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057045 (n : ℕ) : ℤ :=
  A057045.P8533816772793938656.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057045.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057211.P13662060525465798747

`A000035(A002024(n+1))`
-/

namespace A057211.P13662060525465798747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002024 (n + 1)).toNat

end

end A057211.P13662060525465798747

noncomputable section

/-- A057211: Alternating runs of ones and zeros, where the n-th run has length n.

Offset 1, canonical program `A057211.P13662060525465798747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057211 (n : ℕ) : ℤ :=
  A057211.P13662060525465798747.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057211.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057427.P3058147525557661423

`1-A000007(n)`
-/

namespace A057427.P3058147525557661423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 n

end

end A057427.P3058147525557661423

noncomputable section

/-- A057427: a(n) = 1 if n > 0, a(n) = 0 if n = 0; series expansion of x/(1-x).

Offset 0, canonical program `A057427.P3058147525557661423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057427 (n : ℕ) : ℤ :=
  A057427.P3058147525557661423.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057599.P2314703557819511826

`A034841(n)/A000142(n)`
-/

namespace A057599.P2314703557819511826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034841 n : ℚ) / (A000142 n : ℚ)

end

end A057599.P2314703557819511826

noncomputable section

/-- A057599: a(n) = (n^2)!/(n!)^(n+1); number of ways of dividing n^2 labeled items into n unlabeled boxes of n items each.

Offset 0, canonical program `A057599.P2314703557819511826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057599 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057599.P2314703557819511826.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057599.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028919.P7383873374006362500

`2*A047328(n+1)`
-/

namespace A028919.P7383873374006362500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047328 (n + 1)

end

end A028919.P7383873374006362500

noncomputable section

/-- A028919: Congruent to 0, 6, 10, 12 (mod 14).

Offset 1, canonical program `A028919.P7383873374006362500`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028919 (n : ℕ) : ℤ :=
  A028919.P7383873374006362500.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033042.P13736658482566093996

`A097251(n)/4`
-/

namespace A033042.P13736658482566093996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097251 n : ℚ) / 4

end

end A033042.P13736658482566093996

noncomputable section

/-- A033042: Sums of distinct powers of 5.

Offset 0, canonical program `A033042.P13736658482566093996`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033042 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A033042.P13736658482566093996.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033044.P3943471962999109464

`A097253(n+1)/6`
-/

namespace A033044.P3943471962999109464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097253 (n + 1) : ℚ) / 6

end

end A033044.P3943471962999109464

noncomputable section

/-- A033044: Sums of distinct powers of 7.

Offset 1, canonical program `A033044.P3943471962999109464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033044 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A033044.P3943471962999109464.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033044.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033045.P626829856934747549

`A097254(n+1)/7`
-/

namespace A033045.P626829856934747549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097254 (n + 1) : ℚ) / 7

end

end A033045.P626829856934747549

noncomputable section

/-- A033045: Sums of distinct powers of 8.

Offset 0, canonical program `A033045.P626829856934747549`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033045 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A033045.P626829856934747549.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033045.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033046.P15485974866274151749

`A097255(n)/8`
-/

namespace A033046.P15485974866274151749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097255 n : ℚ) / 8

end

end A033046.P15485974866274151749

noncomputable section

/-- A033046: Sums of distinct powers of 9.

Offset 0, canonical program `A033046.P15485974866274151749`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033046 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A033046.P15485974866274151749.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A033046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034829.P10533351944518446725

`A084947(n+1)/2`
-/

namespace A034829.P10533351944518446725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084947 (n + 1) : ℚ) / 2

end

end A034829.P10533351944518446725

noncomputable section

/-- A034829: a(n) = n-th sept-factorial number divided by 2.

Offset 1, canonical program `A034829.P10533351944518446725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034829 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034829.P10533351944518446725.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034829.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A034833.P6929480720013454725

`A049209(n+1)/6`
-/

namespace A034833.P6929480720013454725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049209 (n + 1) : ℚ) / 6

end

end A034833.P6929480720013454725

noncomputable section

/-- A034833: a(n) = n-th sept-factorial number divided by 6.

Offset 1, canonical program `A034833.P6929480720013454725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034833 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034833.P6929480720013454725.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A034833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035327.P258997810375859489

`abs(2*A053644(n)-n-1)`
-/

namespace A035327.P258997810375859489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A053644 n - (n : ℤ) - 1|

end

end A035327.P258997810375859489

noncomputable section

/-- A035327: Write n in binary, interchange 0's and 1's, convert back to decimal.

Offset 0, canonical program `A035327.P258997810375859489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035327 (n : ℕ) : ℤ :=
  A035327.P258997810375859489.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035602.P11295284103592876625

`2*A099195(n)`
-/

namespace A035602.P11295284103592876625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099195 n

end

end A035602.P11295284103592876625

noncomputable section

/-- A035602: Number of points of L1 norm 8 in cubic lattice Z^n.

Offset 0, canonical program `A035602.P11295284103592876625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035602 (n : ℕ) : ℤ :=
  A035602.P11295284103592876625.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035603.P5033389381879539558

`2*A099196(n)`
-/

namespace A035603.P5033389381879539558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099196 n

end

end A035603.P5033389381879539558

noncomputable section

/-- A035603: Number of points of L1 norm 9 in cubic lattice Z^n.

Offset 0, canonical program `A035603.P5033389381879539558`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035603 (n : ℕ) : ℤ :=
  A035603.P5033389381879539558.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037532.P16759706842372982497

`5/57*A049347(n)+3/57*A049347(n+1)+29/171*A000420(n+1)-2/9`
-/

namespace A037532.P16759706842372982497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 57 * (A049347 n : ℚ) + (3 : ℚ) / 57 * (A049347 (n + 1) : ℚ) + (29 : ℚ) / 171 * (A000420 (n + 1) : ℚ) - (2 : ℚ) / 9

end

end A037532.P16759706842372982497

noncomputable section

/-- A037532: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

Offset 1, canonical program `A037532.P16759706842372982497`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037532 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A037532.P16759706842372982497.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047452.P405283869231909876

`A047615(n+1)+1`
-/

namespace A047452.P405283869231909876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 1) + 1

end

end A047452.P405283869231909876

noncomputable section

/-- A047452: Numbers that are congruent to {1, 6} mod 8.

Offset 1, canonical program `A047452.P405283869231909876`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047452 (n : ℕ) : ℤ :=
  A047452.P405283869231909876.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047657.P6163376823588365071

`A084941(n)/A000142(n)*A000079(n)`
-/

namespace A047657.P6163376823588365071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084941 n : ℚ) / (A000142 n : ℚ) * (A000079 n : ℚ)

end

end A047657.P6163376823588365071

noncomputable section

/-- A047657: Sextuple factorial numbers: a(n) = Product_{k=0..n-1} (6*k+2).

Offset 0, canonical program `A047657.P6163376823588365071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047657 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047657.P6163376823588365071.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048050.P12972569362416034982

`A000203(n+1)-A065475(n+1)`
-/

namespace A048050.P12972569362416034982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A065475 (n + 1)

end

end A048050.P12972569362416034982

noncomputable section

/-- A048050: Chowla's function: sum of divisors of n except for 1 and n.

Offset 1, canonical program `A048050.P12972569362416034982`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048050 (n : ℕ) : ℤ :=
  A048050.P12972569362416034982.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048050.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048099.P9392881477138269526

`(A001189(n+1)+A051684(n+1))/2`
-/

namespace A048099.P9392881477138269526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001189 (n + 1) + A051684 (n + 1) : ℚ) / 2

end

end A048099.P9392881477138269526

noncomputable section

/-- A048099: Number of degree-n even permutations of order exactly 2.

Offset 1, canonical program `A048099.P9392881477138269526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048099 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048099.P9392881477138269526.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048099.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048883.P5685372570370684853

`3*a(n-A053644(n))` with `a(0)=1`
-/

namespace A048883.P5685372570370684853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a ((n : ℤ) - A053644 n).toNat

end

end A048883.P5685372570370684853

noncomputable section

/-- A048883: a(n) = 3^wt(n), where wt(n) = A000120(n).

Offset 0, canonical program `A048883.P5685372570370684853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048883 (n : ℕ) : ℤ :=
  (A048883.P5685372570370684853.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050190.P8777237852187354787

`(n+5)*A051170(n+5)`
-/

namespace A050190.P8777237852187354787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A051170 (n + 5)

end

end A050190.P8777237852187354787

noncomputable section

/-- A050190: T(n,5), array T as in A050186; a count of aperiodic binary words.

Offset 5, canonical program `A050190.P8777237852187354787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050190 (n : ℕ) : ℤ :=
  A050190.P8777237852187354787.a (n - 5)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052501.P8235743457399303753

`A059593(n)+1`
-/

namespace A052501.P8235743457399303753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059593 n + 1

end

end A052501.P8235743457399303753

noncomputable section

/-- A052501: Number of permutations sigma such that sigma^5=Id; degree-n permutations of order dividing 5.

Offset 0, canonical program `A052501.P8235743457399303753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052501 (n : ℕ) : ℤ :=
  A052501.P8235743457399303753.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052568.P10250969859322345287

`n!*A122367(n)`
-/

namespace A052568.P10250969859322345287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A122367 n

end

end A052568.P10250969859322345287

noncomputable section

/-- A052568: E.g.f.: (1-x)/(1-3*x+x^2).

Offset 0, canonical program `A052568.P10250969859322345287`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052568 (n : ℕ) : ℤ :=
  A052568.P10250969859322345287.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052579.P13235325419935773831

`n!*A131534(n+1)`
-/

namespace A052579.P13235325419935773831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A131534 (n + 1)

end

end A052579.P13235325419935773831

noncomputable section

/-- A052579: E.g.f. (2+x+x^2)/((1-x)(1+x+x^2)).

Offset 0, canonical program `A052579.P13235325419935773831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052579 (n : ℕ) : ℤ :=
  A052579.P13235325419935773831.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052616.P14532181740612281536

`n!*A176059(n)`
-/

namespace A052616.P14532181740612281536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A176059 n

end

end A052616.P14532181740612281536

noncomputable section

/-- A052616: Expansion of e.g.f. (3+2*x)/(1-x^2).

Offset 0, canonical program `A052616.P14532181740612281536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052616 (n : ℕ) : ℤ :=
  A052616.P14532181740612281536.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052616.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052621.P9239824465106200272

`n!*A177704(n+3)`
-/

namespace A052621.P9239824465106200272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A177704 (n + 3)

end

end A052621.P9239824465106200272

noncomputable section

/-- A052621: E.g.f. (2+x+x^2+x^3)/(1-x^4).

Offset 0, canonical program `A052621.P9239824465106200272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052621 (n : ℕ) : ℤ :=
  A052621.P9239824465106200272.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053735.P3640341592284089632

`n-2*A054861(n)`
-/

namespace A053735.P3640341592284089632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A054861 n

end

end A053735.P3640341592284089632

noncomputable section

/-- A053735: Sum of digits of (n written in base 3).

Offset 0, canonical program `A053735.P3640341592284089632`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053735 (n : ℕ) : ℤ :=
  A053735.P3640341592284089632.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053735.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053737.P2884229603739038868

`n-3*A054893(n)`
-/

namespace A053737.P2884229603739038868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 * A054893 n

end

end A053737.P2884229603739038868

noncomputable section

/-- A053737: Sum of digits of (n written in base 4).

Offset 0, canonical program `A053737.P2884229603739038868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053737 (n : ℕ) : ℤ :=
  A053737.P2884229603739038868.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053737.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053827.P15972254016312287163

`n-5*A054895(n)`
-/

namespace A053827.P15972254016312287163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5 * A054895 n

end

end A053827.P15972254016312287163

noncomputable section

/-- A053827: Sum of digits of (n written in base 6).

Offset 0, canonical program `A053827.P15972254016312287163`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053827 (n : ℕ) : ℤ :=
  A053827.P15972254016312287163.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055457.P3896145850230682422

`A112765(n+1)+1`
-/

namespace A055457.P3896145850230682422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 1) + 1

end

end A055457.P3896145850230682422

noncomputable section

/-- A055457: 5^a(n) exactly divides 5n. Or, 5-adic valuation of 5n.

Offset 1, canonical program `A055457.P3896145850230682422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055457 (n : ℕ) : ℤ :=
  A055457.P3896145850230682422.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055457.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055851.P9279442280682401618

`A204518(n+1)²`
-/

namespace A055851.P9279442280682401618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204518 (n + 1) ^ 2

end

end A055851.P9279442280682401618

noncomputable section

/-- A055851: a(n) and floor(a(n)/6) are both squares; i.e., squares that remain squares when written in base 6 and last digit is removed.

Offset 1, canonical program `A055851.P9279442280682401618`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055851 (n : ℕ) : ℤ :=
  A055851.P9279442280682401618.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055851.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056007.P10071170248464593128

`A071797(A000079(n))`
-/

namespace A056007.P10071170248464593128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A000079 n).toNat

end

end A056007.P10071170248464593128

noncomputable section

/-- A056007: Difference between 2^n and largest square strictly less than 2^n.

Offset 0, canonical program `A056007.P10071170248464593128`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056007 (n : ℕ) : ℤ :=
  A056007.P10071170248464593128.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056323.P14802106134183311547

`(A124303(n)+A305750(n))/2`
-/

namespace A056323.P14802106134183311547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124303 n + A305750 n : ℚ) / 2

end

end A056323.P14802106134183311547

noncomputable section

/-- A056323: Number of reversible string structures with n beads using a maximum of four different colors.

Offset 0, canonical program `A056323.P14802106134183311547`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056323 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056323.P14802106134183311547.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056323.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027951.P13385371042133120629

`A053296(n-(1-n)%(n+1))`
-/

namespace A027951.P13385371042133120629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A027951.P13385371042133120629

noncomputable section

/-- A027951: a(n) = T(2n,n+3), T given by A027948.

Offset 3, canonical program `A027951.P13385371042133120629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A027951 (n : ℕ) : ℤ :=
  A027951.P13385371042133120629.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A027951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027952.P14487123218290733274

`A053309(record[n*n%2])`
-/

namespace A027952.P14487123218290733274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053309 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027952.P14487123218290733274

noncomputable section

/-- A027952: a(n) = T(2n,n+4), T given by A027948.

Offset 4, canonical program `A027952.P14487123218290733274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027952 (n : ℕ) : ℤ :=
  A027952.P14487123218290733274.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A027952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027954.P3493308697241277458

`A014166(record[gcd(n, 1-a(n-1))])` with `a(0)=1`
-/

namespace A027954.P3493308697241277458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.gcd (n : ℤ) (1 - (f1 (n - 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027954.P3493308697241277458

noncomputable section

/-- A027954: a(n) = T(2n+1, n+2), T given by A027948.

Offset 1, canonical program `A027954.P3493308697241277458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A027954 (n : ℕ) : ℤ :=
  A027954.P3493308697241277458.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A027954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027955.P11893493600567343976

`A053295(eq[n, n*gcd(2, n)])`
-/

namespace A027955.P11893493600567343976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027955.P11893493600567343976

noncomputable section

/-- A027955: a(n) = T(2n+1, n+3), T given by A027948.

Offset 2, canonical program `A027955.P11893493600567343976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A027955 (n : ℕ) : ℤ :=
  A027955.P11893493600567343976.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A027955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027956.P10499782025491709337

`A053308(record[n*n%2])`
-/

namespace A027956.P10499782025491709337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027956.P10499782025491709337

noncomputable section

/-- A027956: a(n) = T(2n+1, n+4), T given by A027948.

Offset 3, canonical program `A027956.P10499782025491709337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A027956 (n : ℕ) : ℤ :=
  A027956.P10499782025491709337.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A027956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027958.P14156817934296809103

`A000079(n+1)-A226538(A014601(n))`
-/

namespace A027958.P14156817934296809103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A226538 (A014601 n).toNat

end

end A027958.P14156817934296809103

noncomputable section

/-- A027958: a(n) = T(n,m) + T(n,m+1) + ... + T(n,n), where m = floor((n+2)/2), T given by A027948.

Offset 1, canonical program `A027958.P14156817934296809103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A027958 (n : ℕ) : ℤ :=
  A027958.P14156817934296809103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A027958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027968.P9996318138673400809

`A027967(n+2)+a(n-1)` with `a(0)=1`
-/

namespace A027968.P9996318138673400809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027967 (n + 2) + a (n - 1)

end

end A027968.P9996318138673400809

noncomputable section

/-- A027968: a(n) = T(n, 2*n-6), T given by A027960.

Offset 3, canonical program `A027968.P9996318138673400809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027968 (n : ℕ) : ℤ :=
  A027968.P9996318138673400809.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A027968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027979.P7543321819054048890

`(n+1)*A000032(2*n)+3*A000045(2*n)-(-1)^n`
-/

namespace A027979.P7543321819054048890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000032 (2 * n) + 3 * A000045 (2 * n) - (-1) ^ n

end

end A027979.P7543321819054048890

noncomputable section

/-- A027979: a(n) = Sum_{k=0..n} T(n,k)*T(n,2n-k), T given by A027960.

Offset 0, canonical program `A027979.P7543321819054048890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A027979 (n : ℕ) : ℤ :=
  A027979.P7543321819054048890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A027979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027990.P6935938659145050057

`∑[A094864(n)]-A001654(n)`
-/

namespace A027990.P6935938659145050057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001654 n

end

end A027990.P6935938659145050057

noncomputable section

/-- A027990: Sum{T(n,k)*T(n,2n-k)}, 0<=k<=n, T given by A027926.

Offset 0, canonical program `A027990.P6935938659145050057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A027990 (n : ℕ) : ℤ :=
  A027990.P6935938659145050057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A027990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027991.P5048975300542147764

`A030267(n+1)-A001654(n)`
-/

namespace A027991.P5048975300542147764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1) - A001654 n

end

end A027991.P5048975300542147764

noncomputable section

/-- A027991: a(n) = Sum{T(n,k)*T(n,2n-k)}, 0<=k<=n-1, T given by A027926.

Offset 1, canonical program `A027991.P5048975300542147764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A027991 (n : ℕ) : ℤ :=
  A027991.P5048975300542147764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A027991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A027994.P10202381450971588503

`A000045(2*n)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A027994.P10202381450971588503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000045 (2 * n) + (a (n - 1) + a (n - 2))

end

end A027994.P10202381450971588503

noncomputable section

/-- A027994: a(n) = (F(2n+3) - F(n))/2 where F() = Fibonacci numbers A000045.

Offset 0, canonical program `A027994.P10202381450971588503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A027994 (n : ℕ) : ℤ :=
  A027994.P10202381450971588503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A027994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028025.P6599344251456017264

`A017269(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A028025.P6599344251456017264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017269 n + 4 * a (n - 1)

end

end A028025.P6599344251456017264

noncomputable section

/-- A028025: Expansion of 1/((1-3x)*(1-4x)*(1-5x)*(1-6x)).

Offset 0, canonical program `A028025.P6599344251456017264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A028025 (n : ℕ) : ℤ :=
  A028025.P6599344251456017264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A028025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028033.P5326427776762067664

`Δ[A016214(n)-A016222(n)]`
-/

namespace A028033.P5326427776762067664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016214 n - A016222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028033.P5326427776762067664

noncomputable section

/-- A028033: Expansion of 1/((1-3x)(1-4x)(1-6x)(1-8x)).

Offset 0, canonical program `A028033.P5326427776762067664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A028033 (n : ℕ) : ℤ :=
  A028033.P5326427776762067664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A028033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028039.P14687410652055840267

`A019613(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A028039.P14687410652055840267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019613 n + 3 * a (n - 1)

end

end A028039.P14687410652055840267

noncomputable section

/-- A028039: Expansion of 1/((1-3x)(1-4x)(1-7x)(1-9x)).

Offset 0, canonical program `A028039.P14687410652055840267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A028039 (n : ℕ) : ℤ :=
  A028039.P14687410652055840267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A028039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028043.P10306104810134960044

`A018056(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A028043.P10306104810134960044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018056 n + 4 * a (n - 1)

end

end A028043.P10306104810134960044

noncomputable section

/-- A028043: Expansion of 1/((1-3x)(1-4x)(1-8x)(1-9x)).

Offset 0, canonical program `A028043.P10306104810134960044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A028043 (n : ℕ) : ℤ :=
  A028043.P10306104810134960044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A028043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028056.P3315434457736523132

`2*A025934(n)-A025930(n)`
-/

namespace A028056.P3315434457736523132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025934 n - A025930 n

end

end A028056.P3315434457736523132

noncomputable section

/-- A028056: Expansion of 1/((1-3x)(1-5x)(1-6x)(1-10x)).

Offset 0, canonical program `A028056.P3315434457736523132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A028056 (n : ℕ) : ℤ :=
  A028056.P3315434457736523132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A028056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028061.P12946801495120093741

`2*A028029(n)-A028026(n)`
-/

namespace A028061.P12946801495120093741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028029 n - A028026 n

end

end A028061.P12946801495120093741

noncomputable section

/-- A028061: Expansion of 1/((1-3x)(1-5x)(1-7x)(1-10x)).

Offset 0, canonical program `A028061.P12946801495120093741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A028061 (n : ℕ) : ℤ :=
  A028061.P12946801495120093741.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A028061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028116.P13759368641497660590

`A018209(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A028116.P13759368641497660590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018209 n + 9 * a (n - 1)

end

end A028116.P13759368641497660590

noncomputable section

/-- A028116: Expansion of 1 / ((1-4*x)*(1-5*x)*(1-7*x)*(1-9*x)).

Offset 0, canonical program `A028116.P13759368641497660590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A028116 (n : ℕ) : ℤ :=
  A028116.P13759368641497660590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A028116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028249.P728959745112348866

`∑[A000217(Δ[ceil(n²/12)])]`
-/

namespace A028249.P728959745112348866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028249.P728959745112348866

noncomputable section

/-- A028249: Molien series for complete weight enumerator of self-dual code over GF(4) containing 1^n.

Offset 0, canonical program `A028249.P728959745112348866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028249 (n : ℕ) : ℤ :=
  A028249.P728959745112348866.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028250.P16144338509921234919

`ceil((A171984(n+1)+n)/2)`
-/

namespace A028250.P16144338509921234919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171984 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A028250.P16144338509921234919

noncomputable section

/-- A028250: Sequence arising in multiprocessor page migration.

Offset 1, canonical program `A028250.P16144338509921234919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028250 (n : ℕ) : ℤ :=
  A028250.P16144338509921234919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028251.P8547951660394490273

`A194964(A016897(n))+A028310(n)`
-/

namespace A028251.P8547951660394490273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (A016897 n).toNat + A028310 n

end

end A028251.P8547951660394490273

noncomputable section

/-- A028251: Sequence arising in multiprocessor page migration.

Offset 1, canonical program `A028251.P8547951660394490273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A028251 (n : ℕ) : ℤ :=
  A028251.P8547951660394490273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A028251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028255.P2191073135393491375

`A020701(n)%p?[A001057(n)]`
-/

namespace A028255.P2191073135393491375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020701 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A028255.P2191073135393491375

noncomputable section

/-- A028255: Fibonacci(n+3) mod n-th prime.

Offset 1, canonical program `A028255.P2191073135393491375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A028255 (n : ℕ) : ℤ :=
  A028255.P2191073135393491375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A028255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028256.P1817218934502254415

`A020695(n)%p?[A001057(n)]`
-/

namespace A028256.P1817218934502254415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020695 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A028256.P1817218934502254415

noncomputable section

/-- A028256: Fibonacci(n+2) mod n-th prime.

Offset 1, canonical program `A028256.P1817218934502254415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A028256 (n : ℕ) : ℤ :=
  A028256.P1817218934502254415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A028256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028270.P16565106357147895899

`A000984(n)+A323230(n)-1`
-/

namespace A028270.P16565106357147895899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A323230 n - 1)

end

end A028270.P16565106357147895899

noncomputable section

/-- A028270: Central elements in 3-Pascal triangle A028262 (by row).

Offset 0, canonical program `A028270.P16565106357147895899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A028270 (n : ℕ) : ℤ :=
  A028270.P16565106357147895899.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A028270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028288.P12182796705937412323

`A029143(2*n)`
-/

namespace A028288.P12182796705937412323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 (2 * n)

end

end A028288.P12182796705937412323

noncomputable section

/-- A028288: Molien series for complex 4-dimensional Clifford group of order 92160 and genus 2. Also Molien series of ring of biweight enumerators of Type II self-dual binary codes.

Offset 0, canonical program `A028288.P12182796705937412323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A028288 (n : ℕ) : ℤ :=
  A028288.P12182796705937412323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A028288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028302.P504256476029704228

`A000040(n+1)*A000108(n+1)`
-/

namespace A028302.P504256476029704228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000108 (n + 1)

end

end A028302.P504256476029704228

noncomputable section

/-- A028302: a(n) = prime(n)*Catalan(n).

Offset 1, canonical program `A028302.P504256476029704228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028302 (n : ℕ) : ℤ :=
  A028302.P504256476029704228.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028302.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028390.P7932204980656736229

`A006368(or(n, and(1, lcm(2, n)/2)))`
-/

namespace A028390.P7932204980656736229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lor (n : ℤ) (Int.land 1 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)))).toNat

end

end A028390.P7932204980656736229

noncomputable section

/-- A028390: Nearest integer to 3n/4 unless that is an integer, when 3n/2.

Offset 0, canonical program `A028390.P7932204980656736229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028390 (n : ℕ) : ℤ :=
  A028390.P7932204980656736229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028477.P2901389004330069939

`A000045(n+1)*A001582(n)`
-/

namespace A028477.P2901389004330069939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001582 n

end

end A028477.P2901389004330069939

noncomputable section

/-- A028477: Number of perfect matchings in graph C_{6} X P_{n}.

Offset 0, canonical program `A028477.P2901389004330069939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A028477 (n : ℕ) : ℤ :=
  A028477.P2901389004330069939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A028477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028861.P13692793023123417358

`floor(tan(A000045(n)))`
-/

namespace A028861.P13692793023123417358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (A000045 n : ℝ)⌋

end

end A028861.P13692793023123417358

noncomputable section

/-- A028861: a(n) = floor( tan(Fibonacci(n)) ).

Offset 0, canonical program `A028861.P13692793023123417358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A028861 (n : ℕ) : ℤ :=
  A028861.P13692793023123417358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A028861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028862.P6686684322383971846

`floor(sin(A000045(n)))`
-/

namespace A028862.P6686684322383971846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (A000045 n : ℝ)⌋

end

end A028862.P6686684322383971846

noncomputable section

/-- A028862: [ sin(Fibonacci(n)) ].

Offset 0, canonical program `A028862.P6686684322383971846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A028862 (n : ℕ) : ℤ :=
  A028862.P6686684322383971846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A028862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028887.P10338197440813535976

`A008458(∑{d}[n, A091703(#)])`
-/

namespace A028887.P10338197440813535976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (∑ d ∈ Nat.divisors (f1 n), A091703 d).toNat

end

end A028887.P10338197440813535976

noncomputable section

/-- A028887: Theta series of 4-dimensional 5-modular lattice with det 25 and minimal norm 2.

Offset 0, canonical program `A028887.P10338197440813535976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A028887 (n : ℕ) : ℤ :=
  A028887.P10338197440813535976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A028887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028894.P10298057160581444621

`A050141(n+1)+4*a(n-1)` with `a(0)=1`
-/

namespace A028894.P10298057160581444621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050141 (n + 1) + 4 * a (n - 1)

end

end A028894.P10298057160581444621

noncomputable section

/-- A028894: a(n) = either 4a(n-1)+1 or 4a(n-1)+3 depending on corresponding term of A005614, +1 for 0, +3 for 1.

Offset 1, canonical program `A028894.P10298057160581444621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A028894 (n : ℕ) : ℤ :=
  A028894.P10298057160581444621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A028894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028907.P5228973763592594334

`∑{digits}[∑{digits}[n², A002275(#)], A002275(#)]`
-/

namespace A028907.P5228973763592594334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A002275 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002275 x).sum

end

end A028907.P5228973763592594334

noncomputable section

/-- A028907: Arrange digits of squares in ascending order.

Offset 0, canonical program `A028907.P5228973763592594334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028907 (n : ℕ) : ℤ :=
  A028907.P5228973763592594334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028983.P406306813063525246

`eq[0, and(1, A000203(n+2))]+2`
-/

namespace A028983.P406306813063525246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000203 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A028983.P406306813063525246

noncomputable section

/-- A028983: Numbers whose sum of divisors is even.

Offset 1, canonical program `A028983.P406306813063525246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028983 (n : ℕ) : ℤ :=
  (A028983.P406306813063525246.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029123.P5153650302212498034

`∑[A025914(n)]`
-/

namespace A029123.P5153650302212498034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029123.P5153650302212498034

noncomputable section

/-- A029123: Expansion of 1/((1-x)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029123.P5153650302212498034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029123 (n : ℕ) : ℤ :=
  A029123.P5153650302212498034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029124.P10923443697703344622

`∑[A025915(n)]`
-/

namespace A029124.P10923443697703344622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029124.P10923443697703344622

noncomputable section

/-- A029124: Expansion of 1/((1-x)(1-x^7)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029124.P10923443697703344622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029124 (n : ℕ) : ℤ :=
  A029124.P10923443697703344622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029128.P7892556659566413608

`A029081(n)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A029128.P7892556659566413608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A029081 n - a (n - 4)

end

end A029128.P7892556659566413608

noncomputable section

/-- A029128: Expansion of 1/((1-x)(1-x^8)(1-x^9)(1-x^11)).

Offset 0, canonical program `A029128.P7892556659566413608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029128 (n : ℕ) : ℤ :=
  A029128.P7892556659566413608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029192.P625533738884100242

`A029084(n)-a(n-1)` with `a(0)=1`
-/

namespace A029192.P625533738884100242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029084 n - a (n - 1)

end

end A029192.P625533738884100242

noncomputable section

/-- A029192: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029192.P625533738884100242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029192 (n : ℕ) : ℤ :=
  A029192.P625533738884100242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029212.P383525199876690320

`A029104(n)-a(n-1)` with `a(0)=1`
-/

namespace A029212.P383525199876690320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029104 n - a (n - 1)

end

end A029212.P383525199876690320

noncomputable section

/-- A029212: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029212.P383525199876690320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029212 (n : ℕ) : ℤ :=
  A029212.P383525199876690320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029223.P10718192621319969633

`A029167(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029223.P10718192621319969633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029167 n - a (n - 3)

end

end A029223.P10718192621319969633

noncomputable section

/-- A029223: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029223.P10718192621319969633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029223 (n : ℕ) : ℤ :=
  A029223.P10718192621319969633.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029229.P7840999330443593408

`A029120(n)-a(n-1)` with `a(0)=1`
-/

namespace A029229.P7840999330443593408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029120 n - a (n - 1)

end

end A029229.P7840999330443593408

noncomputable section

/-- A029229: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029229.P7840999330443593408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029229 (n : ℕ) : ℤ :=
  A029229.P7840999330443593408.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029231.P839251406571888672

`A029182(n)+A029209(n)-A029176(n)`
-/

namespace A029231.P839251406571888672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029182 n + (A029209 n - A029176 n)

end

end A029231.P839251406571888672

noncomputable section

/-- A029231: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029231.P839251406571888672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029231 (n : ℕ) : ℤ :=
  A029231.P839251406571888672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029270.P14159109481119659441

`A029169(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029270.P14159109481119659441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029169 n - a (n - 2)

end

end A029270.P14159109481119659441

noncomputable section

/-- A029270: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029270.P14159109481119659441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029270 (n : ℕ) : ℤ :=
  A029270.P14159109481119659441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029271.P4727093851708620107

`A029170(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029271.P4727093851708620107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029170 n - a (n - 2)

end

end A029271.P4727093851708620107

noncomputable section

/-- A029271: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029271.P4727093851708620107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029271 (n : ℕ) : ℤ :=
  A029271.P4727093851708620107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029288.P10411134377989181800

`A025893(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029288.P10411134377989181800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025893 n + a (n - 3)

end

end A029288.P10411134377989181800

noncomputable section

/-- A029288: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029288.P10411134377989181800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029288 (n : ℕ) : ℤ :=
  A029288.P10411134377989181800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029289.P17957794895939154658

`A029269(n)+A029275(n)-A029255(n)`
-/

namespace A029289.P17957794895939154658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029269 n + (A029275 n - A029255 n)

end

end A029289.P17957794895939154658

noncomputable section

/-- A029289: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029289.P17957794895939154658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029289 (n : ℕ) : ℤ :=
  A029289.P17957794895939154658.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029290.P16762149366517590486

`A025895(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029290.P16762149366517590486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025895 n + a (n - 3)

end

end A029290.P16762149366517590486

noncomputable section

/-- A029290: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029290.P16762149366517590486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029290 (n : ℕ) : ℤ :=
  A029290.P16762149366517590486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029291.P6732410073293999855

`A025840(n)+A029043(n)-A029044(n)`
-/

namespace A029291.P6732410073293999855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025840 n + (A029043 n - A029044 n)

end

end A029291.P6732410073293999855

noncomputable section

/-- A029291: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029291.P6732410073293999855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029291 (n : ℕ) : ℤ :=
  A029291.P6732410073293999855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029300.P14221668752805489008

`A025853(n)+A029155(n)-A029164(n)`
-/

namespace A029300.P14221668752805489008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 n + (A029155 n - A029164 n)

end

end A029300.P14221668752805489008

noncomputable section

/-- A029300: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029300.P14221668752805489008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029300 (n : ℕ) : ℤ :=
  A029300.P14221668752805489008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029302.P7773887882283839256

`A025905(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029302.P7773887882283839256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025905 n + a (n - 3)

end

end A029302.P7773887882283839256

noncomputable section

/-- A029302: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029302.P7773887882283839256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029302 (n : ℕ) : ℤ :=
  A029302.P7773887882283839256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029304.P9150661440163627688

`A177239(A171088(A028242(n))+1)`
-/

namespace A029304.P9150661440163627688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177239 (A171088 (A028242 n).toNat + 1).toNat

end

end A029304.P9150661440163627688

noncomputable section

/-- A029304: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029304.P9150661440163627688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029304 (n : ℕ) : ℤ :=
  A029304.P9150661440163627688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029309.P15051498724445637453

`A025911(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029309.P15051498724445637453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025911 n + a (n - 3)

end

end A029309.P15051498724445637453

noncomputable section

/-- A029309: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029309.P15051498724445637453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029309 (n : ℕ) : ℤ :=
  A029309.P15051498724445637453.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029310.P14462968750972825055

`A025912(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029310.P14462968750972825055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025912 n + a (n - 3)

end

end A029310.P14462968750972825055

noncomputable section

/-- A029310: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029310.P14462968750972825055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029310 (n : ℕ) : ℤ :=
  A029310.P14462968750972825055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029311.P11942994698236464024

`A025913(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029311.P11942994698236464024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025913 n + a (n - 3)

end

end A029311.P11942994698236464024

noncomputable section

/-- A029311: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029311.P11942994698236464024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029311 (n : ℕ) : ℤ :=
  A029311.P11942994698236464024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029312.P7128779910836162524

`A025914(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029312.P7128779910836162524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025914 n + a (n - 3)

end

end A029312.P7128779910836162524

noncomputable section

/-- A029312: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029312.P7128779910836162524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029312 (n : ℕ) : ℤ :=
  A029312.P7128779910836162524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029316.P6118394211418629132

`∑[A025850(n)-A025877(A004442(n))]`
-/

namespace A029316.P6118394211418629132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025850 n - A025877 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029316.P6118394211418629132

noncomputable section

/-- A029316: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029316.P6118394211418629132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029316 (n : ℕ) : ℤ :=
  A029316.P6118394211418629132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029317.P5055318172430600220

`A025919(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029317.P5055318172430600220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025919 n + a (n - 3)

end

end A029317.P5055318172430600220

noncomputable section

/-- A029317: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029317.P5055318172430600220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029317 (n : ℕ) : ℤ :=
  A029317.P5055318172430600220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029320.P3817495982437401057

`A008681(abs(A097140(n)))`
-/

namespace A029320.P3817495982437401057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 |A097140 n|.toNat

end

end A029320.P3817495982437401057

noncomputable section

/-- A029320: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029320.P3817495982437401057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029320 (n : ℕ) : ℤ :=
  A029320.P3817495982437401057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029340.P5110672663290039049

`A029207(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029340.P5110672663290039049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029207 n - a (n - 2)

end

end A029340.P5110672663290039049

noncomputable section

/-- A029340: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029340.P5110672663290039049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029340 (n : ℕ) : ℤ :=
  A029340.P5110672663290039049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029342.P10735621688491322017

`A029209(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029342.P10735621688491322017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029209 n - a (n - 2)

end

end A029342.P10735621688491322017

noncomputable section

/-- A029342: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029342.P10735621688491322017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029342 (n : ℕ) : ℤ :=
  A029342.P10735621688491322017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029343.P15602731285430216918

`A029210(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029343.P15602731285430216918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029210 n - a (n - 2)

end

end A029343.P15602731285430216918

noncomputable section

/-- A029343: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029343.P15602731285430216918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029343 (n : ℕ) : ℤ :=
  A029343.P15602731285430216918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029344.P1277348593930115986

`A029211(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029344.P1277348593930115986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029211 n - a (n - 2)

end

end A029344.P1277348593930115986

noncomputable section

/-- A029344: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029344.P1277348593930115986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029344 (n : ℕ) : ℤ :=
  A029344.P1277348593930115986.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029351.P15082155288003523051

`A029261(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029351.P15082155288003523051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029261 n - a (n - 3)

end

end A029351.P15082155288003523051

noncomputable section

/-- A029351: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029351.P15082155288003523051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029351 (n : ℕ) : ℤ :=
  A029351.P15082155288003523051.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029353.P14895594492322350558

`A029264(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029353.P14895594492322350558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029264 n - a (n - 3)

end

end A029353.P14895594492322350558

noncomputable section

/-- A029353: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029353.P14895594492322350558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029353 (n : ℕ) : ℤ :=
  A029353.P14895594492322350558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029354.P752439661720051044

`A029221(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029354.P752439661720051044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029221 n - a (n - 2)

end

end A029354.P752439661720051044

noncomputable section

/-- A029354: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029354.P752439661720051044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029354 (n : ℕ) : ℤ :=
  A029354.P752439661720051044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029355.P10567033194552355608

`A029222(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029355.P10567033194552355608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029222 n - a (n - 2)

end

end A029355.P10567033194552355608

noncomputable section

/-- A029355: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029355.P10567033194552355608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029355 (n : ℕ) : ℤ :=
  A029355.P10567033194552355608.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029358.P6065047460035336274

`A029072(n)-∑[A025796(A057979(n))]`
-/

namespace A029358.P6065047460035336274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029358.P6065047460035336274

noncomputable section

/-- A029358: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029358.P6065047460035336274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029358 (n : ℕ) : ℤ :=
  A029358.P6065047460035336274.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029360.P14859210217828173422

`A029227(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029360.P14859210217828173422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029227 n - a (n - 2)

end

end A029360.P14859210217828173422

noncomputable section

/-- A029360: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^8)*(1-x^10)).

Offset 0, canonical program `A029360.P14859210217828173422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029360 (n : ℕ) : ℤ :=
  A029360.P14859210217828173422.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029363.P5892090971847677782

`A029230(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029363.P5892090971847677782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029230 n - a (n - 2)

end

end A029363.P5892090971847677782

noncomputable section

/-- A029363: Expansion of 1/((1 - x^4)*(1 - x^7)*(1 - x^9)*(1 - x^10)).

Offset 0, canonical program `A029363.P5892090971847677782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029363 (n : ℕ) : ℤ :=
  A029363.P5892090971847677782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029373.P15134939405955312355

`A029079(n)+A029265(n)-A029057(n)`
-/

namespace A029373.P15134939405955312355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029079 n + (A029265 n - A029057 n)

end

end A029373.P15134939405955312355

noncomputable section

/-- A029373: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029373.P15134939405955312355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029373 (n : ℕ) : ℤ :=
  A029373.P15134939405955312355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029381.P10530664393287797805

`A029280(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029381.P10530664393287797805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029280 n - a (n - 3)

end

end A029381.P10530664393287797805

noncomputable section

/-- A029381: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^7)*(1-x^11)).

Offset 0, canonical program `A029381.P10530664393287797805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029381 (n : ℕ) : ℤ :=
  A029381.P10530664393287797805.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029384.P5607878437325388803

`A029283(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029384.P5607878437325388803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029283 n - a (n - 3)

end

end A029384.P5607878437325388803

noncomputable section

/-- A029384: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)*(1-x^10)).

Offset 0, canonical program `A029384.P5607878437325388803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029384 (n : ℕ) : ℤ :=
  A029384.P5607878437325388803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029385.P8997023227907676682

`A029284(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029385.P8997023227907676682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029284 n - a (n - 3)

end

end A029385.P8997023227907676682

noncomputable section

/-- A029385: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029385.P8997023227907676682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029385 (n : ℕ) : ℤ :=
  A029385.P8997023227907676682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029386.P9736784195507492677

`A029285(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029386.P9736784195507492677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029285 n - a (n - 3)

end

end A029386.P9736784195507492677

noncomputable section

/-- A029386: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A029386.P9736784195507492677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029386 (n : ℕ) : ℤ :=
  A029386.P9736784195507492677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029387.P14372817239229268115

`A029286(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029387.P14372817239229268115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029286 n - a (n - 3)

end

end A029387.P14372817239229268115

noncomputable section

/-- A029387: Expansion of g.f. 1/((1 - x^5)*(1 - x^6)*(1 - x^9)*(1 - x^10)).

Offset 0, canonical program `A029387.P14372817239229268115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029387 (n : ℕ) : ℤ :=
  A029387.P14372817239229268115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029388.P9068945981374300045

`A029287(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029388.P9068945981374300045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029287 n - a (n - 3)

end

end A029388.P9068945981374300045

noncomputable section

/-- A029388: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029388.P9068945981374300045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029388 (n : ℕ) : ℤ :=
  A029388.P9068945981374300045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029393.P17295125386475700853

`A025883(n)+A029091(n)-A029092(n)`
-/

namespace A029393.P17295125386475700853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025883 n + (A029091 n - A029092 n)

end

end A029393.P17295125386475700853

noncomputable section

/-- A029393: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029393.P17295125386475700853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029393 (n : ℕ) : ℤ :=
  A029393.P17295125386475700853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029397.P14796845233603817795

`A025912(n)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=0`
-/

namespace A029397.P14796845233603817795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 1, 0] fun n a =>
  A025912 n + a (n - 5)

end

end A029397.P14796845233603817795

noncomputable section

/-- A029397: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029397.P14796845233603817795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029397 (n : ℕ) : ℤ :=
  A029397.P14796845233603817795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029404.P15874426153803631495

`A025892(n)+A029098(n)-A029101(n)`
-/

namespace A029404.P15874426153803631495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025892 n + (A029098 n - A029101 n)

end

end A029404.P15874426153803631495

noncomputable section

/-- A029404: Expansion of 1/((1-x^5)*(1-x^8)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029404.P15874426153803631495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029404 (n : ℕ) : ℤ :=
  A029404.P15874426153803631495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029413.P9052862419176915359

`A029306(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029413.P9052862419176915359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029306 n - a (n - 3)

end

end A029413.P9052862419176915359

noncomputable section

/-- A029413: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A029413.P9052862419176915359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029413 (n : ℕ) : ℤ :=
  A029413.P9052862419176915359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029414.P9882378605437634280

`A029307(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029414.P9882378605437634280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029307 n - a (n - 3)

end

end A029414.P9882378605437634280

noncomputable section

/-- A029414: Expansion of 1/((1-x^6)(1-x^7)(1-x^8)(1-x^10)).

Offset 0, canonical program `A029414.P9882378605437634280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029414 (n : ℕ) : ℤ :=
  A029414.P9882378605437634280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029428.P15062183357670920441

`A025906(n)+A029114(n)-A029115(n)`
-/

namespace A029428.P15062183357670920441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 n + (A029114 n - A029115 n)

end

end A029428.P15062183357670920441

noncomputable section

/-- A029428: Expansion of 1/((1-x^6)(1-x^9)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029428.P15062183357670920441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029428 (n : ℕ) : ℤ :=
  A029428.P15062183357670920441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029432.P8426870499552025551

`∑[A025818(n+7)-A025821(n+7)]`
-/

namespace A029432.P8426870499552025551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025818 (n + 7) - A025821 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029432.P8426870499552025551

noncomputable section

/-- A029432: Expansion of 1/((1-x^7)*(1-x^8)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029432.P8426870499552025551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A029432 (n : ℕ) : ℤ :=
  A029432.P8426870499552025551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A029432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029438.P11031953031316890893

`A025913(n)+∑[A025912(n)-A025913(n)]`
-/

namespace A029438.P11031953031316890893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025912 n - A025913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029438.P11031953031316890893

noncomputable section

/-- A029438: Expansion of 1/((1-x^7)(1-x^9)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029438.P11031953031316890893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029438 (n : ℕ) : ℤ :=
  A029438.P11031953031316890893.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029439.P16598392286380300323

`A029160(n+7)-A029165(n+7)`
-/

namespace A029439.P16598392286380300323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029160 (n + 7) - A029165 (n + 7)

end

end A029439.P16598392286380300323

noncomputable section

/-- A029439: Expansion of 1/((1-x^7)(1-x^9)(1-x^10)(1-x^12)).

Offset 0, canonical program `A029439.P16598392286380300323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A029439 (n : ℕ) : ℤ :=
  A029439.P16598392286380300323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A029439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029442.P15677434544600436367

`A025919(n)+∑[A025918(n)-A025919(n)]`
-/

namespace A029442.P15677434544600436367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025918 n - A025919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025919 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029442.P15677434544600436367

noncomputable section

/-- A029442: Expansion of 1/((1-x^8)(1-x^9)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029442.P15677434544600436367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029442 (n : ℕ) : ℤ :=
  A029442.P15677434544600436367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029651.P11256932498027878676

`floor(3*A000984(n)/2)`
-/

namespace A029651.P11256932498027878676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A000984 n : ℚ) / 2)⌋

end

end A029651.P11256932498027878676

noncomputable section

/-- A029651: Central elements of the (1,2)-Pascal triangle A029635.

Offset 0, canonical program `A029651.P11256932498027878676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A029651 (n : ℕ) : ℤ :=
  A029651.P11256932498027878676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A029651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029691.P5834615664010623992

`and(1, floor(sqrt(n+1)*A000079(n+1)))`
-/

namespace A029691.P5834615664010623992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.sqrt (n + 1 : ℝ) * (A000079 (n + 1) : ℝ)⌋

end

end A029691.P5834615664010623992

noncomputable section

/-- A029691: n-th binary digit in fractional part of square root of n.

Offset 1, canonical program `A029691.P5834615664010623992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A029691 (n : ℕ) : ℤ :=
  A029691.P5834615664010623992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A029691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029834.P17546886349959087234

`A000195(A118136(n))`
-/

namespace A029834.P17546886349959087234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A118136 n).toNat

end

end A029834.P17546886349959087234

noncomputable section

/-- A029834: A discrete version of the Mangoldt function: if n is prime then floor(log(n)) else 0.

Offset 1, canonical program `A029834.P17546886349959087234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029834 (n : ℕ) : ℤ :=
  A029834.P17546886349959087234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029835.P15078656030680500543

`floor(log(A000040(n+1)))`
-/

namespace A029835.P15078656030680500543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A000040 (n + 1) : ℝ)⌋

end

end A029835.P15078656030680500543

noncomputable section

/-- A029835: a(n) = floor(log(prime(n))).

Offset 1, canonical program `A029835.P15078656030680500543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029835 (n : ℕ) : ℤ :=
  A029835.P15078656030680500543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029836.P14547433213454093951

`round(log(A000040(n+1)))`
-/

namespace A029836.P14547433213454093951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A000040 (n + 1) : ℝ))

end

end A029836.P14547433213454093951

noncomputable section

/-- A029836: log( n-th prime) rounded to nearest integer.

Offset 0, canonical program `A029836.P14547433213454093951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029836 (n : ℕ) : ℤ :=
  A029836.P14547433213454093951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029938.P14725197787229691073

`(A000040(n+3)-5)*(A000040(n+3)-7)/24`
-/

namespace A029938.P14725197787229691073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000040 (n + 3) - 5) * (A000040 (n + 3) - 7) : ℚ) / 24

end

end A029938.P14725197787229691073

noncomputable section

/-- A029938: a(n) = (p-5)(p-7)/24, where p=prime(n).

Offset 3, canonical program `A029938.P14725197787229691073`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A029938 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A029938.P14725197787229691073.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A029938.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030060.P12340942550056967403

`C(n+3, 3)*A000108(n+3)`
-/

namespace A030060.P12340942550056967403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A000108 (n + 3)

end

end A030060.P12340942550056967403

noncomputable section

/-- A030060: Third derivative of Catalan generating function/3!.

Offset 0, canonical program `A030060.P12340942550056967403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A030060 (n : ℕ) : ℤ :=
  A030060.P12340942550056967403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A030060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030078.P13819432151207990454

`A000040(n+1)^3`
-/

namespace A030078.P13819432151207990454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 3

end

end A030078.P13819432151207990454

noncomputable section

/-- A030078: Cubes of primes.

Offset 1, canonical program `A030078.P13819432151207990454`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030078 (n : ℕ) : ℤ :=
  A030078.P13819432151207990454.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030078.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030238.P6212146511520901221

`a(n-1)+A000108(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A030238.P6212146511520901221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) + (A000108 n - a (n - 3))

end

end A030238.P6212146511520901221

noncomputable section

/-- A030238: Backwards shallow diagonal sums of Catalan triangle A009766.

Offset 0, canonical program `A030238.P6212146511520901221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A030238 (n : ℕ) : ℤ :=
  A030238.P6212146511520901221.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A030238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030426.P5250980322616430628

`A000045(A000040(n+1))`
-/

namespace A030426.P5250980322616430628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000040 (n + 1)).toNat

end

end A030426.P5250980322616430628

noncomputable section

/-- A030426: a(n) = Fibonacci(prime(n)).

Offset 1, canonical program `A030426.P5250980322616430628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030426 (n : ℕ) : ℤ :=
  A030426.P5250980322616430628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030426.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030427.P14895017311041254849

`A000040(A000045(n+1))`
-/

namespace A030427.P14895017311041254849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000045 (n + 1)).toNat

end

end A030427.P14895017311041254849

noncomputable section

/-- A030427: a(n) = prime(Fibonacci(n)).

Offset 1, canonical program `A030427.P14895017311041254849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030427 (n : ℕ) : ℤ :=
  A030427.P14895017311041254849.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030427.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030514.P11974636125371552077

`A000040(n+1)^4`
-/

namespace A030514.P11974636125371552077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 4

end

end A030514.P11974636125371552077

noncomputable section

/-- A030514: a(n) = prime(n)^4.

Offset 1, canonical program `A030514.P11974636125371552077`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030514 (n : ℕ) : ℤ :=
  A030514.P11974636125371552077.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030514.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030516.P1711246340231228216

`A000040(n+1)^6`
-/

namespace A030516.P1711246340231228216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 6

end

end A030516.P1711246340231228216

noncomputable section

/-- A030516: Numbers with 7 divisors. 6th powers of primes.

Offset 1, canonical program `A030516.P1711246340231228216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030516 (n : ℕ) : ℤ :=
  A030516.P1711246340231228216.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030629.P13094375079477453645

`A000040(n+1)^10`
-/

namespace A030629.P13094375079477453645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 10

end

end A030629.P13094375079477453645

noncomputable section

/-- A030629: Numbers with 11 divisors.

Offset 1, canonical program `A030629.P13094375079477453645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030629 (n : ℕ) : ℤ :=
  A030629.P13094375079477453645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030629.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030631.P2128528168171137643

`A000040(n+1)^12`
-/

namespace A030631.P2128528168171137643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 12

end

end A030631.P2128528168171137643

noncomputable section

/-- A030631: Numbers with 13 divisors.

Offset 1, canonical program `A030631.P2128528168171137643`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030631 (n : ℕ) : ℤ :=
  A030631.P2128528168171137643.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030631.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030647.P5228894558019639450

`Δ[A030648(n)]`
-/

namespace A030647.P5228894558019639450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030647.P5228894558019639450

noncomputable section

/-- A030647: Dimension of multiples of minimal representation of complex Lie algebra F4.

Offset 1, canonical program `A030647.P5228894558019639450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A030647 (n : ℕ) : ℤ :=
  A030647.P5228894558019639450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A030647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031131.P2453725465626413076

`A000040(n+3)-A000040(n+1)`
-/

namespace A031131.P2453725465626413076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - A000040 (n + 1)

end

end A031131.P2453725465626413076

noncomputable section

/-- A031131: Difference between n-th prime and (n+2)-nd prime.

Offset 1, canonical program `A031131.P2453725465626413076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031131 (n : ℕ) : ℤ :=
  A031131.P2453725465626413076.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031164.P14530744105720124966

`2*A038164(n)-A060099(n)`
-/

namespace A031164.P14530744105720124966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038164 n - A060099 n

end

end A031164.P14530744105720124966

noncomputable section

/-- A031164: Irreducible Euler sums of weight 8 and depth 10+2n.

Offset 0, canonical program `A031164.P14530744105720124966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031164 (n : ℕ) : ℤ :=
  A031164.P14530744105720124966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031165.P11271458498397254626

`A000040(n+4)-A000040(n+1)`
-/

namespace A031165.P11271458498397254626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4) - A000040 (n + 1)

end

end A031165.P11271458498397254626

noncomputable section

/-- A031165: a(n) = prime(n+3) - prime(n).

Offset 1, canonical program `A031165.P11271458498397254626`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031165 (n : ℕ) : ℤ :=
  A031165.P11271458498397254626.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031170.P7637823447145167778

`A000040(n+9)-A000040(n+1)`
-/

namespace A031170.P7637823447145167778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 9) - A000040 (n + 1)

end

end A031170.P7637823447145167778

noncomputable section

/-- A031170: a(n) = prime(n+8) - prime(n).

Offset 1, canonical program `A031170.P7637823447145167778`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031170 (n : ℕ) : ℤ :=
  A031170.P7637823447145167778.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031172.P18084180749850706965

`A000040(n+11)-A000040(n+1)`
-/

namespace A031172.P18084180749850706965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 11) - A000040 (n + 1)

end

end A031172.P18084180749850706965

noncomputable section

/-- A031172: a(n) = prime(n+10) - prime(n).

Offset 1, canonical program `A031172.P18084180749850706965`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031172 (n : ℕ) : ℤ :=
  A031172.P18084180749850706965.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031338.P10894287961732410553

`A000040(5*(n+1))`
-/

namespace A031338.P10894287961732410553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (5 * (n + 1))

end

end A031338.P10894287961732410553

noncomputable section

/-- A031338: a(n) = prime(5*n).

Offset 1, canonical program `A031338.P10894287961732410553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031338 (n : ℕ) : ℤ :=
  A031338.P10894287961732410553.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031381.P4365240931444153468

`A001749(A017041(n))/4`
-/

namespace A031381.P4365240931444153468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A017041 n).toNat : ℚ) / 4

end

end A031381.P4365240931444153468

noncomputable section

/-- A031381: a(n) = prime(7*n - 2).

Offset 1, canonical program `A031381.P4365240931444153468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A031381 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A031381.P4365240931444153468.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. -/
def A031381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031392.P3082985098239291939

`A000040(5*n+1)`
-/

namespace A031392.P3082985098239291939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (5 * n + 1)

end

end A031392.P3082985098239291939

noncomputable section

/-- A031392: a(n) = prime(5*n-4).

Offset 1, canonical program `A031392.P3082985098239291939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031392 (n : ℕ) : ℤ :=
  A031392.P3082985098239291939.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031394.P6913451241276462976

`A000040(7*(n+1)-4)`
-/

namespace A031394.P6913451241276462976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (7 * (n + 1) - 4)

end

end A031394.P6913451241276462976

noncomputable section

/-- A031394: a(n) = prime(7*n - 4).

Offset 1, canonical program `A031394.P6913451241276462976`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031394 (n : ℕ) : ℤ :=
  A031394.P6913451241276462976.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031506.P8923148781896726843

`A026625(Δ[n²])`
-/

namespace A031506.P8923148781896726843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026625 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031506.P8923148781896726843

noncomputable section

/-- A031506: Number of consecutive integers placed in n bins under a certain packing scheme.

Offset 0, canonical program `A031506.P8923148781896726843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A031506 (n : ℕ) : ℤ :=
  A031506.P8923148781896726843.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A031506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031876.P13799947586534427295

`and(∑[A048766(n)], -1)`
-/

namespace A031876.P13799947586534427295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A031876.P13799947586534427295

noncomputable section

/-- A031876: a(n) = Sum_{k=0..n} floor(k^(1/3)).

Offset 0, canonical program `A031876.P13799947586534427295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031876 (n : ℕ) : ℤ :=
  A031876.P13799947586534427295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031913.P9685804364907739259

`A000040(A017197(n))`
-/

namespace A031913.P9685804364907739259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A017197 n).toNat

end

end A031913.P9685804364907739259

noncomputable section

/-- A031913: a(n) = prime(9*n - 6).

Offset 1, canonical program `A031913.P9685804364907739259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031913 (n : ℕ) : ℤ :=
  A031913.P9685804364907739259.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031914.P11567849576701860453

`A000040(A017317(n))`
-/

namespace A031914.P11567849576701860453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A017317 n).toNat

end

end A031914.P11567849576701860453

noncomputable section

/-- A031914: a(n) = prime(10*n - 6).

Offset 1, canonical program `A031914.P11567849576701860453`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031914 (n : ℕ) : ℤ :=
  A031914.P11567849576701860453.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031914.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031919.P2337143140525117036

`A000040(A017293(n))`
-/

namespace A031919.P2337143140525117036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A017293 n).toNat

end

end A031919.P2337143140525117036

noncomputable section

/-- A031919: a(n) = prime(10*n-8).

Offset 1, canonical program `A031919.P2337143140525117036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031919 (n : ℕ) : ℤ :=
  A031919.P2337143140525117036.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031919.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031922.P3816498136187403167

`A000040(1000*(n+1))`
-/

namespace A031922.P3816498136187403167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1000 * (n + 1))

end

end A031922.P3816498136187403167

noncomputable section

/-- A031922: a(n) = prime(1000 * n).

Offset 1, canonical program `A031922.P3816498136187403167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031922 (n : ℕ) : ℤ :=
  A031922.P3816498136187403167.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031922.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031974.P17870645276126365842

`A000042(A000040(n+1))`
-/

namespace A031974.P17870645276126365842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A000040 (n + 1)).toNat

end

end A031974.P17870645276126365842

noncomputable section

/-- A031974: 1 repeated prime(n) times.

Offset 1, canonical program `A031974.P17870645276126365842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031974 (n : ℕ) : ℤ :=
  A031974.P17870645276126365842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A032095.P17238562505437964512

`A005317(A028310(n))-A027306(n)`
-/

namespace A032095.P17238562505437964512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 (A028310 n).toNat - A027306 n

end

end A032095.P17238562505437964512

noncomputable section

/-- A032095: Number of reversible strings with n-1 black beads and n-1 white beads. String is not palindromic.

Offset 1, canonical program `A032095.P17238562505437964512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A032095 (n : ℕ) : ℤ :=
  A032095.P17238562505437964512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A032095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032097.P1611958979588345420

`A250111(Δ[n²])+1`
-/

namespace A032097.P1611958979588345420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250111 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A032097.P1611958979588345420

noncomputable section

/-- A032097: "BHK" (reversible, identity, unlabeled) transform of 2,1,1,1,...

Offset 1, canonical program `A032097.P1611958979588345420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A032097 (n : ℕ) : ℤ :=
  A032097.P1611958979588345420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A032097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032126.P8278390657951579463

`∑[A005207(n+1)-A000045(A237420(n))]`
-/

namespace A032126.P8278390657951579463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) - A000045 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032126.P8278390657951579463

noncomputable section

/-- A032126: "BIK" (reversible, indistinct, unlabeled) transform of 1,2,3,4...

Offset 1, canonical program `A032126.P8278390657951579463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A032126 (n : ℕ) : ℤ :=
  A032126.P8278390657951579463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A032126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032246.P10915849756129363604

`∑[∑[2*A008720(n)]]`
-/

namespace A032246.P10915849756129363604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008720 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032246.P10915849756129363604

noncomputable section

/-- A032246: "DHK[ 5 ]" (bracelet, identity, unlabeled, 5 parts) transform of 1,1,1,1,...

Offset 8, canonical program `A032246.P10915849756129363604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032246 (n : ℕ) : ℤ :=
  A032246.P10915849756129363604.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032440.P7459206147418244554

`A001611(n)+C(A001611(n), 3)`
-/

namespace A032440.P7459206147418244554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (Nat.choose (A001611 n).toNat 3 : ℤ)

end

end A032440.P7459206147418244554

noncomputable section

/-- A032440: Sum_{i=0..3} binomial(Fibonacci(n),i).

Offset 0, canonical program `A032440.P7459206147418244554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A032440 (n : ℕ) : ℤ :=
  A032440.P7459206147418244554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A032440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032513.P5434997152573747465

`and(∑[A178487(n)], -1)`
-/

namespace A032513.P5434997152573747465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A032513.P5434997152573747465

noncomputable section

/-- A032513: Sum of the integer part of 5th roots of positive integers less than or equal to n.

Offset 0, canonical program `A032513.P5434997152573747465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032513 (n : ℕ) : ℤ :=
  A032513.P5434997152573747465.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032770.P4188714620119748451

`A032768(lt[n, lcm(5, 3-n)])`
-/

namespace A032770.P4188714620119748451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (3 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032768 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A032770.P4188714620119748451

noncomputable section

/-- A032770: Integer quotients of n(n + 1)(n + 2)(n + 3)(n + 4) / (n+(n+1)+(n+2)+(n+3)+(n+4)).

Offset 0, canonical program `A032770.P4188714620119748451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A032770 (n : ℕ) : ℤ :=
  A032770.P4188714620119748451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. -/
def A032770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032777.P13407459365297068253

`floor(A239035(n)/A017113(n+3))`
-/

namespace A032777.P13407459365297068253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A239035 n : ℚ) / (A017113 (n + 3) : ℚ)⌋

end

end A032777.P13407459365297068253

noncomputable section

/-- A032777: Floor( n(n+1)(n+2)...(n+7) / (n+(n+1)+(n+2)+...+(n+7)) ).

Offset 0, canonical program `A032777.P13407459365297068253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A032777 (n : ℕ) : ℤ :=
  A032777.P13407459365297068253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A032777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032801.P10872476125885974760

`∑[2*A008217(n)]-A295643(n)`
-/

namespace A032801.P10872476125885974760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A295643 n

end

end A032801.P10872476125885974760

noncomputable section

/-- A032801: Number of unordered sets a, b, c, d of distinct integers from 1..n such that a+b+c+d = 0 (mod n).

Offset 1, canonical program `A032801.P10872476125885974760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032801 (n : ℕ) : ℤ :=
  A032801.P10872476125885974760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033183.P3548296153277958657

`A008618(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A033183.P3548296153277958657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008618 n - a (n - 2)

end

end A033183.P3548296153277958657

noncomputable section

/-- A033183: a(n) = number of pairs (p,q) such that 4*p + 9*q = n.

Offset 0, canonical program `A033183.P3548296153277958657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033183 (n : ℕ) : ℤ :=
  A033183.P3548296153277958657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033193.P9077619747370793281

`Δ[A033190(n)]`
-/

namespace A033193.P9077619747370793281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033193.P9077619747370793281

noncomputable section

/-- A033193: Binomial transform of A033192.

Offset 0, canonical program `A033193.P9077619747370793281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A033193 (n : ℕ) : ℤ :=
  A033193.P9077619747370793281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A033193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033272.P13508540407970114624

`A001227(n+1)-A005087(n+1)`
-/

namespace A033272.P13508540407970114624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A005087 (n + 1)

end

end A033272.P13508540407970114624

noncomputable section

/-- A033272: Number of odd nonprimes dividing n.

Offset 1, canonical program `A033272.P13508540407970114624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033272 (n : ℕ) : ℤ :=
  A033272.P13508540407970114624.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005087, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033286.P2794343547372572705

`(n+1)*A000040(n+1)`
-/

namespace A033286.P2794343547372572705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 1)

end

end A033286.P2794343547372572705

noncomputable section

/-- A033286: a(n) = n * prime(n).

Offset 1, canonical program `A033286.P2794343547372572705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033286 (n : ℕ) : ℤ :=
  A033286.P2794343547372572705.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033292.P14487926781763147926

`2*A083920(n)+n+1`
-/

namespace A033292.P14487926781763147926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083920 n + (n + 1 : ℤ)

end

end A033292.P14487926781763147926

noncomputable section

/-- A033292: A Connell-like sequence: take 1 number = 1 (mod Q), 2 numbers = 2 (mod Q), 3 numbers = 3 (mod Q), etc., where Q = 3.

Offset 1, canonical program `A033292.P14487926781763147926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033292 (n : ℕ) : ℤ :=
  A033292.P14487926781763147926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033293.P12605047835593142903

`7*A083920(n)+1+n`
-/

namespace A033293.P12605047835593142903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A083920 n + 1 + (n : ℤ)

end

end A033293.P12605047835593142903

noncomputable section

/-- A033293: A Connell-like sequence: take 1 number = 1 (mod Q), 2 numbers = 2 (mod Q), 3 numbers = 3 (mod Q), etc., where Q = 8.

Offset 1, canonical program `A033293.P12605047835593142903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033293 (n : ℕ) : ℤ :=
  A033293.P12605047835593142903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033433.P13586556351946608921

`A000027(floor(sqrt(A033424(n+1))))`
-/

namespace A033433.P13586556351946608921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.sqrt (A033424 (n + 1))).toNat

end

end A033433.P13586556351946608921

noncomputable section

/-- A033433: a(n) = floor(10000/sqrt(n)).

Offset 1, canonical program `A033433.P13586556351946608921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033433 (n : ℕ) : ℤ :=
  A033433.P13586556351946608921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033476.P2904069221429248030

`A000040(ceil(n/2)+1)*p?[ceil(n/2)+1]`
-/

namespace A033476.P2904069221429248030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (⌈(n : ℚ) / 2⌉ + 1).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A033476.P2904069221429248030

noncomputable section

/-- A033476: Squares of primes or products of pairs of consecutive primes.

Offset 0, canonical program `A033476.P2904069221429248030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033476 (n : ℕ) : ℤ :=
  A033476.P2904069221429248030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033479.P2080773585822601974

`A006370(a(n-1))` with `a(0)=9`
-/

namespace A033479.P2080773585822601974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A033479.P2080773585822601974

noncomputable section

/-- A033479: 3x+1 sequence beginning at 9.

Offset 0, canonical program `A033479.P2080773585822601974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033479 (n : ℕ) : ℤ :=
  A033479.P2080773585822601974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033480.P17591135087933876095

`A006370(a(n-1))` with `a(0)=15`
-/

namespace A033480.P17591135087933876095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A033480.P17591135087933876095

noncomputable section

/-- A033480: 3x + 1 sequence beginning at 15.

Offset 0, canonical program `A033480.P17591135087933876095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033480 (n : ℕ) : ℤ :=
  A033480.P17591135087933876095.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033619.P1872960733624961267

`A000196(n²)+char[10*(n+10)]`
-/

namespace A033619.P1872960733624961267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 10)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n ^ 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A033619.P1872960733624961267

noncomputable section

/-- A033619: Undulating numbers (of form abababab... in base 10).

Offset 1, canonical program `A033619.P1872960733624961267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A033619 (n : ℕ) : ℤ :=
  A033619.P1872960733624961267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A033619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033633.P16631947785481772110

`A000040(n+1)%19`
-/

namespace A033633.P16631947785481772110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 19

end

end A033633.P16631947785481772110

noncomputable section

/-- A033633: a(n) = n-th prime modulo 19.

Offset 1, canonical program `A033633.P16631947785481772110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033633 (n : ℕ) : ℤ :=
  A033633.P16631947785481772110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033634.P14411435356660809235

`∑{d}[n+1, #*A005361(#)%2]`
-/

namespace A033634.P14411435356660809235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A005361 d) 2

end

end A033634.P14411435356660809235

noncomputable section

/-- A033634: OddPowerSigma(n) = sum of odd power divisors of n.

Offset 1, canonical program `A033634.P14411435356660809235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033634 (n : ℕ) : ℤ :=
  A033634.P14411435356660809235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033684.P12387515410583376305

`A010052(n)*A011655(n)`
-/

namespace A033684.P12387515410583376305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n * A011655 n

end

end A033684.P12387515410583376305

noncomputable section

/-- A033684: 1 iff n is a square not divisible by 3.

Offset 0, canonical program `A033684.P12387515410583376305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033684 (n : ℕ) : ℤ :=
  A033684.P12387515410583376305.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033811.P13473248571032266694

`A023537(n+2)-(n+2)`
-/

namespace A033811.P13473248571032266694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (n + 2) - (n + 2 : ℤ)

end

end A033811.P13473248571032266694

noncomputable section

/-- A033811: Convolution of natural numbers n >= 1 with Lucas numbers L(k)(A000032) for k >= 2.

Offset 1, canonical program `A033811.P13473248571032266694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A033811 (n : ℕ) : ℤ :=
  A033811.P13473248571032266694.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A033811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033868.P9616034218409755744

`A024903(n+1)+1`
-/

namespace A033868.P9616034218409755744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024903 (n + 1) + 1

end

end A033868.P9616034218409755744

noncomputable section

/-- A033868: Numbers n such that 7*n-11 is prime.

Offset 1, canonical program `A033868.P9616034218409755744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033868 (n : ℕ) : ℤ :=
  A033868.P9616034218409755744.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033868.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033936.P15777479944997308924

`A003132(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A033936.P15777479944997308924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003132 (a (n - 1)).toNat + a (n - 1)

end

end A033936.P15777479944997308924

noncomputable section

/-- A033936: a(n+1) = a(n) + sum of squares of digits of a(n).

Offset 0, canonical program `A033936.P15777479944997308924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A033936 (n : ℕ) : ℤ :=
  A033936.P15777479944997308924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A033936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033945.P16229750016631118543

`record[3*(n+1)-A000203(n+1)]`
-/

namespace A033945.P16229750016631118543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033945.P16229750016631118543

noncomputable section

/-- A033945: Record highs in A033885 (3n - sum of divisors of n).

Offset 1, canonical program `A033945.P16229750016631118543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9595 terms. -/
def A033945 (n : ℕ) : ℤ :=
  A033945.P16229750016631118543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9595 terms. -/
def A033945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034113.P7145487810517545129

`A034108(n+1)-(A065475(n+1)+1)`
-/

namespace A034113.P7145487810517545129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034108 (n + 1) - (A065475 (n + 1) + 1)

end

end A034113.P7145487810517545129

noncomputable section

/-- A034113: Fractional part of square root of a(n) starts with 7: first term of runs.

Offset 1, canonical program `A034113.P7145487810517545129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9181 terms. -/
def A034113 (n : ℕ) : ℤ :=
  A034113.P7145487810517545129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9181 terms. -/
def A034113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034680.P14033426650178901058

`A034677((n+1)²)`
-/

namespace A034680.P14033426650178901058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034677 ((n + 1) ^ 2)

end

end A034680.P14033426650178901058

noncomputable section

/-- A034680: Sum of sixth powers of unitary divisors.

Offset 1, canonical program `A034680.P14033426650178901058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A034680 (n : ℕ) : ℤ :=
  A034680.P14033426650178901058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A034680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034696.P13754562402814892343

`∑{d}[n+1, A000040(#)*A000040((n+1)/#)]`
-/

namespace A034696.P13754562402814892343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d * A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034696.P13754562402814892343

noncomputable section

/-- A034696: Dirichlet convolution of primes (A000040) with themselves.

Offset 1, canonical program `A034696.P13754562402814892343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034696 (n : ℕ) : ℤ :=
  A034696.P13754562402814892343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034715.P12105668079414109745

`∑{d}[n+1, A000217(#)*A000217((n+1)/#)]`
-/

namespace A034715.P12105668079414109745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 d * A000217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034715.P12105668079414109745

noncomputable section

/-- A034715: Dirichlet convolution of triangular numbers with themselves.

Offset 1, canonical program `A034715.P12105668079414109745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034715 (n : ℕ) : ℤ :=
  A034715.P12105668079414109745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034717.P12656796764018422404

`∑{d}[n+1, A000108((n+1)/#)*A000108(#)]`
-/

namespace A034717.P12656796764018422404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000108 d

end

end A034717.P12656796764018422404

noncomputable section

/-- A034717: Dirichlet convolution of Catalan numbers (1,2,5,14...) with themselves.

Offset 1, canonical program `A034717.P12656796764018422404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A034717 (n : ℕ) : ℤ :=
  A034717.P12656796764018422404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A034717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034718.P3593226666238207661

`(n+1)*A007425(n+1)`
-/

namespace A034718.P3593226666238207661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007425 (n + 1)

end

end A034718.P3593226666238207661

noncomputable section

/-- A034718: Dirichlet convolution of b_n=n with b_n with b_n.

Offset 1, canonical program `A034718.P3593226666238207661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034718 (n : ℕ) : ℤ :=
  A034718.P3593226666238207661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034719.P18413001168880020072

`9*∑{d}[n+1, A000244(#-1)*A000244((n+1)/#-1)]`
-/

namespace A034719.P18413001168880020072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ d ∈ Nat.divisors (f1 n), A000244 (d - 1) * A000244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat)

end

end A034719.P18413001168880020072

noncomputable section

/-- A034719: Dirichlet convolution of powers of 3 (3,9,27,...) with themselves.

Offset 1, canonical program `A034719.P18413001168880020072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A034719 (n : ℕ) : ℤ :=
  A034719.P18413001168880020072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A034719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034731.P7299098543500313061

`∑{d}[n+1, A000108(#-1)]`
-/

namespace A034731.P7299098543500313061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 (d - 1)

end

end A034731.P7299098543500313061

noncomputable section

/-- A034731: Dirichlet convolution of b_n=1 with Catalan numbers.

Offset 1, canonical program `A034731.P7299098543500313061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034731 (n : ℕ) : ℤ :=
  A034731.P7299098543500313061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034733.P3061551494499971223

`∑{d}[n+1, A034008((n+1)/#+#)]`
-/

namespace A034733.P3061551494499971223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034008 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ))).toNat

end

end A034733.P3061551494499971223

noncomputable section

/-- A034733: Dirichlet convolution of b_n=2^(n-1) with itself.

Offset 1, canonical program `A034733.P3061551494499971223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A034733 (n : ℕ) : ℤ :=
  A034733.P3061551494499971223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A034733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034735.P10548595079160747412

`∑{d}[n+1, A000079(#-1)*A000244((n+1)/#-1)]`
-/

namespace A034735.P10548595079160747412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A000244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034735.P10548595079160747412

noncomputable section

/-- A034735: Dirichlet convolution of b_n=2^(n-1) with c_n=3^(n-1).

Offset 1, canonical program `A034735.P10548595079160747412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034735 (n : ℕ) : ℤ :=
  A034735.P10548595079160747412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034739.P11447172640487104679

`∑{d}[n+1, A000079(#-1)*A000108((n+1)/#-1)]`
-/

namespace A034739.P11447172640487104679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A000108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034739.P11447172640487104679

noncomputable section

/-- A034739: Dirichlet convolution of b_n=2^(n-1) with Catalan numbers.

Offset 1, canonical program `A034739.P11447172640487104679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034739 (n : ℕ) : ℤ :=
  A034739.P11447172640487104679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034744.P4901700119150074156

`∑{d}[n+1, A000045((n+1)/#)*A000045(#)]`
-/

namespace A034744.P4901700119150074156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000045 d

end

end A034744.P4901700119150074156

noncomputable section

/-- A034744: Dirichlet convolution of Fibonacci numbers with themselves.

Offset 1, canonical program `A034744.P4901700119150074156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A034744 (n : ℕ) : ℤ :=
  A034744.P4901700119150074156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A034744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034751.P500003660580225969

`∑{d}[n+1, A000244(#-1)*A000244((n+1)/#-1)]`
-/

namespace A034751.P500003660580225969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000244 (d - 1) * A000244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034751.P500003660580225969

noncomputable section

/-- A034751: Dirichlet convolution of 3^(n-1) with itself.

Offset 1, canonical program `A034751.P500003660580225969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A034751 (n : ℕ) : ℤ :=
  A034751.P500003660580225969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A034751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034753.P12853043952854742106

`∑{d}[n+1, A359189(#)]`
-/

namespace A034753.P12853043952854742106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359189 d

end

end A034753.P12853043952854742106

noncomputable section

/-- A034753: Dirichlet convolution of 3^(n-1) with sigma(n).

Offset 1, canonical program `A034753.P12853043952854742106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034753 (n : ℕ) : ℤ :=
  A034753.P12853043952854742106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034755.P6404292671530710847

`∑{d}[n+1, A000108(#-1)*A000244((n+1)/#-1)]`
-/

namespace A034755.P6404292671530710847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 (d - 1) * A000244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034755.P6404292671530710847

noncomputable section

/-- A034755: Dirichlet convolution of 3^(n-1) with Catalan numbers.

Offset 1, canonical program `A034755.P6404292671530710847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034755 (n : ℕ) : ℤ :=
  A034755.P6404292671530710847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034785.P3164045001840823400

`2^A000040(n+1)`
-/

namespace A034785.P3164045001840823400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A034785.P3164045001840823400

noncomputable section

/-- A034785: a(n) = 2^(n-th prime).

Offset 1, canonical program `A034785.P3164045001840823400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034785 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034785.P3164045001840823400.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034785.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034837.P6817860446194292384

`eq[0, (n+1)%A000030(n+1)]+1`
-/

namespace A034837.P6817860446194292384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000030 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034837.P6817860446194292384

noncomputable section

/-- A034837: Numbers that are divisible by the first, i.e., the leftmost, digit.

Offset 1, canonical program `A034837.P6817860446194292384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3159 terms. -/
def A034837 (n : ℕ) : ℤ :=
  (A034837.P6817860446194292384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3159 terms. -/
def A034837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034842.P3328031310771291093

`eq[A032741(n)+1, A010879(n)]`
-/

namespace A034842.P3328031310771291093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034842.P3328031310771291093

noncomputable section

/-- A034842: Number of divisors = last digit.

Offset 1, canonical program `A034842.P3328031310771291093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A034842 (n : ℕ) : ℤ :=
  (A034842.P3328031310771291093.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 520 terms. -/
def A034842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034843.P18163365726242759296

`eq[A032741(n)+1, A000030(n)]`
-/

namespace A034843.P18163365726242759296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034843.P18163365726242759296

noncomputable section

/-- A034843: Number of divisors = first digit.

Offset 1, canonical program `A034843.P18163365726242759296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A034843 (n : ℕ) : ℤ :=
  (A034843.P18163365726242759296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 760 terms. -/
def A034843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034870.P1046418802650642871

`C(2*A000196(n), A053186(n))`
-/

namespace A034870.P1046418802650642871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A000196 n).toNat (A053186 n).toNat

end

end A034870.P1046418802650642871

noncomputable section

/-- A034870: Even-numbered rows of Pascal's triangle.

Offset 0, canonical program `A034870.P1046418802650642871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034870 (n : ℕ) : ℤ :=
  (A034870.P1046418802650642871.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034935.P1943282245876720282

`record[A048898(abs(1-abs(1-n)))]`
-/

namespace A034935.P1943282245876720282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 |(1 - |1 - (n : ℤ)|)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034935.P1943282245876720282

noncomputable section

/-- A034935: Successive approximations to 5-adic integer sqrt(-1).

Offset 0, canonical program `A034935.P1943282245876720282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A034935 (n : ℕ) : ℤ :=
  A034935.P1943282245876720282.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A034935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034953.P12568728140146877898

`A000217(A000040(n+1))`
-/

namespace A034953.P12568728140146877898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000040 (n + 1)).toNat

end

end A034953.P12568728140146877898

noncomputable section

/-- A034953: Triangular numbers (A000217) with prime indices.

Offset 1, canonical program `A034953.P12568728140146877898`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034953 (n : ℕ) : ℤ :=
  A034953.P12568728140146877898.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034954.P1217636327636540373

`A000217(A002313(n+1))`
-/

namespace A034954.P1217636327636540373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002313 (n + 1)).toNat

end

end A034954.P1217636327636540373

noncomputable section

/-- A034954: Odd triangular numbers with prime indices.

Offset 1, canonical program `A034954.P1217636327636540373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002313, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034954 (n : ℕ) : ℤ :=
  A034954.P1217636327636540373.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002313, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034954.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034955.P13886978221229841421

`A000217(A002145(n+1))`
-/

namespace A034955.P13886978221229841421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002145 (n + 1)).toNat

end

end A034955.P13886978221229841421

noncomputable section

/-- A034955: Even triangular numbers with prime indices.

Offset 1, canonical program `A034955.P13886978221229841421`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034955 (n : ℕ) : ℤ :=
  A034955.P13886978221229841421.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035014.P1017373101291084189

`Δ[A126646(n)]*A050620(n+1)`
-/

namespace A035014.P1017373101291084189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A050620 (n + 1)

end

end A035014.P1017373101291084189

noncomputable section

/-- A035014: a(n) contains n digits (either '3' or '4') and is divisible by 2^n.

Offset 1, canonical program `A035014.P1017373101291084189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A035014 (n : ℕ) : ℤ :=
  A035014.P1017373101291084189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A035014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035100.P16711503485959756516

`floor(log2(A000040(n+1)))+1`
-/

namespace A035100.P16711503485959756516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A000040 (n + 1)).toNat + 1

end

end A035100.P16711503485959756516

noncomputable section

/-- A035100: Number of bits in binary expansion of n-th prime.

Offset 1, canonical program `A035100.P16711503485959756516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035100 (n : ℕ) : ℤ :=
  (A035100.P16711503485959756516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035175.P2871059185806058886

`∑{d}[n+1, A316569(#)]`
-/

namespace A035175.P2871059185806058886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316569 d

end

end A035175.P2871059185806058886

noncomputable section

/-- A035175: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -15.

Offset 1, canonical program `A035175.P2871059185806058886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A035175 (n : ℕ) : ℤ :=
  A035175.P2871059185806058886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A035175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035179.P2839605348435704659

`∑{d}[n+1, A011582(#)]`
-/

namespace A035179.P2839605348435704659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011582 d

end

end A035179.P2839605348435704659

noncomputable section

/-- A035179: a(n) = Sum_{d|n} Kronecker(-11, d).

Offset 1, canonical program `A035179.P2839605348435704659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035179 (n : ℕ) : ℤ :=
  A035179.P2839605348435704659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035199.P7692353671835890353

`∑{d}[n+1, A011584(#)]`
-/

namespace A035199.P7692353671835890353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011584 d

end

end A035199.P7692353671835890353

noncomputable section

/-- A035199: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 17.

Offset 1, canonical program `A035199.P7692353671835890353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035199 (n : ℕ) : ℤ :=
  A035199.P7692353671835890353.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035290.P14671019090870385943

`(A272870(n)+A028872(n+2))%A060886(n)`
-/

namespace A035290.P14671019090870385943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272870 n + A028872 (n + 2)) (A060886 n)

end

end A035290.P14671019090870385943

noncomputable section

/-- A035290: Number of ways to place a non-attacking white and black pawn on n X n chessboard.

Offset 1, canonical program `A035290.P14671019090870385943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035290 (n : ℕ) : ℤ :=
  A035290.P14671019090870385943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035302.P3671141003408646330

`Δ[A007420(n)]-3*A007420(n)`
-/

namespace A035302.P3671141003408646330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3 * A007420 n

end

end A035302.P3671141003408646330

noncomputable section

/-- A035302: a(n+1)=2a(n)-4a(n-1)+4a(n-2).

Offset 0, canonical program `A035302.P3671141003408646330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A035302 (n : ℕ) : ℤ :=
  A035302.P3671141003408646330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A035302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035340.P342740814694734703

`A035337(n)+2*A035338(n)`
-/

namespace A035340.P342740814694734703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n + 2 * A035338 n

end

end A035340.P342740814694734703

noncomputable section

/-- A035340: 6th column of Wythoff array.

Offset 0, canonical program `A035340.P342740814694734703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035340 (n : ℕ) : ℤ :=
  A035340.P342740814694734703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036146.P11317228320841673950

`(2^n)%A196655(gcd(n, n+1))`
-/

namespace A036146.P11317228320841673950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (A196655 (Nat.gcd n (n + 1)))

end

end A036146.P11317228320841673950

noncomputable section

/-- A036146: a(n) = 2^n mod 139.

Offset 0, canonical program `A036146.P11317228320841673950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A036146 (n : ℕ) : ℤ :=
  A036146.P11317228320841673950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A036146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036162.P12897788177034337327

`A000400(n)%229`
-/

namespace A036162.P12897788177034337327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000400 n) 229

end

end A036162.P12897788177034337327

noncomputable section

/-- A036162: a(n) = 6^n mod 229.

Offset 0, canonical program `A036162.P12897788177034337327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A036162 (n : ℕ) : ℤ :=
  A036162.P12897788177034337327.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A036162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036248.P13737996813049907158

`A000040(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A036248.P13737996813049907158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000040 (n + 1) * a (n - 1) + a (n - 2)

end

end A036248.P13737996813049907158

noncomputable section

/-- A036248: Denominator of fraction equal to the continued fraction [ 2, 3, 5, ..., prime(n) ].

Offset 1, canonical program `A036248.P13737996813049907158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036248 (n : ℕ) : ℤ :=
  A036248.P13737996813049907158.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036256.P16582203040739335847

`∑[A001405(n)]`
-/

namespace A036256.P16582203040739335847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036256.P16582203040739335847

noncomputable section

/-- A036256: a(n) = Sum_{i=0..n} binomial(i,floor(i/2)).

Offset 0, canonical program `A036256.P16582203040739335847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A036256 (n : ℕ) : ℤ :=
  A036256.P16582203040739335847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A036256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036349.P15151695145385248365

`lt[A001414(n+1)%2, 1]+1`
-/

namespace A036349.P15151695145385248365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001414 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A036349.P15151695145385248365

noncomputable section

/-- A036349: Numbers whose sum of prime factors (taken with multiplicity) is even.

Offset 1, canonical program `A036349.P15151695145385248365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036349 (n : ℕ) : ℤ :=
  (A036349.P15151695145385248365.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036439.P376659802180600074

`a(n-1)+A000040(n)` with `a(0)=2`
-/

namespace A036439.P376659802180600074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A000040 n

end

end A036439.P376659802180600074

noncomputable section

/-- A036439: a(n) = a(n-1) + prime(n-1), with a(1)=2.

Offset 1, canonical program `A036439.P376659802180600074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036439 (n : ℕ) : ℤ :=
  A036439.P376659802180600074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036457.P7190875582605610954

`eq[4, A036450(n+1)]+1`
-/

namespace A036457.P7190875582605610954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036457.P7190875582605610954

noncomputable section

/-- A036457: Numbers k for which exactly 5 applications of A000005 are needed to reach 2.

Offset 1, canonical program `A036457.P7190875582605610954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A036457 (n : ℕ) : ℤ :=
  (A036457.P7190875582605610954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A036457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036459.P10933683056839574436

`a(A032741(n+1))+1` with `a(0)=0, a(1)=0`
-/

namespace A036459.P10933683056839574436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (A032741 (n + 1)).toNat + 1

end

end A036459.P10933683056839574436

noncomputable section

/-- A036459: Number of iterations required to reach stationary value when repeatedly applying d, the number of divisors function (A000005).

Offset 1, canonical program `A036459.P10933683056839574436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036459 (n : ℕ) : ℤ :=
  (A036459.P10933683056839574436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036489.P15767933812088839644

`floor(sqrt(A155014(n)+A001015(n)))`
-/

namespace A036489.P15767933812088839644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A155014 n + A001015 n)

end

end A036489.P15767933812088839644

noncomputable section

/-- A036489: Nearest integer to n^(7/2).

Offset 0, canonical program `A036489.P15767933812088839644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036489 (n : ℕ) : ℤ :=
  A036489.P15767933812088839644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036494.P4898587190322831383

`floor(sqrt(A238170(n)+A001017(n)))`
-/

namespace A036494.P4898587190322831383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A238170 n + A001017 n)

end

end A036494.P4898587190322831383

noncomputable section

/-- A036494: Nearest integer to n^(9/2).

Offset 0, canonical program `A036494.P4898587190322831383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036494 (n : ℕ) : ℤ :=
  A036494.P4898587190322831383.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036557.P11631772265376742522

`A087433(A110654(n))/A000034(n)`
-/

namespace A036557.P11631772265376742522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087433 (A110654 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A036557.P11631772265376742522

noncomputable section

/-- A036557: Number of multiples of 3 in 0..2^n-1 with an even sum of base-2 digits.

Offset 0, canonical program `A036557.P11631772265376742522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A036557 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036557.P11631772265376742522.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A036557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036581.P16384260264226216548

`a(A036580(n))` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A036581.P16384260264226216548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (A036580 n).toNat

end

end A036581.P16384260264226216548

noncomputable section

/-- A036581: Ternary Thue-Morse sequence: closed under a->abc, b->ac, c->b.

Offset 0, canonical program `A036581.P16384260264226216548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036581 (n : ℕ) : ℤ :=
  (A036581.P16384260264226216548.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036908.P5657673403250560357

`A140429(n)+A005773(n)`
-/

namespace A036908.P5657673403250560357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A005773 n

end

end A036908.P5657673403250560357

noncomputable section

/-- A036908: Number of different compact source directed animals with 1 point on the bottom line.

Offset 1, canonical program `A036908.P5657673403250560357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A036908 (n : ℕ) : ℤ :=
  A036908.P5657673403250560357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A036908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037213.P7544062464691828526

`A000196(n)*A010052(n)`
-/

namespace A037213.P7544062464691828526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n * A010052 n

end

end A037213.P7544062464691828526

noncomputable section

/-- A037213: Expansion of Sum_{n>=0} n*q^(n^2).

Offset 0, canonical program `A037213.P7544062464691828526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037213 (n : ℕ) : ℤ :=
  A037213.P7544062464691828526.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037213.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037242.P8254883051873546182

`∑[ceil(xor(1, n)/6)+n*A051274(n)]`
-/

namespace A037242.P8254883051873546182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 6⌉ + (n : ℤ) * A051274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037242.P8254883051873546182

noncomputable section

/-- A037242: Molien series for 3-D group R2+R3.

Offset 0, canonical program `A037242.P8254883051873546182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037242 (n : ℕ) : ℤ :=
  A037242.P8254883051873546182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037450.P975231576386369614

`A007916(n+1)²-1`
-/

namespace A037450.P975231576386369614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) ^ 2 - 1

end

end A037450.P975231576386369614

noncomputable section

/-- A037450: Numbers which are one less than a perfect square that cannot otherwise be written as a power.

Offset 1, canonical program `A037450.P975231576386369614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037450 (n : ℕ) : ℤ :=
  A037450.P975231576386369614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A037450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037451.P18067804800800007292

`A000045(n)*A001906(n)`
-/

namespace A037451.P18067804800800007292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001906 n

end

end A037451.P18067804800800007292

noncomputable section

/-- A037451: a(n) = Fibonacci(n) * Fibonacci(2*n).

Offset 0, canonical program `A037451.P18067804800800007292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A037451 (n : ℕ) : ℤ :=
  A037451.P18067804800800007292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A037451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037475.P14542776515784587610

`record[n-A105186(A002264(n))]`
-/

namespace A037475.P14542776515784587610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105186 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037475.P14542776515784587610

noncomputable section

/-- A037475: a(n)=Sum{d(i)*9^i: i=0,1,...,m}, where Sum{d(i)*7^i: i=0,1,...,m} is the base 7 representation of n.

Offset 0, canonical program `A037475.P14542776515784587610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3675 terms. -/
def A037475 (n : ℕ) : ℤ :=
  A037475.P14542776515784587610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3675 terms. -/
def A037475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037500.P14588839510185725909

`7*a(n-1)-A102283(n)+1` with `a(0)=1`
-/

namespace A037500.P14588839510185725909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - A102283 n + 1

end

end A037500.P14588839510185725909

noncomputable section

/-- A037500: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2.

Offset 1, canonical program `A037500.P14588839510185725909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037500 (n : ℕ) : ℤ :=
  A037500.P14588839510185725909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037551.P11460767209117930462

`∑[10*a(n-1)-A049347(n)]` with `a(0)=1`
-/

namespace A037551.P11460767209117930462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A049347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037551.P11460767209117930462

noncomputable section

/-- A037551: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,2,2.

Offset 1, canonical program `A037551.P11460767209117930462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037551 (n : ℕ) : ℤ :=
  A037551.P11460767209117930462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037555.P15476036091523020381

`A033142(n+1)+∑[6^n]`
-/

namespace A037555.P15476036091523020381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033142 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037555.P15476036091523020381

noncomputable section

/-- A037555: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

Offset 1, canonical program `A037555.P15476036091523020381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037555 (n : ℕ) : ℤ :=
  A037555.P15476036091523020381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037559.P3346311391106450998

`A033146(n)+∑[10^n]`
-/

namespace A037559.P3346311391106450998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033146 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037559.P3346311391106450998

noncomputable section

/-- A037559: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,1,1.

Offset 1, canonical program `A037559.P3346311391106450998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037559 (n : ℕ) : ℤ :=
  A037559.P3346311391106450998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037563.P17277350712460531872

`A033133(n+1)+∑[6^n]`
-/

namespace A037563.P17277350712460531872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033133 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A037563.P17277350712460531872

noncomputable section

/-- A037563: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

Offset 1, canonical program `A037563.P17277350712460531872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037563 (n : ℕ) : ℤ :=
  A037563.P17277350712460531872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037571.P13294018925637584942

`A033124(n+1)+∑[A000400(n)]`
-/

namespace A037571.P13294018925637584942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033124 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037571.P13294018925637584942

noncomputable section

/-- A037571: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

Offset 1, canonical program `A037571.P13294018925637584942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037571 (n : ℕ) : ℤ :=
  A037571.P13294018925637584942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037591.P17676027445311115704

`floor(A037554(n+1)/2)`
-/

namespace A037591.P17676027445311115704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037554 (n + 1) : ℚ) / 2⌋

end

end A037591.P17676027445311115704

noncomputable section

/-- A037591: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

Offset 1, canonical program `A037591.P17676027445311115704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037591 (n : ℕ) : ℤ :=
  A037591.P17676027445311115704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037592.P9680969276026867285

`floor(A037523(n+1)/2)`
-/

namespace A037592.P9680969276026867285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037523 (n + 1) : ℚ) / 2⌋

end

end A037592.P9680969276026867285

noncomputable section

/-- A037592: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

Offset 1, canonical program `A037592.P9680969276026867285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037592 (n : ℕ) : ℤ :=
  A037592.P9680969276026867285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037594.P12210155223503308888

`or(10*a(n-1), A010882(n))-2*a(n-1)` with `a(0)=1`
-/

namespace A037594.P12210155223503308888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A010882 n) - 2 * a (n - 1)

end

end A037594.P12210155223503308888

noncomputable section

/-- A037594: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

Offset 1, canonical program `A037594.P12210155223503308888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037594 (n : ℕ) : ℤ :=
  A037594.P12210155223503308888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037596.P3528739672958586964

`or(10*a(n-1), A010882(n))` with `a(0)=1`
-/

namespace A037596.P3528739672958586964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A010882 n)

end

end A037596.P3528739672958586964

noncomputable section

/-- A037596: Numbers written in base 4 whose digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

Offset 1, canonical program `A037596.P3528739672958586964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037596 (n : ℕ) : ℤ :=
  A037596.P3528739672958586964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037602.P1337694076069998969

`2*A037510(n+1)-A033136(n+1)`
-/

namespace A037602.P1337694076069998969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037510 (n + 1) - A033136 (n + 1)

end

end A037602.P1337694076069998969

noncomputable section

/-- A037602: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0.

Offset 1, canonical program `A037602.P1337694076069998969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037602 (n : ℕ) : ℤ :=
  A037602.P1337694076069998969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037603.P12367465112895483340

`2*A037511(n)-A033137(n)`
-/

namespace A037603.P12367465112895483340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037511 (n + 1) - A033137 (n + 1)

end

end A037603.P12367465112895483340

noncomputable section

/-- A037603: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,3,0.

Offset 1, canonical program `A037603.P12367465112895483340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037603 (n : ℕ) : ℤ :=
  A037603.P12367465112895483340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037607.P4163535216865064562

`7*a(n-1)+A010872(n)+1` with `a(0)=1`
-/

namespace A037607.P4163535216865064562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) + (A010872 n + 1)

end

end A037607.P4163535216865064562

noncomputable section

/-- A037607: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3.

Offset 1, canonical program `A037607.P4163535216865064562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037607 (n : ℕ) : ℤ :=
  A037607.P4163535216865064562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037609.P12361209036563579603

`A010882(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A037609.P12361209036563579603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010882 n + 9 * a (n - 1)

end

end A037609.P12361209036563579603

noncomputable section

/-- A037609: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3.

Offset 1, canonical program `A037609.P12361209036563579603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037609 (n : ℕ) : ℤ :=
  A037609.P12361209036563579603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037613.P16022580300413377308

`floor(4*A033133(n+1)/3)`
-/

namespace A037613.P16022580300413377308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((A033133 (n + 1) : ℚ) / 3)⌋

end

end A037613.P16022580300413377308

noncomputable section

/-- A037613: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2.

Offset 1, canonical program `A037613.P16022580300413377308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037613 (n : ℕ) : ℤ :=
  A037613.P16022580300413377308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037614.P5431780620363500577

`∑[7*a(n-1)-A131713(n)]` with `a(0)=1`
-/

namespace A037614.P5431780620363500577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  7 * f1 (n - 1) - A131713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037614.P5431780620363500577

noncomputable section

/-- A037614: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2.

Offset 1, canonical program `A037614.P5431780620363500577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037614 (n : ℕ) : ℤ :=
  A037614.P5431780620363500577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037617.P5419154090934213041

`∑[10*a(n-1)-A131713(n)]` with `a(0)=1`
-/

namespace A037617.P5419154090934213041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  10 * f1 (n - 1) - A131713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037617.P5419154090934213041

noncomputable section

/-- A037617: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,3,2.

Offset 1, canonical program `A037617.P5419154090934213041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037617 (n : ℕ) : ℤ :=
  A037617.P5419154090934213041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037620.P1509469956737047497

`ceil(3/2*A037547(n+1))`
-/

namespace A037620.P1509469956737047497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 2 * (A037547 (n + 1) : ℚ)⌉

end

end A037620.P1509469956737047497

noncomputable section

/-- A037620: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3.

Offset 1, canonical program `A037620.P1509469956737047497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037620 (n : ℕ) : ℤ :=
  A037620.P1509469956737047497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037622.P16795863825706726991

`A037501(n+1)+A033126(n+1)`
-/

namespace A037622.P16795863825706726991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037501 (n + 1) + A033126 (n + 1)

end

end A037622.P16795863825706726991

noncomputable section

/-- A037622: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3.

Offset 1, canonical program `A037622.P16795863825706726991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037622 (n : ℕ) : ℤ :=
  A037622.P16795863825706726991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037623.P7093965290696109116

`∑[xor(9*a(n-1), A010882(n))]` with `a(0)=2`
-/

namespace A037623.P7093965290696109116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A010882 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037623.P7093965290696109116

noncomputable section

/-- A037623: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3.

Offset 1, canonical program `A037623.P7093965290696109116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037623 (n : ℕ) : ℤ :=
  A037623.P7093965290696109116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037624.P9815999978925808788

`10*a(n-1)+2-∑[n]%3-A102283(n)` with `a(0)=2`
-/

namespace A037624.P9815999978925808788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + (2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)) - A102283 n

end

end A037624.P9815999978925808788

noncomputable section

/-- A037624: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,0,3.

Offset 1, canonical program `A037624.P9815999978925808788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037624 (n : ℕ) : ℤ :=
  A037624.P9815999978925808788.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037626.P12681275956258568283

`A037598(n+1)+A033141(n+1)`
-/

namespace A037626.P12681275956258568283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037598 (n + 1) + A033141 (n + 1)

end

end A037626.P12681275956258568283

noncomputable section

/-- A037626: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0.

Offset 1, canonical program `A037626.P12681275956258568283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037626 (n : ℕ) : ℤ :=
  A037626.P12681275956258568283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037627.P16560465001142239504

`A037507(n+1)+A033133(n+1)`
-/

namespace A037627.P16560465001142239504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037507 (n + 1) + A033133 (n + 1)

end

end A037627.P16560465001142239504

noncomputable section

/-- A037627: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0.

Offset 1, canonical program `A037627.P16560465001142239504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037627 (n : ℕ) : ℤ :=
  A037627.P16560465001142239504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037630.P6720329626996614138

`∑[A077834(2*n+1)]`
-/

namespace A037630.P6720329626996614138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077834 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037630.P6720329626996614138

noncomputable section

/-- A037630: Base-9 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0.

Offset 1, canonical program `A037630.P6720329626996614138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037630 (n : ℕ) : ℤ :=
  A037630.P6720329626996614138.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037634.P12267783342696357485

`∑[6*a(n-1)-A061347(n+1)]` with `a(0)=2`
-/

namespace A037634.P12267783342696357485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  6 * f1 (n - 1) - A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037634.P12267783342696357485

noncomputable section

/-- A037634: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3.

Offset 1, canonical program `A037634.P12267783342696357485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037634 (n : ℕ) : ℤ :=
  A037634.P12267783342696357485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037638.P14753984806614107874

`∑[10*a(n-1)-A061347(n+1)]` with `a(0)=2`
-/

namespace A037638.P14753984806614107874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  10 * f1 (n - 1) - A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037638.P14753984806614107874

noncomputable section

/-- A037638: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,1,3.

Offset 1, canonical program `A037638.P14753984806614107874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037638 (n : ℕ) : ℤ :=
  A037638.P14753984806614107874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037641.P7989062943925407363

`A010882(n+1)+6*a(n-1)` with `a(0)=2`
-/

namespace A037641.P7989062943925407363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A010882 (n + 1) + 6 * a (n - 1)

end

end A037641.P7989062943925407363

noncomputable section

/-- A037641: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1.

Offset 1, canonical program `A037641.P7989062943925407363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037641 (n : ℕ) : ℤ :=
  A037641.P7989062943925407363.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037648.P16441658089097450245

`A037515(n+1)+A033142(n+1)`
-/

namespace A037648.P16441658089097450245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037515 (n + 1) + A033142 (n + 1)

end

end A037648.P16441658089097450245

noncomputable section

/-- A037648: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1.

Offset 1, canonical program `A037648.P16441658089097450245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037648 (n : ℕ) : ℤ :=
  A037648.P16441658089097450245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037650.P4793582426605505152

`xor(∑[A001018(n)], A037525(n+1))`
-/

namespace A037650.P4793582426605505152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037525 (n + 1))

end

end A037650.P4793582426605505152

noncomputable section

/-- A037650: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1.

Offset 1, canonical program `A037650.P4793582426605505152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037650 (n : ℕ) : ℤ :=
  A037650.P4793582426605505152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037651.P5689358388814351133

`A037518(n+1)+A033145(n+1)`
-/

namespace A037651.P5689358388814351133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037518 (n + 1) + A033145 (n + 1)

end

end A037651.P5689358388814351133

noncomputable section

/-- A037651: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1.

Offset 1, canonical program `A037651.P5689358388814351133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037651 (n : ℕ) : ℤ :=
  A037651.P5689358388814351133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037653.P6854088846193016481

`xor(∑[4^n], A037632(n+1))`
-/

namespace A037653.P6854088846193016481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A037632 (n + 1))

end

end A037653.P6854088846193016481

noncomputable section

/-- A037653: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2.

Offset 1, canonical program `A037653.P6854088846193016481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037653 (n : ℕ) : ℤ :=
  A037653.P6854088846193016481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037654.P9330447428978880176

`A037514(n+1)+A033123(n+1)`
-/

namespace A037654.P9330447428978880176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037514 (n + 1) + A033123 (n + 1)

end

end A037654.P9330447428978880176

noncomputable section

/-- A037654: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2.

Offset 1, canonical program `A037654.P9330447428978880176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037654 (n : ℕ) : ℤ :=
  A037654.P9330447428978880176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037655.P14136768179500319102

`floor(Δ[A037531(n+1)/2])`
-/

namespace A037655.P14136768179500319102
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037531 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A037655.P14136768179500319102

noncomputable section

/-- A037655: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2.

Offset 1, canonical program `A037655.P14136768179500319102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037655 (n : ℕ) : ℤ :=
  A037655.P14136768179500319102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037656.P245577206656262556

`A037516(n+1)+A033125(n+1)`
-/

namespace A037656.P245577206656262556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037516 (n + 1) + A033125 (n + 1)

end

end A037656.P245577206656262556

noncomputable section

/-- A037656: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2.

Offset 1, canonical program `A037656.P245577206656262556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037656 (n : ℕ) : ℤ :=
  A037656.P245577206656262556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037658.P4555952278933181869

`A037518(n+1)+A033127(n+1)`
-/

namespace A037658.P4555952278933181869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037518 (n + 1) + A033127 (n + 1)

end

end A037658.P4555952278933181869

noncomputable section

/-- A037658: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2.

Offset 1, canonical program `A037658.P4555952278933181869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037658 (n : ℕ) : ℤ :=
  A037658.P4555952278933181869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037662.P15335452384895811845

`floor(A037499(n+2)/2)`
-/

namespace A037662.P15335452384895811845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037499 (n + 2) : ℚ) / 2⌋

end

end A037662.P15335452384895811845

noncomputable section

/-- A037662: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0.

Offset 1, canonical program `A037662.P15335452384895811845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037662 (n : ℕ) : ℤ :=
  A037662.P15335452384895811845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037665.P15837522577772445702

`A033139(2*(n+1))`
-/

namespace A037665.P15837522577772445702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033139 (2 * (n + 1))

end

end A037665.P15837522577772445702

noncomputable section

/-- A037665: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0.

Offset 1, canonical program `A037665.P15837522577772445702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037665 (n : ℕ) : ℤ :=
  A037665.P15837522577772445702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037668.P16021208166734148145

`A037522(n+1)+A033132(n+1)`
-/

namespace A037668.P16021208166734148145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037522 (n + 1) + A033132 (n + 1)

end

end A037668.P16021208166734148145

noncomputable section

/-- A037668: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0.

Offset 1, canonical program `A037668.P16021208166734148145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037668 (n : ℕ) : ℤ :=
  A037668.P16021208166734148145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037669.P1931527402369741809

`floor(Δ[A037507(n+1)/2])`
-/

namespace A037669.P1931527402369741809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037507 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A037669.P1931527402369741809

noncomputable section

/-- A037669: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0.

Offset 1, canonical program `A037669.P1931527402369741809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037669 (n : ℕ) : ℤ :=
  A037669.P1931527402369741809.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037672.P1990528019172802236

`A037526(n+1)+∑[9*a(n-1)-(n%3-1)]` with `a(0)=1`
-/

namespace A037672.P1990528019172802236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) - (((n % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037526 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037672.P1990528019172802236

noncomputable section

/-- A037672: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0.

Offset 1, canonical program `A037672.P1990528019172802236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037672 (n : ℕ) : ℤ :=
  A037672.P1990528019172802236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037673.P11238214295815122813

`A061347(n+1)+10*a(n-1)+2-∑[n]%3` with `a(0)=3`
-/

namespace A037673.P11238214295815122813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A061347 (n + 1) + (10 * a (n - 1) + (2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)))

end

end A037673.P11238214295815122813

noncomputable section

/-- A037673: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,2,0.

Offset 1, canonical program `A037673.P11238214295815122813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037673 (n : ℕ) : ℤ :=
  A037673.P11238214295815122813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037676.P863181966691922142

`(A000032(n)-1)%5+6*a(n-1)` with `a(0)=1`
-/

namespace A037676.P863181966691922142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A000032 n - 1) 5 + 6 * a (n - 1)

end

end A037676.P863181966691922142

noncomputable section

/-- A037676: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2,3.

Offset 1, canonical program `A037676.P863181966691922142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037676 (n : ℕ) : ℤ :=
  A037676.P863181966691922142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037680.P18023137758176828315

`or(10*a(n-1), Δ[A047411(n+1)])` with `a(0)=1`
-/

namespace A037680.P18023137758176828315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A037680.P18023137758176828315

noncomputable section

/-- A037680: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,0,2,3.

Offset 1, canonical program `A037680.P18023137758176828315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037680 (n : ℕ) : ℤ :=
  A037680.P18023137758176828315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037688.P16747070288390415638

`xor(floor(9*4^(n+1)/17), A037793(n+1))`
-/

namespace A037688.P16747070288390415638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊9 * ((4 ^ (n + 1) : ℚ) / 17)⌋ (A037793 (n + 1))

end

end A037688.P16747070288390415638

noncomputable section

/-- A037688: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0,3.

Offset 1, canonical program `A037688.P16747070288390415638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037688 (n : ℕ) : ℤ :=
  A037688.P16747070288390415638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037689.P1371005350633274595

`∑[xor(5*a(n-1), A010693(n))]` with `a(0)=1`
-/

namespace A037689.P1371005350633274595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A010693 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037689.P1371005350633274595

noncomputable section

/-- A037689: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0,3.

Offset 1, canonical program `A037689.P1371005350633274595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037689 (n : ℕ) : ℤ :=
  A037689.P1371005350633274595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037703.P2210299010940210397

`∑[xor(5*a(n-1), A176059(n))]` with `a(0)=1`
-/

namespace A037703.P2210299010940210397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A176059 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037703.P2210299010940210397

noncomputable section

/-- A037703: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0,2.

Offset 1, canonical program `A037703.P2210299010940210397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037703 (n : ℕ) : ℤ :=
  A037703.P2210299010940210397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037713.P3708458375653247780

`xor(a(n-1), A037485(n+1))` with `a(0)=1`
-/

namespace A037713.P3708458375653247780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A037485 (n + 1))

end

end A037713.P3708458375653247780

noncomputable section

/-- A037713: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2,0.

Offset 1, canonical program `A037713.P3708458375653247780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037713 (n : ℕ) : ℤ :=
  A037713.P3708458375653247780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037715.P6538865440665011535

`A097166(n)-a(n-2)` with `a(0)=1, a(1)=13`
-/

namespace A037715.P6538865440665011535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13] fun n a =>
  A097166 n - a (n - 2)

end

end A037715.P6538865440665011535

noncomputable section

/-- A037715: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,3,2,0.

Offset 1, canonical program `A037715.P6538865440665011535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037715 (n : ℕ) : ℤ :=
  A037715.P6538865440665011535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037733.P12757555658372839363

`A037677(n+1)+A037754(n+1)-A037698(n+1)`
-/

namespace A037733.P12757555658372839363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037677 (n + 1) + (A037754 (n + 1) - A037698 (n + 1))

end

end A037733.P12757555658372839363

noncomputable section

/-- A037733: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0,3.

Offset 1, canonical program `A037733.P12757555658372839363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037733 (n : ℕ) : ℤ :=
  A037733.P12757555658372839363.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037735.P4958946619826733078

`∑[xor(9*a(n-1), A010684(n))]` with `a(0)=2`
-/

namespace A037735.P4958946619826733078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A010684 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037735.P4958946619826733078

noncomputable section

/-- A037735: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0,3.

Offset 1, canonical program `A037735.P4958946619826733078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037735 (n : ℕ) : ℤ :=
  A037735.P4958946619826733078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037740.P194235609448009702

`Δ[∑[A037712(n+1)]-A037698(n+1)]`
-/

namespace A037740.P194235609448009702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037712 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037740.P194235609448009702

noncomputable section

/-- A037740: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3,0.

Offset 1, canonical program `A037740.P194235609448009702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037740 (n : ℕ) : ℤ :=
  A037740.P194235609448009702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037755.P7336961172836670918

`xor(a(n-1), A037493(n+1))` with `a(0)=2`
-/

namespace A037755.P7336961172836670918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (a (n - 1)) (A037493 (n + 1))

end

end A037755.P7336961172836670918

noncomputable section

/-- A037755: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1,0.

Offset 1, canonical program `A037755.P7336961172836670918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037755 (n : ℕ) : ℤ :=
  A037755.P7336961172836670918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037757.P10587528599043428428

`A198972(n)-a(n-2)` with `a(0)=2, a(1)=23`
-/

namespace A037757.P10587528599043428428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 23] fun n a =>
  A198972 n - a (n - 2)

end

end A037757.P10587528599043428428

noncomputable section

/-- A037757: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,3,1,0.

Offset 1, canonical program `A037757.P10587528599043428428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037757 (n : ℕ) : ℤ :=
  A037757.P10587528599043428428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037766.P15632211533706168488

`A037752(n+1)+A037759(n+1)-A037745(n+1)`
-/

namespace A037766.P15632211533706168488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037752 (n + 1) + (A037759 (n + 1) - A037745 (n + 1))

end

end A037766.P15632211533706168488

noncomputable section

/-- A037766: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2,1.

Offset 1, canonical program `A037766.P15632211533706168488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037766 (n : ℕ) : ℤ :=
  A037766.P15632211533706168488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037768.P7630554657512226862

`A037754(n+1)+A037761(n+1)-A037747(n+1)`
-/

namespace A037768.P7630554657512226862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037754 (n + 1) + (A037761 (n + 1) - A037747 (n + 1))

end

end A037768.P7630554657512226862

noncomputable section

/-- A037768: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2,1.

Offset 1, canonical program `A037768.P7630554657512226862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037768 (n : ℕ) : ℤ :=
  A037768.P7630554657512226862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037770.P11628452646226728937

`A037756(n+1)+A037763(n+1)-A037749(n+1)`
-/

namespace A037770.P11628452646226728937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037756 (n + 1) + (A037763 (n + 1) - A037749 (n + 1))

end

end A037770.P11628452646226728937

noncomputable section

/-- A037770: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2,1.

Offset 1, canonical program `A037770.P11628452646226728937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037770 (n : ℕ) : ℤ :=
  A037770.P11628452646226728937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037777.P6774958247007870770

`∑[xor(9*a(n-1), A000034(n))]` with `a(0)=3`
-/

namespace A037777.P6774958247007870770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A000034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037777.P6774958247007870770

noncomputable section

/-- A037777: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0,2.

Offset 1, canonical program `A037777.P6774958247007870770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037777 (n : ℕ) : ℤ :=
  A037777.P6774958247007870770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037796.P273957106179402487

`A037747(n+1)+A015552(n+1)`
-/

namespace A037796.P273957106179402487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037747 (n + 1) + A015552 (n + 1)

end

end A037796.P273957106179402487

noncomputable section

/-- A037796: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,1,0.

Offset 1, canonical program `A037796.P273957106179402487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037796 (n : ℕ) : ℤ :=
  A037796.P273957106179402487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037965.P8440344184167601472

`n*(A323230(n)-1)`
-/

namespace A037965.P8440344184167601472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A323230 n - 1)

end

end A037965.P8440344184167601472

noncomputable section

/-- A037965: a(n) = n*binomial(2*n-2, n-1).

Offset 0, canonical program `A037965.P8440344184167601472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037965 (n : ℕ) : ℤ :=
  A037965.P8440344184167601472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038148.P1500552599001130371

`∏{e}[n+1, A006047(#)]`
-/

namespace A038148.P1500552599001130371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006047 (Nat.factorization (f1 n) p)

end

end A038148.P1500552599001130371

noncomputable section

/-- A038148: Number of 3-infinitary divisors of n: if n = Product p(i)^r(i) and d = Product p(i)^s(i), each s(i) has a digit a <= b in its ternary expansion everywhere that the corresponding r(i) has a digit b, then d is a 3-infinitary-divisor of n.

Offset 1, canonical program `A038148.P1500552599001130371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038148 (n : ℕ) : ℤ :=
  A038148.P1500552599001130371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038166.P3385764803193265967

`∑[∑[A038165(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A038166.P3385764803193265967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A038165 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038166.P3385764803193265967

noncomputable section

/-- A038166: G.f.: 1/((1-x)*(1-x^2))^6.

Offset 0, canonical program `A038166.P3385764803193265967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038166 (n : ℕ) : ℤ :=
  A038166.P3385764803193265967.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038185.P18068913284715188074

`floor(A038184(n)/2^n)`
-/

namespace A038185.P18068913284715188074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038184 n : ℚ) / (2 ^ n : ℚ)⌋

end

end A038185.P18068913284715188074

noncomputable section

/-- A038185: One-dimensional cellular automaton 'sigma' (Rule 150).

Offset 0, canonical program `A038185.P18068913284715188074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038184, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038185 (n : ℕ) : ℤ :=
  A038185.P18068913284715188074.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038184, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038185.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038189.P710315829662968223

`A014707(abs(1-n))`
-/

namespace A038189.P710315829662968223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 |1 - (n : ℤ)|.toNat

end

end A038189.P710315829662968223

noncomputable section

/-- A038189: Bit to left of least significant 1-bit in binary expansion of n.

Offset 0, canonical program `A038189.P710315829662968223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038189 (n : ℕ) : ℤ :=
  A038189.P710315829662968223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038194.P4142280690409945291

`A010888(A000040(n+1))`
-/

namespace A038194.P4142280690409945291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A000040 (n + 1)).toNat

end

end A038194.P4142280690409945291

noncomputable section

/-- A038194: Iterated sum-of-digits of n-th prime; or digital root of n-th prime; or n-th prime modulo 9.

Offset 1, canonical program `A038194.P4142280690409945291`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038194 (n : ℕ) : ℤ :=
  A038194.P4142280690409945291.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038213.P17432320377110471100

`A077998(2*n)`
-/

namespace A038213.P17432320377110471100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 (2 * n)

end

end A038213.P17432320377110471100

noncomputable section

/-- A038213: Top line of 3-wave sequence A038196, also bisection of A006356.

Offset 0, canonical program `A038213.P17432320377110471100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A038213 (n : ℕ) : ℤ :=
  A038213.P17432320377110471100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A038213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038223.P6524788401315229936

`A006356(2*n)`
-/

namespace A038223.P6524788401315229936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (2 * n)

end

end A038223.P6524788401315229936

noncomputable section

/-- A038223: Bottom line of 3-wave sequence A038196, also bisection of A006356.

Offset 0, canonical program `A038223.P6524788401315229936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A038223 (n : ℕ) : ℤ :=
  A038223.P6524788401315229936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A038223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038225.P1125688765987125503

`∑[A123941(2*n)]+1`
-/

namespace A038225.P1125688765987125503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A038225.P1125688765987125503

noncomputable section

/-- A038225: Top line of 4-wave sequence A038197, also bisection of A006357.

Offset 0, canonical program `A038225.P1125688765987125503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A038225 (n : ℕ) : ℤ :=
  A038225.P1125688765987125503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A038225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038237.P2584472921293116795

`A076264(n)-A091024(A237420(n))`
-/

namespace A038237.P2584472921293116795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 n - A091024 (A237420 n).toNat

end

end A038237.P2584472921293116795

noncomputable section

/-- A038237: Second line of 4-wave sequence A038197.

Offset 0, canonical program `A038237.P2584472921293116795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A038237 (n : ℕ) : ℤ :=
  A038237.P2584472921293116795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A038237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038249.P7159985381520197905

`A091024(n+1)+A091024(A237420(n))`
-/

namespace A038249.P7159985381520197905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (n + 1) + A091024 (A237420 n).toNat

end

end A038249.P7159985381520197905

noncomputable section

/-- A038249: Third line of 4-wave sequence A038197.

Offset 0, canonical program `A038249.P7159985381520197905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A038249 (n : ℕ) : ℤ :=
  A038249.P7159985381520197905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A038249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038390.P17392846748677909356

`∑[C(A004523(n)+2, 2)]`
-/

namespace A038390.P17392846748677909356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004523 n + 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038390.P17392846748677909356

noncomputable section

/-- A038390: Bisection of A028289.

Offset 0, canonical program `A038390.P17392846748677909356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038390 (n : ℕ) : ℤ :=
  (A038390.P17392846748677909356.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038459.P11015629350129839202

`A142150(n)+A010691(n)^3`
-/

namespace A038459.P11015629350129839202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A010691 n ^ 3

end

end A038459.P11015629350129839202

noncomputable section

/-- A038459: A sequence for measuring seconds: read it aloud.

Offset 1, canonical program `A038459.P11015629350129839202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038459 (n : ℕ) : ℤ :=
  A038459.P11015629350129839202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038469.P4318998598509741804

`A005836(A023689(n+1)+1)`
-/

namespace A038469.P4318998598509741804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A023689 (n + 1) + 1).toNat

end

end A038469.P4318998598509741804

noncomputable section

/-- A038469: Sums of 7 distinct powers of 3.

Offset 1, canonical program `A038469.P4318998598509741804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2126 terms. -/
def A038469 (n : ℕ) : ℤ :=
  A038469.P4318998598509741804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2126 terms. -/
def A038469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038554.P18074075277458443425

`floor(xor(n, A006257(n))/2)`
-/

namespace A038554.P18074075277458443425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor (n : ℤ) (A006257 n) : ℚ) / 2⌋

end

end A038554.P18074075277458443425

noncomputable section

/-- A038554: Derivative of n: write n in binary, replace each pair of adjacent bits with their mod 2 sum (a(0)=a(1)=0 by convention). Also n XOR (n shift 1).

Offset 0, canonical program `A038554.P18074075277458443425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038554 (n : ℕ) : ℤ :=
  A038554.P18074075277458443425.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038605.P10810599837596840094

`floor(A000040(n+1)/(n+1))`
-/

namespace A038605.P10810599837596840094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A038605.P10810599837596840094

noncomputable section

/-- A038605: a(n) = floor( prime(n)/n ).

Offset 1, canonical program `A038605.P10810599837596840094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038605 (n : ℕ) : ℤ :=
  A038605.P10810599837596840094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038609.P14408777948439082881

`∪[2*(n+3), A000040(n+2)]+2`
-/

namespace A038609.P14408777948439082881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A038609.P14408777948439082881

noncomputable section

/-- A038609: Numbers that are the sum of 2 different primes.

Offset 1, canonical program `A038609.P14408777948439082881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038609 (n : ℕ) : ℤ :=
  (A038609.P14408777948439082881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038611.P4157217117565375407

`p?[comp[A011533(n+1)]]`
-/

namespace A038611.P4157217117565375407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038611.P4157217117565375407

noncomputable section

/-- A038611: Primes not containing the digit '3'.

Offset 1, canonical program `A038611.P4157217117565375407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 966 terms. -/
def A038611 (n : ℕ) : ℤ :=
  (A038611.P4157217117565375407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 966 terms. -/
def A038611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038663.P7027077703131923991

`∑[∑{d}[n+1, A010056(#)]]`
-/

namespace A038663.P7027077703131923991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A010056 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038663.P7027077703131923991

noncomputable section

/-- A038663: [ n/F_2 ] + [ n/F_3 ] + [ n/F_4 ] +..., F_n=Fibonacci numbers.

Offset 1, canonical program `A038663.P7027077703131923991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038663 (n : ℕ) : ℤ :=
  A038663.P7027077703131923991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038679.P4499129740727118566

`4^(n+1)-A000108(n+1)`
-/

namespace A038679.P4499129740727118566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - A000108 (n + 1)

end

end A038679.P4499129740727118566

noncomputable section

/-- A038679: Convolution of A007054 (Super ballot numbers) with A000302 (powers of 4).

Offset 0, canonical program `A038679.P4499129740727118566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A038679 (n : ℕ) : ℤ :=
  A038679.P4499129740727118566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A038679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038732.P17261607542785657851

`∑[∑[∑[A215004(2*n+1)]]]`
-/

namespace A038732.P17261607542785657851
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215004 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038732.P17261607542785657851

noncomputable section

/-- A038732: T(n,n-3), array T as in A038730.

Offset 3, canonical program `A038732.P17261607542785657851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A038732 (n : ℕ) : ℤ :=
  A038732.P17261607542785657851.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A038732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038880.P2574069876143911903

`p?[A000035(A008616(n))*A020742(n)]`
-/

namespace A038880.P2574069876143911903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008616 n).toNat * A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038880.P2574069876143911903

noncomputable section

/-- A038880: Primes p such that 10 is not a square mod p.

Offset 1, canonical program `A038880.P2574069876143911903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1139 terms. -/
def A038880 (n : ℕ) : ℤ :=
  A038880.P2574069876143911903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1139 terms. -/
def A038880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038888.P15907326492884803218

`p?[and(n+10, A010892(A076314(n)))]`
-/

namespace A038888.P15907326492884803218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 10 : ℤ) (A010892 (A076314 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038888.P15907326492884803218

noncomputable section

/-- A038888: Primes p such that 15 is not a square mod p.

Offset 1, canonical program `A038888.P15907326492884803218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A038888 (n : ℕ) : ℤ :=
  A038888.P15907326492884803218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 611 terms. -/
def A038888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038894.P5639412476025145903

`p?[A008589(n)-A231000(n)]`
-/

namespace A038894.P5639412476025145903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n - A231000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038894.P5639412476025145903

noncomputable section

/-- A038894: Primes p such that 21 is not a square mod p.

Offset 1, canonical program `A038894.P5639412476025145903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. -/
def A038894 (n : ℕ) : ℤ :=
  A038894.P5639412476025145903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1625 terms. -/
def A038894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039303.P15865620395375190144

`A023105(n)*A039300(n)`
-/

namespace A039303.P15865620395375190144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 n * A039300 n

end

end A039303.P15865620395375190144

noncomputable section

/-- A039303: Number of distinct quadratic residues mod 6^n.

Offset 0, canonical program `A039303.P15865620395375190144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A039303 (n : ℕ) : ℤ :=
  A039303.P15865620395375190144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A039303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039658.P15050853366968839029

`∑[A002212(∑[n%2])]-1`
-/

namespace A039658.P15050853366968839029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A039658.P15050853366968839029

noncomputable section

/-- A039658: Related to enumeration of edge-rooted catafusenes.

Offset 1, canonical program `A039658.P15050853366968839029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A039658 (n : ℕ) : ℤ :=
  A039658.P15050853366968839029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A039658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039701.P15201722471215268317

`A000040(n+1)%3`
-/

namespace A039701.P15201722471215268317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 3

end

end A039701.P15201722471215268317

noncomputable section

/-- A039701: a(n) = n-th prime modulo 3.

Offset 1, canonical program `A039701.P15201722471215268317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039701 (n : ℕ) : ℤ :=
  A039701.P15201722471215268317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039702.P9525350324369181383

`A000040(n+1)%4`
-/

namespace A039702.P9525350324369181383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 4

end

end A039702.P9525350324369181383

noncomputable section

/-- A039702: a(n) = n-th prime modulo 4.

Offset 1, canonical program `A039702.P9525350324369181383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039702 (n : ℕ) : ℤ :=
  A039702.P9525350324369181383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039703.P6639847096577266655

`A000040(n+1)%5`
-/

namespace A039703.P6639847096577266655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 5

end

end A039703.P6639847096577266655

noncomputable section

/-- A039703: a(n) = n-th prime modulo 5.

Offset 1, canonical program `A039703.P6639847096577266655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039703 (n : ℕ) : ℤ :=
  A039703.P6639847096577266655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039704.P2354761967844562150

`A000040(n+1)%6`
-/

namespace A039704.P2354761967844562150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 6

end

end A039704.P2354761967844562150

noncomputable section

/-- A039704: a(n) = n-th prime modulo 6.

Offset 1, canonical program `A039704.P2354761967844562150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039704 (n : ℕ) : ℤ :=
  A039704.P2354761967844562150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039705.P13278229591068607269

`A000040(n+1)%7`
-/

namespace A039705.P13278229591068607269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 7

end

end A039705.P13278229591068607269

noncomputable section

/-- A039705: a(n) = n-th prime modulo 7.

Offset 1, canonical program `A039705.P13278229591068607269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039705 (n : ℕ) : ℤ :=
  A039705.P13278229591068607269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039706.P6170132247782451877

`A000040(n+1)%8`
-/

namespace A039706.P6170132247782451877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 8

end

end A039706.P6170132247782451877

noncomputable section

/-- A039706: a(n) = n-th prime modulo 8.

Offset 1, canonical program `A039706.P6170132247782451877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039706 (n : ℕ) : ℤ :=
  A039706.P6170132247782451877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039708.P11360430142285474761

`A095861(∑[A056847(n)+A000934(n)])`
-/

namespace A039708.P11360430142285474761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n + A000934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039708.P11360430142285474761

noncomputable section

/-- A039708: a(n) = min{m: Sum_{x=0..m} binomial(n,x) >= 0.95*2^n}.

Offset 0, canonical program `A039708.P11360430142285474761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A039708 (n : ℕ) : ℤ :=
  A039708.P11360430142285474761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A039708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039709.P16745182626192459782

`A000040(n+1)%11`
-/

namespace A039709.P16745182626192459782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 11

end

end A039709.P16745182626192459782

noncomputable section

/-- A039709: a(n) = n-th prime modulo 11.

Offset 1, canonical program `A039709.P16745182626192459782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039709 (n : ℕ) : ℤ :=
  A039709.P16745182626192459782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039710.P12643465325383279561

`A000040(n+1)%12`
-/

namespace A039710.P12643465325383279561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 12

end

end A039710.P12643465325383279561

noncomputable section

/-- A039710: a(n) = n-th prime modulo 12.

Offset 1, canonical program `A039710.P12643465325383279561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039710 (n : ℕ) : ℤ :=
  A039710.P12643465325383279561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039711.P11355264584091863481

`A000040(n+1)%13`
-/

namespace A039711.P11355264584091863481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 13

end

end A039711.P11355264584091863481

noncomputable section

/-- A039711: a(n) = n-th prime modulo 13.

Offset 1, canonical program `A039711.P11355264584091863481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039711 (n : ℕ) : ℤ :=
  A039711.P11355264584091863481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039712.P4777749648613116212

`A000040(n+1)%14`
-/

namespace A039712.P4777749648613116212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 14

end

end A039712.P4777749648613116212

noncomputable section

/-- A039712: a(n) = n-th prime modulo 14.

Offset 1, canonical program `A039712.P4777749648613116212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039712 (n : ℕ) : ℤ :=
  A039712.P4777749648613116212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039713.P13535640931066760422

`A000040(n+1)%15`
-/

namespace A039713.P13535640931066760422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 15

end

end A039713.P13535640931066760422

noncomputable section

/-- A039713: a(n) = n-th prime modulo 15.

Offset 1, canonical program `A039713.P13535640931066760422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039713 (n : ℕ) : ℤ :=
  A039713.P13535640931066760422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039714.P8834272531705381848

`A000040(n+1)%16`
-/

namespace A039714.P8834272531705381848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 16

end

end A039714.P8834272531705381848

noncomputable section

/-- A039714: a(n) = n-th prime modulo 16.

Offset 1, canonical program `A039714.P8834272531705381848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039714 (n : ℕ) : ℤ :=
  A039714.P8834272531705381848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039715.P16783252219005444344

`A000040(n+1)%17`
-/

namespace A039715.P16783252219005444344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 17

end

end A039715.P16783252219005444344

noncomputable section

/-- A039715: Primes modulo 17.

Offset 1, canonical program `A039715.P16783252219005444344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039715 (n : ℕ) : ℤ :=
  A039715.P16783252219005444344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039716.P8464184951993273666

`A000142(A000040(n+1))`
-/

namespace A039716.P8464184951993273666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A000040 (n + 1)).toNat

end

end A039716.P8464184951993273666

noncomputable section

/-- A039716: a(n) = prime(n)!.

Offset 1, canonical program `A039716.P8464184951993273666`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039716 (n : ℕ) : ℤ :=
  A039716.P8464184951993273666.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039716.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A039737.P11833136952608093

`∑{p}[3-A000040(n+1), #%2]`
-/

namespace A039737.P11833136952608093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p % 2

end

end A039737.P11833136952608093

noncomputable section

/-- A039737: a(n)=number of primes q

Offset 1, canonical program `A039737.P11833136952608093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039737 (n : ℕ) : ℤ :=
  (A039737.P11833136952608093.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039914.P4400302349776445066

`2*abs(2-C(A000040(n+1), 2))+3`
-/

namespace A039914.P4400302349776445066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |2 - (Nat.choose (A000040 (n + 1)).toNat 2 : ℤ)| + 3

end

end A039914.P4400302349776445066

noncomputable section

/-- A039914: Smallest k>1 such that k(p-1)-1 is divisible by p^2, p=n-th prime.

Offset 1, canonical program `A039914.P4400302349776445066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. -/
def A039914 (n : ℕ) : ℤ :=
  A039914.P4400302349776445066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 513 terms. -/
def A039914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039915.P14541109354943719333

`xor(1, A000040(n+1))`
-/

namespace A039915.P14541109354943719333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000040 (n + 1))

end

end A039915.P14541109354943719333

noncomputable section

/-- A039915: Smallest k such that k(p-1)-1 is positive and divisible by p where p = n-th prime.

Offset 1, canonical program `A039915.P14541109354943719333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039915 (n : ℕ) : ℤ :=
  A039915.P14541109354943719333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039919.P74578946767389129

`A002212(n+1)-∑[A002212(n)]`
-/

namespace A039919.P74578946767389129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039919.P74578946767389129

noncomputable section

/-- A039919: Related to enumeration of edge-rooted catafusenes.

Offset 1, canonical program `A039919.P74578946767389129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A039919 (n : ℕ) : ℤ :=
  A039919.P74578946767389129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A039919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039968.P13772804435382052728

`A006996(3*n+4)`
-/

namespace A039968.P13772804435382052728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 (3 * n + 4)

end

end A039968.P13772804435382052728

noncomputable section

/-- A039968: An example of a d-perfect sequence.

Offset 1, canonical program `A039968.P13772804435382052728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1341 terms. -/
def A039968 (n : ℕ) : ℤ :=
  A039968.P13772804435382052728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1341 terms. -/
def A039968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039969.P8110063093682145486

`A006996(round(n/3))`
-/

namespace A039969.P8110063093682145486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A039969.P8110063093682145486

noncomputable section

/-- A039969: An example of a d-perfect sequence: a(n) = Catalan(n) mod 3.

Offset 0, canonical program `A039969.P8110063093682145486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039969 (n : ℕ) : ℤ :=
  A039969.P8110063093682145486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039970.P17445179311011045739

`(A000108(A123108(n))*and(1, n+1))%3`
-/

namespace A039970.P17445179311011045739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (A123108 n).toNat * (Nat.land 1 (n + 1) : ℤ)) 3

end

end A039970.P17445179311011045739

noncomputable section

/-- A039970: An example of a d-perfect sequence: a(2*n) = 0, a(2*n+1) = Catalan(n) mod 3.

Offset 1, canonical program `A039970.P17445179311011045739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A039970 (n : ℕ) : ℤ :=
  A039970.P17445179311011045739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A039970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039972.P6001720559587628495

`A006996(ceil(n/2))`
-/

namespace A039972.P6001720559587628495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 ⌈(n : ℚ) / 2⌉.toNat

end

end A039972.P6001720559587628495

noncomputable section

/-- A039972: An example of a d-perfect sequence: a(n) = A007317(n) mod 3.

Offset 1, canonical program `A039972.P6001720559587628495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A039972 (n : ℕ) : ℤ :=
  A039972.P6001720559587628495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A039972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040163.P12253691999876221957

`abs(A000030(n+1)-A010879(n+1))`
-/

namespace A040163.P12253691999876221957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000030 (n + 1) - A010879 (n + 1)|

end

end A040163.P12253691999876221957

noncomputable section

/-- A040163: a(n) is the absolute value of (the first digit of n minus the last digit of n).

Offset 1, canonical program `A040163.P12253691999876221957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A040163 (n : ℕ) : ℤ :=
  A040163.P12253691999876221957.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A040163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A040976.P11599754272797435513

`A000040(n+1)-2`
-/

namespace A040976.P11599754272797435513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

end

end A040976.P11599754272797435513

noncomputable section

/-- A040976: a(n) = prime(n) - 2.

Offset 1, canonical program `A040976.P11599754272797435513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A040976 (n : ℕ) : ℤ :=
  A040976.P11599754272797435513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A040976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A041008.P10522338977269855037

`A259597(n)-a(n-1)` with `a(0)=2`
-/

namespace A041008.P10522338977269855037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A259597 n - a (n - 1)

end

end A041008.P10522338977269855037

noncomputable section

/-- A041008: Numerators of continued fraction convergents to sqrt(7).

Offset 0, canonical program `A041008.P10522338977269855037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A041008 (n : ℕ) : ℤ :=
  A041008.P10522338977269855037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A041008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041009.P10505190960444366976

`A259596(n)-a(n-1)` with `a(0)=1`
-/

namespace A041009.P10505190960444366976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A259596 n - a (n - 1)

end

end A041009.P10505190960444366976

noncomputable section

/-- A041009: Denominators of continued fraction convergents to sqrt(7).

Offset 0, canonical program `A041009.P10505190960444366976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A041009 (n : ℕ) : ℤ :=
  A041009.P10505190960444366976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A041009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041017.P5765616743395702866

`∑[A002530(xor((n+1)%2, 2*n))]`
-/

namespace A041017.P5765616743395702866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (Nat.xor ((n + 1) % 2) (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041017.P5765616743395702866

noncomputable section

/-- A041017: Denominators of continued fraction convergents to sqrt(12).

Offset 0, canonical program `A041017.P5765616743395702866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A041017 (n : ℕ) : ℤ :=
  A041017.P5765616743395702866.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A041017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041021.P4839143169326198142

`2*A295337(n+2)-A295336(n+2)`
-/

namespace A041021.P4839143169326198142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295337 (n + 2) - A295336 (n + 2)

end

end A041021.P4839143169326198142

noncomputable section

/-- A041021: Denominators of continued fraction convergents to sqrt(14).

Offset 0, canonical program `A041021.P4839143169326198142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. -/
def A041021 (n : ℕ) : ℤ :=
  A041021.P4839143169326198142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. -/
def A041021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041026.P2213078579449708458

`A143607(A047398(n+1))`
-/

namespace A041026.P2213078579449708458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (A047398 (n + 1)).toNat

end

end A041026.P2213078579449708458

noncomputable section

/-- A041026: Numerators of continued fraction convergents to sqrt(18).

Offset 0, canonical program `A041026.P2213078579449708458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A041026 (n : ℕ) : ℤ :=
  A041026.P2213078579449708458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A041026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041031.P13616757305061398685

`A000034(n)*A041143(n)`
-/

namespace A041031.P13616757305061398685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041143 n

end

end A041031.P13616757305061398685

noncomputable section

/-- A041031: Denominators of continued fraction convergents to sqrt(20).

Offset 0, canonical program `A041031.P13616757305061398685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A041031 (n : ℕ) : ℤ :=
  A041031.P13616757305061398685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A041031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041042.P13525226962710428538

`A002531(3*(n+1))`
-/

namespace A041042.P13525226962710428538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (3 * (n + 1))

end

end A041042.P13525226962710428538

noncomputable section

/-- A041042: Numerators of continued fraction convergents to sqrt(27).

Offset 0, canonical program `A041042.P13525226962710428538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A041042 (n : ℕ) : ℤ :=
  A041042.P13525226962710428538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A041042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041049.P11645687911740521102

`A000034(n)*A041219(n)`
-/

namespace A041049.P11645687911740521102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041219 n

end

end A041049.P11645687911740521102

noncomputable section

/-- A041049: Denominators of continued fraction convergents to sqrt(30).

Offset 0, canonical program `A041049.P11645687911740521102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A041049 (n : ℕ) : ℤ :=
  A041049.P11645687911740521102.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A041049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041059.P14786905109323415709

`abs(a(n-2)-A164826(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A041059.P14786905109323415709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |a (n - 2) - A164826 (n + 1)|

end

end A041059.P14786905109323415709

noncomputable section

/-- A041059: Denominators of continued fraction convergents to sqrt(35).

Offset 0, canonical program `A041059.P14786905109323415709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A041059 (n : ℕ) : ℤ :=
  A041059.P14786905109323415709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A041059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041066.P3038756905313364917

`gcd(2, n)*A005667(n+1)`
-/

namespace A041066.P3038756905313364917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A005667 (n + 1)

end

end A041066.P3038756905313364917

noncomputable section

/-- A041066: Numerators of continued fraction convergents to sqrt(40).

Offset 0, canonical program `A041066.P3038756905313364917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A041066 (n : ℕ) : ℤ :=
  A041066.P3038756905313364917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A041066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041118.P17350065025436226560

`gcd(2, n)*A041024(n)`
-/

namespace A041118.P17350065025436226560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041024 n

end

end A041118.P17350065025436226560

noncomputable section

/-- A041118: Numerators of continued fraction convergents to sqrt(68).

Offset 0, canonical program `A041118.P17350065025436226560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A041118 (n : ℕ) : ℤ :=
  A041118.P17350065025436226560.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A041118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041178.P9895779201738330733

`Δ[A014601(n)]*A041014(n)`
-/

namespace A041178.P9895779201738330733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041014 n

end

end A041178.P9895779201738330733

noncomputable section

/-- A041178: Numerators of continued fraction convergents to sqrt(99).

Offset 0, canonical program `A041178.P9895779201738330733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A041178 (n : ℕ) : ℤ :=
  A041178.P9895779201738330733.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A041178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041199.P323986147853554014

`gcd(2, n+1)*A041839(n)`
-/

namespace A041199.P323986147853554014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A041839 n

end

end A041199.P323986147853554014

noncomputable section

/-- A041199: Denominators of continued fraction convergents to sqrt(110).

Offset 0, canonical program `A041199.P323986147853554014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A041199 (n : ℕ) : ℤ :=
  A041199.P323986147853554014.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A041199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041205.P13895527145540682249

`a(n-2)+a(n-1)*A010178(n)` with `a(0)=1, a(1)=1`
-/

namespace A041205.P13895527145540682249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A010178 n

end

end A041205.P13895527145540682249

noncomputable section

/-- A041205: Denominators of continued fraction convergents to sqrt(113).

Offset 0, canonical program `A041205.P13895527145540682249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A041205 (n : ℕ) : ℤ :=
  A041205.P13895527145540682249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A041205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041303.P6555737607842090651

`A041069(n)/gcd(2, n+1)`
-/

namespace A041303.P6555737607842090651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041069 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A041303.P6555737607842090651

noncomputable section

/-- A041303: Denominators of continued fraction convergents to sqrt(164).

Offset 0, canonical program `A041303.P6555737607842090651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A041303 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A041303.P6555737607842090651.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A041303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041362.P5003115412466929346

`∪[A097310(n+1), Δ[A097310(n)]]`
-/

namespace A041362.P5003115412466929346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097310 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A041362.P5003115412466929346

noncomputable section

/-- A041362: Numerators of continued fraction convergents to sqrt(195).

Offset 0, canonical program `A041362.P5003115412466929346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A041362 (n : ℕ) : ℤ :=
  (A041362.P5003115412466929346.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A041362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041510.P6868064237641329744

`gcd(2, n)²*A041024(n)`
-/

namespace A041510.P6868064237641329744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) * A041024 n

end

end A041510.P6868064237641329744

noncomputable section

/-- A041510: Numerators of continued fraction convergents to sqrt(272).

Offset 0, canonical program `A041510.P6868064237641329744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A041510 (n : ℕ) : ℤ :=
  A041510.P6868064237641329744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A041510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041610.P13061963782394387766

`∪[A322889(n+1), Δ[A322889(n)]]`
-/

namespace A041610.P13061963782394387766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322889 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A041610.P13061963782394387766

noncomputable section

/-- A041610: Numerators of continued fraction convergents to sqrt(323).

Offset 0, canonical program `A041610.P13061963782394387766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A041610 (n : ℕ) : ℤ :=
  (A041610.P13061963782394387766.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A041610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041995.P13679483218004529466

`A041237(n)/A000034(n)`
-/

namespace A041995.P13679483218004529466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041237 n : ℚ) / (A000034 n : ℚ)

end

end A041995.P13679483218004529466

noncomputable section

/-- A041995: Denominators of continued fraction convergents to sqrt(520).

Offset 0, canonical program `A041995.P13679483218004529466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A041995 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A041995.P13679483218004529466.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A041995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042102.P17267403583004917864

`∪[A114051(n+1), Δ[A114051(n)]]`
-/

namespace A042102.P17267403583004917864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114051 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042102.P17267403583004917864

noncomputable section

/-- A042102: Numerators of continued fraction convergents to sqrt(575).

Offset 0, canonical program `A042102.P17267403583004917864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A042102 (n : ℕ) : ℤ :=
  (A042102.P17267403583004917864.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A042102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042199.P9696894213873405834

`A041287(n)/A000034(n)`
-/

namespace A042199.P9696894213873405834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041287 n : ℚ) / (A000034 n : ℚ)

end

end A042199.P9696894213873405834

noncomputable section

/-- A042199: Denominators of continued fraction convergents to sqrt(624).

Offset 0, canonical program `A042199.P9696894213873405834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A042199 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A042199.P9696894213873405834.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A042199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042511.P613052358327875848

`A041155(n)/A010684(n)`
-/

namespace A042511.P613052358327875848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041155 n : ℚ) / (A010684 n : ℚ)

end

end A042511.P613052358327875848

noncomputable section

/-- A042511: Denominators of continued fraction convergents to sqrt(783).

Offset 0, canonical program `A042511.P613052358327875848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A042511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A042511.P613052358327875848.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A042511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042623.P2908136322028648864

`A041391(n)/(n%2+1)`
-/

namespace A042623.P2908136322028648864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041391 n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A042623.P2908136322028648864

noncomputable section

/-- A042623: Denominators of continued fraction convergents to sqrt(840).

Offset 0, canonical program `A042623.P2908136322028648864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A042623 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A042623.P2908136322028648864.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A042623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042943.P1704432346025818466

`eq[0, A060430(n+1)]+1`
-/

namespace A042943.P1704432346025818466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060430 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A042943.P1704432346025818466

noncomputable section

/-- A042943: Numbers k such that binomial(2^k, k) is divisible by binomial(2^k, 2).

Offset 1, canonical program `A042943.P1704432346025818466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A042943 (n : ℕ) : ℤ :=
  (A042943.P1704432346025818466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A042943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042951.P9394437617427627479

`A018819(round(2*n/3))-a(n-1)` with `a(0)=1`
-/

namespace A042951.P9394437617427627479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018819 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat - a (n - 1)

end

end A042951.P9394437617427627479

noncomputable section

/-- A042951: The sequence e when b=[ 0,1,1,1,1,... ].

Offset 0, canonical program `A042951.P9394437617427627479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042951 (n : ℕ) : ℤ :=
  A042951.P9394437617427627479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042996.P442946035617412042

`record[A057815(n+1)]`
-/

namespace A042996.P442946035617412042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042996.P442946035617412042

noncomputable section

/-- A042996: Numbers k such that binomial(k, floor(k/2)) is divisible by k.

Offset 1, canonical program `A042996.P442946035617412042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5492 terms. -/
def A042996 (n : ℕ) : ℤ :=
  A042996.P442946035617412042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5492 terms. -/
def A042996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043573.P18133658972280267536

`eq[8, a(n-A006257(n))+1]` with `a(0)=2`
-/

namespace A043573.P18133658972280267536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 ((n : ℤ) - A006257 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043573.P18133658972280267536

noncomputable section

/-- A043573: Numbers whose base-2 representation has exactly 6 runs.

Offset 1, canonical program `A043573.P18133658972280267536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6176 terms. -/
def A043573 (n : ℕ) : ℤ :=
  (A043573.P18133658972280267536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6176 terms. -/
def A043573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043689.P9278617102155900918

`floor(A043574(n+1)/2)`
-/

namespace A043689.P9278617102155900918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A043574 (n + 1) : ℚ) / 2⌋

end

end A043689.P9278617102155900918

noncomputable section

/-- A043689: a(n) = (s(n)-1)/2, where s(n) is the n-th number whose base-2 representation has exactly 7 runs.

Offset 1, canonical program `A043689.P9278617102155900918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043689 (n : ℕ) : ℤ :=
  A043689.P9278617102155900918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043721.P7282512078216912934

`eq[2, gcd(48, a(n-A006257(n))+1)!]` with `a(0)=3`
-/

namespace A043721.P7282512078216912934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  Nat.factorial (Nat.gcd 48 (f2 ((n : ℤ) - A006257 n).toNat + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043721.P7282512078216912934

noncomputable section

/-- A043721: Numbers whose number of runs in their base-2 representation is congruent to 0 mod 3.

Offset 1, canonical program `A043721.P7282512078216912934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043721 (n : ℕ) : ℤ :=
  (A043721.P7282512078216912934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043722.P11673584886771641679

`eq[1, gcd(48, a(n-A006257(n))+1)!]` with `a(0)=0`
-/

namespace A043722.P11673584886771641679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.factorial (Nat.gcd 48 (f2 ((n : ℤ) - A006257 n).toNat + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043722.P11673584886771641679

noncomputable section

/-- A043722: Numbers whose number of runs in the base-2 representation is congruent to 1 mod 3.

Offset 1, canonical program `A043722.P11673584886771641679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043722 (n : ℕ) : ℤ :=
  (A043722.P11673584886771641679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043723.P3291077158498690155

`eq[1, gcd(48, a(n-A006257(n))+1)!]` with `a(0)=2`
-/

namespace A043723.P3291077158498690155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  Nat.factorial (Nat.gcd 48 (f2 ((n : ℤ) - A006257 n).toNat + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043723.P3291077158498690155

noncomputable section

/-- A043723: Numbers whose number of runs in their base-2 representation is congruent to 2 mod 3.

Offset 1, canonical program `A043723.P3291077158498690155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043723 (n : ℕ) : ℤ :=
  (A043723.P3291077158498690155.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043724.P14069713857294714269

`lt[3, gcd(48, a(n-A006257(n))+1)]` with `a(0)=0`
-/

namespace A043724.P14069713857294714269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.gcd 48 (f2 ((n : ℤ) - A006257 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A043724.P14069713857294714269

noncomputable section

/-- A043724: Numbers whose number of runs in the base-2 representation is congruent to 0 mod 4.

Offset 1, canonical program `A043724.P14069713857294714269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043724 (n : ℕ) : ℤ :=
  (A043724.P14069713857294714269.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045091.P2156200963910194805

`∩[A023714(n+1), A039004(n+1)]`
-/

namespace A045091.P2156200963910194805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045091.P2156200963910194805

noncomputable section

/-- A045091: Numbers whose base-4 representation contains exactly one 1 and one 2.

Offset 1, canonical program `A045091.P2156200963910194805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1744 terms. -/
def A045091 (n : ℕ) : ℤ :=
  (A045091.P2156200963910194805.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1744 terms. -/
def A045091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045097.P8038663028172588277

`∩[A023715(n+1), A039004(n+1)]`
-/

namespace A045097.P8038663028172588277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045097.P8038663028172588277

noncomputable section

/-- A045097: Numbers whose base-4 representation contains exactly two 1's and two 2's.

Offset 1, canonical program `A045097.P8038663028172588277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. -/
def A045097 (n : ℕ) : ℤ :=
  (A045097.P8038663028172588277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. -/
def A045097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045344.P8697885089310436463

`A000040(A065475(n+1))`
-/

namespace A045344.P8697885089310436463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065475 (n + 1)).toNat

end

end A045344.P8697885089310436463

noncomputable section

/-- A045344: Primes congruent to {1, 2} mod 3.

Offset 1, canonical program `A045344.P8697885089310436463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045344 (n : ℕ) : ℤ :=
  A045344.P8697885089310436463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045344.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045391.P179107568730647336

`A045381((n+1)%(2*n+1)+1)`
-/

namespace A045391.P179107568730647336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045381 ((n + 1) % (2 * n + 1) + 1)

end

end A045391.P179107568730647336

noncomputable section

/-- A045391: Primes congruent to {1, 2} mod 7.

Offset 1, canonical program `A045391.P179107568730647336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045391 (n : ℕ) : ℤ :=
  A045391.P179107568730647336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045392.P2782067895504260616

`A045383(A065475(n+1))`
-/

namespace A045392.P2782067895504260616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (A065475 (n + 1)).toNat

end

end A045392.P2782067895504260616

noncomputable section

/-- A045392: Primes congruent to 2 mod 7.

Offset 1, canonical program `A045392.P2782067895504260616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045392 (n : ℕ) : ℤ :=
  A045392.P2782067895504260616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045436.P4716944390061127291

`A045424(A065475(n+1))`
-/

namespace A045436.P4716944390061127291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (A065475 (n + 1)).toNat

end

end A045436.P4716944390061127291

noncomputable section

/-- A045436: Primes congruent to {1, 3} mod 7.

Offset 1, canonical program `A045436.P4716944390061127291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045436 (n : ℕ) : ℤ :=
  A045436.P4716944390061127291.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045437.P8146727644767287443

`A045425(A065475(n+1))`
-/

namespace A045437.P8146727644767287443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045425 (A065475 (n + 1)).toNat

end

end A045437.P8146727644767287443

noncomputable section

/-- A045437: Primes congruent to 3 mod 7.

Offset 1, canonical program `A045437.P8146727644767287443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045437 (n : ℕ) : ℤ :=
  A045437.P8146727644767287443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045452.P11760057339836453400

`A045441((n+1)%(2*n+1)+1)`
-/

namespace A045452.P11760057339836453400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045441 ((n + 1) % (2 * n + 1) + 1)

end

end A045452.P11760057339836453400

noncomputable section

/-- A045452: Primes congruent to {4, 5} mod 7.

Offset 1, canonical program `A045452.P11760057339836453400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045452 (n : ℕ) : ℤ :=
  A045452.P11760057339836453400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045456.P7809870137258492627

`A045446((n+1)%(2*n+1)+1)`
-/

namespace A045456.P7809870137258492627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 ((n + 1) % (2 * n + 1) + 1)

end

end A045456.P7809870137258492627

noncomputable section

/-- A045456: Primes congruent to {1, 5} mod 7.

Offset 1, canonical program `A045456.P7809870137258492627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045456 (n : ℕ) : ℤ :=
  A045456.P7809870137258492627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045458.P6544782327391573442

`A045447(A065475(n+1))`
-/

namespace A045458.P6544782327391573442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045447 (A065475 (n + 1)).toNat

end

end A045458.P6544782327391573442

noncomputable section

/-- A045458: Primes congruent to 5 mod 7.

Offset 1, canonical program `A045458.P6544782327391573442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045458 (n : ℕ) : ℤ :=
  A045458.P6544782327391573442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045469.P13696013426105038328

`A045461(n+2)`
-/

namespace A045469.P13696013426105038328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045461 (n + 2)

end

end A045469.P13696013426105038328

noncomputable section

/-- A045469: Primes congruent to {1, 4} mod 7.

Offset 1, canonical program `A045469.P13696013426105038328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045469 (n : ℕ) : ℤ :=
  A045469.P13696013426105038328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045471.P10082632081937732273

`A045462(n+2)`
-/

namespace A045471.P10082632081937732273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 2)

end

end A045471.P10082632081937732273

noncomputable section

/-- A045471: Primes congruent to 4 mod 7.

Offset 1, canonical program `A045471.P10082632081937732273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045471 (n : ℕ) : ℤ :=
  A045471.P10082632081937732273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045473.P6109621862307208004

`A045464(n+2)`
-/

namespace A045473.P6109621862307208004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 2)

end

end A045473.P6109621862307208004

noncomputable section

/-- A045473: Primes congruent to 6 mod 7.

Offset 1, canonical program `A045473.P6109621862307208004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045473 (n : ℕ) : ℤ :=
  A045473.P6109621862307208004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045530.P17029138342740245618

`2*A020922(n)-A045505(n)`
-/

namespace A045530.P17029138342740245618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020922 n - A045505 n

end

end A045530.P17029138342740245618

noncomputable section

/-- A045530: Convolution of A000108 (Catalan numbers) with A020922.

Offset 0, canonical program `A045530.P17029138342740245618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A045530 (n : ℕ) : ℤ :=
  A045530.P17029138342740245618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A045530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045654.P8899303963465840375

`A051049(n)+a(A142150(n))` with `a(0)=1`
-/

namespace A045654.P8899303963465840375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051049 n + a (A142150 n).toNat

end

end A045654.P8899303963465840375

noncomputable section

/-- A045654: Number of 2n-bead balanced binary strings, rotationally equivalent to complement.

Offset 0, canonical program `A045654.P8899303963465840375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A045654 (n : ℕ) : ℤ :=
  A045654.P8899303963465840375.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A045654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045691.P10905984041354244312

`ceil(A019310(Δ[n²]-n)/2)`
-/

namespace A045691.P10905984041354244312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A019310 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌉

end

end A045691.P10905984041354244312

noncomputable section

/-- A045691: Number of binary words of length n with autocorrelation function 2^(n-1)+1.

Offset 0, canonical program `A045691.P10905984041354244312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A045691 (n : ℕ) : ℤ :=
  A045691.P10905984041354244312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A045691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045716.P681620117723776804

`ceil(∑[log2(A000040(n+1))])`
-/

namespace A045716.P681620117723776804
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A045716.P681620117723776804

noncomputable section

/-- A045716: a(n) is the binary order (A029837) of the n-th primorial number, A002110(n).

Offset 1, canonical program `A045716.P681620117723776804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045716 (n : ℕ) : ℤ :=
  A045716.P681620117723776804.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045738.P2521229374611018315

`A004319(n+1)+A001764(n)-A005809(n)`
-/

namespace A045738.P2521229374611018315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004319 (n + 1) + (A001764 n - A005809 n)

end

end A045738.P2521229374611018315

noncomputable section

/-- A045738: Number of branches in all noncrossing rooted trees on n nodes on a circle.

Offset 2, canonical program `A045738.P2521229374611018315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A045738 (n : ℕ) : ℤ :=
  A045738.P2521229374611018315.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A045738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045800.P13217515848922479530

`A045805(n+1)-50`
-/

namespace A045800.P13217515848922479530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045805 (n + 1) - 50

end

end A045800.P13217515848922479530

noncomputable section

/-- A045800: 0-ish numbers (end in 01, 07, 43, 49).

Offset 1, canonical program `A045800.P13217515848922479530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045800 (n : ℕ) : ℤ :=
  A045800.P13217515848922479530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045801.P11584886425184963967

`A259750(A106249(5*n+2))-A109613(5*n+2)`
-/

namespace A045801.P11584886425184963967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259750 (A106249 (5 * n + 2)).toNat - A109613 (5 * n + 2)

end

end A045801.P11584886425184963967

noncomputable section

/-- A045801: 1-ish numbers (end in 11, 39, 73, 77).

Offset 1, canonical program `A045801.P11584886425184963967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A045801 (n : ℕ) : ℤ :=
  A045801.P11584886425184963967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A045801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045807.P14634665121537317793

`A045802(n+1)+50`
-/

namespace A045807.P14634665121537317793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1) + 50

end

end A045807.P14634665121537317793

noncomputable section

/-- A045807: 7-ish numbers (end in 53, 71, 79, 97).

Offset 1, canonical program `A045807.P14634665121537317793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045807 (n : ℕ) : ℤ :=
  A045807.P14634665121537317793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045809.P3612081277584244881

`A045797(n+2)+2*(10*n+5)`
-/

namespace A045809.P3612081277584244881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (n + 2) + (2 * (10 * n + 5) : ℤ)

end

end A045809.P3612081277584244881

noncomputable section

/-- A045809: 9-ish numbers (end in 13, 37, 59, 91).

Offset 1, canonical program `A045809.P3612081277584244881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045809 (n : ℕ) : ℤ :=
  A045809.P3612081277584244881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045868.P10026377013549762271

`A000007(n)+Δ[A002212(n)]`
-/

namespace A045868.P10026377013549762271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A045868.P10026377013549762271

noncomputable section

/-- A045868: Expansion of g.f.: ((1 - x - sqrt(1-6*x+5*x^2))/(2*x))^2.

Offset 0, canonical program `A045868.P10026377013549762271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A045868 (n : ℕ) : ℤ :=
  A045868.P10026377013549762271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A045868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045928.P6418909097058057068

`2*A028391(n)+1+n`
-/

namespace A045928.P6418909097058057068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028391 n + 1 + (n : ℤ)

end

end A045928.P6418909097058057068

noncomputable section

/-- A045928: The generalized Connell sequence C_{3,2}.

Offset 1, canonical program `A045928.P6418909097058057068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045928 (n : ℕ) : ℤ :=
  A045928.P6418909097058057068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046163.P5806449323017116819

`2*A222591(n+3)-A169609(n)`
-/

namespace A046163.P5806449323017116819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222591 (n + 3) - A169609 n

end

end A046163.P5806449323017116819

noncomputable section

/-- A046163: Reduced denominators of (n-1)^2/(n^2 + n + 1).

Offset 1, canonical program `A046163.P5806449323017116819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046163 (n : ℕ) : ℤ :=
  A046163.P5806449323017116819.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046212.P8013275667879893669

`A056040(n*n%2)`
-/

namespace A046212.P8013275667879893669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n * (n % 2))

end

end A046212.P8013275667879893669

noncomputable section

/-- A046212: First numerator and then denominator of central elements of Leibniz's Harmonic Triangle.

Offset 1, canonical program `A046212.P8013275667879893669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A046212 (n : ℕ) : ℤ :=
  A046212.P8013275667879893669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A046212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046524.P5816599537313407512

`∑{d}[n+1, A008619(A133622(#))]`
-/

namespace A046524.P5816599537313407512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008619 (A133622 d).toNat

end

end A046524.P5816599537313407512

noncomputable section

/-- A046524: Number of coverings of Klein bottle with n lists.

Offset 1, canonical program `A046524.P5816599537313407512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046524 (n : ℕ) : ℤ :=
  A046524.P5816599537313407512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046634.P13311854156630506019

`A046631(n)*A046630(n)`
-/

namespace A046634.P13311854156630506019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046631 n * A046630 n

end

end A046634.P13311854156630506019

noncomputable section

/-- A046634: Number of cubic residues mod 6^n.

Offset 0, canonical program `A046634.P13311854156630506019`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046631, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046634 (n : ℕ) : ℤ :=
  A046634.P13311854156630506019.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046631, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046634.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046637.P16925521324958804075

`A046631(2*n)`
-/

namespace A046637.P16925521324958804075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046631 (2 * n)

end

end A046637.P16925521324958804075

noncomputable section

/-- A046637: Number of cubic residues mod 9^n.

Offset 0, canonical program `A046637.P16925521324958804075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046631, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046637 (n : ℕ) : ℤ :=
  A046637.P16925521324958804075.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046631, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046638.P4990731638523969213

`A046630(n)*A046633(n)`
-/

namespace A046638.P4990731638523969213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 n * A046633 n

end

end A046638.P4990731638523969213

noncomputable section

/-- A046638: Number of cubic residues mod 10^n, or number of distinct n-digit endings of cubes.

Offset 0, canonical program `A046638.P4990731638523969213`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046633, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046638 (n : ℕ) : ℤ :=
  A046638.P4990731638523969213.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046633, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046686.P14140459493553428395

`eq[1, gcd(n+1, A001158(n+1))]+1`
-/

namespace A046686.P14140459493553428395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001158 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046686.P14140459493553428395

noncomputable section

/-- A046686: Numbers k such that k and sum of cubes of divisors of k are relatively prime.

Offset 1, canonical program `A046686.P14140459493553428395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. -/
def A046686 (n : ℕ) : ℤ :=
  (A046686.P14140459493553428395.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. -/
def A046686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046694.P13063374531925501038

`A013959(n+1)%691`
-/

namespace A046694.P13063374531925501038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013959 (n + 1)) 691

end

end A046694.P13063374531925501038

noncomputable section

/-- A046694: Ramanujan tau numbers mod 691 = sum of 11th power of divisors mod 691.

Offset 1, canonical program `A046694.P13063374531925501038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046694 (n : ℕ) : ℤ :=
  A046694.P13063374531925501038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046714.P9061747162202465969

`A000108(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A046714.P9061747162202465969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 n + 5 * a (n - 1)

end

end A046714.P9061747162202465969

noncomputable section

/-- A046714: Convolution of A000108 (Catalan) with A000351 (powers of 5).

Offset 0, canonical program `A046714.P9061747162202465969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A046714 (n : ℕ) : ℤ :=
  A046714.P9061747162202465969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A046714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046804.P7362675821239578053

`∑{d}[A000040(n+1), #%(#%10)]`
-/

namespace A046804.P7362675821239578053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % (d % 10)

end

end A046804.P7362675821239578053

noncomputable section

/-- A046804: a(n) = p mod (p mod 10) where p = prime(n).

Offset 1, canonical program `A046804.P7362675821239578053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046804 (n : ℕ) : ℤ :=
  (A046804.P7362675821239578053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046870.P1460790917332978805

`lt[A001159(n+1)%A000203(n+1), 1]+1`
-/

namespace A046870.P1460790917332978805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001159 (n + 1)) (A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046870.P1460790917332978805

noncomputable section

/-- A046870: Numbers k such that sigma_1(k) divides sigma_4(k).

Offset 1, canonical program `A046870.P1460790917332978805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A046870 (n : ℕ) : ℤ :=
  (A046870.P1460790917332978805.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A046870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046933.P9479947770746769512

`A000040(n+2)-A000040(n+1)-1`
-/

namespace A046933.P9479947770746769512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (n + 1) - 1

end

end A046933.P9479947770746769512

noncomputable section

/-- A046933: Number of composites between successive primes.

Offset 1, canonical program `A046933.P9479947770746769512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046933 (n : ℕ) : ℤ :=
  A046933.P9479947770746769512.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046935.P2223408723923946287

`a(n-(A003056(n)+1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A046935.P2223408723923946287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ((n : ℤ) - (A003056 n + 1)).toNat + a (n - 1)

end

end A046935.P2223408723923946287

noncomputable section

/-- A046935: Sequence formed from rows of triangle A046934.

Offset 0, canonical program `A046935.P2223408723923946287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3958 terms. -/
def A046935 (n : ℕ) : ℤ :=
  (A046935.P2223408723923946287.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3958 terms. -/
def A046935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047073.P905956312176174128

`A000032(C(2, n+2))*A063886((2*n)%(n+1))`
-/

namespace A047073.P905956312176174128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A063886 (2 * n % (n + 1))

end

end A047073.P905956312176174128

noncomputable section

/-- A047073: a(n) = Sum_{j=0..n} A047072(j, n-j).

Offset 0, canonical program `A047073.P905956312176174128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A047073 (n : ℕ) : ℤ :=
  A047073.P905956312176174128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A047073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047084.P12843752671148501304

`record[A013982(n)]-A013982(n+1)`
-/

namespace A047084.P12843752671148501304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A013982 (n + 1)

end

end A047084.P12843752671148501304

noncomputable section

/-- A047084: a(n) = Sum_{i=0..n} A047080(i,n-i).

Offset 0, canonical program `A047084.P12843752671148501304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 538 terms. -/
def A047084 (n : ℕ) : ℤ :=
  A047084.P12843752671148501304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 538 terms. -/
def A047084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047665.P11812153229518684916

`floor(A001850(n)/2)`
-/

namespace A047665.P11812153229518684916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001850 n : ℚ) / 2⌋

end

end A047665.P11812153229518684916

noncomputable section

/-- A047665: Expansion of (1/sqrt(1-6*x+x^2)-1/(1-x))/2.

Offset 0, canonical program `A047665.P11812153229518684916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A047665 (n : ℕ) : ℤ :=
  A047665.P11812153229518684916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A047665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047742.P2652561409493939309

`A047740(n+2)+1`
-/

namespace A047742.P2652561409493939309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047740 (n + 2) + 1

end

end A047742.P2652561409493939309

noncomputable section

/-- A047742: A discrete analog of Li(n): a(n) = ceiling(Sum_{k=2..n} 1/log(k)).

Offset 2, canonical program `A047742.P2652561409493939309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1667 terms. -/
def A047742 (n : ℕ) : ℤ :=
  A047742.P2652561409493939309.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1667 terms. -/
def A047742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047745.P5235938481276681511

`A047743(n+2)%(n+1)+1`
-/

namespace A047745.P5235938481276681511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047743 (n + 2)) (n + 1 : ℤ) + 1

end

end A047745.P5235938481276681511

noncomputable section

/-- A047745: A discrete analog of Li(n): ceiling ( Sum_{k=2..n} 1/log_2 (k) ).

Offset 2, canonical program `A047745.P5235938481276681511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1685 terms. -/
def A047745 (n : ℕ) : ℤ :=
  A047745.P5235938481276681511.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1685 terms. -/
def A047745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047891.P14086594360894327528

`A054872(n+2)/2`
-/

namespace A047891.P14086594360894327528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054872 (n + 2) : ℚ) / 2

end

end A047891.P14086594360894327528

noncomputable section

/-- A047891: Number of planar rooted trees with n nodes and tricolored end nodes.

Offset 1, canonical program `A047891.P14086594360894327528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A047891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047891.P14086594360894327528.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A047891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047904.P2323867653551827

`2*A037223(n)-A047906(n+1)`
-/

namespace A047904.P2323867653551827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037223 n - A047906 (n + 1)

end

end A047904.P2323867653551827

noncomputable section

/-- A047904: a(n+1) = a(n) + n (if n is odd), a(n+1) = a(n) * n (if n is even).

Offset 1, canonical program `A047904.P2323867653551827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A047904 (n : ℕ) : ℤ :=
  A047904.P2323867653551827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A047904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047905.P13381829321678238955

`2*∏[A093178(n)]-A047907(n+1)`
-/

namespace A047905.P13381829321678238955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j) - A047907 (n + 1)

end

end A047905.P13381829321678238955

noncomputable section

/-- A047905: a(n+1) = a(n) + n (if n is even), a(n+1) = a(n) * n (if n is odd).

Offset 1, canonical program `A047905.P13381829321678238955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A047905 (n : ℕ) : ℤ :=
  A047905.P13381829321678238955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A047905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048071.P15483674784596925337

`abs(1-C(n+1, A103221(2*n)))`
-/

namespace A048071.P15483674784596925337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (n + 1) (A103221 (2 * n)).toNat : ℤ)|

end

end A048071.P15483674784596925337

noncomputable section

/-- A048071: Number of nonempty subsets of {1,2,...,n} in which exactly 1/2 of the elements are <= (n+2)/3.

Offset 1, canonical program `A048071.P15483674784596925337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A048071 (n : ℕ) : ℤ :=
  A048071.P15483674784596925337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A048071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048107.P6210159664874137761

`lt[A005361(n+1), 3]+1`
-/

namespace A048107.P6210159664874137761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048107.P6210159664874137761

noncomputable section

/-- A048107: Numbers k such that the number of unitary divisors of k (A034444) is larger than the number of non-unitary divisors of k (A048105).

Offset 1, canonical program `A048107.P6210159664874137761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048107 (n : ℕ) : ℤ :=
  (A048107.P6210159664874137761.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048199.P12937279598145165576

`8-(A000040(n+1)+3)%10`
-/

namespace A048199.P12937279598145165576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - Int.tmod (A000040 (n + 1) + 3) 10

end

end A048199.P12937279598145165576

noncomputable section

/-- A048199: Distance of primes to next odd multiple of 5 (where n mod 10 = 5).

Offset 1, canonical program `A048199.P12937279598145165576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048199 (n : ℕ) : ℤ :=
  A048199.P12937279598145165576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048397.P11995188931553273154

`(A005898(n)-(n+1))*A008514(n)`
-/

namespace A048397.P11995188931553273154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005898 n - (n + 1 : ℤ)) * A008514 n

end

end A048397.P11995188931553273154

noncomputable section

/-- A048397: Sum of consecutive non-fourth-powers.

Offset 0, canonical program `A048397.P11995188931553273154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048397 (n : ℕ) : ℤ :=
  A048397.P11995188931553273154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048514.P5552065461441350087

`∑[A001793(n+1)-n*(n+2)]`
-/

namespace A048514.P5552065461441350087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) - (n * (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048514.P5552065461441350087

noncomputable section

/-- A048514: a(n) = T(0,n)+T(1,n-1)+...+T(n,0), array T given by A048505.

Offset 0, canonical program `A048514.P5552065461441350087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A048514 (n : ℕ) : ℤ :=
  A048514.P5552065461441350087.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A048514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048714.P4420928762529534651

`xor(16*A038184(n), A038184(n))`
-/

namespace A048714.P4420928762529534651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (16 * A038184 n) (A038184 n)

end

end A048714.P4420928762529534651

noncomputable section

/-- A048714: 3rd column of Family 1 "90 x 150 array": generations 0 .. n of Rule 150 starting from seed pattern 17.

Offset 0, canonical program `A048714.P4420928762529534651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A048714 (n : ℕ) : ℤ :=
  A048714.P4420928762529534651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A048714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048728.P13379438921581273404

`A008585(n)-A048724(n)`
-/

namespace A048728.P13379438921581273404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - A048724 n

end

end A048728.P13379438921581273404

noncomputable section

/-- A048728: Differences between A008585 (multiples of 3) and A048724.

Offset 0, canonical program `A048728.P13379438921581273404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048728 (n : ℕ) : ℤ :=
  A048728.P13379438921581273404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048730.P18324862904889220628

`7*n-A048727(n)`
-/

namespace A048730.P18324862904889220628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - A048727 n

end

end A048730.P18324862904889220628

noncomputable section

/-- A048730: Differences between A008589 (multiples of 7) and A048727, a(n) = ((n*7)-Xmult(n,7)).

Offset 0, canonical program `A048730.P18324862904889220628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048730 (n : ℕ) : ℤ :=
  A048730.P18324862904889220628.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048753.P1406929724014975171

`eq[1, (n^3+1)%A257088(A032741(n))]`
-/

namespace A048753.P1406929724014975171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 3 + 1 : ℤ) (A257088 (A032741 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048753.P1406929724014975171

noncomputable section

/-- A048753: Composite numbers k whose product of aliquot divisors divided by number of aliquot divisors is an integer.

Offset 1, canonical program `A048753.P1406929724014975171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. -/
def A048753 (n : ℕ) : ℤ :=
  (A048753.P1406929724014975171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. -/
def A048753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048762.P2021550469671049707

`-(-A048766(n))^3`
-/

namespace A048762.P2021550469671049707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-A048766 n) ^ 3)

end

end A048762.P2021550469671049707

noncomputable section

/-- A048762: Largest cube <= n.

Offset 0, canonical program `A048762.P2021550469671049707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048762 (n : ℕ) : ℤ :=
  A048762.P2021550469671049707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048851.P1853448986789239219

`A000040(n+1)²+A000040(A028310(n))²`
-/

namespace A048851.P1853448986789239219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + A000040 (A028310 n).toNat ^ 2

end

end A048851.P1853448986789239219

noncomputable section

/-- A048851: Length of hypotenuse squared in right triangle formed by a prime spiral plotted in Cartesian coordinates.

Offset 1, canonical program `A048851.P1853448986789239219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048851 (n : ℕ) : ℤ :=
  A048851.P1853448986789239219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048852.P731177147256561861

`A000040(n+1)*Δ[A000040(A028310(n))]`
-/

namespace A048852.P731177147256561861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A048852.P731177147256561861

noncomputable section

/-- A048852: Difference between b^2 (in c^2=a^2+b^2) and product of successive prime pairs.

Offset 0, canonical program `A048852.P731177147256561861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048852 (n : ℕ) : ℤ :=
  A048852.P731177147256561861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048859.P6374595389282906224

`A034856(A003056(n+1))+n`
-/

namespace A048859.P6374595389282906224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A003056 (n + 1)).toNat + (n : ℤ)

end

end A048859.P6374595389282906224

noncomputable section

/-- A048859: A sieve: keep the first 2 numbers, delete the next 3 numbers; keep the next 3 numbers, delete the next 4 numbers; keep the next 4 numbers, delete the next 5 numbers; and so on. In other words, keep the next k numbers and delete the next k+1 numbers, for k = 2, 3, ...

Offset 1, canonical program `A048859.P6374595389282906224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048859 (n : ℕ) : ℤ :=
  A048859.P6374595389282906224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049070.P12552011053307575598

`(n+1)*(A100071(2*n+1)-A002054(n+1))`
-/

namespace A049070.P12552011053307575598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A100071 (2 * n + 1) - A002054 (n + 1))

end

end A049070.P12552011053307575598

noncomputable section

/-- A049070: a(n) = (n+1)^2*binomial(2*n+2,n-1)/2.

Offset 0, canonical program `A049070.P12552011053307575598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A049070 (n : ℕ) : ℤ :=
  A049070.P12552011053307575598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A049070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049320.P14632860694169210248

`char[A026179(n+2)+n]`
-/

namespace A049320.P14632860694169210248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A049320.P14632860694169210248

noncomputable section

/-- A049320: Non-primitive Chacon sequence: fixed under 0->0010, 1->1.

Offset 1, canonical program `A049320.P14632860694169210248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049320 (n : ℕ) : ℤ :=
  (A049320.P14632860694169210248.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049342.P7627898145282061471

`A049341(n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049342.P7627898145282061471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049341 n : ℚ) / 3

end

end A049342.P7627898145282061471

noncomputable section

/-- A049342: a(n) = A049341(n)/3.

Offset 0, canonical program `A049342.P7627898145282061471`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049342 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A049342.P7627898145282061471.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049419.P11075566220394595585

`∏{e}[n+1, A032741(#)+1]`
-/

namespace A049419.P11075566220394595585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A032741 (Nat.factorization (f1 n) p) + 1)

end

end A049419.P11075566220394595585

noncomputable section

/-- A049419: a(1) = 1; for n > 1, a(n) = number of exponential divisors of n.

Offset 1, canonical program `A049419.P11075566220394595585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049419 (n : ℕ) : ℤ :=
  A049419.P11075566220394595585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049599.P10458558030046678201

`∏{e}[n+1, A032741(#)+2]`
-/

namespace A049599.P10458558030046678201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A032741 (Nat.factorization (f1 n) p) + 2)

end

end A049599.P10458558030046678201

noncomputable section

/-- A049599: Number of (1+e)-divisors of n: if n = Product p(i)^r(i), d = Product p(i)^s(i) and s(i) = 0 or s(i) divides r(i), then d is a (1+e)-divisor of n.

Offset 1, canonical program `A049599.P10458558030046678201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049599 (n : ℕ) : ℤ :=
  A049599.P10458558030046678201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049601.P13675989029439752292

`A001906(n)-A049602(n)`
-/

namespace A049601.P13675989029439752292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A049602 n

end

end A049601.P13675989029439752292

noncomputable section

/-- A049601: a(n)=Sum{T(2i,n-2i): i=0,1,...,[ n/2 ]}, array T as in A049600.

Offset 0, canonical program `A049601.P13675989029439752292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A049601 (n : ℕ) : ℤ :=
  A049601.P13675989029439752292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A049601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049611.P6723745499137786091

`A058396(n)-A045623(n)`
-/

namespace A049611.P6723745499137786091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n - A045623 n

end

end A049611.P6723745499137786091

noncomputable section

/-- A049611: a(n) = T(n,2), array T as in A049600.

Offset 0, canonical program `A049611.P6723745499137786091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A049611 (n : ℕ) : ℤ :=
  A049611.P6723745499137786091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. -/
def A049611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049612.P3661608275935080557

`A062109(n)-A058396(n)`
-/

namespace A049612.P3661608275935080557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062109 n - A058396 n

end

end A049612.P3661608275935080557

noncomputable section

/-- A049612: a(n) = T(n,3), array T as in A049600.

Offset 0, canonical program `A049612.P3661608275935080557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A049612 (n : ℕ) : ℤ :=
  A049612.P3661608275935080557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A049612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049672.P12547037804677428710

`A094292(2*n)+A094292(n)`
-/

namespace A049672.P12547037804677428710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094292 (2 * n) + A094292 n

end

end A049672.P12547037804677428710

noncomputable section

/-- A049672: a(n) = (F(4*n) - F(n))/2, where F=A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049672.P12547037804677428710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A049672 (n : ℕ) : ℤ :=
  A049672.P12547037804677428710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A049672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049675.P15627023795938211189

`A049674(n)+A001076(n)`
-/

namespace A049675.P15627023795938211189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049674 n + A001076 n

end

end A049675.P15627023795938211189

noncomputable section

/-- A049675: a(n) = (2*F(3*n) - F(n))/3, where F=A000045 (the Fibonacci sequence).

Offset 0, canonical program `A049675.P15627023795938211189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A049675 (n : ℕ) : ℤ :=
  A049675.P15627023795938211189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A049675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049681.P14278708176793685312

`A049680(n)-A000032(n)`
-/

namespace A049681.P14278708176793685312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049680 n - A000032 n

end

end A049681.P14278708176793685312

noncomputable section

/-- A049681: a(n) = (Lucas(2*n) - Lucas(n))/2.

Offset 0, canonical program `A049681.P14278708176793685312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A049681 (n : ℕ) : ℤ :=
  A049681.P14278708176793685312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A049681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049803.P12540868050358314249

`(n*∑[A032766(A038500(n+1))])%(n+1)`
-/

namespace A049803.P12540868050358314249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A038500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A049803.P12540868050358314249

noncomputable section

/-- A049803: a(n) = n mod 3 + n mod 9 + ... + n mod 3^k, where 3^k <= n < 3^(k+1).

Offset 1, canonical program `A049803.P12540868050358314249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049803 (n : ℕ) : ℤ :=
  A049803.P12540868050358314249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049822.P4603734740658635360

`∑{d}[n+1, A032741(#-1)]`
-/

namespace A049822.P4603734740658635360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 (d - 1)

end

end A049822.P4603734740658635360

noncomputable section

/-- A049822: a(n) = 1 - tau(n) + Sum_{d|n} tau(d-1).

Offset 1, canonical program `A049822.P4603734740658635360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049822 (n : ℕ) : ℤ :=
  A049822.P4603734740658635360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050192.P16949146376273307997

`a(n-1)+a(n-2)-a(A057979(n))` with `a(0)=1, a(1)=0`
-/

namespace A050192.P16949146376273307997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + a (n - 2) - a (A057979 n).toNat

end

end A050192.P16949146376273307997

noncomputable section

/-- A050192: a(n)=a(n-1)+a(n-2)-d, where d=a(n/2) if n is even, else d=0; 2 initial terms.

Offset 1, canonical program `A050192.P16949146376273307997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A050192 (n : ℕ) : ℤ :=
  A050192.P16949146376273307997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. -/
def A050192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050233.P13708317251854185885

`a(n-1)+A001591(n)+a(n-1)` with `a(0)=0`
-/

namespace A050233.P13708317251854185885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A001591 n + a (n - 1))

end

end A050233.P13708317251854185885

noncomputable section

/-- A050233: a(n) is the number of n-tosses having a run of 5 or more heads for a fair coin (i.e., probability is a(n)/2^n).

Offset 1, canonical program `A050233.P13708317251854185885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A050233 (n : ℕ) : ℤ :=
  A050233.P13708317251854185885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A050233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050243.P10006487352143975654

`floor(A289914(3*n)/A289914(2*n))`
-/

namespace A050243.P10006487352143975654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A289914 (3 * n) : ℚ) / (A289914 (2 * n) : ℚ)⌋

end

end A050243.P10006487352143975654

noncomputable section

/-- A050243: a(n) = floor((1/2 * (sqrt(2) + 1 + sqrt(2*sqrt(2) - 1)))^n ).

Offset 0, canonical program `A050243.P10006487352143975654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A050243 (n : ℕ) : ℤ :=
  A050243.P10006487352143975654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A050243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050377.P5092377049464550974

`∏{e}[n+1, A018819(#)]`
-/

namespace A050377.P5092377049464550974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A018819 (Nat.factorization (f1 n) p)

end

end A050377.P5092377049464550974

noncomputable section

/-- A050377: Number of ways to factor n into "Fermi-Dirac primes" (members of A050376).

Offset 1, canonical program `A050377.P5092377049464550974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050377 (n : ℕ) : ℤ :=
  A050377.P5092377049464550974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050453.P6605765519543064582

`∑{d}[n+1, #*#%A062828(#)]`
-/

namespace A050453.P6605765519543064582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (d : ℤ) (A062828 d)

end

end A050453.P6605765519543064582

noncomputable section

/-- A050453: Sum_{d|n, d=3 mod 4} d^2.

Offset 1, canonical program `A050453.P6605765519543064582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050453 (n : ℕ) : ℤ :=
  A050453.P6605765519543064582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050454.P6949249148858722665

`∑{d}[n+1, A000578(#%A062828(#))]`
-/

namespace A050454.P6949249148858722665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000578 (Int.tmod (d : ℤ) (A062828 d)).toNat

end

end A050454.P6949249148858722665

noncomputable section

/-- A050454: a(n) = Sum_{d|n, d=3 mod 4} d^3.

Offset 1, canonical program `A050454.P6949249148858722665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050454 (n : ℕ) : ℤ :=
  A050454.P6949249148858722665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050455.P12046715105957438179

`∑{d}[n+1, (#*#%A062828(#))²]`
-/

namespace A050455.P12046715105957438179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * Int.tmod (d : ℤ) (A062828 d)) ^ 2

end

end A050455.P12046715105957438179

noncomputable section

/-- A050455: a(n) = Sum_{d|n, d=3 mod 4} d^4.

Offset 1, canonical program `A050455.P12046715105957438179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050455 (n : ℕ) : ℤ :=
  A050455.P12046715105957438179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050457.P6572451933585207795

`∑{d}[n+1, #*A056594(#-1)]`
-/

namespace A050457.P6572451933585207795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A056594 (d - 1)

end

end A050457.P6572451933585207795

noncomputable section

/-- A050457: a(n) = Sum_{ d divides n, d==1 mod 4} d - Sum_{ d divides n, d==3 mod 4} d.

Offset 1, canonical program `A050457.P6572451933585207795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050457 (n : ℕ) : ℤ :=
  A050457.P6572451933585207795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050490.P1263970241418042404

`(11*n+1)*A000108(n)`
-/

namespace A050490.P1263970241418042404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n + 1 : ℤ) * A000108 n

end

end A050490.P1263970241418042404

noncomputable section

/-- A050490: a(n) = C(n)*(11n+1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050490.P1263970241418042404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A050490 (n : ℕ) : ℤ :=
  A050490.P1263970241418042404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A050490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050491.P6843329130338162814

`(12*n+1)*A000108(n)`
-/

namespace A050491.P6843329130338162814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 1 : ℤ) * A000108 n

end

end A050491.P6843329130338162814

noncomputable section

/-- A050491: a(n) = C(n)*(12n+1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050491.P6843329130338162814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A050491 (n : ℕ) : ℤ :=
  A050491.P6843329130338162814.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A050491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050506.P16313634226855108801

`round(log(A020695(n)))`
-/

namespace A050506.P16313634226855108801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A020695 n : ℝ))

end

end A050506.P16313634226855108801

noncomputable section

/-- A050506: Nearest integer to log(Fibonacci(n)).

Offset 3, canonical program `A050506.P16313634226855108801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A050506 (n : ℕ) : ℤ :=
  A050506.P16313634226855108801.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A050506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050511.P14007568891087998806

`(-1)^n*∑[∑[A002212(n)]]`
-/

namespace A050511.P14007568891087998806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050511.P14007568891087998806

noncomputable section

/-- A050511: a(n) = (-1)^n * Sum_{i=0..n} binomial(n+1,i+1)*Catalan(i).

Offset 0, canonical program `A050511.P14007568891087998806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A050511 (n : ℕ) : ℤ :=
  A050511.P14007568891087998806.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A050511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050684.P17019107077225119826

`A050250(n+1)-A117868(n+1)`
-/

namespace A050684.P17019107077225119826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050250 (n + 1) - A117868 (n + 1)

end

end A050684.P17019107077225119826

noncomputable section

/-- A050684: Number of nonzero palindromes < 10^n and containing at least one digit '1'.

Offset 1, canonical program `A050684.P17019107077225119826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A050684 (n : ℕ) : ℤ :=
  A050684.P17019107077225119826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A050684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050686.P13686185828913678521

`A050683(n+1)-2*A117855(n+1)²`
-/

namespace A050686.P13686185828913678521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1) - 2 * A117855 (n + 1) ^ 2

end

end A050686.P13686185828913678521

noncomputable section

/-- A050686: Number of palindromes of length n and containing the digit 1 (or any other fixed nonzero digit).

Offset 1, canonical program `A050686.P13686185828913678521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A050686 (n : ℕ) : ℤ :=
  A050686.P13686185828913678521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A050686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050720.P14054325350750293886

`3*3*A016189(floor(n/2))`
-/

namespace A050720.P14054325350750293886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * A016189 ⌊(n : ℚ) / 2⌋.toNat)

end

end A050720.P14054325350750293886

noncomputable section

/-- A050720: Number of nonzero palindromes of length n containing the digit '0'.

Offset 1, canonical program `A050720.P14054325350750293886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A050720 (n : ℕ) : ℤ :=
  A050720.P14054325350750293886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A050720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050779.P2908600926508751376

`p?[comp[A001414(n+1)+1+n]]`
-/

namespace A050779.P2908600926508751376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A050779.P2908600926508751376

noncomputable section

/-- A050779: Primes that are not ending primes after the iterated procedure of 'composite added to the sum of its prime factors reaches a prime'.

Offset 1, canonical program `A050779.P2908600926508751376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1090 terms. -/
def A050779 (n : ℕ) : ℤ :=
  (A050779.P2908600926508751376.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1090 terms. -/
def A050779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050820.P12739032107343842795

`A005210(or(1, n)+n)`
-/

namespace A050820.P12739032107343842795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (Nat.lor 1 n + n)

end

end A050820.P12739032107343842795

noncomputable section

/-- A050820: Odd numbers in the sequence generated by a(n)=|a(n-1)+2a(n-2)-n|.

Offset 1, canonical program `A050820.P12739032107343842795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050820 (n : ℕ) : ℤ :=
  A050820.P12739032107343842795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050821.P16920974919570339433

`A005210(or(1, n)+n+2)`
-/

namespace A050821.P16920974919570339433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005210 (Nat.lor 1 n + (n + 2))

end

end A050821.P16920974919570339433

noncomputable section

/-- A050821: Even numbers in the sequence generated by a(n)=|a(n-1)+2a(n-2)-n| where a(0)=a(1)=1.

Offset 1, canonical program `A050821.P16920974919570339433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050821 (n : ℕ) : ℤ :=
  A050821.P16920974919570339433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050822.P4692462472163273837

`filter[A005185(n+1), A000035(#)]`
-/

namespace A050822.P4692462472163273837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A050822.P4692462472163273837

noncomputable section

/-- A050822: Odd numbers in Hofstadter Q-sequence a(n)=a(n-a(n-1))+a(n-a(n-2)).

Offset 1, canonical program `A050822.P4692462472163273837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4875 terms. -/
def A050822 (n : ℕ) : ℤ :=
  A050822.P4692462472163273837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4875 terms. -/
def A050822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050823.P5939543416348710426

`filter[A005185(n+1), A059841(#)]`
-/

namespace A050823.P5939543416348710426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A050823.P5939543416348710426

noncomputable section

/-- A050823: Even numbers in Hofstadter Q-sequence a(n)=a(n-a(n-1))+a(n-a(n-2)).

Offset 1, canonical program `A050823.P5939543416348710426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5125 terms. -/
def A050823 (n : ℕ) : ℤ :=
  A050823.P5939543416348710426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5125 terms. -/
def A050823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050824.P6373654276281107544

`filter[A006161(n+1), A000035(#)]`
-/

namespace A050824.P6373654276281107544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A050824.P6373654276281107544

noncomputable section

/-- A050824: Odd numbers in the sequence generated by a(n) = a(a(n-1)-1)+a(n+1-a(n-1)).

Offset 1, canonical program `A050824.P6373654276281107544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A050824 (n : ℕ) : ℤ :=
  A050824.P6373654276281107544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A050824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050826.P10860839900887988286

`filter[A005229(n+1), A000035(#)]`
-/

namespace A050826.P10860839900887988286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A050826.P10860839900887988286

noncomputable section

/-- A050826: Odd numbers in the sequence generated by a(n)=a(a(n-2))+a(n-a(n-2)).

Offset 1, canonical program `A050826.P10860839900887988286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4949 terms. -/
def A050826 (n : ℕ) : ℤ :=
  A050826.P10860839900887988286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4949 terms. -/
def A050826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050827.P10269600618779883462

`filter[A005229(n+1), A059841(#)]`
-/

namespace A050827.P10269600618779883462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A050827.P10269600618779883462

noncomputable section

/-- A050827: Even numbers in the sequence generated by a(n) = a(a(n-2))+a(n-a(n-2)).

Offset 1, canonical program `A050827.P10269600618779883462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A050827 (n : ℕ) : ℤ :=
  A050827.P10269600618779883462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. -/
def A050827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050828.P13398057666425004566

`A006158(record[(n+1)^and(1, A006158(n+1))])`
-/

namespace A050828.P13398057666425004566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.land 1 (A006158 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006158 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A050828.P13398057666425004566

noncomputable section

/-- A050828: Odd numbers in the sequence generated by a(n)=a(a(n-3))+a(n-a(n-3)).

Offset 1, canonical program `A050828.P13398057666425004566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5062 terms. -/
def A050828 (n : ℕ) : ℤ :=
  A050828.P13398057666425004566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5062 terms. -/
def A050828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050997.P5231147570234137425

`A000040(n+1)^5`
-/

namespace A050997.P5231147570234137425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 5

end

end A050997.P5231147570234137425

noncomputable section

/-- A050997: Fifth powers of primes.

Offset 1, canonical program `A050997.P5231147570234137425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050997 (n : ℕ) : ℤ :=
  A050997.P5231147570234137425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051000.P12716278985122959744

`A001158((n+1)/xor(n, or(n, n+1)))`
-/

namespace A051000.P12716278985122959744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A051000.P12716278985122959744

noncomputable section

/-- A051000: Sum of cubes of odd divisors of n.

Offset 1, canonical program `A051000.P12716278985122959744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051000 (n : ℕ) : ℤ :=
  A051000.P12716278985122959744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051102.P3333019133088521411

`A000149(A000040(n+1))`
-/

namespace A051102.P3333019133088521411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 (A000040 (n + 1)).toNat

end

end A051102.P3333019133088521411

noncomputable section

/-- A051102: Floor of exp(n-th prime).

Offset 1, canonical program `A051102.P3333019133088521411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051102 (n : ℕ) : ℤ :=
  A051102.P3333019133088521411.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051102.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051122.P9336883441463544165

`and(A000045(n+1), A000045(n))`
-/

namespace A051122.P9336883441463544165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (n + 1)) (A000045 n)

end

end A051122.P9336883441463544165

noncomputable section

/-- A051122: a(n) = Fibonacci(n) AND Fibonacci(n+1).

Offset 0, canonical program `A051122.P9336883441463544165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A051122 (n : ℕ) : ℤ :=
  A051122.P9336883441463544165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A051122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051146.P2694974450610895736

`A051145(n+1)+A051145(n)`
-/

namespace A051146.P2694974450610895736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051145 (n + 1) + A051145 n

end

end A051146.P2694974450610895736

noncomputable section

/-- A051146: Sequence b(n) mentioned in A051145.

Offset 1, canonical program `A051146.P2694974450610895736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051146 (n : ℕ) : ℤ :=
  A051146.P2694974450610895736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051350.P4736732593803182933

`∑[∑{digits}[comp[A000040(n+1)], #]]`
-/

namespace A051350.P4736732593803182933
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051350.P4736732593803182933

noncomputable section

/-- A051350: Sum of digit-sums of first n nonprimes.

Offset 0, canonical program `A051350.P4736732593803182933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051350 (n : ℕ) : ℤ :=
  (A051350.P4736732593803182933.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051373.P62567746208219066

`A004164(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A051373.P62567746208219066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051373.P62567746208219066

noncomputable section

/-- A051373: a(n+1) = a(n) + sum of digits of (a(n)^3).

Offset 1, canonical program `A051373.P62567746208219066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A051373 (n : ℕ) : ℤ :=
  A051373.P62567746208219066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A051373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051408.P15079108207671988781

`A004164(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A051408.P15079108207671988781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051408.P15079108207671988781

noncomputable section

/-- A051408: a(n+1) = a(n) + sum of digits of (a(n)^3).

Offset 1, canonical program `A051408.P15079108207671988781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A051408 (n : ℕ) : ℤ :=
  A051408.P15079108207671988781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A051408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051409.P11390321377571457585

`A004164(a(n-1))+a(n-1)` with `a(0)=4`
-/

namespace A051409.P11390321377571457585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051409.P11390321377571457585

noncomputable section

/-- A051409: a(n+1) = a(n) + sum of digits of (a(n)^3).

Offset 1, canonical program `A051409.P11390321377571457585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A051409 (n : ℕ) : ℤ :=
  A051409.P11390321377571457585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A051409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051410.P16283429953950596313

`A004164(a(n-1))+a(n-1)` with `a(0)=6`
-/

namespace A051410.P16283429953950596313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051410.P16283429953950596313

noncomputable section

/-- A051410: a(n+1) = a(n) + sum of digits of a(n)^3.

Offset 1, canonical program `A051410.P16283429953950596313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A051410 (n : ℕ) : ℤ :=
  A051410.P16283429953950596313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A051410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051411.P15164664904360530703

`A004164(a(n-1))+a(n-1)` with `a(0)=7`
-/

namespace A051411.P15164664904360530703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051411.P15164664904360530703

noncomputable section

/-- A051411: a(n+1) = a(n) + sum of digits of a(n)^3.

Offset 1, canonical program `A051411.P15164664904360530703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A051411 (n : ℕ) : ℤ :=
  A051411.P15164664904360530703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A051411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051412.P8533835990491713621

`A004164(a(n-1))+a(n-1)` with `a(0)=9`
-/

namespace A051412.P8533835990491713621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A004164 (a (n - 1)).toNat + a (n - 1)

end

end A051412.P8533835990491713621

noncomputable section

/-- A051412: a(n+1) = a(n) + sum of digits of a(n)^3.

Offset 1, canonical program `A051412.P8533835990491713621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A051412 (n : ℕ) : ℤ :=
  A051412.P8533835990491713621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A051412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051438.P13775851179067347396

`A000040(A000225(n+1))`
-/

namespace A051438.P13775851179067347396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000225 (n + 1)).toNat

end

end A051438.P13775851179067347396

noncomputable section

/-- A051438: a(n) = prime(2^n - 1).

Offset 1, canonical program `A051438.P13775851179067347396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051438 (n : ℕ) : ℤ :=
  A051438.P13775851179067347396.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051448.P13624532143330964152

`eq[1, A010052(A001414(n+1))]+1`
-/

namespace A051448.P13624532143330964152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A051448.P13624532143330964152

noncomputable section

/-- A051448: Sum of prime divisors of n (with multiplicity) is a square.

Offset 1, canonical program `A051448.P13624532143330964152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 410 terms. -/
def A051448 (n : ℕ) : ℤ :=
  (A051448.P13624532143330964152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 410 terms. -/
def A051448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051512.P16682247937383549340

`floor(tan(A000040(n+1)))`
-/

namespace A051512.P16682247937383549340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (A000040 (n + 1) : ℝ)⌋

end

end A051512.P16682247937383549340

noncomputable section

/-- A051512: a(n) = floor(tan(prime(n))).

Offset 1, canonical program `A051512.P16682247937383549340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051512 (n : ℕ) : ℤ :=
  A051512.P16682247937383549340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051544.P13503009666278006305

`A051536(n+1)/A051536(n)`
-/

namespace A051544.P13503009666278006305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051536 (n + 1) : ℚ) / (A051536 n : ℚ)

end

end A051544.P13503009666278006305

noncomputable section

/-- A051544: Quotients of consecutive values of lcm {1, 4, 7, 10, 13 ...,(3n+1)} (A016777).

Offset 1, canonical program `A051544.P13503009666278006305`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051536, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051544 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051544.P13503009666278006305.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051536, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051544.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051656.P2766928477570760941

`A050612(n)%A050611(n)`
-/

namespace A051656.P2766928477570760941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050612 n) (A050611 n)

end

end A051656.P2766928477570760941

noncomputable section

/-- A051656: a(n) = Sum_{i=0..n} (C(n,i) mod 2)*Fibonacci(2*i).

Offset 0, canonical program `A051656.P2766928477570760941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A051656 (n : ℕ) : ℤ :=
  A051656.P2766928477570760941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A051656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051674.P13718598881858255390

`A000312(A000040(n+1))`
-/

namespace A051674.P13718598881858255390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A000040 (n + 1)).toNat

end

end A051674.P13718598881858255390

noncomputable section

/-- A051674: a(n) = prime(n)^prime(n).

Offset 1, canonical program `A051674.P13718598881858255390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051674 (n : ℕ) : ℤ :=
  A051674.P13718598881858255390.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051674.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051712.P5358690207055637993

`A051724(gcd(n², ∑[n]))`
-/

namespace A051712.P5358690207055637993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (Nat.gcd (n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A051712.P5358690207055637993

noncomputable section

/-- A051712: Numerator of b(n)-b(n+1), where b(n) = n/((n+1)(n+2)) = A026741/A045896.

Offset 1, canonical program `A051712.P5358690207055637993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051712 (n : ℕ) : ℤ :=
  A051712.P5358690207055637993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051713.P6671384641296016121

`A112415(n)/gcd(∑[n], A112415(n))`
-/

namespace A051713.P6671384641296016121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112415 n : ℚ) / (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A112415 n) : ℚ)

end

end A051713.P6671384641296016121

noncomputable section

/-- A051713: Denominator of b(n)-b(n+1), where b(n) = n/((n+1)(n+2)) = A026741/A045896.

Offset 1, canonical program `A051713.P6671384641296016121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051713.P6671384641296016121.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051802.P4212363599025183031

`a(A051801(n))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8, a(9)=9`
-/

namespace A051802.P4212363599025183031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 4, 5, 6, 7, 8, 9] fun n a =>
  a (A051801 n).toNat

end

end A051802.P4212363599025183031

noncomputable section

/-- A051802: Nonzero multiplicative digital root of n.

Offset 0, canonical program `A051802.P4212363599025183031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051802 (n : ℕ) : ℤ :=
  (A051802.P4212363599025183031.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051916.P17059523613539162639

`∪[3*A094958(n+1), A094958(n+3)]`
-/

namespace A051916.P17059523613539162639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A094958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051916.P17059523613539162639

noncomputable section

/-- A051916: The Greek sequence: 2^a * 3^b * 5^c where a = 0,1,2,3,..., b,c in {0,1}, excluding the terms 1,2; that is: (a,b,c) != (0,0,0), (1,0,0).

Offset 1, canonical program `A051916.P17059523613539162639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1320 terms. -/
def A051916 (n : ℕ) : ℤ :=
  (A051916.P17059523613539162639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1320 terms. -/
def A051916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052038.P329603751737399557

`A000030(A033422(n+1))`
-/

namespace A052038.P329603751737399557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A033422 (n + 1)).toNat

end

end A052038.P329603751737399557

noncomputable section

/-- A052038: First nonzero digit in the decimal expansion of 1/n.

Offset 1, canonical program `A052038.P329603751737399557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052038 (n : ℕ) : ℤ :=
  A052038.P329603751737399557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052177.P7488079072612869283

`A005572(n+1)%(2*A005572(n))`
-/

namespace A052177.P7488079072612869283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005572 (n + 1)) (2 * A005572 n)

end

end A052177.P7488079072612869283

noncomputable section

/-- A052177: Number of walks on simple cubic lattice (starting on the xy plane, never going below it and finishing a height 1 above it).

Offset 0, canonical program `A052177.P7488079072612869283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A052177 (n : ℕ) : ℤ :=
  A052177.P7488079072612869283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A052177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052221.P10453870541976989014

`A001202(A023689(n+1)+1)`
-/

namespace A052221.P10453870541976989014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A023689 (n + 1) + 1).toNat

end

end A052221.P10453870541976989014

noncomputable section

/-- A052221: Numbers whose sum of digits is 7.

Offset 1, canonical program `A052221.P10453870541976989014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2126 terms. -/
def A052221 (n : ℕ) : ℤ :=
  A052221.P10453870541976989014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2126 terms. -/
def A052221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052276.P3443784864028581129

`record[A213389(n)-a(n-1)]` with `a(0)=3`
-/

namespace A052276.P3443784864028581129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A213389 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052276.P3443784864028581129

noncomputable section

/-- A052276: Nonnegative numbers of the form n^3 (+/ -) 3, n >= 0.

Offset 1, canonical program `A052276.P3443784864028581129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A052276 (n : ℕ) : ℤ :=
  A052276.P3443784864028581129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A052276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052282.P8537123680179149703

`∑[A008627(n)-A058212(A052938(n))]`
-/

namespace A052282.P8537123680179149703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008627 n - A058212 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052282.P8537123680179149703

noncomputable section

/-- A052282: Number of 3 X 3 stochastic matrices under row and column permutations.

Offset 0, canonical program `A052282.P8537123680179149703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052282 (n : ℕ) : ℤ :=
  A052282.P8537123680179149703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052338.P4751206966028330060

`A050443(A000040(n+1))/p?[A110514(n)]`
-/

namespace A052338.P4751206966028330060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050443 (A000040 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A052338.P4751206966028330060

noncomputable section

/-- A052338: a(n) = A050443(n-th prime)/(n-th prime).

Offset 1, canonical program `A052338.P4751206966028330060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A052338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052338.P4751206966028330060.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A052338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052341.P15595772427535457818

`(A000032(n)-∑[A010892(n)])*A033999(n)`
-/

namespace A052341.P15595772427535457818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - ∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A052341.P15595772427535457818

noncomputable section

/-- A052341: Shifts left two places under BIN1 transform.

Offset 0, canonical program `A052341.P15595772427535457818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A052341 (n : ℕ) : ℤ :=
  A052341.P15595772427535457818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A052341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052387.P11464974930727798611

`∑[∑[∑[A005582(n)-n²]]]`
-/

namespace A052387.P11464974930727798611
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n - (n ^ 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052387.P11464974930727798611

noncomputable section

/-- A052387: Number of 3 X n binary matrices such that any 2 rows have a common 1, up to column permutations.

Offset 0, canonical program `A052387.P11464974930727798611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052387 (n : ℕ) : ℤ :=
  A052387.P11464974930727798611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052405.P8022865480491917303

`comp[A011533(n+1)]`
-/

namespace A052405.P8022865480491917303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052405.P8022865480491917303

noncomputable section

/-- A052405: Numbers without 3 as a digit.

Offset 1, canonical program `A052405.P8022865480491917303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052405 (n : ℕ) : ℤ :=
  (A052405.P8022865480491917303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052516.P11934640766659568381

`(A000918(n)-n²-n)%(A000918(n)-n²)`
-/

namespace A052516.P11934640766659568381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000918 n - (n ^ 2 : ℤ) - (n : ℤ)) (A000918 n - (n ^ 2 : ℤ))

end

end A052516.P11934640766659568381

noncomputable section

/-- A052516: Number of pairs of sets of cardinality at least 3.

Offset 0, canonical program `A052516.P11934640766659568381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A052516 (n : ℕ) : ℤ :=
  A052516.P11934640766659568381.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A052516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052629.P13429982903937823352

`n!*A018902(n)`
-/

namespace A052629.P13429982903937823352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A018902 n

end

end A052629.P13429982903937823352

noncomputable section

/-- A052629: Expansion of e.g.f. (1-x)/(1-5x+3x^2).

Offset 0, canonical program `A052629.P13429982903937823352`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052629 (n : ℕ) : ℤ :=
  A052629.P13429982903937823352.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018902, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052629.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052760.P5613186736916057001

`A048487(n)%A011782(n)*A161680(n)`
-/

namespace A052760.P5613186736916057001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048487 n) (A011782 n) * A161680 n

end

end A052760.P5613186736916057001

noncomputable section

/-- A052760: Expansion of e.g.f.: x^2*(exp(x)-1)^2.

Offset 0, canonical program `A052760.P5613186736916057001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A052760 (n : ℕ) : ℤ :=
  A052760.P5613186736916057001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A052760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052761.P11264414659756684470

`n*A001117(n+1-2%(n+1))`
-/

namespace A052761.P11264414659756684470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001117 (n + 1 - 2 % (n + 1))

end

end A052761.P11264414659756684470

noncomputable section

/-- A052761: a(n) = 3!*n*S(n-1,3), where S denotes the Stirling numbers of second kind.

Offset 0, canonical program `A052761.P11264414659756684470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A052761 (n : ℕ) : ℤ :=
  A052761.P11264414659756684470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A052761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052768.P6561578854226774558

`A052762(n)%A001095(A000007(n)+n)`
-/

namespace A052768.P6561578854226774558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052762 n) (A001095 (A000007 n + (n : ℤ)).toNat)

end

end A052768.P6561578854226774558

noncomputable section

/-- A052768: a(n) = n*(n-1)*(n-2)*(n-3) for n>=5.

Offset 0, canonical program `A052768.P6561578854226774558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052768 (n : ℕ) : ℤ :=
  A052768.P6561578854226774558.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052800.P10519635716763956218

`A052787(C(n, C(5, C(5, n))))`
-/

namespace A052800.P10519635716763956218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 (Nat.choose n (Nat.choose 5 (Nat.choose 5 n)))

end

end A052800.P10519635716763956218

noncomputable section

/-- A052800: E.g.f.: x^5*exp(x)-x^5.

Offset 0, canonical program `A052800.P10519635716763956218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052800 (n : ℕ) : ℤ :=
  A052800.P10519635716763956218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053024.P18092685684521864134

`(n+1)*A000040(∑[C(∑{p}[n, #], n)])`
-/

namespace A053024.P18092685684521864134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053024.P18092685684521864134

noncomputable section

/-- A053024: a(n) = n*p where p is the next prime >= n.

Offset 1, canonical program `A053024.P18092685684521864134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053024 (n : ℕ) : ℤ :=
  A053024.P18092685684521864134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053089.P7340105326366583281

`A000040(n+1)^A000040(n+2)`
-/

namespace A053089.P7340105326366583281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A000040 (n + 2) : ℤ)

end

end A053089.P7340105326366583281

noncomputable section

/-- A053089: a(n) = prime(n)^prime(n+1).

Offset 1, canonical program `A053089.P7340105326366583281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053089 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053089.P7340105326366583281.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053188.P18303623970101524975

`A053615(A056847(n))`
-/

namespace A053188.P18303623970101524975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A056847 n).toNat

end

end A053188.P18303623970101524975

noncomputable section

/-- A053188: Distance from n to nearest square.

Offset 0, canonical program `A053188.P18303623970101524975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053188 (n : ℕ) : ℤ :=
  A053188.P18303623970101524975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053214.P12955992535722284723

`C(2, n+2)+A042970(A008574(n)-2*n)`
-/

namespace A053214.P12955992535722284723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + A042970 (A008574 n - (2 * n : ℤ)).toNat

end

end A053214.P12955992535722284723

noncomputable section

/-- A053214: Central binomial coefficients (A000984) read mod 2n, with a(0)=1.

Offset 0, canonical program `A053214.P12955992535722284723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053214 (n : ℕ) : ℤ :=
  A053214.P12955992535722284723.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053223.P3484062727201404404

`Δ[A000203(n+2)-A000203(n+1)]`
-/

namespace A053223.P3484062727201404404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P3484062727201404404

noncomputable section

/-- A053223: Second differences of sigma(n).

Offset 1, canonical program `A053223.P3484062727201404404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053223 (n : ℕ) : ℤ :=
  A053223.P3484062727201404404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053224.P3405306434289397345

`lt[A000203(n+1), A000203(n+2)]+1`
-/

namespace A053224.P3405306434289397345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A053224.P3405306434289397345

noncomputable section

/-- A053224: Numbers k for which sigma(k) < sigma(k+1).

Offset 1, canonical program `A053224.P3405306434289397345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053224 (n : ℕ) : ℤ :=
  (A053224.P3405306434289397345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053238.P8235000837731162910

`Δ[lt[A000203(n+2), A000203(n+1)]]`
-/

namespace A053238.P8235000837731162910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053238.P8235000837731162910

noncomputable section

/-- A053238: First differences between numbers k for which sigma(k) > sigma(k+1).

Offset 1, canonical program `A053238.P8235000837731162910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053238 (n : ℕ) : ℤ :=
  A053238.P8235000837731162910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A053238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053297.P301715690117761564

`A054145(n)+A007052(n)`
-/

namespace A053297.P301715690117761564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054145 n + A007052 n

end

end A053297.P301715690117761564

noncomputable section

/-- A053297: Row sums of array T in A053199.

Offset 1, canonical program `A053297.P301715690117761564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A053297 (n : ℕ) : ℤ :=
  A053297.P301715690117761564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A053297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053335.P4748056852846106201

`3*A053312(n+1)`
-/

namespace A053335.P4748056852846106201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053312 (n + 1)

end

end A053335.P4748056852846106201

noncomputable section

/-- A053335: a(n) contains n digits (either '3' or '6') and is divisible by 2^n.

Offset 1, canonical program `A053335.P4748056852846106201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A053335 (n : ℕ) : ℤ :=
  A053335.P4748056852846106201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A053335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053379.P10810913634548379691

`A011557(n+1)-A053312(n+1)`
-/

namespace A053379.P10810913634548379691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A053312 (n + 1)

end

end A053379.P10810913634548379691

noncomputable section

/-- A053379: a(n) contains n digits '7' or '8' and is divisible by 2^n.

Offset 1, canonical program `A053379.P10810913634548379691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A053379 (n : ℕ) : ℤ :=
  A053379.P10810913634548379691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A053379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053410.P2914899679445923587

`∑[∑[16*A098308(n)]]`
-/

namespace A053410.P2914899679445923587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A098308 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053410.P2914899679445923587

noncomputable section

/-- A053410: a(1) = 0, a(2) = 16, a(2n+1) = 10*a(2n) - a(2n-1), a(2n) = 10*a(2n-1) - a(2n-2) + 16.

Offset 1, canonical program `A053410.P2914899679445923587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A053410 (n : ℕ) : ℤ :=
  A053410.P2914899679445923587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A053410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053460.P13665849281510210424

`eq[A000035(n), A008651(A142150(n))]`
-/

namespace A053460.P13665849281510210424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A142150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053460.P13665849281510210424

noncomputable section

/-- A053460: The 120 points of the 600-cell exactly integrate homogeneous polynomials of degree n.

Offset 1, canonical program `A053460.P13665849281510210424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A053460 (n : ℕ) : ℤ :=
  (A053460.P13665849281510210424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5015 terms. -/
def A053460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053477.P5719108630255727600

`a(A032741(n+1))+n+1` with `a(0)=1, a(1)=2`
-/

namespace A053477.P5719108630255727600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A032741 (n + 1)).toNat + (n + 1)

end

end A053477.P5719108630255727600

noncomputable section

/-- A053477: Sum of iterates of divisor number function A000005.

Offset 1, canonical program `A053477.P5719108630255727600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053477 (n : ℕ) : ℤ :=
  (A053477.P5719108630255727600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053480.P16927563168185006923

`a(A016035(n+1))+1+n` with `a(0)=1`
-/

namespace A053480.P16927563168185006923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A016035 (n + 1)).toNat + 1 + n

end

end A053480.P16927563168185006923

noncomputable section

/-- A053480: Sum of values when cototient function A051953 is iterated until fixed point is reached.

Offset 1, canonical program `A053480.P16927563168185006923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053480 (n : ℕ) : ℤ :=
  (A053480.P16927563168185006923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053641.P18322819480823141847

`A006257(A038572(n+1))`
-/

namespace A053641.P18322819480823141847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A038572 (n + 1)).toNat

end

end A053641.P18322819480823141847

noncomputable section

/-- A053641: Rotate n one binary digit to the right, drop leading zeros, then rotate one binary digit to the left.

Offset 1, canonical program `A053641.P18322819480823141847`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053641 (n : ℕ) : ℤ :=
  A053641.P18322819480823141847.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053642.P4587077384101901910

`A038572(A006257(n+1))`
-/

namespace A053642.P4587077384101901910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A006257 (n + 1)).toNat

end

end A053642.P4587077384101901910

noncomputable section

/-- A053642: Rotate n one binary digit to the left, drop leading zeros, then rotate one binary digit to the right.

Offset 1, canonical program `A053642.P4587077384101901910`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053642 (n : ℕ) : ℤ :=
  A053642.P4587077384101901910.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053666.P18378645910674080637

`∏{digits}[A000040(n+1), #]`
-/

namespace A053666.P18378645910674080637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A053666.P18378645910674080637

noncomputable section

/-- A053666: Product of digits of n-th prime.

Offset 1, canonical program `A053666.P18378645910674080637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053666 (n : ℕ) : ℤ :=
  (A053666.P18378645910674080637.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053728.P11736248218383441495

`p?[A000203(n+2)-(n+2)]`
-/

namespace A053728.P11736248218383441495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053728.P11736248218383441495

noncomputable section

/-- A053728: For n=1,2,3,..., compute sum of aliquot divisors of n; if result is prime append this prime to sequence.

Offset 1, canonical program `A053728.P11736248218383441495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8801 terms. -/
def A053728 (n : ℕ) : ℤ :=
  A053728.P11736248218383441495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8801 terms. -/
def A053728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053813.P7251305670303798114

`record[gcd(n, 2-A000203(n+1))+1]`
-/

namespace A053813.P7251305670303798114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (2 - A000203 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053813.P7251305670303798114

noncomputable section

/-- A053813: Numbers which are an integral multiple of the sum of their proper divisors: prime and perfect numbers.

Offset 1, canonical program `A053813.P7251305670303798114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9596 terms. -/
def A053813 (n : ℕ) : ℤ :=
  (A053813.P7251305670303798114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9596 terms. -/
def A053813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053869.P10568876053264195

`lt[val(A000203(n+1)-n, 2), 1]+1`
-/

namespace A053869.P10568876053264195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (n + 1) - (n : ℤ)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A053869.P10568876053264195

noncomputable section

/-- A053869: Sum of divisors of n less than n is even.

Offset 1, canonical program `A053869.P10568876053264195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053869 (n : ℕ) : ℤ :=
  (A053869.P10568876053264195.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053999.P6580764229931709571

`A000040(A016754(n))`
-/

namespace A053999.P6580764229931709571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A016754 n).toNat

end

end A053999.P6580764229931709571

noncomputable section

/-- A053999: Prime number spiral (clockwise, Northwest spoke).

Offset 0, canonical program `A053999.P6580764229931709571`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053999 (n : ℕ) : ℤ :=
  A053999.P6580764229931709571.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053999.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054011.P1372442972230571596

`lt[A032741(A054009(n+2)), A054009(n+2)]+2`
-/

namespace A054011.P1372442972230571596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A054009 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054009 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A054011.P1372442972230571596

noncomputable section

/-- A054011: n is not divisible by the number of its proper divisors.

Offset 1, canonical program `A054011.P1372442972230571596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. -/
def A054011 (n : ℕ) : ℤ :=
  (A054011.P1372442972230571596.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7446 terms. -/
def A054011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054027.P14691217397559208443

`lt[0, A054024(n+1)]+1`
-/

namespace A054027.P14691217397559208443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054027.P14691217397559208443

noncomputable section

/-- A054027: Numbers that do not divide their sum of divisors.

Offset 1, canonical program `A054027.P14691217397559208443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054027 (n : ℕ) : ℤ :=
  (A054027.P14691217397559208443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054066.P1800234531009967702

`∑[n]+A005206(n)+1`
-/

namespace A054066.P1800234531009967702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A005206 n + 1)

end

end A054066.P1800234531009967702

noncomputable section

/-- A054066: Position of n-th 1 in A054065.

Offset 1, canonical program `A054066.P1800234531009967702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054066 (n : ℕ) : ℤ :=
  A054066.P1800234531009967702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054074.P16498759992717157098

`A054071(n+1)+∑[n]`
-/

namespace A054074.P16498759992717157098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A054074.P16498759992717157098

noncomputable section

/-- A054074: Position of n-th 1 in A054073.

Offset 1, canonical program `A054074.P16498759992717157098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054074 (n : ℕ) : ℤ :=
  A054074.P16498759992717157098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054089.P12538508181983583088

`A026352(A110654(n))-A142150(n)`
-/

namespace A054089.P12538508181983583088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (A110654 n).toNat - A142150 n

end

end A054089.P12538508181983583088

noncomputable section

/-- A054089: For k >= 1, let p(k) = least h in N not already an a(i), q(k) = p(k)+k, a(2k) = q(k), a(2k+1) = p(k).

Offset 1, canonical program `A054089.P12538508181983583088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054089 (n : ℕ) : ℤ :=
  A054089.P12538508181983583088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054108.P12292871805328763714

`A000984(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A054108.P12292871805328763714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 (n + 1) - a (n - 1)

end

end A054108.P12292871805328763714

noncomputable section

/-- A054108: a(n) = (-1)^(n+1)*Sum_{k=0..n+1}(-1)^k*binomial(2*k,k).

Offset 0, canonical program `A054108.P12292871805328763714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054108 (n : ℕ) : ℤ :=
  A054108.P12292871805328763714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054109.P16989974968516577376

`A010763(n)-a(n-1)+1` with `a(0)=1`
-/

namespace A054109.P16989974968516577376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010763 n - a (n - 1) + 1

end

end A054109.P16989974968516577376

noncomputable section

/-- A054109: a(n) = T(2*n+1, n), array T as in A054106.

Offset 0, canonical program `A054109.P16989974968516577376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054109 (n : ℕ) : ℤ :=
  A054109.P16989974968516577376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054113.P15219506767305577209

`∑[A100320(n)]`
-/

namespace A054113.P15219506767305577209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054113.P15219506767305577209

noncomputable section

/-- A054113: T(2*n,n), array T as in A054110.

Offset 0, canonical program `A054113.P15219506767305577209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054113 (n : ℕ) : ℤ :=
  A054113.P15219506767305577209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A054113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054129.P2648708135013237677

`A035038(n+6)+A011782(n)`
-/

namespace A054129.P2648708135013237677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035038 (n + 6) + A011782 n

end

end A054129.P2648708135013237677

noncomputable section

/-- A054129: T(n,3), array T as in A054126.

Offset 3, canonical program `A054129.P2648708135013237677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A054129 (n : ℕ) : ℤ :=
  A054129.P2648708135013237677.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A054129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054131.P15131034983150532406

`A066380(n)+A011782(n)`
-/

namespace A054131.P15131034983150532406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066380 n + A011782 n

end

end A054131.P15131034983150532406

noncomputable section

/-- A054131: T(2n,n), array T as in A054126.

Offset 0, canonical program `A054131.P15131034983150532406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A054131 (n : ℕ) : ℤ :=
  A054131.P15131034983150532406.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A054131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054137.P17809517643631732314

`A011782(n)+A002664(n+5)`
-/

namespace A054137.P17809517643631732314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A002664 (n + 5)

end

end A054137.P17809517643631732314

noncomputable section

/-- A054137: T(n,3), array T as in A054134.

Offset 3, canonical program `A054137.P17809517643631732314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A054137 (n : ℕ) : ℤ :=
  A054137.P17809517643631732314.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A054137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054148.P7291168594695174351

`A054147(n)+A003480(n)`
-/

namespace A054148.P7291168594695174351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054147 n + A003480 n

end

end A054148.P7291168594695174351

noncomputable section

/-- A054148: T(2n+1,n), array T as in A054144.

Offset 0, canonical program `A054148.P7291168594695174351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A054148 (n : ℕ) : ℤ :=
  A054148.P7291168594695174351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A054148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054204.P6482760516605341944

`∑[A000045(val((n+1)², 2))+1]`
-/

namespace A054204.P6482760516605341944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation ((n + 1) ^ 2) 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054204.P6482760516605341944

noncomputable section

/-- A054204: Integers expressible as sums of distinct even-subscripted Fibonacci numbers.

Offset 1, canonical program `A054204.P6482760516605341944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054204 (n : ℕ) : ℤ :=
  A054204.P6482760516605341944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054248.P837078215305378622

`∑[A007456(n+1)+(n+1)%2]`
-/

namespace A054248.P837078215305378622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (n + 1) + (((n + 1) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054248.P837078215305378622

noncomputable section

/-- A054248: Binary entropy: a(n) = n + min { a(k)+a(n-k) : 1 <= k <= n-1 }.

Offset 1, canonical program `A054248.P837078215305378622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054248 (n : ℕ) : ℤ :=
  A054248.P837078215305378622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054347.P4966294788488570671

`∑[A004956(n)]-n`
-/

namespace A054347.P4966294788488570671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A054347.P4966294788488570671

noncomputable section

/-- A054347: Partial sums of A000201.

Offset 0, canonical program `A054347.P4966294788488570671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054347 (n : ℕ) : ℤ :=
  A054347.P4966294788488570671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054385.P13327735877817480647

`A022843(n+1)-A014246(n+1)`
-/

namespace A054385.P13327735877817480647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) - A014246 (n + 1)

end

end A054385.P13327735877817480647

noncomputable section

/-- A054385: Beatty sequence for e/(e-1); complement of A022843.

Offset 1, canonical program `A054385.P13327735877817480647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054385 (n : ℕ) : ℤ :=
  A054385.P13327735877817480647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054454.P4740952391609667406

`∑[∑[A094188(n+2)]]`
-/

namespace A054454.P4740952391609667406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094188 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054454.P4740952391609667406

noncomputable section

/-- A054454: Third column of triangle A054453.

Offset 0, canonical program `A054454.P4740952391609667406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A054454 (n : ℕ) : ℤ :=
  A054454.P4740952391609667406.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A054454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054475.P14661608982889306377

`∩[A023709(n+1), A168489(n+1)]`
-/

namespace A054475.P14661608982889306377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054475.P14661608982889306377

noncomputable section

/-- A054475: Numbers not divisible by any of their digits when written in base 4.

Offset 1, canonical program `A054475.P14661608982889306377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A054475 (n : ℕ) : ℤ :=
  (A054475.P14661608982889306377.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A054475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054497.P9271263383875408679

`∑[∑[∑[A060099(n)]]]`
-/

namespace A054497.P9271263383875408679
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054497.P9271263383875408679

noncomputable section

/-- A054497: Number of symmetric nonnegative integer 7 X 7 matrices with sum of elements equal to 4*n, under action of dihedral group D_4.

Offset 0, canonical program `A054497.P9271263383875408679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054497 (n : ℕ) : ℤ :=
  A054497.P9271263383875408679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054498.P8491227773940625758

`A038165(n)-a(n-1)` with `a(0)=1`
-/

namespace A054498.P8491227773940625758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038165 n - a (n - 1)

end

end A054498.P8491227773940625758

noncomputable section

/-- A054498: Number of symmetric nonnegative integer 8 X 8 matrices with sum of elements equal to 4*n, under action of dihedral group D_4.

Offset 0, canonical program `A054498.P8491227773940625758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054498 (n : ℕ) : ℤ :=
  A054498.P8491227773940625758.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054551.P9102736681837561329

`A000040(A054552(n))`
-/

namespace A054551.P9102736681837561329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A054552 n).toNat

end

end A054551.P9102736681837561329

noncomputable section

/-- A054551: Prime number spiral (clockwise, North spoke).

Offset 0, canonical program `A054551.P9102736681837561329`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054551 (n : ℕ) : ℤ :=
  A054551.P9102736681837561329.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054553.P7038844397685091000

`A000040(A054554(n+1))`
-/

namespace A054553.P7038844397685091000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A054554 (n + 1)).toNat

end

end A054553.P7038844397685091000

noncomputable section

/-- A054553: Prime number spiral (clockwise, Northeast spoke).

Offset 0, canonical program `A054553.P7038844397685091000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054553 (n : ℕ) : ℤ :=
  A054553.P7038844397685091000.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054553.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054555.P15825922673142589422

`A000040(A054556(n+1))`
-/

namespace A054555.P15825922673142589422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A054556 (n + 1)).toNat

end

end A054555.P15825922673142589422

noncomputable section

/-- A054555: Prime number spiral (clockwise, East spoke).

Offset 0, canonical program `A054555.P15825922673142589422`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054555 (n : ℕ) : ℤ :=
  A054555.P15825922673142589422.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054555.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054564.P9697744919051862196

`A000040(A053755(n))`
-/

namespace A054564.P9697744919051862196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A053755 n).toNat

end

end A054564.P9697744919051862196

noncomputable section

/-- A054564: Prime number spiral (clockwise, Southeast spoke).

Offset 0, canonical program `A054564.P9697744919051862196`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054564 (n : ℕ) : ℤ :=
  A054564.P9697744919051862196.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054564.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054566.P16975862670620973608

`A000040(A054567(n+1))`
-/

namespace A054566.P16975862670620973608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A054567 (n + 1)).toNat

end

end A054566.P16975862670620973608

noncomputable section

/-- A054566: Prime number spiral (clockwise, South spoke).

Offset 0, canonical program `A054566.P16975862670620973608`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054566 (n : ℕ) : ℤ :=
  A054566.P16975862670620973608.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054566.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054568.P5863294076294315471

`A000040(A054569(n+1))`
-/

namespace A054568.P5863294076294315471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A054569 (n + 1)).toNat

end

end A054568.P5863294076294315471

noncomputable section

/-- A054568: Prime number spiral (clockwise, Southwest spoke).

Offset 0, canonical program `A054568.P5863294076294315471`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054568 (n : ℕ) : ℤ :=
  A054568.P5863294076294315471.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054570.P11964430520200564668

`A000040(A033951(n))`
-/

namespace A054570.P11964430520200564668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A033951 n).toNat

end

end A054570.P11964430520200564668

noncomputable section

/-- A054570: Prime number spiral (clockwise, West spoke).

Offset 0, canonical program `A054570.P11964430520200564668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054570 (n : ℕ) : ℤ :=
  A054570.P11964430520200564668.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054577.P4836937161418299404

`floor((n+2)*A000108(n+1)/(n+3))`
-/

namespace A054577.P4836937161418299404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) * ((A000108 (n + 1) : ℚ) / (n + 3 : ℚ))⌋

end

end A054577.P4836937161418299404

noncomputable section

/-- A054577: A Catalan-like sequence.

Offset 1, canonical program `A054577.P4836937161418299404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A054577 (n : ℕ) : ℤ :=
  A054577.P4836937161418299404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A054577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054600.P7010466256528359478

`2*(A054599(n)-A054598(A142150(n)))`
-/

namespace A054600.P7010466256528359478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054599 n - A054598 (A142150 n).toNat)

end

end A054600.P7010466256528359478

noncomputable section

/-- A054600: Sum_{d|n, d odd} d*2^(n/d).

Offset 0, canonical program `A054600.P7010466256528359478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A054600 (n : ℕ) : ℤ :=
  A054600.P7010466256528359478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A054600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054601.P14114910227536714151

`A054599(n)-A054598(n-gcd(n, ∑[n]))`
-/

namespace A054601.P14114910227536714151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054599 n - A054598 (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A054601.P14114910227536714151

noncomputable section

/-- A054601: a(n) = Sum_{d|n, d odd} d*2^(n/d - 1), a(0)=0.

Offset 0, canonical program `A054601.P14114910227536714151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A054601 (n : ℕ) : ℤ :=
  A054601.P14114910227536714151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A054601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054795.P8527574853343151229

`A054794(n+1)+18`
-/

namespace A054795.P8527574853343151229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054794 (n + 1) + 18

end

end A054795.P8527574853343151229

noncomputable section

/-- A054795: Numbers of form 23+n^2+n or 23+2*n^2.

Offset 1, canonical program `A054795.P8527574853343151229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054795 (n : ℕ) : ℤ :=
  A054795.P8527574853343151229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054847.P4188440989310617586

`A002821(A054846(n))`
-/

namespace A054847.P4188440989310617586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A054846 n).toNat

end

end A054847.P4188440989310617586

noncomputable section

/-- A054847: Nearest integer to (nearest integer to n^(2/3))^(3/2).

Offset 0, canonical program `A054847.P4188440989310617586`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054847 (n : ℕ) : ℤ :=
  A054847.P4188440989310617586.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054846, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054882.P17615556658117091564

`A091000(n)-A054883(n)`
-/

namespace A054882.P17615556658117091564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091000 n - A054883 n

end

end A054882.P17615556658117091564

noncomputable section

/-- A054882: Closed walks of length n along the edges of a dodecahedron based at a vertex.

Offset 0, canonical program `A054882.P17615556658117091564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A054882 (n : ℕ) : ℤ :=
  A054882.P17615556658117091564.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A054882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054890.P9759176656109604467

`A152118(2*n)+A075848(n)`
-/

namespace A054890.P9759176656109604467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152118 (2 * n) + A075848 n

end

end A054890.P9759176656109604467

noncomputable section

/-- A054890: Layer counting sequence for hyperbolic tessellation by regular heptagons of angle Pi/3.

Offset 1, canonical program `A054890.P9759176656109604467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A054890 (n : ℕ) : ℤ :=
  A054890.P9759176656109604467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A054890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055017.P306124200527846902

`n%10-a(A059995(n))` with `a(0)=0`
-/

namespace A055017.P306124200527846902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n % 10 : ℕ) : ℤ) - a (A059995 n).toNat

end

end A055017.P306124200527846902

noncomputable section

/-- A055017: Difference between sums of alternate digits of n starting with the last, i.e., (sum of ultimate digit of n, antepenultimate digit of n, ...) - (sum of penultimate digit of n, preantepenultimate digit of n, ...).

Offset 0, canonical program `A055017.P306124200527846902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055017 (n : ℕ) : ℤ :=
  A055017.P306124200527846902.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055104.P18008443072376633459

`A065033(n)+∑[A005044(n+1)]`
-/

namespace A055104.P18008443072376633459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055104.P18008443072376633459

noncomputable section

/-- A055104: Expansion of 1 + q/((1-q)*(1-q^2)) + q^2/((1-q)*(1-q^2)*(1-q^3)*(1-q^4)).

Offset 0, canonical program `A055104.P18008443072376633459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055104 (n : ℕ) : ℤ :=
  A055104.P18008443072376633459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055218.P16408589648472260685

`A342912(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A055218.P16408589648472260685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A342912 n + 3 * a (n - 1)

end

end A055218.P16408589648472260685

noncomputable section

/-- A055218: a(n) = T(2*n+2,n), array T as in A055216.

Offset 0, canonical program `A055218.P16408589648472260685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A055218 (n : ℕ) : ℤ :=
  A055218.P16408589648472260685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A055218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055227.P1043422903931282475

`round(∏[sqrt(A028310(n))])`
-/

namespace A055227.P1043422903931282475
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028310 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A055227.P1043422903931282475

noncomputable section

/-- A055227: Nearest integer to sqrt( n! ).

Offset 0, canonical program `A055227.P1043422903931282475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A055227 (n : ℕ) : ℤ :=
  A055227.P1043422903931282475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A055227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055243.P2744026507162298828

`A010049(n+1)+a(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A055243.P2744026507162298828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A010049 (n + 1) + (a (n - 2) + a (n - 1))

end

end A055243.P2744026507162298828

noncomputable section

/-- A055243: First differences of A001628 (Fibonacci convolution).

Offset 0, canonical program `A055243.P2744026507162298828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A055243 (n : ℕ) : ℤ :=
  A055243.P2744026507162298828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 459 terms. -/
def A055243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055291.P5946789587195546367

`∑[A008766(n)+∑[A005044(n)]]`
-/

namespace A055291.P5946789587195546367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055291.P5946789587195546367

noncomputable section

/-- A055291: Number of trees with n nodes and 4 leaves.

Offset 5, canonical program `A055291.P5946789587195546367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055291 (n : ℕ) : ℤ :=
  A055291.P5946789587195546367.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055335.P9939896194801436419

`∑[A008804(n)+A005044(n+1)]`
-/

namespace A055335.P9939896194801436419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n + A005044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055335.P9939896194801436419

noncomputable section

/-- A055335: Number of asymmetric (identity) trees with n nodes and 4 leaves.

Offset 9, canonical program `A055335.P9939896194801436419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055335 (n : ℕ) : ℤ :=
  A055335.P9939896194801436419.a (n - 9)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055341.P9705933212925184688

`A181120(n)+A055278(n+4)`
-/

namespace A055341.P9705933212925184688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + A055278 (n + 4)

end

end A055341.P9705933212925184688

noncomputable section

/-- A055341: Number of mobiles (circular rooted trees) with n nodes and 3 leaves.

Offset 4, canonical program `A055341.P9705933212925184688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055341 (n : ℕ) : ℤ :=
  A055341.P9705933212925184688.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055471.P16961451252425835673

`record[gcd(n+1, (n+1)%A051801(n+1))]`
-/

namespace A055471.P16961451252425835673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A051801 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055471.P16961451252425835673

noncomputable section

/-- A055471: Divisible by the product of its nonzero digits.

Offset 1, canonical program `A055471.P16961451252425835673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A055471 (n : ℕ) : ℤ :=
  (A055471.P16961451252425835673.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A055471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055515.P9776461718281868796

`∑[A000079(n)]/∏{p}[n+1, A000225(#)]`
-/

namespace A055515.P9776461718281868796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), A000225 p : ℤ) : ℚ)

end

end A055515.P9776461718281868796

noncomputable section

/-- A055515: a(n) = (2^n - 1)/product(2^p - 1) where the product is over all distinct primes p that divide n.

Offset 1, canonical program `A055515.P9776461718281868796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A055515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055515.P9776461718281868796.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A055515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055529.P12508370460568413740

`A072831(n)-A011371(n)`
-/

namespace A055529.P12508370460568413740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - A011371 n

end

end A055529.P12508370460568413740

noncomputable section

/-- A055529: Number of bits needed in mantissa to express n! exactly.

Offset 0, canonical program `A055529.P12508370460568413740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055529 (n : ℕ) : ℤ :=
  A055529.P12508370460568413740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055589.P10202033342249056807

`A169792(n)-A062109(n)`
-/

namespace A055589.P10202033342249056807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169792 n - A062109 n

end

end A055589.P10202033342249056807

noncomputable section

/-- A055589: Convolution of A049612 with A011782.

Offset 0, canonical program `A055589.P10202033342249056807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. -/
def A055589 (n : ℕ) : ℤ :=
  A055589.P10202033342249056807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. -/
def A055589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055634.P12590059432779507175

`(-1)^n*n!/A037223(n)`
-/

namespace A055634.P12590059432779507175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * (Nat.factorial n : ℤ) : ℚ) / (A037223 n : ℚ)

end

end A055634.P12590059432779507175

noncomputable section

/-- A055634: 2-adic factorial function.

Offset 0, canonical program `A055634.P12590059432779507175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055634.P12590059432779507175.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055634.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055663.P5131911919764471879

`∑[∑[n+1]]*A002696(n+6)`
-/

namespace A055663.P5131911919764471879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002696 (n + 6)

end

end A055663.P5131911919764471879

noncomputable section

/-- A055663: Number of (3,3; n,n)-partitions of a chain of length n^2 + n.

Offset 9, canonical program `A055663.P5131911919764471879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A055663 (n : ℕ) : ℤ :=
  A055663.P5131911919764471879.a (n - 9)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A055663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055682.P10858738981572551844

`∑[A035936(n)]-A000203(n+1)`
-/

namespace A055682.P10858738981572551844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000203 (n + 1)

end

end A055682.P10858738981572551844

noncomputable section

/-- A055682: a(n) = floor(n*sqrt(n)) - sigma(n), where sigma(n) is the sum of the divisors of n (A000203).

Offset 1, canonical program `A055682.P10858738981572551844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055682 (n : ℕ) : ℤ :=
  A055682.P10858738981572551844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055780.P6929690655284740272

`A121262(n)+7*A006918(n)`
-/

namespace A055780.P6929690655284740272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n + 7 * A006918 n

end

end A055780.P6929690655284740272

noncomputable section

/-- A055780: Number of symmetric types of (3,2n)-hypergraphs under action of complementing group C(3,2).

Offset 0, canonical program `A055780.P6929690655284740272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055780 (n : ℕ) : ℤ :=
  A055780.P6929690655284740272.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055784.P2761531798314925887

`p?[2*A001750(n+1)+9]`
-/

namespace A055784.P2761531798314925887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001750 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055784.P2761531798314925887

noncomputable section

/-- A055784: Primes q of form q = 10p + 9, where p is also prime.

Offset 1, canonical program `A055784.P2761531798314925887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2677 terms. -/
def A055784 (n : ℕ) : ℤ :=
  A055784.P2761531798314925887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2677 terms. -/
def A055784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055803.P12309034414500423932

`A114220(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A055803.P12309034414500423932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A114220 n + a (n - 2)

end

end A055803.P12309034414500423932

noncomputable section

/-- A055803: a(n) = T(n,n-3), array T as in A055801.

Offset 3, canonical program `A055803.P12309034414500423932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055803 (n : ℕ) : ℤ :=
  A055803.P12309034414500423932.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055804.P6044844288458468299

`A175686(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A055804.P6044844288458468299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A175686 (n - 2) + a (n - 1)

end

end A055804.P6044844288458468299

noncomputable section

/-- A055804: a(n) = T(n,n-4), array T as in A055801.

Offset 4, canonical program `A055804.P6044844288458468299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055804 (n : ℕ) : ℤ :=
  A055804.P6044844288458468299.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055809.P12051760453213614527

`A264443(n)+(2-A000007(n))²`
-/

namespace A055809.P12051760453213614527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + (2 - A000007 n) ^ 2

end

end A055809.P12051760453213614527

noncomputable section

/-- A055809: a(n) = T(n,n-4), array T as in A055807.

Offset 4, canonical program `A055809.P12051760453213614527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055809 (n : ℕ) : ℤ :=
  A055809.P12051760453213614527.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055895.P2077075893561003355

`or(∑{d}[n, 2^#], A011782(n+1))`
-/

namespace A055895.P2077075893561003355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ d ∈ Nat.divisors (f1 n), 2 ^ d : ℕ) : ℤ) (A011782 (n + 1))

end

end A055895.P2077075893561003355

noncomputable section

/-- A055895: Inverse Moebius transform of powers of 2.

Offset 0, canonical program `A055895.P2077075893561003355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A055895 (n : ℕ) : ℤ :=
  A055895.P2077075893561003355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A055895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055899.P13502261593080570486

`∑[A004652(n+2)*A005993(n)]`
-/

namespace A055899.P13502261593080570486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (n + 2) * A005993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055899.P13502261593080570486

noncomputable section

/-- A055899: Column 3 of triangle A055898.

Offset 3, canonical program `A055899.P13502261593080570486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A055899 (n : ℕ) : ℤ :=
  A055899.P13502261593080570486.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A055899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055908.P4931710580693188596

`∑[∑[∑[A178804(n+1)]]]`
-/

namespace A055908.P4931710580693188596
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055908.P4931710580693188596

noncomputable section

/-- A055908: Column 2 of triangle A055907.

Offset 2, canonical program `A055908.P4931710580693188596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055908 (n : ℕ) : ℤ :=
  A055908.P4931710580693188596.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055945.P5963763732554067333

`a(floor(n/2))+n-A038572(n)` with `a(0)=0`
-/

namespace A055945.P5963763732554067333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ) - A038572 n

end

end A055945.P5963763732554067333

noncomputable section

/-- A055945: a(n) = n - (reversal of base-2 digits of n) (and then the result is written in base 10).

Offset 0, canonical program `A055945.P5963763732554067333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055945 (n : ℕ) : ℤ :=
  A055945.P5963763732554067333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056005.P10762330929991602812

`∑[∑[A056078(abs(1-n)+1)]]`
-/

namespace A056005.P10762330929991602812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056078 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056005.P10762330929991602812

noncomputable section

/-- A056005: Number of 3-element ordered antichains on an unlabeled n-element set; T_1-hypergraphs with 3 labeled nodes and n hyperedges.

Offset 0, canonical program `A056005.P10762330929991602812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056005 (n : ℕ) : ℤ :=
  A056005.P10762330929991602812.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056054.P12970442484182484581

`2*A002387(2*(n+1))`
-/

namespace A056054.P12970442484182484581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002387 (2 * (n + 1))

end

end A056054.P12970442484182484581

noncomputable section

/-- A056054: a(n) = smallest even number 2m such that value of odd harmonic series Sum_{j=0..m} 1/(2j) is > n.

Offset 1, canonical program `A056054.P12970442484182484581`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056054 (n : ℕ) : ℤ :=
  A056054.P12970442484182484581.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056143.P7499423160448057377

`eq[0, A076313(A059995(n))]`
-/

namespace A056143.P7499423160448057377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056143.P7499423160448057377

noncomputable section

/-- A056143: Concatenate ... floor[n/100], floor[n/10], n.

Offset 0, canonical program `A056143.P7499423160448057377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A056143 (n : ℕ) : ℤ :=
  (A056143.P7499423160448057377.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A056143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056200.P3887230577951053264

`2^(n+1)-A056045(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A056200.P3887230577951053264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A056045 (n + 1)

end

end A056200.P3887230577951053264

noncomputable section

/-- A056200: a(n) = 2^n - A056045(n).

Offset 1, canonical program `A056200.P3887230577951053264`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056045, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056200 (n : ℕ) : ℤ :=
  A056200.P3887230577951053264.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056045, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056200.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056243.P18307963841988564982

`A100312(n)+A084899(n)`
-/

namespace A056243.P18307963841988564982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100312 n + A084899 n

end

end A056243.P18307963841988564982

noncomputable section

/-- A056243: Third diagonal of triangle A056242.

Offset 3, canonical program `A056243.P18307963841988564982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A056243 (n : ℕ) : ℤ :=
  A056243.P18307963841988564982.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A056243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056454.P10309732254336888628

`A056489(or(1, n))`
-/

namespace A056454.P10309732254336888628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056489 (Nat.lor 1 n)

end

end A056454.P10309732254336888628

noncomputable section

/-- A056454: Number of palindromes of length n using exactly three different symbols.

Offset 1, canonical program `A056454.P10309732254336888628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A056454 (n : ℕ) : ℤ :=
  A056454.P10309732254336888628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A056454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056455.P4988112504372135428

`4*A028244(A008619(n))`
-/

namespace A056455.P4988112504372135428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A028244 (A008619 n).toNat

end

end A056455.P4988112504372135428

noncomputable section

/-- A056455: Palindromes using exactly four different symbols.

Offset 1, canonical program `A056455.P4988112504372135428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056455 (n : ℕ) : ℤ :=
  A056455.P4988112504372135428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056473.P6112660942085821025

`A032263(∑[char[2*n]])/3`
-/

namespace A056473.P6112660942085821025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032263 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A056473.P6112660942085821025

noncomputable section

/-- A056473: Number of palindromic structures using exactly four different symbols.

Offset 1, canonical program `A056473.P6112660942085821025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A056473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056473.P6112660942085821025.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A056473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056531.P834638182437852348

`or(1, A319451(comp[5*n-1]))`
-/

namespace A056531.P834638182437852348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A319451 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A056531.P834638182437852348

noncomputable section

/-- A056531: Sequence remaining after a fourth round of Flavius Josephus sieve; remove every fifth term of A056530.

Offset 1, canonical program `A056531.P834638182437852348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A056531 (n : ℕ) : ℤ :=
  A056531.P834638182437852348.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8001 terms. -/
def A056531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056589.P15592213776661028417

`A094687(n+2)-(A094687(n+4)-A001654(n+3))`
-/

namespace A056589.P15592213776661028417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094687 (n + 2) - (A094687 (n + 4) - A001654 (n + 3))

end

end A056589.P15592213776661028417

noncomputable section

/-- A056589: Third column sequence of unsigned triangle A056588.

Offset 0, canonical program `A056589.P15592213776661028417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A056589 (n : ℕ) : ℤ :=
  A056589.P15592213776661028417.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A056589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056617.P8542448468284843582

`(2*n+1)²/A181861(2*n+1)`
-/

namespace A056617.P8542448468284843582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℚ) / (A181861 (2 * n + 1) : ℚ)

end

end A056617.P8542448468284843582

noncomputable section

/-- A056617: Denominator of binomial(2*n,n) / (2*n+1).

Offset 0, canonical program `A056617.P8542448468284843582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A056617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056617.P8542448468284843582.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A056617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056892.P263178168060828477

`A053186(A000040(n+1))`
-/

namespace A056892.P263178168060828477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A000040 (n + 1)).toNat

end

end A056892.P263178168060828477

noncomputable section

/-- A056892: a(n) = square excess of the n-th prime.

Offset 1, canonical program `A056892.P263178168060828477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056892 (n : ℕ) : ℤ :=
  A056892.P263178168060828477.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056922.P3486663655119023229

`a(n-2)+a(n-1)*A057979(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A056922.P3486663655119023229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A057979 (n + 1)

end

end A056922.P3486663655119023229

noncomputable section

/-- A056922: Denominators of continued fraction for alternating factorial.

Offset 0, canonical program `A056922.P3486663655119023229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A056922 (n : ℕ) : ℤ :=
  A056922.P3486663655119023229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A056922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056926.P1933392740298576818

`1+(sqrt(n)-1)*A010052(n)`
-/

namespace A056926.P1933392740298576818
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 + (Real.sqrt (n : ℝ) - 1) * (A010052 n : ℝ)

end

end A056926.P1933392740298576818

noncomputable section

/-- A056926: a(n) = sqrt(n) if n is a square, otherwise 1.

Offset 0, canonical program `A056926.P1933392740298576818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056926 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056926.P1933392740298576818.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056951.P14752552283292487820

`round((2*n+1)/2-A038722(n+1))`
-/

namespace A056951.P14752552283292487820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / 2 - (A038722 (n + 1) : ℚ))

end

end A056951.P14752552283292487820

noncomputable section

/-- A056951: Triangle whose rows show the result of flipping the first, first two, ... and finally first n coins when starting with the stack (1,2,3,4,...,n) [starting with all heads up, where signs show whether particular coins end up heads or tails].

Offset 1, canonical program `A056951.P14752552283292487820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056951 (n : ℕ) : ℤ :=
  A056951.P14752552283292487820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056969.P15588602888756750233

`A066432(n+1)%(n+1)`
-/

namespace A056969.P15588602888756750233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066432 (n + 1)) (n + 1 : ℤ)

end

end A056969.P15588602888756750233

noncomputable section

/-- A056969: a(n) = 10^n modulo n.

Offset 1, canonical program `A056969.P15588602888756750233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056969 (n : ℕ) : ℤ :=
  A056969.P15588602888756750233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057038.P7025590189014035910

`(a(n-1)+1)%A000267(n)+1` with `a(0)=1`
-/

namespace A057038.P7025590189014035910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 1) (A000267 n) + 1

end

end A057038.P7025590189014035910

noncomputable section

/-- A057038: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057038(n)=i(2n).

Offset 1, canonical program `A057038.P7025590189014035910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057038 (n : ℕ) : ℤ :=
  A057038.P7025590189014035910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057049.P14476744536565979045

`(n+1)²-A000217(A022846(n+1)-1)`
-/

namespace A057049.P14476744536565979045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000217 (A022846 (n + 1) - 1).toNat

end

end A057049.P14476744536565979045

noncomputable section

/-- A057049: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057049(n) = i(n^2).

Offset 1, canonical program `A057049.P14476744536565979045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057049 (n : ℕ) : ℤ :=
  A057049.P14476744536565979045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057055.P15692761595435333627

`A000292(n+1)-C(A057057(n+3), 2)`
-/

namespace A057055.P15692761595435333627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - (Nat.choose (A057057 (n + 3)).toNat 2 : ℤ)

end

end A057055.P15692761595435333627

noncomputable section

/-- A057055: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057055(n)=i(C(n,3)).

Offset 3, canonical program `A057055.P15692761595435333627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057055 (n : ℕ) : ℤ :=
  A057055.P15692761595435333627.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057130.P4790251004886061017

`a(n-1)*A007528(n+1)` with `a(0)=5`
-/

namespace A057130.P4790251004886061017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) * A007528 (n + 1)

end

end A057130.P4790251004886061017

noncomputable section

/-- A057130: Product of first n primes of form 6k-1.

Offset 1, canonical program `A057130.P4790251004886061017`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057130 (n : ℕ) : ℤ :=
  A057130.P4790251004886061017.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057130.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057300.P7665934953070051074

`5*n/4-3*A053985(2*n)/8`
-/

namespace A057300.P7665934953070051074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * n : ℚ) / 4 - (3 * A053985 (2 * n) : ℚ) / 8

end

end A057300.P7665934953070051074

noncomputable section

/-- A057300: Binary counter with odd/even bit positions swapped; base-4 counter with 1's replaced by 2's and vice versa.

Offset 0, canonical program `A057300.P7665934953070051074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057300 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057300.P7665934953070051074.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057540.P4839102166846045494

`∩[A057539(n+1), A227144(n+1)]`
-/

namespace A057540.P4839102166846045494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P4839102166846045494

noncomputable section

/-- A057540: Birthday set of order 8: i.e., numbers congruent to +- 1 modulo 2, 3, 4, 5, 6, 7 and 8.

Offset 1, canonical program `A057540.P4839102166846045494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 915 terms. -/
def A057540 (n : ℕ) : ℤ :=
  (A057540.P4839102166846045494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 915 terms. -/
def A057540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057590.P4961889276649306474

`∪[A027482(n+2), A027441(n)]`
-/

namespace A057590.P4961889276649306474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027482 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057590.P4961889276649306474

noncomputable section

/-- A057590: Numbers of the form k*(k^3 +- 1)/2.

Offset 1, canonical program `A057590.P4961889276649306474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057590 (n : ℕ) : ℤ :=
  (A057590.P4961889276649306474.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057592.P11540212676059738396

`A022087(n)+Δ[A001654(n)]`
-/

namespace A057592.P11540212676059738396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + (f1 (n + 1) - f1 n)

end

end A057592.P11540212676059738396

noncomputable section

/-- A057592: a(n) = Fibonacci(n+1)^2 + 4*Fibonacci(n).

Offset 0, canonical program `A057592.P11540212676059738396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A057592 (n : ℕ) : ℤ :=
  A057592.P11540212676059738396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A057592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028260.P16894773402315614175

`lt[A344617(n+1), 1]+1`
-/

namespace A028260.P16894773402315614175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A028260.P16894773402315614175

noncomputable section

/-- A028260: Numbers with an even number of prime divisors (counted with multiplicity); numbers k such that the Liouville function lambda(k) (A008836) is positive.

Offset 1, canonical program `A028260.P16894773402315614175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028260 (n : ℕ) : ℤ :=
  (A028260.P16894773402315614175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A028260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A028889.P11147284336912574653

`eq[0, a(A171765(n))%n]` with `a(0)=8`
-/

namespace A028889.P11147284336912574653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f2 =>
  f2 (A171765 n).toNat % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028889.P11147284336912574653

noncomputable section

/-- A028889: Numbers whose iterated product of digits is a power of 2.

Offset 1, canonical program `A028889.P11147284336912574653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A028889 (n : ℕ) : ℤ :=
  (A028889.P11147284336912574653.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A028889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030432.P3543089398304254842

`10*A102342(n+1)+7`
-/

namespace A030432.P3543089398304254842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A102342 (n + 1) + 7

end

end A030432.P3543089398304254842

noncomputable section

/-- A030432: Primes of form 10n+7.

Offset 1, canonical program `A030432.P3543089398304254842`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030432 (n : ℕ) : ℤ :=
  A030432.P3543089398304254842.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102342, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030432.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030504.P7203939647102380521

`ceil(A130810(n+4)/A130773(n+4))`
-/

namespace A030504.P7203939647102380521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130810 (n + 4) : ℚ) / (A130773 (n + 4) : ℚ)⌉

end

end A030504.P7203939647102380521

noncomputable section

/-- A030504: Graham-Sloane-type lower bound on the size of a ternary (n,3,4) constant-weight code.

Offset 4, canonical program `A030504.P7203939647102380521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A030504 (n : ℕ) : ℤ :=
  A030504.P7203939647102380521.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A030504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030628.P8221575935304841675

`eq[A113923(n)², A032741(n)]`
-/

namespace A030628.P8221575935304841675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030628.P8221575935304841675

noncomputable section

/-- A030628: 1 together with numbers of the form p*q^4 and p^9, where p and q are distinct primes.

Offset 1, canonical program `A030628.P8221575935304841675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A030628 (n : ℕ) : ℤ :=
  (A030628.P8221575935304841675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. -/
def A030628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A030656.P12769284707998713729

`A127421(Δ[n²])`
-/

namespace A030656.P12769284707998713729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A030656.P12769284707998713729

noncomputable section

/-- A030656: Pair up the numbers.

Offset 0, canonical program `A030656.P12769284707998713729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030656 (n : ℕ) : ℤ :=
  A030656.P12769284707998713729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A030656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031340.P345454035435751878

`A108719(A017029(n))`
-/

namespace A031340.P345454035435751878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (A017029 n).toNat

end

end A031340.P345454035435751878

noncomputable section

/-- A031340: a(n) = prime(7*n).

Offset 1, canonical program `A031340.P345454035435751878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A031340 (n : ℕ) : ℤ :=
  A031340.P345454035435751878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A031340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031341.P8899174603750363992

`A373789(Δ[(2*(n+1))²])`
-/

namespace A031341.P8899174603750363992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031341.P8899174603750363992

noncomputable section

/-- A031341: a(n) = prime(8*n).

Offset 1, canonical program `A031341.P8899174603750363992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031341 (n : ℕ) : ℤ :=
  A031341.P8899174603750363992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031372.P16782165588753498518

`A373789(Δ[3*(n+1)²])`
-/

namespace A031372.P16782165588753498518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A031372.P16782165588753498518

noncomputable section

/-- A031372: a(n) = prime(6*n - 1).

Offset 1, canonical program `A031372.P16782165588753498518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A031372 (n : ℕ) : ℤ :=
  A031372.P16782165588753498518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A031372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031373.P14820799205756807778

`A156037(7*n+6)+1`
-/

namespace A031373.P14820799205756807778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (7 * n + 6) + 1

end

end A031373.P14820799205756807778

noncomputable section

/-- A031373: a(n) = prime(7n-1).

Offset 1, canonical program `A031373.P14820799205756807778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1493 terms. -/
def A031373 (n : ℕ) : ℤ :=
  A031373.P14820799205756807778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1493 terms. -/
def A031373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031445.P4446514973149469838

`eq[3, a(n-1)-A269735(n)]` with `a(0)=1`
-/

namespace A031445.P4446514973149469838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - A269735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031445.P4446514973149469838

noncomputable section

/-- A031445: Numbers whose base-2 representation has 2 more 0's than 1's.

Offset 1, canonical program `A031445.P4446514973149469838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4953 terms. -/
def A031445 (n : ℕ) : ℤ :=
  (A031445.P4446514973149469838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4953 terms. -/
def A031445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031447.P8720380611452908298

`eq[4, -A145037(n)]`
-/

namespace A031447.P8720380611452908298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031447.P8720380611452908298

noncomputable section

/-- A031447: Numbers whose base-2 representation has 4 more 0's than 1's.

Offset 1, canonical program `A031447.P8720380611452908298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A031447 (n : ℕ) : ℤ :=
  (A031447.P8720380611452908298.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. -/
def A031447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031450.P8940164331547798912

`eq[3, A145037(n)]`
-/

namespace A031450.P8940164331547798912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A031450.P8940164331547798912

noncomputable section

/-- A031450: Numbers whose base-2 representation has 3 fewer 0's than 1's.

Offset 1, canonical program `A031450.P8940164331547798912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1078 terms. -/
def A031450 (n : ℕ) : ℤ :=
  (A031450.P8940164331547798912.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1078 terms. -/
def A031450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031904.P15798358652805012498

`A373789(9*(n+1))`
-/

namespace A031904.P15798358652805012498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (9 * (n + 1))

end

end A031904.P15798358652805012498

noncomputable section

/-- A031904: a(n) = prime(9*n - 4).

Offset 1, canonical program `A031904.P15798358652805012498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4445 terms. -/
def A031904 (n : ℕ) : ℤ :=
  A031904.P15798358652805012498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4445 terms. -/
def A031904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032089.P12573802574290399080

`A052959(n)-A102526(n)`
-/

namespace A032089.P12573802574290399080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052959 n - A102526 n

end

end A032089.P12573802574290399080

noncomputable section

/-- A032089: "BHK" (reversible, identity, unlabeled) transform of 1,0,1,0...(odds).

Offset 1, canonical program `A032089.P12573802574290399080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A032089 (n : ℕ) : ℤ :=
  A032089.P12573802574290399080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A032089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033200.P10863379219943570931

`A033203(n+2)`
-/

namespace A033200.P10863379219943570931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 2)

end

end A033200.P10863379219943570931

noncomputable section

/-- A033200: Primes congruent to {1, 3} (mod 8); or, odd primes of form x^2 + 2*y^2.

Offset 1, canonical program `A033200.P10863379219943570931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033203, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033200 (n : ℕ) : ℤ :=
  A033200.P10863379219943570931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033203, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033200.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033465.P18252613577082881642

`A096431((A096431(n+1)+1)/2)`
-/

namespace A033465.P18252613577082881642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096431 (SequenceMachineLib.roundAway ((A096431 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A033465.P18252613577082881642

noncomputable section

/-- A033465: Numerators of the first differences of 1/(n^2 + 1).

Offset 0, canonical program `A033465.P18252613577082881642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033465 (n : ℕ) : ℤ :=
  A033465.P18252613577082881642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034046.P11465442410285165208

`record[A105570(A047518(n+1)+7)]`
-/

namespace A034046.P11465442410285165208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A047518 (n + 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034046.P11465442410285165208

noncomputable section

/-- A034046: Numbers that are both primitively and imprimitively represented by x^2+y^2+z^2.

Offset 1, canonical program `A034046.P11465442410285165208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1897 terms. -/
def A034046 (n : ℕ) : ℤ :=
  A034046.P11465442410285165208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1897 terms. -/
def A034046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034387.P4934732080317010833

`A158662(n+1)-1`
-/

namespace A034387.P4934732080317010833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 (n + 1) - 1

end

end A034387.P4934732080317010833

noncomputable section

/-- A034387: Sum of primes <= n.

Offset 1, canonical program `A034387.P4934732080317010833`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034387 (n : ℕ) : ℤ :=
  A034387.P4934732080317010833.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034387.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034839.P358419895487710885

`C(A055086(n), 2*A055087(n))`
-/

namespace A034839.P358419895487710885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055086 n).toNat (2 * A055087 n).toNat

end

end A034839.P358419895487710885

noncomputable section

/-- A034839: Triangular array formed by taking every other term of each row of Pascal's triangle.

Offset 0, canonical program `A034839.P358419895487710885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034839 (n : ℕ) : ℤ :=
  (A034839.P358419895487710885.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034868.P12965043593595847904

`C(A055086(n), A055087(n))`
-/

namespace A034868.P12965043593595847904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055086 n).toNat (A055087 n).toNat

end

end A034868.P12965043593595847904

noncomputable section

/-- A034868: Left half of Pascal's triangle.

Offset 0, canonical program `A034868.P12965043593595847904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034868 (n : ℕ) : ℤ :=
  (A034868.P12965043593595847904.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036122.P15361918239627470997

`A070344(17*n)`
-/

namespace A036122.P15361918239627470997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070344 (17 * n)

end

end A036122.P15361918239627470997

noncomputable section

/-- A036122: a(n) = 2^n mod 29.

Offset 0, canonical program `A036122.P15361918239627470997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A036122 (n : ℕ) : ℤ :=
  A036122.P15361918239627470997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A036122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036144.P18102075490541855965

`(2^n)%A142616(gcd(n, n+1))`
-/

namespace A036144.P18102075490541855965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (A142616 (Nat.gcd n (n + 1)))

end

end A036144.P18102075490541855965

noncomputable section

/-- A036144: a(n) = 2^n mod 131.

Offset 0, canonical program `A036144.P18102075490541855965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A036144 (n : ℕ) : ℤ :=
  A036144.P18102075490541855965.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A036144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036228.P16173525642964457817

`A160931(a(n-1)-1)+1` with `a(0)=31`
-/

namespace A036228.P16173525642964457817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [31] fun n a =>
  A160931 (a (n - 1) - 1).toNat + 1

end

end A036228.P16173525642964457817

noncomputable section

/-- A036228: a(1) = 31; a(n+1) = a(n) + sum of decimal digits of a(n).

Offset 1, canonical program `A036228.P16173525642964457817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A036228 (n : ℕ) : ℤ :=
  A036228.P16173525642964457817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. -/
def A036228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036230.P8024167728252113872

`A160931(a(n-1)-1)+1` with `a(0)=110`
-/

namespace A036230.P8024167728252113872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [110] fun n a =>
  A160931 (a (n - 1) - 1).toNat + 1

end

end A036230.P8024167728252113872

noncomputable section

/-- A036230: a(n+1) = a(n) + sum of digits of a(n) starting with 110.

Offset 1, canonical program `A036230.P8024167728252113872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 584 terms. -/
def A036230 (n : ℕ) : ℤ :=
  A036230.P8024167728252113872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 584 terms. -/
def A036230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036232.P458560803797423589

`A160931(a(n-1)-1)+1` with `a(0)=211`
-/

namespace A036232.P458560803797423589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [211] fun n a =>
  A160931 (a (n - 1) - 1).toNat + 1

end

end A036232.P458560803797423589

noncomputable section

/-- A036232: a(n+1) = a(n) + sum of digits of a(n) starting with 211.

Offset 1, canonical program `A036232.P458560803797423589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A036232 (n : ℕ) : ℤ :=
  A036232.P458560803797423589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. -/
def A036232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036301.P5693948607095979032

`eq[n, A304439(n)]`
-/

namespace A036301.P5693948607095979032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036301.P5693948607095979032

noncomputable section

/-- A036301: Numbers whose sum of even digits and sum of odd digits are equal.

Offset 1, canonical program `A036301.P5693948607095979032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A036301 (n : ℕ) : ℤ :=
  (A036301.P5693948607095979032.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A036301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036554.P8175060370953883075

`A072939(n+1)-1`
-/

namespace A036554.P8175060370953883075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1) - 1

end

end A036554.P8175060370953883075

noncomputable section

/-- A036554: Numbers whose binary representation ends in an odd number of zeros.

Offset 1, canonical program `A036554.P8175060370953883075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036554 (n : ℕ) : ℤ :=
  A036554.P8175060370953883075.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036668.P17602112398128853294

`filter[A183300(n+1), A373136(#)]`
-/

namespace A036668.P17602112398128853294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A036668.P17602112398128853294

noncomputable section

/-- A036668: Hati numbers: of form 2^i*3^j*k, i+j even, (k,6)=1.

Offset 1, canonical program `A036668.P17602112398128853294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5875 terms. -/
def A036668 (n : ℕ) : ℤ :=
  A036668.P17602112398128853294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5875 terms. -/
def A036668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037144.P12279108171807343711

`eq[1, A340369(n+1)]+1`
-/

namespace A037144.P12279108171807343711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037144.P12279108171807343711

noncomputable section

/-- A037144: Numbers with at most 3 prime factors (counted with multiplicity).

Offset 1, canonical program `A037144.P12279108171807343711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037144 (n : ℕ) : ℤ :=
  (A037144.P12279108171807343711.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037224.P8006129196634237121

`A122670(n+1)`
-/

namespace A037224.P8006129196634237121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122670 (n + 1)

end

end A037224.P8006129196634237121

noncomputable section

/-- A037224: Number of permutations p of {1,2,3...,n} that are fixed points under the operation of first reversing p, then taking the inverse.

Offset 1, canonical program `A037224.P8006129196634237121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A037224 (n : ℕ) : ℤ :=
  A037224.P8006129196634237121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A037224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037543.P5635875361108674725

`10*a(n-1)-A099530(Δ[A219529(n)])` with `a(0)=1`
-/

namespace A037543.P5635875361108674725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - A099530 (f1 (n + 1) - f1 n).toNat

end

end A037543.P5635875361108674725

noncomputable section

/-- A037543: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,2,1.

Offset 1, canonical program `A037543.P5635875361108674725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037543 (n : ℕ) : ℤ :=
  A037543.P5635875361108674725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037684.P14194998553466054021

`A120741(n+1)-A037747(n+1)`
-/

namespace A037684.P14194998553466054021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037747 (n + 1)

end

end A037684.P14194998553466054021

noncomputable section

/-- A037684: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3,2.

Offset 1, canonical program `A037684.P14194998553466054021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037684 (n : ℕ) : ℤ :=
  A037684.P14194998553466054021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037690.P10971792111560011432

`A037767(n+1)-2*A015540(n+1)`
-/

namespace A037690.P10971792111560011432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 1) - 2 * A015540 (n + 1)

end

end A037690.P10971792111560011432

noncomputable section

/-- A037690: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,0,3.

Offset 1, canonical program `A037690.P10971792111560011432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037690 (n : ℕ) : ℤ :=
  A037690.P10971792111560011432.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037704.P10007880330430517214

`A037781(n+1)-abs(∑[2*(-6)^n])`
-/

namespace A037704.P10007880330430517214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (-6) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037781 (n + 1) - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A037704.P10007880330430517214

noncomputable section

/-- A037704: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0,2.

Offset 1, canonical program `A037704.P10007880330430517214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037704 (n : ℕ) : ℤ :=
  A037704.P10007880330430517214.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037705.P13871482217024803718

`A037719(n+1)+A037747(n+1)-A037761(n+1)`
-/

namespace A037705.P13871482217024803718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037719 (n + 1) + (A037747 (n + 1) - A037761 (n + 1))

end

end A037705.P13871482217024803718

noncomputable section

/-- A037705: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0,2.

Offset 1, canonical program `A037705.P13871482217024803718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037705 (n : ℕ) : ℤ :=
  A037705.P13871482217024803718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037707.P11521697123880163545

`A037721(n+1)+A037749(n+1)-A037763(n+1)`
-/

namespace A037707.P11521697123880163545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037721 (n + 1) + (A037749 (n + 1) - A037763 (n + 1))

end

end A037707.P11521697123880163545

noncomputable section

/-- A037707: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0,2.

Offset 1, canonical program `A037707.P11521697123880163545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037707 (n : ℕ) : ℤ :=
  A037707.P11521697123880163545.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037753.P10507737516097663728

`A037746(n+1)+A037767(n+1)-A037760(n+1)`
-/

namespace A037753.P10507737516097663728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037746 (n + 1) + (A037767 (n + 1) - A037760 (n + 1))

end

end A037753.P10507737516097663728

noncomputable section

/-- A037753: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1,0.

Offset 1, canonical program `A037753.P10507737516097663728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037753 (n : ℕ) : ℤ :=
  A037753.P10507737516097663728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037784.P2536366957754948403

`A037700(n+1)+A037798(n+1)-A037714(n+1)`
-/

namespace A037784.P2536366957754948403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037700 (n + 1) + (A037798 (n + 1) - A037714 (n + 1))

end

end A037784.P2536366957754948403

noncomputable section

/-- A037784: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,2,0.

Offset 1, canonical program `A037784.P2536366957754948403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037784 (n : ℕ) : ℤ :=
  A037784.P2536366957754948403.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038187.P13470597796973090422

`lt[A160941(n+1), A065517(A028310(n))]`
-/

namespace A038187.P13470597796973090422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160941 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065517 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A038187.P13470597796973090422

noncomputable section

/-- A038187: Numbers other than powers of 10 that are coprime to the sum of their digits.

Offset 1, canonical program `A038187.P13470597796973090422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4570 terms. -/
def A038187 (n : ℕ) : ℤ :=
  (A038187.P13470597796973090422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4570 terms. -/
def A038187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038368.P13573452781370203554

`eq[lcm(n, A062329(n)), A028310(n)]`
-/

namespace A038368.P13573452781370203554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A062329 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A038368.P13573452781370203554

noncomputable section

/-- A038368: n is divisible by |(product of digits) - (sum of digits)|.

Offset 1, canonical program `A038368.P13573452781370203554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. -/
def A038368 (n : ℕ) : ℤ :=
  (A038368.P13573452781370203554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 923 terms. -/
def A038368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038604.P12365836714774453649

`p?[n*(A316863(n)+1)]`
-/

namespace A038604.P12365836714774453649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A316863 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038604.P12365836714774453649

noncomputable section

/-- A038604: Primes not containing the digit '2'.

Offset 1, canonical program `A038604.P12365836714774453649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A038604 (n : ℕ) : ℤ :=
  A038604.P12365836714774453649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A038604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038876.P6053899537912777126

`∪[A141170(n+1), A141171(n+1)]`
-/

namespace A038876.P6053899537912777126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038876.P6053899537912777126

noncomputable section

/-- A038876: Primes p such that 6 is a square mod p.

Offset 1, canonical program `A038876.P6053899537912777126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038876 (n : ℕ) : ℤ :=
  (A038876.P6053899537912777126.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039001.P18379001257663398601

`eq[A006047(n), A120879(n)]`
-/

namespace A039001.P18379001257663398601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039001.P18379001257663398601

noncomputable section

/-- A039001: Numbers whose base-3 representation has the same number of 1's and 2's.

Offset 1, canonical program `A039001.P18379001257663398601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. -/
def A039001 (n : ℕ) : ℤ :=
  (A039001.P18379001257663398601.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1577 terms. -/
def A039001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039112.P5981894528457927012

`eq[A055641(n), A268643(n)]`
-/

namespace A039112.P5981894528457927012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039112.P5981894528457927012

noncomputable section

/-- A039112: Numbers whose base-10 representation has the same number of 0's and 1's.

Offset 1, canonical program `A039112.P5981894528457927012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039112 (n : ℕ) : ℤ :=
  (A039112.P5981894528457927012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039113.P256254239457304598

`eq[A055641(n), A316863(n)]`
-/

namespace A039113.P256254239457304598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039113.P256254239457304598

noncomputable section

/-- A039113: Numbers whose base-10 representation has the same number of 0's and 2's.

Offset 1, canonical program `A039113.P256254239457304598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039113 (n : ℕ) : ℤ :=
  (A039113.P256254239457304598.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039114.P7121927793538242622

`eq[A055641(n), A316864(n)]`
-/

namespace A039114.P7121927793538242622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039114.P7121927793538242622

noncomputable section

/-- A039114: Numbers whose base-10 representation has the same number of 0's and 3's.

Offset 1, canonical program `A039114.P7121927793538242622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039114 (n : ℕ) : ℤ :=
  (A039114.P7121927793538242622.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039115.P1779926466169790345

`eq[A055641(n), A316865(n)]`
-/

namespace A039115.P1779926466169790345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039115.P1779926466169790345

noncomputable section

/-- A039115: Numbers whose base-10 representation has the same number of 0's and 4's.

Offset 1, canonical program `A039115.P1779926466169790345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039115 (n : ℕ) : ℤ :=
  (A039115.P1779926466169790345.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039116.P8915378216429723189

`eq[A055641(n), A316866(n)]`
-/

namespace A039116.P8915378216429723189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039116.P8915378216429723189

noncomputable section

/-- A039116: Numbers whose base-10 representation has the same number of 0's and 5's.

Offset 1, canonical program `A039116.P8915378216429723189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039116 (n : ℕ) : ℤ :=
  (A039116.P8915378216429723189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039117.P6634660445893149217

`eq[A055641(n), A316867(n)]`
-/

namespace A039117.P6634660445893149217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039117.P6634660445893149217

noncomputable section

/-- A039117: Numbers whose base-10 representation has the same number of 0's and 6's.

Offset 1, canonical program `A039117.P6634660445893149217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039117 (n : ℕ) : ℤ :=
  (A039117.P6634660445893149217.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039118.P18080473160613273167

`eq[A055641(n), A316868(n)]`
-/

namespace A039118.P18080473160613273167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039118.P18080473160613273167

noncomputable section

/-- A039118: Numbers whose base-10 representation has the same number of 0's and 7's.

Offset 1, canonical program `A039118.P18080473160613273167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039118 (n : ℕ) : ℤ :=
  (A039118.P18080473160613273167.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A039118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039120.P1309197663919710095

`eq[A268643(n), A316863(n)]`
-/

namespace A039120.P1309197663919710095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039120.P1309197663919710095

noncomputable section

/-- A039120: Numbers whose base-10 representation has the same number of 1's and 2's.

Offset 1, canonical program `A039120.P1309197663919710095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039120 (n : ℕ) : ℤ :=
  (A039120.P1309197663919710095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039121.P2427033625214283374

`eq[A268643(n), A316864(n)]`
-/

namespace A039121.P2427033625214283374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039121.P2427033625214283374

noncomputable section

/-- A039121: Numbers whose base-10 representation has the same number of 1's and 3's.

Offset 1, canonical program `A039121.P2427033625214283374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039121 (n : ℕ) : ℤ :=
  (A039121.P2427033625214283374.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039122.P5685310511068557245

`eq[A268643(n), A316865(n)]`
-/

namespace A039122.P5685310511068557245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039122.P5685310511068557245

noncomputable section

/-- A039122: Numbers whose base-10 representation has the same number of 1's and 4's.

Offset 1, canonical program `A039122.P5685310511068557245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039122 (n : ℕ) : ℤ :=
  (A039122.P5685310511068557245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039123.P11319338906521030932

`eq[A268643(n), A316866(n)]`
-/

namespace A039123.P11319338906521030932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039123.P11319338906521030932

noncomputable section

/-- A039123: Numbers whose base-10 representation has the same number of 1's and 5's.

Offset 1, canonical program `A039123.P11319338906521030932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039123 (n : ℕ) : ℤ :=
  (A039123.P11319338906521030932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039124.P16542007872159384324

`eq[A268643(n), A316867(n)]`
-/

namespace A039124.P16542007872159384324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039124.P16542007872159384324

noncomputable section

/-- A039124: Numbers whose base-10 representation has the same number of 1's and 6's.

Offset 1, canonical program `A039124.P16542007872159384324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039124 (n : ℕ) : ℤ :=
  (A039124.P16542007872159384324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039125.P18372928856270811432

`eq[A268643(n), A316868(n)]`
-/

namespace A039125.P18372928856270811432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039125.P18372928856270811432

noncomputable section

/-- A039125: Numbers whose base-10 representation has the same number of 1's and 7's.

Offset 1, canonical program `A039125.P18372928856270811432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039125 (n : ℕ) : ℤ :=
  (A039125.P18372928856270811432.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039126.P4040503189762224990

`eq[A268643(n), A316869(n)]`
-/

namespace A039126.P4040503189762224990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039126.P4040503189762224990

noncomputable section

/-- A039126: Numbers whose base-10 representation has the same number of 1's and 8's.

Offset 1, canonical program `A039126.P4040503189762224990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039126 (n : ℕ) : ℤ :=
  (A039126.P4040503189762224990.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039127.P16291229020705347665

`eq[A102683(n), A268643(n)]`
-/

namespace A039127.P16291229020705347665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039127.P16291229020705347665

noncomputable section

/-- A039127: Numbers whose base-10 representation has the same number of 1's and 9's.

Offset 1, canonical program `A039127.P16291229020705347665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039127 (n : ℕ) : ℤ :=
  (A039127.P16291229020705347665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039128.P4718409235838100278

`eq[A316863(n), A316864(n)]`
-/

namespace A039128.P4718409235838100278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039128.P4718409235838100278

noncomputable section

/-- A039128: Numbers whose base-10 representation has the same number of 2's and 3's.

Offset 1, canonical program `A039128.P4718409235838100278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. -/
def A039128 (n : ℕ) : ℤ :=
  (A039128.P4718409235838100278.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. -/
def A039128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039129.P7492429853596286617

`eq[A316863(n), A316865(n)]`
-/

namespace A039129.P7492429853596286617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039129.P7492429853596286617

noncomputable section

/-- A039129: Numbers whose base-10 representation has the same number of 2's and 4's.

Offset 1, canonical program `A039129.P7492429853596286617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039129 (n : ℕ) : ℤ :=
  (A039129.P7492429853596286617.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039130.P5718227757660465918

`eq[A316863(n), A316866(n)]`
-/

namespace A039130.P5718227757660465918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039130.P5718227757660465918

noncomputable section

/-- A039130: Numbers whose base-10 representation has the same number of 2's and 5's.

Offset 1, canonical program `A039130.P5718227757660465918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039130 (n : ℕ) : ℤ :=
  (A039130.P5718227757660465918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039131.P4602520256687173816

`eq[A316863(n), A316867(n)]`
-/

namespace A039131.P4602520256687173816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039131.P4602520256687173816

noncomputable section

/-- A039131: Numbers whose base-10 representation has the same number of 2's and 6's.

Offset 1, canonical program `A039131.P4602520256687173816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039131 (n : ℕ) : ℤ :=
  (A039131.P4602520256687173816.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039132.P5108102705485064060

`eq[A316863(n), A316868(n)]`
-/

namespace A039132.P5108102705485064060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039132.P5108102705485064060

noncomputable section

/-- A039132: Numbers whose base-10 representation has the same number of 2's and 7's.

Offset 1, canonical program `A039132.P5108102705485064060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039132 (n : ℕ) : ℤ :=
  (A039132.P5108102705485064060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039133.P2714418781855912690

`eq[A316863(n), A316869(n)]`
-/

namespace A039133.P2714418781855912690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039133.P2714418781855912690

noncomputable section

/-- A039133: Numbers whose base-10 representation has the same number of 2's and 8's.

Offset 1, canonical program `A039133.P2714418781855912690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039133 (n : ℕ) : ℤ :=
  (A039133.P2714418781855912690.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039134.P15058098033572111299

`eq[A102683(n), A316863(n)]`
-/

namespace A039134.P15058098033572111299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039134.P15058098033572111299

noncomputable section

/-- A039134: Numbers whose base-10 representation has the same number of 2's and 9's.

Offset 1, canonical program `A039134.P15058098033572111299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. -/
def A039134 (n : ℕ) : ℤ :=
  (A039134.P15058098033572111299.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. -/
def A039134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039135.P2050986303556915638

`eq[A316864(n), A316865(n)]`
-/

namespace A039135.P2050986303556915638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039135.P2050986303556915638

noncomputable section

/-- A039135: Numbers whose base-10 representation has the same number of 3's and 4's.

Offset 1, canonical program `A039135.P2050986303556915638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039135 (n : ℕ) : ℤ :=
  (A039135.P2050986303556915638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039136.P9723244042697227173

`eq[A316864(n), A316866(n)]`
-/

namespace A039136.P9723244042697227173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039136.P9723244042697227173

noncomputable section

/-- A039136: Numbers whose base-10 representation has the same number of 3's and 5's.

Offset 1, canonical program `A039136.P9723244042697227173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039136 (n : ℕ) : ℤ :=
  (A039136.P9723244042697227173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039137.P11204242420323782428

`eq[A316864(n), A316867(n)]`
-/

namespace A039137.P11204242420323782428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039137.P11204242420323782428

noncomputable section

/-- A039137: Numbers whose base-10 representation has the same number of 3's and 6's.

Offset 1, canonical program `A039137.P11204242420323782428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039137 (n : ℕ) : ℤ :=
  (A039137.P11204242420323782428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039138.P8820535035662253840

`eq[A316864(n), A316868(n)]`
-/

namespace A039138.P8820535035662253840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039138.P8820535035662253840

noncomputable section

/-- A039138: Numbers whose base-10 representation has the same number of 3's and 7's.

Offset 1, canonical program `A039138.P8820535035662253840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039138 (n : ℕ) : ℤ :=
  (A039138.P8820535035662253840.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039139.P10168794660730996957

`eq[A316864(n), A316869(n)]`
-/

namespace A039139.P10168794660730996957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039139.P10168794660730996957

noncomputable section

/-- A039139: Numbers whose base-10 representation has the same number of 3's and 8's.

Offset 1, canonical program `A039139.P10168794660730996957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039139 (n : ℕ) : ℤ :=
  (A039139.P10168794660730996957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039140.P14449767560270346471

`eq[A102683(n), A316864(n)]`
-/

namespace A039140.P14449767560270346471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039140.P14449767560270346471

noncomputable section

/-- A039140: Numbers whose base-10 representation has the same number of 3's and 9's.

Offset 1, canonical program `A039140.P14449767560270346471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. -/
def A039140 (n : ℕ) : ℤ :=
  (A039140.P14449767560270346471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. -/
def A039140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039142.P5536991917696885204

`eq[A316865(n), A316867(n)]`
-/

namespace A039142.P5536991917696885204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039142.P5536991917696885204

noncomputable section

/-- A039142: Numbers whose base-10 representation has the same number of 4's and 6's.

Offset 1, canonical program `A039142.P5536991917696885204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039142 (n : ℕ) : ℤ :=
  (A039142.P5536991917696885204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039144.P15417822195319135182

`eq[A316865(n), A316869(n)]`
-/

namespace A039144.P15417822195319135182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039144.P15417822195319135182

noncomputable section

/-- A039144: Numbers whose base-10 representation has the same number of 4's and 8's.

Offset 1, canonical program `A039144.P15417822195319135182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039144 (n : ℕ) : ℤ :=
  (A039144.P15417822195319135182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039145.P16500659112303391642

`eq[A102683(n), A316865(n)]`
-/

namespace A039145.P16500659112303391642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039145.P16500659112303391642

noncomputable section

/-- A039145: Numbers whose base-10 representation has the same number of 4's and 9's.

Offset 1, canonical program `A039145.P16500659112303391642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039145 (n : ℕ) : ℤ :=
  (A039145.P16500659112303391642.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039148.P9571566720573097668

`eq[A316866(n), A316869(n)]`
-/

namespace A039148.P9571566720573097668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039148.P9571566720573097668

noncomputable section

/-- A039148: Numbers whose base-10 representation has the same number of 5's and 8's.

Offset 1, canonical program `A039148.P9571566720573097668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039148 (n : ℕ) : ℤ :=
  (A039148.P9571566720573097668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039150.P6878837314782079632

`eq[A316867(n), A316868(n)]`
-/

namespace A039150.P6878837314782079632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039150.P6878837314782079632

noncomputable section

/-- A039150: Numbers whose base-10 representation has the same number of 6's and 7's.

Offset 1, canonical program `A039150.P6878837314782079632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039150 (n : ℕ) : ℤ :=
  (A039150.P6878837314782079632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039152.P16380162261826315804

`eq[A102683(n), A316867(n)]`
-/

namespace A039152.P16380162261826315804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039152.P16380162261826315804

noncomputable section

/-- A039152: Numbers whose base-10 representation has the same number of 6's and 9's.

Offset 1, canonical program `A039152.P16380162261826315804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039152 (n : ℕ) : ℤ :=
  (A039152.P16380162261826315804.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039154.P1044876761843877613

`eq[A102683(n), A316868(n)]`
-/

namespace A039154.P1044876761843877613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039154.P1044876761843877613

noncomputable section

/-- A039154: Numbers whose base-10 representation has the same number of 7's and 9's.

Offset 1, canonical program `A039154.P1044876761843877613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039154 (n : ℕ) : ℤ :=
  (A039154.P1044876761843877613.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4870 terms. -/
def A039154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039725.P5064549758558634164

`eq[1, A082551(2*(n+1))]+1`
-/

namespace A039725.P5064549758558634164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039725.P5064549758558634164

noncomputable section

/-- A039725: Even abundant numbers divided by 2.

Offset 1, canonical program `A039725.P5064549758558634164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039725 (n : ℕ) : ℤ :=
  (A039725.P5064549758558634164.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039949.P4682941699445093931

`A141860(n+2)`
-/

namespace A039949.P4682941699445093931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 2)

end

end A039949.P4682941699445093931

noncomputable section

/-- A039949: Primes of the form 30n - 13.

Offset 1, canonical program `A039949.P4682941699445093931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141860, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039949 (n : ℕ) : ℤ :=
  A039949.P4682941699445093931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141860, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A039949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A039955.P18334363973786166816

`eq[1, A105570(n)+A010873(n)]`
-/

namespace A039955.P18334363973786166816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + A010873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039955.P18334363973786166816

noncomputable section

/-- A039955: Squarefree numbers congruent to 1 (mod 4).

Offset 1, canonical program `A039955.P18334363973786166816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039955 (n : ℕ) : ℤ :=
  (A039955.P18334363973786166816.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039957.P1685131244349745100

`eq[A010873(n+1), A105570(n)]`
-/

namespace A039957.P1685131244349745100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039957.P1685131244349745100

noncomputable section

/-- A039957: Squarefree numbers congruent to 3 mod 4.

Offset 1, canonical program `A039957.P1685131244349745100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039957 (n : ℕ) : ℤ :=
  (A039957.P1685131244349745100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039983.P7559840329530151470

`and(1, Δ[A215673(n+1)])`
-/

namespace A039983.P7559840329530151470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A039983.P7559840329530151470

noncomputable section

/-- A039983: An example of a d-perfect sequence.

Offset 1, canonical program `A039983.P7559840329530151470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A039983 (n : ℕ) : ℤ :=
  A039983.P7559840329530151470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A039983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040116.P4287387060818922923

`∪[A002145(n+1), A045331(n+1)]`
-/

namespace A040116.P4287387060818922923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P4287387060818922923

noncomputable section

/-- A040116: Primes p such that x^4 = 9 has a solution mod p.

Offset 1, canonical program `A040116.P4287387060818922923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040116 (n : ℕ) : ℤ :=
  (A040116.P4287387060818922923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041022.P3746905806019384102

`gcd(3, n%2)*A145543(n+1)`
-/

namespace A041022.P3746905806019384102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (n % 2) : ℤ) * A145543 (n + 1)

end

end A041022.P3746905806019384102

noncomputable section

/-- A041022: Numerators of continued fraction convergents to sqrt(15).

Offset 0, canonical program `A041022.P3746905806019384102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A041022 (n : ℕ) : ℤ :=
  A041022.P3746905806019384102.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A041022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042992.P10370959306577035103

`∪[A003625(n+1), A045383(n+1)]`
-/

namespace A042992.P10370959306577035103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042992.P10370959306577035103

noncomputable section

/-- A042992: Primes congruent to {0, 2, 3, 5, 6} (mod 7).

Offset 1, canonical program `A042992.P10370959306577035103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042992 (n : ℕ) : ℤ :=
  (A042992.P10370959306577035103.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042995.P914611389682524562

`∪[A045314(n+1), A045383(n+1)]`
-/

namespace A042995.P914611389682524562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P914611389682524562

noncomputable section

/-- A042995: Primes congruent to {0, 2, 3, 5} (mod 7).

Offset 1, canonical program `A042995.P914611389682524562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042995 (n : ℕ) : ℤ :=
  (A042995.P914611389682524562.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043433.P9795498793324602999

`eq[1, A316864(eq[0, A102681(n)])]`
-/

namespace A043433.P9795498793324602999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043433.P9795498793324602999

noncomputable section

/-- A043433: Numbers having one 3 in base 8.

Offset 1, canonical program `A043433.P9795498793324602999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043433 (n : ℕ) : ℤ :=
  (A043433.P9795498793324602999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043458.P7829890838301452085

`eq[2, A316863(A052383(n+1))]`
-/

namespace A043458.P7829890838301452085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043458.P7829890838301452085

noncomputable section

/-- A043458: Numbers having exactly two 1's in base 9.

Offset 1, canonical program `A043458.P7829890838301452085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A043458 (n : ℕ) : ℤ :=
  (A043458.P7829890838301452085.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A043458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043461.P3339968190733267824

`eq[1, A316864(A052383(n+1))]`
-/

namespace A043461.P3339968190733267824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043461.P3339968190733267824

noncomputable section

/-- A043461: Numbers having one 2 in base 9.

Offset 1, canonical program `A043461.P3339968190733267824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043461 (n : ℕ) : ℤ :=
  (A043461.P3339968190733267824.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043462.P18230116493276596016

`eq[2, A316864(A052383(n+1))]`
-/

namespace A043462.P18230116493276596016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043462.P18230116493276596016

noncomputable section

/-- A043462: Numbers having two 2's in base 9.

Offset 1, canonical program `A043462.P18230116493276596016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A043462 (n : ℕ) : ℤ :=
  (A043462.P18230116493276596016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A043462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043477.P7307924685735947069

`eq[1, A316868(A052383(n+1))]`
-/

namespace A043477.P7307924685735947069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043477.P7307924685735947069

noncomputable section

/-- A043477: Numbers having one 6 in base 9.

Offset 1, canonical program `A043477.P7307924685735947069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043477 (n : ℕ) : ℤ :=
  (A043477.P7307924685735947069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043485.P15787335647716386183

`eq[1, A102683(A052383(n+1))]`
-/

namespace A043485.P15787335647716386183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043485.P15787335647716386183

noncomputable section

/-- A043485: Numbers having one 8 in base 9.

Offset 1, canonical program `A043485.P15787335647716386183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043485 (n : ℕ) : ℤ :=
  (A043485.P15787335647716386183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043486.P10892600540300639593

`eq[2, A102683(A052383(n+1))]`
-/

namespace A043486.P10892600540300639593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043486.P10892600540300639593

noncomputable section

/-- A043486: Numbers having two 8's in base 9.

Offset 1, canonical program `A043486.P10892600540300639593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A043486 (n : ℕ) : ℤ :=
  (A043486.P10892600540300639593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A043486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043489.P7351051359913768251

`eq[n, n*A055641(n)]`
-/

namespace A043489.P7351051359913768251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043489.P7351051359913768251

noncomputable section

/-- A043489: Numbers having one 0 in base 10.

Offset 1, canonical program `A043489.P7351051359913768251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A043489 (n : ℕ) : ℤ :=
  (A043489.P7351051359913768251.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A043489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043490.P9431805500912801668

`eq[2, A055641(n)]`
-/

namespace A043490.P9431805500912801668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043490.P9431805500912801668

noncomputable section

/-- A043490: Numbers having two 0's in base 10.

Offset 1, canonical program `A043490.P9431805500912801668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A043490 (n : ℕ) : ℤ :=
  (A043490.P9431805500912801668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A043490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043493.P15826475109488052881

`eq[1, A268643(n)]`
-/

namespace A043493.P15826475109488052881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043493.P15826475109488052881

noncomputable section

/-- A043493: Numbers that contain a single 1.

Offset 1, canonical program `A043493.P15826475109488052881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2917 terms. -/
def A043493 (n : ℕ) : ℤ :=
  (A043493.P15826475109488052881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2917 terms. -/
def A043493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043497.P15153707418781849022

`eq[1, A316863(n)]`
-/

namespace A043497.P15153707418781849022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043497.P15153707418781849022

noncomputable section

/-- A043497: Numbers having one 2 in base 10.

Offset 1, canonical program `A043497.P15153707418781849022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043497 (n : ℕ) : ℤ :=
  (A043497.P15153707418781849022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043498.P17962041537627906744

`eq[2, A316863(n)]`
-/

namespace A043498.P17962041537627906744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043498.P17962041537627906744

noncomputable section

/-- A043498: Numbers having two 2's in base 10.

Offset 1, canonical program `A043498.P17962041537627906744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043498 (n : ℕ) : ℤ :=
  (A043498.P17962041537627906744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043501.P5354299065825686140

`eq[1, A316864(n)]`
-/

namespace A043501.P5354299065825686140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043501.P5354299065825686140

noncomputable section

/-- A043501: Numbers having one 3 in base 10.

Offset 1, canonical program `A043501.P5354299065825686140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043501 (n : ℕ) : ℤ :=
  (A043501.P5354299065825686140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043502.P7320793928787515433

`eq[2, A316864(n)]`
-/

namespace A043502.P7320793928787515433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043502.P7320793928787515433

noncomputable section

/-- A043502: Numbers having two 3's in base 10.

Offset 1, canonical program `A043502.P7320793928787515433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043502 (n : ℕ) : ℤ :=
  (A043502.P7320793928787515433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043510.P14539891875598509651

`eq[2, val(A051801(n), 5)]`
-/

namespace A043510.P14539891875598509651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051801 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043510.P14539891875598509651

noncomputable section

/-- A043510: Numbers having two 5's in base 10.

Offset 1, canonical program `A043510.P14539891875598509651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043510 (n : ℕ) : ℤ :=
  (A043510.P14539891875598509651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043517.P3710429130746688146

`eq[A102681(n)+1, A102679(n)]`
-/

namespace A043517.P3710429130746688146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043517.P3710429130746688146

noncomputable section

/-- A043517: Numbers having one 7 in base 10.

Offset 1, canonical program `A043517.P3710429130746688146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043517 (n : ℕ) : ℤ :=
  (A043517.P3710429130746688146.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043521.P8227327573089755904

`eq[A102683(n)+1, A102681(n)]`
-/

namespace A043521.P8227327573089755904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043521.P8227327573089755904

noncomputable section

/-- A043521: Numbers having one 8 in base 10.

Offset 1, canonical program `A043521.P8227327573089755904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043521 (n : ℕ) : ℤ :=
  (A043521.P8227327573089755904.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043525.P5874819989311491830

`eq[1, A102683(n)]`
-/

namespace A043525.P5874819989311491830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043525.P5874819989311491830

noncomputable section

/-- A043525: Numbers having one 9 in base 10.

Offset 1, canonical program `A043525.P5874819989311491830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043525 (n : ℕ) : ℤ :=
  (A043525.P5874819989311491830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043526.P11706733600893900756

`eq[2, A102683(n)]`
-/

namespace A043526.P11706733600893900756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043526.P11706733600893900756

noncomputable section

/-- A043526: Numbers having two 9's in base 10.

Offset 1, canonical program `A043526.P11706733600893900756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043526 (n : ℕ) : ℤ :=
  (A043526.P11706733600893900756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A043526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044951.P1987266922706553338

`lt[0, A145037(n)²]`
-/

namespace A044951.P1987266922706553338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A044951.P1987266922706553338

noncomputable section

/-- A044951: Numbers having a different number of ones and zeros in base 2.

Offset 1, canonical program `A044951.P1987266922706553338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044951 (n : ℕ) : ℤ :=
  (A044951.P1987266922706553338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045324.P9998922166184512069

`∪[A033207(n+1), A045337(n+1)]`
-/

namespace A045324.P9998922166184512069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045324.P9998922166184512069

noncomputable section

/-- A045324: Primes congruent to {0, 1, 2, 3, 4} (mod 7).

Offset 1, canonical program `A045324.P9998922166184512069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045324 (n : ℕ) : ℤ :=
  (A045324.P9998922166184512069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045325.P14618448312147087089

`∪[A045338(n+1), A045383(n+1)]`
-/

namespace A045325.P14618448312147087089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045325.P14618448312147087089

noncomputable section

/-- A045325: Primes congruent to {0, 2, 3, 4} (mod 7).

Offset 1, canonical program `A045325.P14618448312147087089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045325 (n : ℕ) : ℤ :=
  (A045325.P14618448312147087089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045343.P9147972898033998412

`A045333(A326178(n+1))`
-/

namespace A045343.P9147972898033998412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (A326178 (n + 1)).toNat

end

end A045343.P9147972898033998412

noncomputable section

/-- A045343: Primes congruent to {2, 3} mod 7.

Offset 1, canonical program `A045343.P9147972898033998412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045343 (n : ℕ) : ℤ :=
  A045343.P9147972898033998412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045346.P12730195783305823303

`∪[A023216(n+1), A045360(n+1)]`
-/

namespace A045346.P12730195783305823303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045346.P12730195783305823303

noncomputable section

/-- A045346: Primes congruent to {0, 1, 2, 4, 5, 6} mod 7.

Offset 1, canonical program `A045346.P12730195783305823303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045346 (n : ℕ) : ℤ :=
  (A045346.P12730195783305823303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045349.P8697413805804324630

`∪[A045380(n+1), A045453(n+1)]`
-/

namespace A045349.P8697413805804324630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045349.P8697413805804324630

noncomputable section

/-- A045349: Primes congruent to {0, 1, 2} mod 5.

Offset 1, canonical program `A045349.P8697413805804324630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045349 (n : ℕ) : ℤ :=
  (A045349.P8697413805804324630.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045350.P1189957675346467507

`∪[A033207(n+1), A045362(n+1)]`
-/

namespace A045350.P1189957675346467507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045350.P1189957675346467507

noncomputable section

/-- A045350: Primes congruent to {0, 1, 2, 4, 5} mod 7.

Offset 1, canonical program `A045350.P1189957675346467507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045350 (n : ℕ) : ℤ :=
  (A045350.P1189957675346467507.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045351.P17271682602247666905

`∪[A045383(n+1), A045363(n+1)]`
-/

namespace A045351.P17271682602247666905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045351.P17271682602247666905

noncomputable section

/-- A045351: Primes congruent to {0, 2, 4, 5} mod 7.

Offset 1, canonical program `A045351.P17271682602247666905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045351 (n : ℕ) : ℤ :=
  (A045351.P17271682602247666905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045354.P11219334509013955432

`∪[A045359(n+1), A045365(n+1)]`
-/

namespace A045354.P11219334509013955432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045354.P11219334509013955432

noncomputable section

/-- A045354: Primes congruent to {0, 2, 5, 6} mod 7.

Offset 1, canonical program `A045354.P11219334509013955432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045354 (n : ℕ) : ℤ :=
  (A045354.P11219334509013955432.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045356.P10006111849364483286

`∪[A045378(n+1), A045457(n+1)]`
-/

namespace A045356.P10006111849364483286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045356.P10006111849364483286

noncomputable section

/-- A045356: Primes congruent to {0, 2, 4} mod 5.

Offset 1, canonical program `A045356.P10006111849364483286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045356 (n : ℕ) : ℤ :=
  (A045356.P10006111849364483286.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045368.P6259529621090732144

`A045359(A326178(n+1))`
-/

namespace A045368.P6259529621090732144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (A326178 (n + 1)).toNat

end

end A045368.P6259529621090732144

noncomputable section

/-- A045368: Primes congruent to {2, 5} mod 7.

Offset 1, canonical program `A045368.P6259529621090732144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045368 (n : ℕ) : ℤ :=
  A045368.P6259529621090732144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045369.P16466383194008019139

`∪[A033207(n+1), A045384(n+1)]`
-/

namespace A045369.P16466383194008019139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045369.P16466383194008019139

noncomputable section

/-- A045369: Primes congruent to {0, 1, 2, 4, 6} mod 7.

Offset 1, canonical program `A045369.P16466383194008019139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045369 (n : ℕ) : ℤ :=
  (A045369.P16466383194008019139.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045370.P6149092688672445342

`∪[A045383(n+1), A045385(n+1)]`
-/

namespace A045370.P6149092688672445342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045370.P6149092688672445342

noncomputable section

/-- A045370: Primes congruent to {0, 2, 4, 6} mod 7.

Offset 1, canonical program `A045370.P6149092688672445342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045370 (n : ℕ) : ℤ :=
  (A045370.P6149092688672445342.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045374.P17430742098072847723

`∪[A045462(n+1), A045383(n+1)]`
-/

namespace A045374.P17430742098072847723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045374.P17430742098072847723

noncomputable section

/-- A045374: Primes congruent to {0, 2, 4} mod 7.

Offset 1, canonical program `A045374.P17430742098072847723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045374 (n : ℕ) : ℤ :=
  (A045374.P17430742098072847723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045394.P13011981304178394066

`∪[A003625(n+1), A045462(n+1)]`
-/

namespace A045394.P13011981304178394066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045394.P13011981304178394066

noncomputable section

/-- A045394: Primes congruent to {0, 3, 4, 5, 6} mod 7.

Offset 1, canonical program `A045394.P13011981304178394066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045394 (n : ℕ) : ℤ :=
  (A045394.P13011981304178394066.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045396.P3603723083535071072

`∪[A045400(n+1), A045408(n+1)]`
-/

namespace A045396.P3603723083535071072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045396.P3603723083535071072

noncomputable section

/-- A045396: Primes congruent to {0, 1, 3, 4, 5} mod 7.

Offset 1, canonical program `A045396.P3603723083535071072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045396 (n : ℕ) : ℤ :=
  (A045396.P3603723083535071072.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045397.P9220137444155505652

`∪[A045401(n+1), A045409(n+1)]`
-/

namespace A045397.P9220137444155505652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045397.P9220137444155505652

noncomputable section

/-- A045397: Primes congruent to {0, 3, 4, 5} mod 7.

Offset 1, canonical program `A045397.P9220137444155505652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045397 (n : ℕ) : ℤ :=
  (A045397.P9220137444155505652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045398.P3270230599814695302

`∪[A003625(n+1), A045463(n+1)]`
-/

namespace A045398.P3270230599814695302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045398.P3270230599814695302

noncomputable section

/-- A045398: Primes congruent to {0, 1, 3, 5, 6} mod 7.

Offset 1, canonical program `A045398.P3270230599814695302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045398 (n : ℕ) : ℤ :=
  (A045398.P3270230599814695302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045439.P1033746242523659184

`∪[A045449(n+1), A045462(n+1)]`
-/

namespace A045439.P1033746242523659184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045439.P1033746242523659184

noncomputable section

/-- A045439: Primes congruent to {0, 4, 5, 6} mod 7.

Offset 1, canonical program `A045439.P1033746242523659184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045439 (n : ℕ) : ℤ :=
  (A045439.P1033746242523659184.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045440.P8810629820623067539

`∪[A045451(n+1), A045462(n+1)]`
-/

namespace A045440.P8810629820623067539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045440.P8810629820623067539

noncomputable section

/-- A045440: Primes congruent to {0, 1, 4, 5} mod 7.

Offset 1, canonical program `A045440.P8810629820623067539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045440 (n : ℕ) : ℤ :=
  (A045440.P8810629820623067539.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045690.P9420012133127931673

`∑{d}[n+1, A003000(#-1)*A154269((n+1)/#)]`
-/

namespace A045690.P9420012133127931673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003000 (d - 1) * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045690.P9420012133127931673

noncomputable section

/-- A045690: Number of binary words of length n (beginning with 0) whose autocorrelation function is the indicator of a singleton.

Offset 1, canonical program `A045690.P9420012133127931673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A045690 (n : ℕ) : ℤ :=
  A045690.P9420012133127931673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A045690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045763.P10750903732750680223

`A016035(n+1)-A070824(n+1)`
-/

namespace A045763.P10750903732750680223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1) - A070824 (n + 1)

end

end A045763.P10750903732750680223

noncomputable section

/-- A045763: Number of numbers "unrelated to n": m < n such that m is neither a divisor of n nor relatively prime to n.

Offset 1, canonical program `A045763.P10750903732750680223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045763 (n : ℕ) : ℤ :=
  A045763.P10750903732750680223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045819.P6609454256046327521

`2*A045823(n)`
-/

namespace A045819.P6609454256046327521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045823 n

end

end A045819.P6609454256046327521

noncomputable section

/-- A045819: Theta series of E_8 lattice with respect to midpoint of edge.

Offset 0, canonical program `A045819.P6609454256046327521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045823, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045819 (n : ℕ) : ℤ :=
  A045819.P6609454256046327521.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045823, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045819.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A047700.P18185700753765629327

`floor(∑[8/A275580(n+1)+1])`
-/

namespace A047700.P18185700753765629327
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 / (A275580 (n + 1) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A047700.P18185700753765629327

noncomputable section

/-- A047700: Numbers that are the sum of 5 positive squares.

Offset 1, canonical program `A047700.P18185700753765629327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047700 (n : ℕ) : ℤ :=
  A047700.P18185700753765629327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047809.P213500810862372979

`A071377(n²)`
-/

namespace A047809.P213500810862372979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071377 (n ^ 2)

end

end A047809.P213500810862372979

noncomputable section

/-- A047809: a(n) counts different values of i^2+j^2+k^2 <= n^2 or number of distances from the origin to all integer points inside a sphere of radius n.

Offset 0, canonical program `A047809.P213500810862372979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A047809 (n : ℕ) : ℤ :=
  A047809.P213500810862372979.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A047809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047973.P1837103317122133826

`A074989(A000040(n+1))`
-/

namespace A047973.P1837103317122133826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (A000040 (n + 1)).toNat

end

end A047973.P1837103317122133826

noncomputable section

/-- A047973: Distance of n-th prime to nearest cube.

Offset 1, canonical program `A047973.P1837103317122133826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A047973 (n : ℕ) : ℤ :=
  A047973.P1837103317122133826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A047973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048298.P9490304024005855538

`A209229(n)*n`
-/

namespace A048298.P9490304024005855538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n * (n : ℤ)

end

end A048298.P9490304024005855538

noncomputable section

/-- A048298: a(n) = n if n=2^i for i >= 0, otherwise a(n) = 0.

Offset 0, canonical program `A048298.P9490304024005855538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048298 (n : ℕ) : ℤ :=
  A048298.P9490304024005855538.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048298.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048333.P5126713152485106955

`floor(A165804(n+7)/7)`
-/

namespace A048333.P5126713152485106955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165804 (n + 7) : ℚ) / 7⌋

end

end A048333.P5126713152485106955

noncomputable section

/-- A048333: Numbers that are repdigits in base 8.

Offset 0, canonical program `A048333.P5126713152485106955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A048333 (n : ℕ) : ℤ :=
  A048333.P5126713152485106955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A048333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048718.P2729937857410140397

`∩[A115795(n+1), A115813(n)]`
-/

namespace A048718.P2729937857410140397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048718.P2729937857410140397

noncomputable section

/-- A048718: Binary expansion matches ((0)*0001)*(0*); or, Zeckendorf-like expansion of n using recurrence f(n) = f(n-1) + f(n-4).

Offset 0, canonical program `A048718.P2729937857410140397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1252 terms. -/
def A048718 (n : ℕ) : ℤ :=
  (A048718.P2729937857410140397.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1252 terms. -/
def A048718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050626.P10903576763594293203

`lt[1, A000122(abs(A187844(n)))]`
-/

namespace A050626.P10903576763594293203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 |A187844 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050626.P10903576763594293203

noncomputable section

/-- A050626: Product of digits of n is a nonzero square.

Offset 1, canonical program `A050626.P10903576763594293203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A050626 (n : ℕ) : ℤ :=
  (A050626.P10903576763594293203.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A050626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051336.P10619382866540462649

`n+1+A078567(n+1)`
-/

namespace A051336.P10619382866540462649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A078567 (n + 1)

end

end A051336.P10619382866540462649

noncomputable section

/-- A051336: Number of increasing arithmetic progressions in {1,2,3,...,n}, including trivial arithmetic progressions of lengths 1 and 2.

Offset 1, canonical program `A051336.P10619382866540462649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078567, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051336 (n : ℕ) : ℤ :=
  A051336.P10619382866540462649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078567, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051538.P12058086144728042765

`A099996(n+2)/12`
-/

namespace A051538.P12058086144728042765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099996 (n + 2) : ℚ) / 12

end

end A051538.P12058086144728042765

noncomputable section

/-- A051538: Least common multiple of {b(1),...,b(n)}, where b(k) = k(k+1)(2k+1)/6 = A000330(k).

Offset 1, canonical program `A051538.P12058086144728042765`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051538 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051538.P12058086144728042765.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052034.P8144197428112454324

`p?[A108662(n+1)]`
-/

namespace A052034.P8144197428112454324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A052034.P8144197428112454324

noncomputable section

/-- A052034: Primes such that the sum of the squares of their digits is also a prime.

Offset 1, canonical program `A052034.P8144197428112454324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1041 terms. -/
def A052034 (n : ℕ) : ℤ :=
  A052034.P8144197428112454324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1041 terms. -/
def A052034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052293.P3349466566879565360

`A054794(n+1)+6`
-/

namespace A052293.P3349466566879565360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054794 (n + 1) + 6

end

end A052293.P3349466566879565360

noncomputable section

/-- A052293: Numbers of the form 11 + x^2 + x or 11 + 2*x^2.

Offset 1, canonical program `A052293.P3349466566879565360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052293 (n : ℕ) : ℤ :=
  A052293.P3349466566879565360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052382.P13019725597381148511

`lt[0, abs(A187844(n))]`
-/

namespace A052382.P13019725597381148511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052382.P13019725597381148511

noncomputable section

/-- A052382: Numbers without 0 in the decimal expansion, colloquial 'zeroless numbers'.

Offset 1, canonical program `A052382.P13019725597381148511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052382 (n : ℕ) : ℤ :=
  (A052382.P13019725597381148511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052404.P15206820385513292875

`eq[0, A316863(n)]`
-/

namespace A052404.P15206820385513292875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A052404.P15206820385513292875

noncomputable section

/-- A052404: Numbers without 2 as a digit.

Offset 1, canonical program `A052404.P15206820385513292875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A052404 (n : ℕ) : ℤ :=
  (A052404.P15206820385513292875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A052404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053180.P8562561734746904798

`A017353(comp[A102342(n+1)])`
-/

namespace A053180.P8562561734746904798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A053180.P8562561734746904798

noncomputable section

/-- A053180: Numbers ending in 7 which are not prime.

Offset 1, canonical program `A053180.P8562561734746904798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7589 terms. -/
def A053180 (n : ℕ) : ℤ :=
  A053180.P8562561734746904798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7589 terms. -/
def A053180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053794.P4865876659641324685

`2*A105198(n)`
-/

namespace A053794.P4865876659641324685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105198 n

end

end A053794.P4865876659641324685

noncomputable section

/-- A053794: a(n) = (n^2 + n) modulo 8.

Offset 0, canonical program `A053794.P4865876659641324685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053794 (n : ℕ) : ℤ :=
  A053794.P4865876659641324685.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053794.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053818.P14105696247088462319

`∑{d}[n+1, A000330(#)*A334657((n+1)/#)]`
-/

namespace A053818.P14105696247088462319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000330 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053818.P14105696247088462319

noncomputable section

/-- A053818: a(n) = Sum_{k=1..n, gcd(n,k) = 1} k^2.

Offset 1, canonical program `A053818.P14105696247088462319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053818 (n : ℕ) : ℤ :=
  A053818.P14105696247088462319.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053825.P3529766841853861707

`∑{d}[n+1, A007427(#)*A063453((n+1)/#)]`
-/

namespace A053825.P3529766841853861707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A063453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053825.P3529766841853861707

noncomputable section

/-- A053825: Dirichlet inverse of sigma_3 function (A001158).

Offset 1, canonical program `A053825.P3529766841853861707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053825 (n : ℕ) : ℤ :=
  A053825.P3529766841853861707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053826.P8302010663146468963

`∑{d}[n+1, A007427(#)*A189922((n+1)/#)]`
-/

namespace A053826.P8302010663146468963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A189922 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053826.P8302010663146468963

noncomputable section

/-- A053826: Dirichlet inverse of sigma_4 function (A001159).

Offset 1, canonical program `A053826.P8302010663146468963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053826 (n : ℕ) : ℤ :=
  A053826.P8302010663146468963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053831.P12457755705641406991

`n-A008592(A064458(n))`
-/

namespace A053831.P12457755705641406991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008592 (A064458 n).toNat

end

end A053831.P12457755705641406991

noncomputable section

/-- A053831: Sum of digits of n written in base 11.

Offset 0, canonical program `A053831.P12457755705641406991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053831 (n : ℕ) : ℤ :=
  A053831.P12457755705641406991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053832.P11224552307172374033

`n-11*A064459(n)`
-/

namespace A053832.P11224552307172374033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 11 * A064459 n

end

end A053832.P11224552307172374033

noncomputable section

/-- A053832: Sum of digits of n written in base 12.

Offset 0, canonical program `A053832.P11224552307172374033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053832 (n : ℕ) : ℤ :=
  A053832.P11224552307172374033.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053833.P8334433785575148508

`n-A008594(A090620(n))`
-/

namespace A053833.P8334433785575148508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008594 (A090620 n).toNat

end

end A053833.P8334433785575148508

noncomputable section

/-- A053833: Sum of digits of n written in base 13.

Offset 0, canonical program `A053833.P8334433785575148508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053833 (n : ℕ) : ℤ :=
  A053833.P8334433785575148508.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053836.P6566921165131624833

`n-15*A054900(n)`
-/

namespace A053836.P6566921165131624833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 15 * A054900 n

end

end A053836.P6566921165131624833

noncomputable section

/-- A053836: Sum of digits of n written in base 16.

Offset 0, canonical program `A053836.P6566921165131624833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053836 (n : ℕ) : ℤ :=
  A053836.P6566921165131624833.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054082.P4296362345752367379

`A319702(n+1)+A004956(A123108(n))-1`
-/

namespace A054082.P4296362345752367379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1) + (A004956 (A123108 n).toNat - 1)

end

end A054082.P4296362345752367379

noncomputable section

/-- A054082: Permutation of N: a(1)=2, a(2)=1 and for each k >= 2, let p(k)=least natural number not already an a(i), q(k)=p(k)+k-1, a(2k-1)=q(k), a(2k)=p(k).

Offset 1, canonical program `A054082.P4296362345752367379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054082 (n : ℕ) : ℤ :=
  A054082.P4296362345752367379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054565.P1541033831285552119

`eq[3, A060956(n)]`
-/

namespace A054565.P1541033831285552119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054565.P1541033831285552119

noncomputable section

/-- A054565: Numbers n such that 3 is the first digit of 3^n.

Offset 1, canonical program `A054565.P1541033831285552119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1247 terms. -/
def A054565 (n : ℕ) : ℤ :=
  (A054565.P1541033831285552119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1247 terms. -/
def A054565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054586.P1879442179665945613

`A276833(2*n+1)`
-/

namespace A054586.P1879442179665945613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276833 (2 * n + 1)

end

end A054586.P1879442179665945613

noncomputable section

/-- A054586: a(n) = Sum_{d|2n+1} phi(d)*mu(d).

Offset 0, canonical program `A054586.P1879442179665945613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054586 (n : ℕ) : ℤ :=
  A054586.P1879442179665945613.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054741.P5258379755216233543

`eq[1, A323170(n+1)]+1`
-/

namespace A054741.P5258379755216233543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054741.P5258379755216233543

noncomputable section

/-- A054741: Numbers m such that totient(m) < cototient(m).

Offset 1, canonical program `A054741.P5258379755216233543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054741 (n : ℕ) : ℤ :=
  (A054741.P5258379755216233543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055640.P11694689918486202378

`A055642(n)-A055641(n)`
-/

namespace A055640.P11694689918486202378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n - A055641 n

end

end A055640.P11694689918486202378

noncomputable section

/-- A055640: Number of nonzero digits in decimal expansion of n.

Offset 0, canonical program `A055640.P11694689918486202378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055641, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055640 (n : ℕ) : ℤ :=
  A055640.P11694689918486202378.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055641, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055672.P17904768652882133137

`(n-A113638(n))*A005451(n+1)`
-/

namespace A055672.P17904768652882133137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A113638 n) * A005451 (n + 1)

end

end A055672.P17904768652882133137

noncomputable section

/-- A055672: Number of right-inequivalent prime Hurwitz quaternions of norm n.

Offset 0, canonical program `A055672.P17904768652882133137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055672 (n : ℕ) : ℤ :=
  A055672.P17904768652882133137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055679.P10795285082955514772

`A230980(∑[and(1, ∑[n])])`
-/

namespace A055679.P10795285082955514772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055679.P10795285082955514772

noncomputable section

/-- A055679: Number of distinct prime factors of phi(n!).

Offset 1, canonical program `A055679.P10795285082955514772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A055679 (n : ℕ) : ℤ :=
  A055679.P10795285082955514772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A055679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055872.P16500589934089061797

`A204514(n+1)²`
-/

namespace A055872.P16500589934089061797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204514 (n + 1) ^ 2

end

end A055872.P16500589934089061797

noncomputable section

/-- A055872: a(n) and floor(a(n)/8) are both squares; i.e., squares that remain squares when written in base 8 and last digit is removed.

Offset 1, canonical program `A055872.P16500589934089061797`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055872 (n : ℕ) : ℤ :=
  A055872.P16500589934089061797.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204514, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055872.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056129.P7754831365557891358

`A065881(a(n-1)*record[∑{p}[n, #]])` with `a(0)=1`
-/

namespace A056129.P7754831365557891358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065881 (a (n - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)).toNat

end

end A056129.P7754831365557891358

noncomputable section

/-- A056129: Final nonzero digit of n-th primorial.

Offset 0, canonical program `A056129.P7754831365557891358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A056129 (n : ℕ) : ℤ :=
  A056129.P7754831365557891358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A056129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056272.P10027317883557140852

`A222867(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A056272.P10027317883557140852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A222867 (n + 1) - a (n - 1)

end

end A056272.P10027317883557140852

noncomputable section

/-- A056272: Word structures of length n using a 5-ary alphabet.

Offset 0, canonical program `A056272.P10027317883557140852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A056272 (n : ℕ) : ℤ :=
  A056272.P10027317883557140852.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A056272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056548.P9433201203860911017

`A350102(2*n)-A350102(n)`
-/

namespace A056548.P9433201203860911017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 (2 * n) - A350102 n

end

end A056548.P9433201203860911017

noncomputable section

/-- A056548: a(n) = Sum_{k>=1} round(n/k) where round(1/2) = 0.

Offset 0, canonical program `A056548.P9433201203860911017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A056548 (n : ℕ) : ℤ :=
  A056548.P9433201203860911017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A056548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056911.P3674524494642334646

`lt[0, A323239(n)]`
-/

namespace A056911.P3674524494642334646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A056911.P3674524494642334646

noncomputable section

/-- A056911: Odd squarefree numbers.

Offset 1, canonical program `A056911.P3674524494642334646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056911 (n : ℕ) : ℤ :=
  (A056911.P3674524494642334646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057526.P5100206515935661971

`A277329(n+1)-1`
-/

namespace A057526.P5100206515935661971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277329 (n + 1) - 1

end

end A057526.P5100206515935661971

noncomputable section

/-- A057526: Number of applications of f to reduce n to 1, where f(k) is the integer among k/2,(k-1)/4, (k+1)/4.

Offset 1, canonical program `A057526.P5100206515935661971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057526 (n : ℕ) : ℤ :=
  A057526.P5100206515935661971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A029931.P9873769426762813119

`log2(A029930(n))`
-/

namespace A029931.P9873769426762813119
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A029930 n : ℝ)

end

end A029931.P9873769426762813119

noncomputable section

/-- A029931: If 2n = Sum 2^e_i, a(n) = Sum e_i.

Offset 0, canonical program `A029931.P9873769426762813119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A029931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A029931.P9873769426762813119.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A029931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A033192.P12903176854544795020

`A032441(n)-1`
-/

namespace A033192.P12903176854544795020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032441 n - 1

end

end A033192.P12903176854544795020

noncomputable section

/-- A033192: a(n) = binomial(Fibonacci(n) + 1, 2).

Offset 0, canonical program `A033192.P12903176854544795020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033192 (n : ℕ) : ℤ :=
  A033192.P12903176854544795020.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034386.P1755129826133478527

`A007947(A003418(n))`
-/

namespace A034386.P1755129826133478527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A003418 n).toNat

end

end A034386.P1755129826133478527

noncomputable section

/-- A034386: Primorial numbers (second definition): n# = product of primes <= n.

Offset 0, canonical program `A034386.P1755129826133478527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034386 (n : ℕ) : ℤ :=
  A034386.P1755129826133478527.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A035218.P251444375763395184

`∑{d}[n+1, A232991(#-1)]`
-/

namespace A035218.P251444375763395184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A232991 (d - 1)

end

end A035218.P251444375763395184

noncomputable section

/-- A035218: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 36.

Offset 1, canonical program `A035218.P251444375763395184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035218 (n : ℕ) : ℤ :=
  A035218.P251444375763395184.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036234.P2906282677021386800

`A000720(n+1)+1`
-/

namespace A036234.P2906282677021386800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + 1

end

end A036234.P2906282677021386800

noncomputable section

/-- A036234: Number of primes <= n, if 1 is counted as a prime.

Offset 1, canonical program `A036234.P2906282677021386800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036234 (n : ℕ) : ℤ :=
  A036234.P2906282677021386800.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036234.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038098.P17210999358660763386

`A000720(A000578(n+1))`
-/

namespace A038098.P17210999358660763386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000578 (n + 1)).toNat

end

end A038098.P17210999358660763386

noncomputable section

/-- A038098: Number of primes < n^3.

Offset 1, canonical program `A038098.P17210999358660763386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038098 (n : ℕ) : ℤ :=
  A038098.P17210999358660763386.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038377.P10669357036258866663

`A051890(n+1)-A000720((2*n+1)²+1)`
-/

namespace A038377.P10669357036258866663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 (n + 1) - A000720 ((2 * n + 1) ^ 2 + 1)

end

end A038377.P10669357036258866663

noncomputable section

/-- A038377: Number of odd nonprimes <= (2n+1)^2.

Offset 0, canonical program `A038377.P10669357036258866663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038377 (n : ℕ) : ℤ :=
  A038377.P10669357036258866663.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A038377.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038589.P3494655804322990247

`A016921(A014202(n))`
-/

namespace A038589.P3494655804322990247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A014202 n).toNat

end

end A038589.P3494655804322990247

noncomputable section

/-- A038589: Sizes of successive clusters in hexagonal lattice A_2 centered at lattice point.

Offset 0, canonical program `A038589.P3494655804322990247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038589 (n : ℕ) : ℤ :=
  A038589.P3494655804322990247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039696.P2737647612043200767

`A007947(n+1)+A005361(n+1)`
-/

namespace A039696.P2737647612043200767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + A005361 (n + 1)

end

end A039696.P2737647612043200767

noncomputable section

/-- A039696: If n = Product (p_j^k_j) then a(n) = Product (p_j) + Product (k_j).

Offset 1, canonical program `A039696.P2737647612043200767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A039696 (n : ℕ) : ℤ :=
  A039696.P2737647612043200767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A039696.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048198.P7338182187871704518

`Δ[A000720(A298033(n)+A004442(n))]`
-/

namespace A048198.P7338182187871704518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A298033 n + A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048198.P7338182187871704518

noncomputable section

/-- A048198: Number of primes between successive n's, where n mod 10 = 5.

Offset 0, canonical program `A048198.P7338182187871704518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A048198 (n : ℕ) : ℤ :=
  A048198.P7338182187871704518.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A048198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048628.P16421708468092121704

`A002144(n+1)*A002145(n+2)`
-/

namespace A048628.P16421708468092121704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A002145 (n + 2)

end

end A048628.P16421708468092121704

noncomputable section

/-- A048628: n-th 4k+1 prime times (n+1)st 4k+3 prime.

Offset 1, canonical program `A048628.P16421708468092121704`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048628 (n : ℕ) : ℤ :=
  A048628.P16421708468092121704.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048630.P1585536363652979874

`A002144(n+1)*A002145(n+1)`
-/

namespace A048630.P1585536363652979874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A002145 (n + 1)

end

end A048630.P1585536363652979874

noncomputable section

/-- A048630: n-th 4k+1 prime times n-th 4k-1 prime.

Offset 1, canonical program `A048630.P1585536363652979874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048630 (n : ℕ) : ℤ :=
  A048630.P1585536363652979874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048630.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048656.P10913799290874468636

`2^A000720(n+1)`
-/

namespace A048656.P10913799290874468636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A048656.P10913799290874468636

noncomputable section

/-- A048656: a(n) is the number of unitary (and also of squarefree) divisors of n!.

Offset 1, canonical program `A048656.P10913799290874468636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048656 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048656.P10913799290874468636.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048785.P6596671238819424103

`∑{d}[n, A007425(A007947(#))]`
-/

namespace A048785.P6596671238819424103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 (A007947 d).toNat

end

end A048785.P6596671238819424103

noncomputable section

/-- A048785: a(0) = 0; a(n) = tau(n^3), where tau = number of divisors (A000005).

Offset 0, canonical program `A048785.P6596671238819424103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048785 (n : ℕ) : ℤ :=
  A048785.P6596671238819424103.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048803.P1384163412676247961

`a(n-1)*A007947(n)` with `a(0)=1`
-/

namespace A048803.P1384163412676247961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A007947 n

end

end A048803.P1384163412676247961

noncomputable section

/-- A048803: a(n) = Product_{k=1..n} rad(k), where rad(n) is the product of distinct prime factors of n, cf. A007947.

Offset 0, canonical program `A048803.P1384163412676247961`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048803 (n : ℕ) : ℤ :=
  A048803.P1384163412676247961.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048803.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053622.P4231210635218977256

`A050499(n+2)-A000720(n+2)`
-/

namespace A053622.P4231210635218977256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050499 (n + 2) - A000720 (n + 2)

end

end A053622.P4231210635218977256

noncomputable section

/-- A053622: a(n) = round( n/log(n) - pi(n) ).

Offset 2, canonical program `A053622.P4231210635218977256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053622 (n : ℕ) : ℤ :=
  A053622.P4231210635218977256.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053622.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053842.P17531814317218528554

`A010876(A053828(n))`
-/

namespace A053842.P17531814317218528554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A053828 n).toNat

end

end A053842.P17531814317218528554

noncomputable section

/-- A053842: (Sum of digits of n written in base 7) modulo 7.

Offset 0, canonical program `A053842.P17531814317218528554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053842 (n : ℕ) : ℤ :=
  A053842.P17531814317218528554.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053842.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053844.P4780576487798732142

`A010878(A053830(n))`
-/

namespace A053844.P4780576487798732142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A053830 n).toNat

end

end A053844.P4780576487798732142

noncomputable section

/-- A053844: (Sum of digits of n written in base 9) modulo 9.

Offset 0, canonical program `A053844.P4780576487798732142`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053830, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053844 (n : ℕ) : ℤ :=
  A053844.P4780576487798732142.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053830, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053844.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054054.P1056175227029170886

`val(A348783(n), 5)`
-/

namespace A054054.P1056175227029170886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348783 n).toNat 5

end

end A054054.P1056175227029170886

noncomputable section

/-- A054054: Smallest digit of n.

Offset 0, canonical program `A054054.P1056175227029170886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054054 (n : ℕ) : ℤ :=
  (A054054.P1056175227029170886.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054896.P4569418571639355434

`(n-A053828(n))/6`
-/

namespace A054896.P4569418571639355434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A053828 n : ℚ) / 6

end

end A054896.P4569418571639355434

noncomputable section

/-- A054896: a(n) = Sum_{k>0} floor(n/7^k).

Offset 0, canonical program `A054896.P4569418571639355434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054896 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054896.P4569418571639355434.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054898.P5971935693440443971

`(n-A053830(n))/8`
-/

namespace A054898.P5971935693440443971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A053830 n : ℚ) / 8

end

end A054898.P5971935693440443971

noncomputable section

/-- A054898: a(n) = Sum_{k>0} floor(n/9^k).

Offset 0, canonical program `A054898.P5971935693440443971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053830, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054898 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054898.P5971935693440443971.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053830, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054898.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055729.P3454769409147421049

`A000720(A000244(n))`
-/

namespace A055729.P3454769409147421049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000244 n).toNat

end

end A055729.P3454769409147421049

noncomputable section

/-- A055729: Number of primes <= 3^n.

Offset 0, canonical program `A055729.P3454769409147421049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055729 (n : ℕ) : ℤ :=
  A055729.P3454769409147421049.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055729.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055730.P14807854093821775361

`A000720(A000351(n))`
-/

namespace A055730.P14807854093821775361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000351 n).toNat

end

end A055730.P14807854093821775361

noncomputable section

/-- A055730: Number of primes <= 5^n.

Offset 0, canonical program `A055730.P14807854093821775361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055730 (n : ℕ) : ℤ :=
  A055730.P14807854093821775361.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055731.P7960467946028738766

`A000720(A000400(n))`
-/

namespace A055731.P7960467946028738766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000400 n).toNat

end

end A055731.P7960467946028738766

noncomputable section

/-- A055731: Number of primes < 6^n.

Offset 0, canonical program `A055731.P7960467946028738766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055731 (n : ℕ) : ℤ :=
  A055731.P7960467946028738766.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055731.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055732.P15158235199988869026

`A000720(A000420(n))`
-/

namespace A055732.P15158235199988869026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000420 n).toNat

end

end A055732.P15158235199988869026

noncomputable section

/-- A055732: Number of primes <= 7^n.

Offset 0, canonical program `A055732.P15158235199988869026`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055732 (n : ℕ) : ℤ :=
  A055732.P15158235199988869026.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055732.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056171.P2104246229896061761

`A000720(n+1)-A000720(A065033(n))`
-/

namespace A056171.P2104246229896061761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A065033 n).toNat

end

end A056171.P2104246229896061761

noncomputable section

/-- A056171: a(n) = pi(n) - pi(floor(n/2)), where pi is A000720.

Offset 1, canonical program `A056171.P2104246229896061761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056171 (n : ℕ) : ℤ :=
  A056171.P2104246229896061761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056595.P6705739557680561554

`∑{d}[n+1, A049240(#)]`
-/

namespace A056595.P6705739557680561554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049240 d

end

end A056595.P6705739557680561554

noncomputable section

/-- A056595: Number of nonsquare divisors of n.

Offset 1, canonical program `A056595.P6705739557680561554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056595 (n : ℕ) : ℤ :=
  A056595.P6705739557680561554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056811.P3378557342044572151

`A000720(A000196(n+1))`
-/

namespace A056811.P3378557342044572151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000196 (n + 1)).toNat

end

end A056811.P3378557342044572151

noncomputable section

/-- A056811: Number of primes not exceeding square root of n: primepi(sqrt(n)).

Offset 1, canonical program `A056811.P3378557342044572151`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056811 (n : ℕ) : ℤ :=
  A056811.P3378557342044572151.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056811.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057020.P17158263776737705447

`A000203(n+1)/A009205(n+1)`
-/

namespace A057020.P17158263776737705447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A057020.P17158263776737705447

noncomputable section

/-- A057020: Numerator of (sum of divisors of n / number of divisors of n).

Offset 1, canonical program `A057020.P17158263776737705447`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057020 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057020.P17158263776737705447.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057020.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057627.P17607436213288797797

`n+1-A013928(n+2)`
-/

namespace A057627.P17607436213288797797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A013928 (n + 2)

end

end A057627.P17607436213288797797

noncomputable section

/-- A057627: Number of nonsquarefree numbers not exceeding n.

Offset 1, canonical program `A057627.P17607436213288797797`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057627 (n : ℕ) : ℤ :=
  A057627.P17607436213288797797.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037332.P18075326861071859961

`eq[A053828(n+1), A053830(n+1)]+1`
-/

namespace A037332.P18075326861071859961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037332.P18075326861071859961

noncomputable section

/-- A037332: Numbers whose base-7 and base-9 expansions have the same digit sum.

Offset 1, canonical program `A037332.P18075326861071859961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1120 terms. -/
def A037332 (n : ℕ) : ℤ :=
  (A037332.P18075326861071859961.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1120 terms. -/
def A037332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048108.P1896268566457634152

`comp[(n+1)*A359471(n+1)]`
-/

namespace A048108.P1896268566457634152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A359471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A048108.P1896268566457634152

noncomputable section

/-- A048108: Numbers with at least as many non-unitary divisors (A048105) as unitary divisors (A034444).

Offset 1, canonical program `A048108.P1896268566457634152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9564 terms. -/
def A048108 (n : ℕ) : ℤ :=
  (A048108.P1896268566457634152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9564 terms. -/
def A048108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053829.P14344387204019492916

`n-7*A054897(n)`
-/

namespace A053829.P14344387204019492916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 7 * A054897 n

end

end A053829.P14344387204019492916

noncomputable section

/-- A053829: Sum of digits of (n written in base 8).

Offset 0, canonical program `A053829.P14344387204019492916`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053829 (n : ℕ) : ℤ :=
  A053829.P14344387204019492916.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053829.provenance : SequenceMachineLib.Provenance := .conditional

