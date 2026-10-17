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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A101925.P9724492527127448858

`A005187(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101925.P9724492527127448858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + 1

end

end A101925.P9724492527127448858

noncomputable section

/-- A101925: a(n) = A005187(n) + 1.

Offset 0, canonical program `A101925.P9724492527127448858`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005187(n)+1` (program `A101925.P9724492527127448858`, by `A101925.P9724492527127448858.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A101925 (n : ℕ) : ℤ :=
  A101925.P9724492527127448858.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005187(n)+1` (program `A101925.P9724492527127448858`, by `A101925.P9724492527127448858.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A101925.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A106707.P467990136795639028

`-A001353(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A106707.P467990136795639028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001353 n

end

end A106707.P467990136795639028

noncomputable section

/-- A106707: a(n) = -A001353(n).

Offset 0, canonical program `A106707.P467990136795639028`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-A001353(n)` (program `A106707.P467990136795639028`, by `A106707.P467990136795639028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A106707 (n : ℕ) : ℤ :=
  A106707.P467990136795639028.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-A001353(n)` (program `A106707.P467990136795639028`, by `A106707.P467990136795639028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A106707.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A109599.P16556361062463559405

`A070864(n+8)-4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109599.P16556361062463559405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070864 (n + 8) - 4

end

end A109599.P16556361062463559405

noncomputable section

/-- A109599: a(n) = A070864(n+7) - 4.

Offset 1, canonical program `A109599.P16556361062463559405`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A070864(n+8)-4` (program `A109599.P16556361062463559405`, by `A109599.P16556361062463559405.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A109599 (n : ℕ) : ℤ :=
  A109599.P16556361062463559405.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A070864(n+8)-4` (program `A109599.P16556361062463559405`, by `A109599.P16556361062463559405.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A109599.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A110655.P2308384762504973839

`A110654(A110654(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110655.P2308384762504973839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 n).toNat

end

end A110655.P2308384762504973839

noncomputable section

/-- A110655: a(n) = A110654(A110654(n)).

Offset 0, canonical program `A110655.P2308384762504973839`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A110654(A110654(n))` (program `A110655.P2308384762504973839`, by `A110655.P2308384762504973839.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A110655 (n : ℕ) : ℤ :=
  A110655.P2308384762504973839.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A110654(A110654(n))` (program `A110655.P2308384762504973839`, by `A110655.P2308384762504973839.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A110655.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A111954.P2161245122123074090

`A000129(n)+(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111954.P2161245122123074090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (-1) ^ n

end

end A111954.P2161245122123074090

noncomputable section

/-- A111954: a(n) = A000129(n) + (-1)^n.

Offset 0, canonical program `A111954.P2161245122123074090`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)+(-1)^n` (program `A111954.P2161245122123074090`, by `A111954.P2161245122123074090.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A111954 (n : ℕ) : ℤ :=
  A111954.P2161245122123074090.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)+(-1)^n` (program `A111954.P2161245122123074090`, by `A111954.P2161245122123074090.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A111954.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A111955.P17725153685513830976

`A078343(n)+(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111955.P17725153685513830976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n + (-1) ^ n

end

end A111955.P17725153685513830976

noncomputable section

/-- A111955: a(n) = A078343(n) + (-1)^n.

Offset 0, canonical program `A111955.P17725153685513830976`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A078343(n)+(-1)^n` (program `A111955.P17725153685513830976`, by `A111955.P17725153685513830976.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A111955 (n : ℕ) : ℤ :=
  A111955.P17725153685513830976.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A078343(n)+(-1)^n` (program `A111955.P17725153685513830976`, by `A111955.P17725153685513830976.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A111955.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A085687.P17543566194425455463

`(n+1)*A000257(n+1)`
-/

namespace A085687.P17543566194425455463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000257 (n + 1)

end

end A085687.P17543566194425455463

noncomputable section

/-- A085687: Expansion of g.f. 8/(1+sqrt(1-8*x))^3.

Offset 0, canonical program `A085687.P17543566194425455463`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085687 (n : ℕ) : ℤ :=
  A085687.P17543566194425455463.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085744.P6091616498061970500

`A000217(n^3)-n^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085744.P6091616498061970500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 3) - (n ^ 3 : ℤ)

end

end A085744.P6091616498061970500

noncomputable section

/-- A085744: a(n) = A000217(n^3) - n^3.

Offset 0, canonical program `A085744.P6091616498061970500`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n^3)-n^3` (program `A085744.P6091616498061970500`, by `A085744.P6091616498061970500.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A085744 (n : ℕ) : ℤ :=
  A085744.P6091616498061970500.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n^3)-n^3` (program `A085744.P6091616498061970500`, by `A085744.P6091616498061970500.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A085744.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A085787.P3517297855662886866

`A002378(n)-A001318(n)`
-/

namespace A085787.P3517297855662886866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - A001318 n

end

end A085787.P3517297855662886866

noncomputable section

/-- A085787: Generalized heptagonal numbers: m*(5*m - 3)/2, m = 0, +-1, +-2 +-3, ...

Offset 0, canonical program `A085787.P3517297855662886866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085787 (n : ℕ) : ℤ :=
  A085787.P3517297855662886866.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085787.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086161.P1959334638549911894

`A008620(n+1)`
-/

namespace A086161.P1959334638549911894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1)

end

end A086161.P1959334638549911894

noncomputable section

/-- A086161: Number of monomial ideals in two variables x, y that are Artinian, integrally closed, of colength n and contain x^2.

Offset 0, canonical program `A086161.P1959334638549911894`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086161 (n : ℕ) : ℤ :=
  A086161.P1959334638549911894.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086351.P5732003736721579715

`A081179(n+1)-2*A081179(n)`
-/

namespace A086351.P5732003736721579715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 (n + 1) - 2 * A081179 n

end

end A086351.P5732003736721579715

noncomputable section

/-- A086351: Row T(n,3) of square array A086350.

Offset 0, canonical program `A086351.P5732003736721579715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086351 (n : ℕ) : ℤ :=
  A086351.P5732003736721579715.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086445.P11619309759868928111

`A000975(n)+A008619(n)`
-/

namespace A086445.P11619309759868928111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + A008619 n

end

end A086445.P11619309759868928111

noncomputable section

/-- A086445: Partial sums of A005578.

Offset 0, canonical program `A086445.P11619309759868928111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086445 (n : ℕ) : ℤ :=
  A086445.P11619309759868928111.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086601.P131040437580756644

`A000124(n)²`
-/

namespace A086601.P131040437580756644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n ^ 2

end

end A086601.P131040437580756644

noncomputable section

/-- A086601: Triangular numbers + 1 squared.

Offset 0, canonical program `A086601.P131040437580756644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086601 (n : ℕ) : ℤ :=
  A086601.P131040437580756644.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086602.P17561333100341916164

`A000217(A000217(n))-n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086602.P17561333100341916164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n).toNat - (n ^ 2 : ℤ)

end

end A086602.P17561333100341916164

noncomputable section

/-- A086602: a(n) = A000217(A000217(n))-n^2.

Offset 0, canonical program `A086602.P17561333100341916164`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A000217(n))-n²` (program `A086602.P17561333100341916164`, by `A086602.P17561333100341916164.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A086602 (n : ℕ) : ℤ :=
  A086602.P17561333100341916164.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A000217(n))-n²` (program `A086602.P17561333100341916164`, by `A086602.P17561333100341916164.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A086602.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A086652.P12039658509500316263

`A000225(n+3)-A052955(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086652.P12039658509500316263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 3) - A052955 n

end

end A086652.P12039658509500316263

noncomputable section

/-- A086652: a(n) = A000225(n+3)-A052955(n).

Offset 0, canonical program `A086652.P12039658509500316263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086652 (n : ℕ) : ℤ :=
  A086652.P12039658509500316263.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086894.P2071782429096505861

`(A000522(2*n)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086894.P2071782429096505861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 (2 * n) + 1 : ℚ) / 2

end

end A086894.P2071782429096505861

noncomputable section

/-- A086894: a(n) = (A000522(2*n) + 1)/2.

Offset 0, canonical program `A086894.P2071782429096505861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086894 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086894.P2071782429096505861.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087069.P8198094130385700278

`A054893(4*n)`
-/

namespace A087069.P8198094130385700278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 (4 * n)

end

end A087069.P8198094130385700278

noncomputable section

/-- A087069: a(n) = Sum_{k >= 0} floor(n/(4^k)).

Offset 0, canonical program `A087069.P8198094130385700278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087069 (n : ℕ) : ℤ :=
  A087069.P8198094130385700278.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087645.P8033487295196302795

`A052149(n+1)+2`
-/

namespace A087645.P8033487295196302795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052149 (n + 1) + 2

end

end A087645.P8033487295196302795

noncomputable section

/-- A087645: Third column of A071223.

Offset 2, canonical program `A087645.P8033487295196302795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087645 (n : ℕ) : ℤ :=
  A087645.P8033487295196302795.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087811.P8717670463538044569

`A024206(n+1)+1`
-/

namespace A087811.P8717670463538044569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1) + 1

end

end A087811.P8717670463538044569

noncomputable section

/-- A087811: Numbers k such that ceiling(sqrt(k)) divides k.

Offset 1, canonical program `A087811.P8717670463538044569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087811 (n : ℕ) : ℤ :=
  A087811.P8717670463538044569.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087811.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088015.P3925742208914551685

`A088014(n)-1`
-/

namespace A088015.P3925742208914551685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088014 n - 1

end

end A088015.P3925742208914551685

noncomputable section

/-- A088015: Expansion of e.g.f. cosh(sqrt(2)*x) + exp(x)*(cosh(sqrt(2)*x) - 1).

Offset 0, canonical program `A088015.P3925742208914551685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088015 (n : ℕ) : ℤ :=
  A088015.P3925742208914551685.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088015.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088210.P18408197993255256953

`A000129(n)+(n+1)*A000129(n+1)`
-/

namespace A088210.P18408197993255256953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (n + 1 : ℤ) * A000129 (n + 1)

end

end A088210.P18408197993255256953

noncomputable section

/-- A088210: Numerators of convergents of the continued fraction with the n+1 partial quotients: [2;2,2,...(n 2's)...,2,n+1], starting with [1], [2;2], [2;2,3], [2;2,2,4], ...

Offset 0, canonical program `A088210.P18408197993255256953`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088210 (n : ℕ) : ℤ :=
  A088210.P18408197993255256953.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088210.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088211.P18144087723647562284

`A000129(n+1)+(n-1)*A000129(n)`
-/

namespace A088211.P18144087723647562284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + ((n : ℤ) - 1) * A000129 n

end

end A088211.P18144087723647562284

noncomputable section

/-- A088211: Denominators of convergents of the continued fraction with the n+1 partial quotients: [2;2,2,...(n 2's)...,2,n+1], starting with [1], [2;2], [2;2,3], [2;2,2,4], ...

Offset 0, canonical program `A088211.P18144087723647562284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088211 (n : ℕ) : ℤ :=
  A088211.P18144087723647562284.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088211.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088244.P13253093722585621890

`(A011371(n)+1)*(A054861(n)+1)`
-/

namespace A088244.P13253093722585621890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011371 n + 1) * (A054861 n + 1)

end

end A088244.P13253093722585621890

noncomputable section

/-- A088244: Number of 3-smooth divisors of n!.

Offset 0, canonical program `A088244.P13253093722585621890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088244 (n : ℕ) : ℤ :=
  A088244.P13253093722585621890.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088442.P5388418706274842335

`A004514(n)+1`
-/

namespace A088442.P5388418706274842335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 n + 1

end

end A088442.P5388418706274842335

noncomputable section

/-- A088442: A linear version of the Josephus problem.

Offset 0, canonical program `A088442.P5388418706274842335`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088442 (n : ℕ) : ℤ :=
  A088442.P5388418706274842335.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088442.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088580.P3089093194242277422

`1+A000203(n+1)`
-/

namespace A088580.P3089093194242277422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000203 (n + 1)

end

end A088580.P3089093194242277422

noncomputable section

/-- A088580: a(n) = 1 + sigma(n).

Offset 1, canonical program `A088580.P3089093194242277422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088580 (n : ℕ) : ℤ :=
  A088580.P3089093194242277422.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088837.P13542131755671239569

`2*A038712(n+1)+1`
-/

namespace A088837.P13542131755671239569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038712 (n + 1) + 1

end

end A088837.P13542131755671239569

noncomputable section

/-- A088837: Numerator of sigma(2*n)/sigma(n). Denominator see in A038712.

Offset 1, canonical program `A088837.P13542131755671239569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088837 (n : ℕ) : ℤ :=
  A088837.P13542131755671239569.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088837.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088917.P10709094076665346594

`A001850(n)-3*floor(A001850(n)/3)`
-/

namespace A088917.P10709094076665346594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n - 3 * ⌊(A001850 n : ℚ) / 3⌋

end

end A088917.P10709094076665346594

noncomputable section

/-- A088917: Central Delannoy numbers (mod 3); Characteristic function for Cantor set.

Offset 0, canonical program `A088917.P10709094076665346594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088917 (n : ℕ) : ℤ :=
  A088917.P10709094076665346594.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088981.P15143407969733008252

`A089061(n)+A000071(n+4)`
-/

namespace A088981.P15143407969733008252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089061 n + A000071 (n + 4)

end

end A088981.P15143407969733008252

noncomputable section

/-- A088981: a(n+2) = a(n+1) + a(n) - (2*n + 1) where a(0)=7, a(1)=11.

Offset 0, canonical program `A088981.P15143407969733008252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088981 (n : ℕ) : ℤ :=
  A088981.P15143407969733008252.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089071.P5040348556766612571

`A022856(n+3)`
-/

namespace A089071.P5040348556766612571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (n + 3)

end

end A089071.P5040348556766612571

noncomputable section

/-- A089071: Number of liberties a big eye of size n gives in the game of Go.

Offset 1, canonical program `A089071.P5040348556766612571`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089071 (n : ℕ) : ℤ :=
  A089071.P5040348556766612571.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089086.P8573573553355690279

`A109013(n+5)`
-/

namespace A089086.P8573573553355690279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109013 (n + 5)

end

end A089086.P8573573553355690279

noncomputable section

/-- A089086: Greatest common divisor of n^2-5 and n^2+5.

Offset 0, canonical program `A089086.P8573573553355690279`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089086 (n : ℕ) : ℤ :=
  A089086.P8573573553355690279.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089285.P13406940123731403236

`A000203(A011545(n))`
-/

namespace A089285.P13406940123731403236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A011545 n).toNat

end

end A089285.P13406940123731403236

noncomputable section

/-- A089285: Sum of divisors of floor(Pi*10^n), Pi=3.14...

Offset 0, canonical program `A089285.P13406940123731403236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089285 (n : ℕ) : ℤ :=
  A089285.P13406940123731403236.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089643.P7852096906189222102

`A054861(3*n)-A054861(2*n)-A054861(n)`
-/

namespace A089643.P7852096906189222102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (3 * n) - A054861 (2 * n) - A054861 n

end

end A089643.P7852096906189222102

noncomputable section

/-- A089643: 3^a(n) divides C(3n,n); 3-adic valuation of A005809.

Offset 0, canonical program `A089643.P7852096906189222102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089643 (n : ℕ) : ℤ :=
  A089643.P7852096906189222102.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089644.P16561712018792086140

`7*A001651(n+1)`
-/

namespace A089644.P16561712018792086140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A001651 (n + 1)

end

end A089644.P16561712018792086140

noncomputable section

/-- A089644: Numbers k such that 7 divides the numerator of B(2*k) where B(k) = the k-th Bernoulli number.

Offset 1, canonical program `A089644.P16561712018792086140`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089644 (n : ℕ) : ℤ :=
  A089644.P16561712018792086140.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089644.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089792.P9464686631977204043

`n-A054861(n)`
-/

namespace A089792.P9464686631977204043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054861 n

end

end A089792.P9464686631977204043

noncomputable section

/-- A089792: a(n) = n-(exponent of highest power of 3 dividing n!).

Offset 0, canonical program `A089792.P9464686631977204043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089792 (n : ℕ) : ℤ :=
  A089792.P9464686631977204043.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089792.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089833.P13737172793224670506

`A000108(n)*(A000142(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089833.P13737172793224670506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (A000142 (n + 1) - 1)

end

end A089833.P13737172793224670506

noncomputable section

/-- A089833: a(n) = A000108(n)*(A000142(n+1)-1).

Offset 0, canonical program `A089833.P13737172793224670506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089833 (n : ℕ) : ℤ :=
  A089833.P13737172793224670506.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089835.P11692649361842255541

`A000108(n)²*(n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089835.P11692649361842255541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2 * (Nat.factorial (n + 1) : ℤ)

end

end A089835.P11692649361842255541

noncomputable section

/-- A089835: a(n) = (A000108(n)^2)*(n+1)!.

Offset 0, canonical program `A089835.P11692649361842255541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089835 (n : ℕ) : ℤ :=
  A089835.P11692649361842255541.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089950.P18075982429225354271

`A000129(n+1)²-floor((n+2)/2)`
-/

namespace A089950.P18075982429225354271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) ^ 2 - ⌊(n + 2 : ℚ) / 2⌋

end

end A089950.P18075982429225354271

noncomputable section

/-- A089950: Partial sums of A001652.

Offset 0, canonical program `A089950.P18075982429225354271`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089950 (n : ℕ) : ℤ :=
  A089950.P18075982429225354271.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089950.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090616.P15930574233409721932

`floor(A011371(n)/2)`
-/

namespace A090616.P15930574233409721932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011371 n : ℚ) / 2⌋

end

end A090616.P15930574233409721932

noncomputable section

/-- A090616: Exponent of highest power of 4 dividing n!.

Offset 0, canonical program `A090616.P15930574233409721932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090616 (n : ℕ) : ℤ :=
  A090616.P15930574233409721932.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090616.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090617.P14309982386090046365

`floor(A011371(n)/3)`
-/

namespace A090617.P14309982386090046365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011371 n : ℚ) / 3⌋

end

end A090617.P14309982386090046365

noncomputable section

/-- A090617: Exponent of highest power of 8 dividing n!.

Offset 0, canonical program `A090617.P14309982386090046365`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090617 (n : ℕ) : ℤ :=
  A090617.P14309982386090046365.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090826.P12053548945664516622

`a(n-1)+a(n-2)+A000108(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A090826.P12053548945664516622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) + A000108 (n - 1)

end

end A090826.P12053548945664516622

noncomputable section

/-- A090826: Convolution of Catalan and Fibonacci numbers.

Offset 0, canonical program `A090826.P12053548945664516622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090826 (n : ℕ) : ℤ :=
  A090826.P12053548945664516622.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090826.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091311.P3576469723642197269

`2*A005836(n+1)-n`
-/

namespace A091311.P3576469723642197269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (n + 1) - (n : ℤ)

end

end A091311.P3576469723642197269

noncomputable section

/-- A091311: Partial sums of 3^A007814(n).

Offset 0, canonical program `A091311.P3576469723642197269`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091311 (n : ℕ) : ℤ :=
  A091311.P3576469723642197269.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091311.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091520.P11447213063072365444

`A003148(n)*2^n/n!`
-/

namespace A091520.P11447213063072365444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003148 n * (2 ^ n : ℤ) : ℚ) / (Nat.factorial n : ℚ)

end

end A091520.P11447213063072365444

noncomputable section

/-- A091520: Expansion of 1 / ((1 - 4*x) * sqrt(1 + 4*x)) in powers of x.

Offset 0, canonical program `A091520.P11447213063072365444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091520 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091520.P11447213063072365444.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091572.P3670585149843474926

`6*(n+1)+2*A087504(n)`
-/

namespace A091572.P3670585149843474926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) + 2 * A087504 n

end

end A091572.P3670585149843474926

noncomputable section

/-- A091572: Poincaré series [or Poincare series] of the preprojective algebra of an extended Dynkin diagram of type E_7.

Offset 0, canonical program `A091572.P3670585149843474926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091572 (n : ℕ) : ℤ :=
  A091572.P3670585149843474926.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091630.P2747439425747159375

`A091628(n+1)+A091629(n+1)`
-/

namespace A091630.P2747439425747159375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091628 (n + 1) + A091629 (n + 1)

end

end A091630.P2747439425747159375

noncomputable section

/-- A091630: a(n) = A091628(n) + product of digits of A091628(n).

Offset 1, canonical program `A091630.P2747439425747159375`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091630 (n : ℕ) : ℤ :=
  A091630.P2747439425747159375.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091684.P4172566819234303247

`n*A011655(n)`
-/

namespace A091684.P4172566819234303247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011655 n

end

end A091684.P4172566819234303247

noncomputable section

/-- A091684: a(n) = 0 if n is divisible by 3, otherwise a(n) = n.

Offset 0, canonical program `A091684.P4172566819234303247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091684 (n : ℕ) : ℤ :=
  A091684.P4172566819234303247.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091881.P8619765206541634639

`A078008(4*n)`
-/

namespace A091881.P8619765206541634639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (4 * n)

end

end A091881.P8619765206541634639

noncomputable section

/-- A091881: Expansion of (1-11*x)/((1-x)*(1-16*x)).

Offset 0, canonical program `A091881.P8619765206541634639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091881 (n : ℕ) : ℤ :=
  A091881.P8619765206541634639.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091883.P5855934593224858515

`5^n*A078008(n)`
-/

namespace A091883.P5855934593224858515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A078008 n

end

end A091883.P5855934593224858515

noncomputable section

/-- A091883: Expansion of (1-5x)/((1+5x)(1-10x)).

Offset 0, canonical program `A091883.P5855934593224858515`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091883 (n : ℕ) : ℤ :=
  A091883.P5855934593224858515.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091905.P1730123218682396332

`4^n*A078008(n)`
-/

namespace A091905.P1730123218682396332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A078008 n

end

end A091905.P1730123218682396332

noncomputable section

/-- A091905: Expansion of (1-4*x)/((1+4*x)*(1-8*x)).

Offset 0, canonical program `A091905.P1730123218682396332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091905 (n : ℕ) : ℤ :=
  A091905.P1730123218682396332.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091905.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091940.P8563465798645093001

`2*A027441(n)`
-/

namespace A091940.P8563465798645093001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027441 n

end

end A091940.P8563465798645093001

noncomputable section

/-- A091940: Given n colors, sequence gives number of ways to color the vertices of a square such that no edge has the same color on both of its vertices.

Offset 1, canonical program `A091940.P8563465798645093001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091940 (n : ℕ) : ℤ :=
  A091940.P8563465798645093001.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091957.P2065705541895436327

`A000217(a(n-1))+A000217(a(n-2))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A091957.P2065705541895436327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000217 (a (n - 1)).toNat + A000217 (a (n - 2)).toNat

end

end A091957.P2065705541895436327

noncomputable section

/-- A091957: a(1)=0, a(2)=1, a(n)=A000217(a(n-1)) + A000217(a(n-2)).

Offset 1, canonical program `A091957.P2065705541895436327`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(a(n-1))+A000217(a(n-2))` (program `A091957.P2065705541895436327`, by `A091957.P2065705541895436327.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A091957 (n : ℕ) : ℤ :=
  A091957.P2065705541895436327.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(a(n-1))+A000217(a(n-2))` (program `A091957.P2065705541895436327`, by `A091957.P2065705541895436327.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A091957.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A092055.P9261515316404213231

`A000079(n)*A007581(n)`
-/

namespace A092055.P9261515316404213231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A007581 n

end

end A092055.P9261515316404213231

noncomputable section

/-- A092055: a(n) = binomial(2 + 2^n,3).

Offset 0, canonical program `A092055.P9261515316404213231`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092055 (n : ℕ) : ℤ :=
  A092055.P9261515316404213231.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092266.P15600889642678588184

`A063886(n)²`
-/

namespace A092266.P15600889642678588184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n ^ 2

end

end A092266.P15600889642678588184

noncomputable section

/-- A092266: Expansion of (1+4x)/AGM(1+4x,1-4x) where AGM denotes the arithmetic-geometric mean.

Offset 0, canonical program `A092266.P15600889642678588184`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092266 (n : ℕ) : ℤ :=
  A092266.P15600889642678588184.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092266.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092431.P9812336123162379409

`A032125(n+2)/3-1`
-/

namespace A092431.P9812336123162379409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032125 (n + 2) : ℚ) / 3 - 1

end

end A092431.P9812336123162379409

noncomputable section

/-- A092431: Numbers having in binary representation a leading 1 followed by n zeros and n-1 ones.

Offset 1, canonical program `A092431.P9812336123162379409`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092431 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092431.P9812336123162379409.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092438.P2452655790391448084

`A046717(n+1)-2^(n+1)+1`
-/

namespace A092438.P2452655790391448084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 (n + 1) - (2 ^ (n + 1) : ℤ) + 1

end

end A092438.P2452655790391448084

noncomputable section

/-- A092438: Sequence arising from enumeration of domino tilings of Aztec Pillow-like regions.

Offset 0, canonical program `A092438.P2452655790391448084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092438 (n : ℕ) : ℤ :=
  A092438.P2452655790391448084.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092439.P1069653901415661317

`A046717(n+2)-2^(n+2)-(n+2)*(2^(n+1)-1)+(n+1)²`
-/

namespace A092439.P1069653901415661317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 (n + 2) - (2 ^ (n + 2) : ℤ) - (n + 2 : ℤ) * ((2 ^ (n + 1) : ℤ) - 1) + ((n + 1) ^ 2 : ℤ)

end

end A092439.P1069653901415661317

noncomputable section

/-- A092439: Sequence arising from enumeration of domino tilings of Aztec Pillow-like regions.

Offset 0, canonical program `A092439.P1069653901415661317`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092439 (n : ℕ) : ℤ :=
  A092439.P1069653901415661317.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092439.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093042.P826109446157459072

`A001045(n)*A000045(n)`
-/

namespace A093042.P826109446157459072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A000045 n

end

end A093042.P826109446157459072

noncomputable section

/-- A093042: a(n) = Jacobsthal(n) * Fibonacci(n).

Offset 0, canonical program `A093042.P826109446157459072`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093042 (n : ℕ) : ℤ :=
  A093042.P826109446157459072.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093121.P10784834633618885467

`A078008(n)*A000045(n+1)`
-/

namespace A093121.P10784834633618885467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n * A000045 (n + 1)

end

end A093121.P10784834633618885467

noncomputable section

/-- A093121: A Jacobsthal Fibonacci product.

Offset 0, canonical program `A093121.P10784834633618885467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093121 (n : ℕ) : ℤ :=
  A093121.P10784834633618885467.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093381.P12710948629417633249

`2*A000244(n)-5*A000079(n)+4*A001045(2*n+1)`
-/

namespace A093381.P12710948629417633249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000244 n - 5 * A000079 n + 4 * A001045 (2 * n + 1)

end

end A093381.P12710948629417633249

noncomputable section

/-- A093381: Expansion of (1 - 2*x - 3*x^2 - 4*x^3)/((1-x)*(1-2*x)*(1-3*x)*(1-4*x)).

Offset 0, canonical program `A093381.P12710948629417633249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093381 (n : ℕ) : ℤ :=
  A093381.P12710948629417633249.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093381.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093833.P5717677954313366606

`3^n-A001045(n)`
-/

namespace A093833.P5717677954313366606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A001045 n

end

end A093833.P5717677954313366606

noncomputable section

/-- A093833: 3^n-Jacobsthal(n).

Offset 0, canonical program `A093833.P5717677954313366606`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093833 (n : ℕ) : ℤ :=
  A093833.P5717677954313366606.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093835.P5806152599664983893

`n*A001045(n)`
-/

namespace A093835.P5806152599664983893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001045 n

end

end A093835.P5806152599664983893

noncomputable section

/-- A093835: a(n) = n * Jacobsthal(n).

Offset 0, canonical program `A093835.P5806152599664983893`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093835 (n : ℕ) : ℤ :=
  A093835.P5806152599664983893.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093880.P15730827482543380078

`A003418(2*n)/A003418(n)`
-/

namespace A093880.P15730827482543380078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n) : ℚ) / (A003418 n : ℚ)

end

end A093880.P15730827482543380078

noncomputable section

/-- A093880: a(n) = lcm(1, 2, ..., 2n) / lcm(1, 2, ..., n).

Offset 0, canonical program `A093880.P15730827482543380078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093880 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A093880.P15730827482543380078.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093964.P14669265345428787088

`1+(n-1)*A000522(n)`
-/

namespace A093964.P14669265345428787088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((n : ℤ) - 1) * A000522 n

end

end A093964.P14669265345428787088

noncomputable section

/-- A093964: a(n) = Sum_{k=1..n} k*k!*C(n,k).

Offset 0, canonical program `A093964.P14669265345428787088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093964 (n : ℕ) : ℤ :=
  A093964.P14669265345428787088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093967.P7229199660564859914

`n*A000129(n)`
-/

namespace A093967.P7229199660564859914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000129 n

end

end A093967.P7229199660564859914

noncomputable section

/-- A093967: a(n) = n * Pell(n).

Offset 0, canonical program `A093967.P7229199660564859914`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093967 (n : ℕ) : ℤ :=
  A093967.P7229199660564859914.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094014.P5434449358276131292

`(-2)^n*A016116(n)`
-/

namespace A094014.P5434449358276131292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A016116 n

end

end A094014.P5434449358276131292

noncomputable section

/-- A094014: Expansion of (1-2*x)/(1-8*x^2).

Offset 0, canonical program `A094014.P5434449358276131292`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094014 (n : ℕ) : ℤ :=
  A094014.P5434449358276131292.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094364.P9698075557508198151

`A000032(n)*10^n/2`
-/

namespace A094364.P9698075557508198151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n * (10 ^ n : ℤ) : ℚ) / 2

end

end A094364.P9698075557508198151

noncomputable section

/-- A094364: Expansion of (1-5*x)/(1-10*x-100*x^2).

Offset 0, canonical program `A094364.P9698075557508198151`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094364 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094364.P9698075557508198151.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094364.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094374.P7354950833004615143

`A003462(n)+A000079(n)`
-/

namespace A094374.P7354950833004615143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + A000079 n

end

end A094374.P7354950833004615143

noncomputable section

/-- A094374: a(n) = (3^n-1)/2 + 2^n.

Offset 0, canonical program `A094374.P7354950833004615143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094374 (n : ℕ) : ℤ :=
  A094374.P7354950833004615143.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094633.P9931709720735856024

`A000032(n)*A001045(n+1)`
-/

namespace A094633.P9931709720735856024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A001045 (n + 1)

end

end A094633.P9931709720735856024

noncomputable section

/-- A094633: A Lucas Jacobsthal product.

Offset 0, canonical program `A094633.P9931709720735856024`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094633 (n : ℕ) : ℤ :=
  A094633.P9931709720735856024.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094706.P604253351711443591

`A000129(n+2)-2^(n+1)`
-/

namespace A094706.P604253351711443591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A094706.P604253351711443591

noncomputable section

/-- A094706: Convolution of Pell(n) and 2^n.

Offset 0, canonical program `A094706.P604253351711443591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094706 (n : ℕ) : ℤ :=
  A094706.P604253351711443591.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094761.P14380524267373049670

`n+A053186(n)`
-/

namespace A094761.P14380524267373049670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A053186 n

end

end A094761.P14380524267373049670

noncomputable section

/-- A094761: a(n) = n + (square excess of n).

Offset 0, canonical program `A094761.P14380524267373049670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094761 (n : ℕ) : ℤ :=
  A094761.P14380524267373049670.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094765.P643140839429707861

`n+2*A053186(n)`
-/

namespace A094765.P643140839429707861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + 2 * A053186 n

end

end A094765.P643140839429707861

noncomputable section

/-- A094765: a(n) = n + 2 * square excess of n.

Offset 0, canonical program `A094765.P643140839429707861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094765 (n : ℕ) : ℤ :=
  A094765.P643140839429707861.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094765.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094794.P9057796195112425245

`1/n!*A001689(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094794.P9057796195112425245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ) * (A001689 n : ℚ)

end

end A094794.P9057796195112425245

noncomputable section

/-- A094794: a(n) = (1/n!)*A001689(n).

Offset 0, canonical program `A094794.P9057796195112425245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094794 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094794.P9057796195112425245.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094794.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094854.P13897041044567914249

`A061551(2*n)`
-/

namespace A094854.P13897041044567914249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (2 * n)

end

end A094854.P13897041044567914249

noncomputable section

/-- A094854: Number of (s(0), s(1), ..., s(2n)) such that 0 < s(i) < 9 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n, s(0) = 4, s(2n) = 4.

Offset 0, canonical program `A094854.P13897041044567914249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094854 (n : ℕ) : ℤ :=
  A094854.P13897041044567914249.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095000.P5835811688862229281

`A001341(n)/6`
-/

namespace A095000.P5835811688862229281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001341 n : ℚ) / 6

end

end A095000.P5835811688862229281

noncomputable section

/-- A095000: E.g.f.: exp(x)/(1-x)^4.

Offset 0, canonical program `A095000.P5835811688862229281`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095000 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A095000.P5835811688862229281.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095863.P4775484229742451962

`A068092(n+2)-1`
-/

namespace A095863.P4775484229742451962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (n + 2) - 1

end

end A095863.P4775484229742451962

noncomputable section

/-- A095863: Index of largest triangular number with n digits.

Offset 1, canonical program `A095863.P4775484229742451962`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095863 (n : ℕ) : ℤ :=
  A095863.P4775484229742451962.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095863.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095977.P17934905867334659227

`2*A073371(n)`
-/

namespace A095977.P17934905867334659227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073371 n

end

end A095977.P17934905867334659227

noncomputable section

/-- A095977: Expansion of g.f. 2*x / ((1+x)^2*(1-2*x)^2).

Offset 1, canonical program `A095977.P17934905867334659227`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095977 (n : ℕ) : ℤ :=
  A095977.P17934905867334659227.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096302.P2021387449549542969

`81*A053541(n+1)`
-/

namespace A096302.P2021387449549542969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * A053541 (n + 1)

end

end A096302.P2021387449549542969

noncomputable section

/-- A096302: Number of combinations of two natural numbers that together have n digits.

Offset 2, canonical program `A096302.P2021387449549542969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096302 (n : ℕ) : ℤ :=
  A096302.P2021387449549542969.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096313.P13862714613683682245

`(n+1)*A000178(n)`
-/

namespace A096313.P13862714613683682245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000178 n

end

end A096313.P13862714613683682245

noncomputable section

/-- A096313: a(n) = determinant of n X n matrix m(i,j) = Product_{k=1..i} k+j.

Offset 0, canonical program `A096313.P13862714613683682245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096313 (n : ℕ) : ℤ :=
  A096313.P13862714613683682245.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096951.P3902693748175041984

`A015441(2*n+1)`
-/

namespace A096951.P3902693748175041984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (2 * n + 1)

end

end A096951.P3902693748175041984

noncomputable section

/-- A096951: Sum of odd powers of 2 and of 3 divided by 5.

Offset 0, canonical program `A096951.P3902693748175041984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096951 (n : ℕ) : ℤ :=
  A096951.P3902693748175041984.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096951.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096980.P5791948010465145580

`A015519(n+1)+3*A015519(n)`
-/

namespace A096980.P5791948010465145580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015519 (n + 1) + 3 * A015519 n

end

end A096980.P5791948010465145580

noncomputable section

/-- A096980: Expansion of (1+3*x)/(1-2*x-7*x^2).

Offset 0, canonical program `A096980.P5791948010465145580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096980 (n : ℕ) : ℤ :=
  A096980.P5791948010465145580.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096980.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097038.P10084886673612185550

`A001045(n+1)-A077957(n)`
-/

namespace A097038.P10084886673612185550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A077957 n

end

end A097038.P10084886673612185550

noncomputable section

/-- A097038: A Jacobsthal variant.

Offset 0, canonical program `A097038.P10084886673612185550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097038 (n : ℕ) : ℤ :=
  A097038.P10084886673612185550.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097204.P6764667639584434237

`A000522(n)-2^n`
-/

namespace A097204.P6764667639584434237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n - (2 ^ n : ℤ)

end

end A097204.P6764667639584434237

noncomputable section

/-- A097204: Binomial transform of A033312.

Offset 0, canonical program `A097204.P6764667639584434237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097204 (n : ℕ) : ℤ :=
  A097204.P6764667639584434237.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097388.P12380780069865256194

`(-1)^n*A001813(n)`
-/

namespace A097388.P12380780069865256194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001813 n

end

end A097388.P12380780069865256194

noncomputable section

/-- A097388: 2n-th derivative of the Gaussian exp(-x^2) evaluated at x=0.

Offset 0, canonical program `A097388.P12380780069865256194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097388 (n : ℕ) : ℤ :=
  A097388.P12380780069865256194.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097594.P11923209112492583808

`A053602(n+6)`
-/

namespace A097594.P11923209112492583808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (n + 6)

end

end A097594.P11923209112492583808

noncomputable section

/-- A097594: a(n) = (a(n-1) mod a(n-2)) + a(n-2), a(0) = 3, a(1) = 2.

Offset 0, canonical program `A097594.P11923209112492583808`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097594 (n : ℕ) : ℤ :=
  A097594.P11923209112492583808.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097594.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097659.P7185566010094405551

`91^n*A001020(n)`
-/

namespace A097659.P7185566010094405551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (91 ^ n : ℤ) * A001020 n

end

end A097659.P7185566010094405551

noncomputable section

/-- A097659: a(n) = 1001^n.

Offset 0, canonical program `A097659.P7185566010094405551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097659 (n : ℕ) : ℤ :=
  A097659.P7185566010094405551.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097723.P13563129184217168417

`A000203(4*n+3)/4`
-/

namespace A097723.P13563129184217168417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (4 * n + 3) : ℚ) / 4

end

end A097723.P13563129184217168417

noncomputable section

/-- A097723: One fourth of sum of divisors of 4n+3.

Offset 0, canonical program `A097723.P13563129184217168417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097723 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A097723.P13563129184217168417.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097861.P10253467573463981684

`(A002426(n)-1)/2`
-/

namespace A097861.P10253467573463981684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002426 n - 1 : ℚ) / 2

end

end A097861.P10253467573463981684

noncomputable section

/-- A097861: Number of humps in all Motzkin paths of length n. (A hump is an upstep followed by 0 or more flatsteps followed by a downstep.)

Offset 0, canonical program `A097861.P10253467573463981684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097861 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A097861.P10253467573463981684.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097861.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098098.P12502692700835601105

`A000203(A016969(n))/6`
-/

namespace A098098.P12502692700835601105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A016969 n).toNat : ℚ) / 6

end

end A098098.P12502692700835601105

noncomputable section

/-- A098098: a(n) = sigma(6*n+5)/6.

Offset 0, canonical program `A098098.P12502692700835601105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098098 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098098.P12502692700835601105.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098098.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098207.P13599097460298549418

`A033175(n)²`
-/

namespace A098207.P13599097460298549418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033175 n ^ 2

end

end A098207.P13599097460298549418

noncomputable section

/-- A098207: a(n) is the square of near-repdigit number A033175(n).

Offset 0, canonical program `A098207.P13599097460298549418`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098207 (n : ℕ) : ℤ :=
  A098207.P13599097460298549418.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098207.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098209.P11544261485942075249

`A067275(n+1)²-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098209.P11544261485942075249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067275 (n + 1) ^ 2 - 1

end

end A098209.P11544261485942075249

noncomputable section

/-- A098209: a(n) = A067275(n+1)^2 - 1.

Offset 0, canonical program `A098209.P11544261485942075249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098209 (n : ℕ) : ℤ :=
  A098209.P11544261485942075249.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098232.P17209619986284950664

`A000079(A056576(n))`
-/

namespace A098232.P17209619986284950664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056576 n).toNat

end

end A098232.P17209619986284950664

noncomputable section

/-- A098232: Largest power of 2 <= 3^n.

Offset 0, canonical program `A098232.P17209619986284950664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098232 (n : ℕ) : ℤ :=
  A098232.P17209619986284950664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098272.P12307376617500137133

`2^(2*n+1)*A001764(n)`
-/

namespace A098272.P12307376617500137133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * n + 1) : ℤ) * A001764 n

end

end A098272.P12307376617500137133

noncomputable section

/-- A098272: a(n) = 2^(2n+1) * binomial(3n,n)/(2n+1).

Offset 0, canonical program `A098272.P12307376617500137133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098272 (n : ℕ) : ℤ :=
  A098272.P12307376617500137133.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098272.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098460.P2849141228669470070

`n!/2^n*A084609(n)`
-/

namespace A098460.P2849141228669470070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (2 ^ n : ℚ) * (A084609 n : ℚ)

end

end A098460.P2849141228669470070

noncomputable section

/-- A098460: Expansion of e.g.f. 1/sqrt(1-2x-2x^2).

Offset 0, canonical program `A098460.P2849141228669470070`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098460 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098460.P2849141228669470070.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098460.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098461.P15099886996335367272

`n!*A002426(n)`
-/

namespace A098461.P15099886996335367272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002426 n

end

end A098461.P15099886996335367272

noncomputable section

/-- A098461: Expansion of E.g.f.: 1/sqrt(1-2*x-3*x^2).

Offset 0, canonical program `A098461.P15099886996335367272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098461 (n : ℕ) : ℤ :=
  A098461.P15099886996335367272.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098602.P1906301657447036642

`A001652(n)*A046090(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098602.P1906301657447036642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n * A046090 n

end

end A098602.P1906301657447036642

noncomputable section

/-- A098602: a(n) = A001652(n) * A046090(n).

Offset 0, canonical program `A098602.P1906301657447036642`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098602 (n : ℕ) : ℤ :=
  A098602.P1906301657447036642.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098608.P3052446729621167705

`A011557(2*n)`
-/

namespace A098608.P3052446729621167705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (2 * n)

end

end A098608.P3052446729621167705

noncomputable section

/-- A098608: a(n) = 100^n.

Offset 0, canonical program `A098608.P3052446729621167705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098608 (n : ℕ) : ℤ :=
  A098608.P3052446729621167705.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098614.P7605428486748714001

`A000045(n+1)*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098614.P7605428486748714001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000108 n

end

end A098614.P7605428486748714001

noncomputable section

/-- A098614: Product of Fibonacci and Catalan numbers: a(n) = A000045(n+1)*A000108(n).

Offset 0, canonical program `A098614.P7605428486748714001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098614 (n : ℕ) : ℤ :=
  A098614.P7605428486748714001.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098616.P11974349818716749815

`A000129(n+1)*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098616.P11974349818716749815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A000108 n

end

end A098616.P11974349818716749815

noncomputable section

/-- A098616: Product of Pell and Catalan numbers: a(n) = A000129(n+1)*A000108(n).

Offset 0, canonical program `A098616.P11974349818716749815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098616 (n : ℕ) : ℤ :=
  A098616.P11974349818716749815.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098616.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098618.P4837945987705431865

`A007482(n)*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098618.P4837945987705431865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n * A000108 n

end

end A098618.P4837945987705431865

noncomputable section

/-- A098618: Products of A007482 and Catalan numbers: a(n) = A007482(n)*A000108(n).

Offset 0, canonical program `A098618.P4837945987705431865`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098618 (n : ℕ) : ℤ :=
  A098618.P4837945987705431865.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098695.P3947211978106811316

`A006125(n)*A000178(n)`
-/

namespace A098695.P3947211978106811316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n * A000178 n

end

end A098695.P3947211978106811316

noncomputable section

/-- A098695: a(n) = 2^(n(n-1)/2) * Product_{k=1..n} k!.

Offset 0, canonical program `A098695.P3947211978106811316`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098695 (n : ℕ) : ℤ :=
  A098695.P3947211978106811316.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098695.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098706.P4208659802214114039

`2*A076218(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098706.P4208659802214114039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076218 (n + 1)

end

end A098706.P4208659802214114039

noncomputable section

/-- A098706: a(n) = 2*A076218(n).

Offset 0, canonical program `A098706.P4208659802214114039`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098706 (n : ℕ) : ℤ :=
  A098706.P4208659802214114039.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099099.P5331076617350821600

`A017817(4*n)`
-/

namespace A099099.P5331076617350821600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (4 * n)

end

end A099099.P5331076617350821600

noncomputable section

/-- A099099: Quadrisection of a generalized Padovan sequence.

Offset 0, canonical program `A099099.P5331076617350821600`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099099 (n : ℕ) : ℤ :=
  A099099.P5331076617350821600.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099099.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099101.P11883390200381848303

`A017817(5*n)`
-/

namespace A099101.P11883390200381848303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (5 * n)

end

end A099101.P11883390200381848303

noncomputable section

/-- A099101: Quintisection of 1/(1-x^3-x^4).

Offset 0, canonical program `A099101.P11883390200381848303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099101 (n : ℕ) : ℤ :=
  A099101.P11883390200381848303.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099131.P6344728104374845067

`A017827(5*n)`
-/

namespace A099131.P6344728104374845067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (5 * n)

end

end A099131.P6344728104374845067

noncomputable section

/-- A099131: Quintisection and binomial transform of 1/(1-x^4-x^5).

Offset 0, canonical program `A099131.P6344728104374845067`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099131 (n : ℕ) : ℤ :=
  A099131.P6344728104374845067.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099131.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099132.P15506164860063817039

`A017837(5*n)`
-/

namespace A099132.P15506164860063817039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (5 * n)

end

end A099132.P15506164860063817039

noncomputable section

/-- A099132: Quintisection of 1/(1-x^5-x^6).

Offset 0, canonical program `A099132.P15506164860063817039`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099132 (n : ℕ) : ℤ :=
  A099132.P15506164860063817039.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099138.P9201146872815965224

`6^(n-1)*A001045(n)`
-/

namespace A099138.P9201146872815965224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001045 n : ℚ)

end

end A099138.P9201146872815965224

noncomputable section

/-- A099138: a(n) = 6^(n-1)*J(n), where J(n) = A001045(n).

Offset 0, canonical program `A099138.P9201146872815965224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099138 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099138.P9201146872815965224.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099150.P16539555369360394122

`2*A198971(n)`
-/

namespace A099150.P16539555369360394122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198971 n

end

end A099150.P16539555369360394122

noncomputable section

/-- A099150: Positive integers k such that f(k)+f(k)=concatenation of k and k, where f(k)=k(k+3)/2 (A000096).

Offset 1, canonical program `A099150.P16539555369360394122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099150 (n : ℕ) : ℤ :=
  A099150.P16539555369360394122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099159.P6085806474608484575

`A098703(n+1)-A098703(n)`
-/

namespace A099159.P6085806474608484575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 (n + 1) - A098703 n

end

end A099159.P6085806474608484575

noncomputable section

/-- A099159: a(n) = (L(n-2)+2*3^n)/5.

Offset 0, canonical program `A099159.P6085806474608484575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099159 (n : ℕ) : ℤ :=
  A099159.P6085806474608484575.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099179.P12575413784709797631

`A000292(a(n-1))` with `a(0)=2`
-/

namespace A099179.P12575413784709797631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000292 (a (n - 1)).toNat

end

end A099179.P12575413784709797631

noncomputable section

/-- A099179: Iterated tetrahedral numbers.

Offset 1, canonical program `A099179.P12575413784709797631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099179 (n : ℕ) : ℤ :=
  A099179.P12575413784709797631.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099202.P2511305183935106863

`A016116(n)*A006125(n)`
-/

namespace A099202.P2511305183935106863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A006125 n

end

end A099202.P2511305183935106863

noncomputable section

/-- A099202: a(n) = 2^floor(n^2/2).

Offset 0, canonical program `A099202.P2511305183935106863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099202 (n : ℕ) : ℤ :=
  A099202.P2511305183935106863.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099255.P7898401293449603562

`A061084(n+1)+A013655(n+2)`
-/

namespace A099255.P7898401293449603562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + A013655 (n + 2)

end

end A099255.P7898401293449603562

noncomputable section

/-- A099255: Expansion of g.f. (7+6*x-6*x^2-3*x^3)/((x^2+x-1)*(x^2-x-1)).

Offset 0, canonical program `A099255.P7898401293449603562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099255 (n : ℕ) : ℤ :=
  A099255.P7898401293449603562.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099255.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099256.P18427718199767948414

`A013655(n+2)-A061084(n+1)`
-/

namespace A099256.P18427718199767948414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (n + 2) - A061084 (n + 1)

end

end A099256.P18427718199767948414

noncomputable section

/-- A099256: Expansion of g.f. (3-x)*(1+3*x+x^2)/((1-x-x^2)*(1+x-x^2)).

Offset 0, canonical program `A099256.P18427718199767948414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099256 (n : ℕ) : ℤ :=
  A099256.P18427718199767948414.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099256.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099372.P10087808045259126788

`A099371(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099372.P10087808045259126788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099371 n ^ 2

end

end A099372.P10087808045259126788

noncomputable section

/-- A099372: a(n) = A099371(n)^2.

Offset 0, canonical program `A099372.P10087808045259126788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099372 (n : ℕ) : ℤ :=
  A099372.P10087808045259126788.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099372.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099376.P5902379968883628035

`A000108(n+2)-2*A000108(n+1)`
-/

namespace A099376.P5902379968883628035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) - 2 * A000108 (n + 1)

end

end A099376.P5902379968883628035

noncomputable section

/-- A099376: An inverse Chebyshev transform of x^3.

Offset 0, canonical program `A099376.P5902379968883628035`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099376 (n : ℕ) : ℤ :=
  A099376.P5902379968883628035.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099559.P6296366592033553394

`A003520(n+4)-1`
-/

namespace A099559.P6296366592033553394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (n + 4) - 1

end

end A099559.P6296366592033553394

noncomputable section

/-- A099559: a(n) = Sum_{k=0..floor(n/5)} C(n-4k,k+1).

Offset 0, canonical program `A099559.P6296366592033553394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099559 (n : ℕ) : ℤ :=
  A099559.P6296366592033553394.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099559.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099560.P3017801917379421415

`a(n-3)+A000930(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A099560.P3017801917379421415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 3) + A000930 (n - 3)

end

end A099560.P3017801917379421415

noncomputable section

/-- A099560: a(n) = Sum_{k=0..floor(n/3)} C(n-2k,k-1).

Offset 0, canonical program `A099560.P3017801917379421415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099560 (n : ℕ) : ℤ :=
  A099560.P3017801917379421415.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099574.P3155977078359221339

`A003269(n+5)-A079977(n+3)-A079977(n+2)`
-/

namespace A099574.P3155977078359221339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 5) - A079977 (n + 3) - A079977 (n + 2)

end

end A099574.P3155977078359221339

noncomputable section

/-- A099574: Diagonal sums of triangle A099573.

Offset 0, canonical program `A099574.P3155977078359221339`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099574 (n : ℕ) : ℤ :=
  A099574.P3155977078359221339.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099574.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099625.P16184661190719515071

`A000129(n+3)-(n+5)*2^n`
-/

namespace A099625.P16184661190719515071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 3) - ((n + 5) * 2 ^ n : ℤ)

end

end A099625.P16184661190719515071

noncomputable section

/-- A099625: a(n) = Sum_{k=0..floor(n/2)} C(n-k,k+2)*2^(n-k-2)*(1/2)^k.

Offset 0, canonical program `A099625.P16184661190719515071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099625 (n : ℕ) : ℤ :=
  A099625.P16184661190719515071.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099674.P10031925822857989779

`7*A014824(n)`
-/

namespace A099674.P10031925822857989779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A014824 n

end

end A099674.P10031925822857989779

noncomputable section

/-- A099674: Partial sums of repdigits of A002281.

Offset 0, canonical program `A099674.P10031925822857989779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099674 (n : ℕ) : ℤ :=
  A099674.P10031925822857989779.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099754.P15959787038249439815

`A007051(n)+A000079(n)`
-/

namespace A099754.P15959787038249439815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + A000079 n

end

end A099754.P15959787038249439815

noncomputable section

/-- A099754: a(n) = (3^n +1)/2 + 2^n.

Offset 0, canonical program `A099754.P15959787038249439815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099754 (n : ℕ) : ℤ :=
  A099754.P15959787038249439815.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099770.P17702088808317385018

`A000601(A004526(n))`
-/

namespace A099770.P17702088808317385018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (A004526 n).toNat

end

end A099770.P17702088808317385018

noncomputable section

/-- A099770: Expansion of 1/((1-x)*(1-x^2)*(1-x^4)*(1-x^6)).

Offset 0, canonical program `A099770.P17702088808317385018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099770 (n : ℕ) : ℤ :=
  A099770.P17702088808317385018.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099770.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099843.P6765421565920201974

`(-1)^n*A015448(n+1)`
-/

namespace A099843.P6765421565920201974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A015448 (n + 1)

end

end A099843.P6765421565920201974

noncomputable section

/-- A099843: A transform of the Fibonacci numbers.

Offset 0, canonical program `A099843.P6765421565920201974`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099843 (n : ℕ) : ℤ :=
  A099843.P6765421565920201974.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099855.P3189206528298959588

`2*A001787(n)-A009545(n)`
-/

namespace A099855.P3189206528298959588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001787 n - A009545 n

end

end A099855.P3189206528298959588

noncomputable section

/-- A099855: a(n) = n*2^n - 2^(n/2)*sin(Pi*n/4).

Offset 0, canonical program `A099855.P3189206528298959588`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099855 (n : ℕ) : ℤ :=
  A099855.P3189206528298959588.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099920.P1143261801725671417

`a(n-1)+a(n-2)+A000032(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A099920.P1143261801725671417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + a (n - 2) + A000032 (n - 1)

end

end A099920.P1143261801725671417

noncomputable section

/-- A099920: a(n) = (n+1)*F(n), F(n) = Fibonacci numbers A000045.

Offset 0, canonical program `A099920.P1143261801725671417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099920 (n : ℕ) : ℤ :=
  A099920.P1143261801725671417.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099920.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099923.P1127511642265100233

`A001254(n)²`
-/

namespace A099923.P1127511642265100233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 n ^ 2

end

end A099923.P1127511642265100233

noncomputable section

/-- A099923: Fourth powers of Lucas numbers A000032.

Offset 0, canonical program `A099923.P1127511642265100233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099923 (n : ℕ) : ℤ :=
  A099923.P1127511642265100233.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100255.P6489703418769820428

`A000326(n)²`
-/

namespace A100255.P6489703418769820428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n ^ 2

end

end A100255.P6489703418769820428

noncomputable section

/-- A100255: Squares of pentagonal numbers: a(n) = (1/4)*n^2*(3*n-1)^2.

Offset 0, canonical program `A100255.P6489703418769820428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100255 (n : ℕ) : ℤ :=
  A100255.P6489703418769820428.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100255.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100413.P6816807704567596716

`2*(A086943(n+1)+3)`
-/

namespace A100413.P6816807704567596716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086943 (n + 1) + 3)

end

end A100413.P6816807704567596716

noncomputable section

/-- A100413: Numbers k such that k is reversal(k)-th even composite number (k is A004086(k)-th even composite number).

Offset 1, canonical program `A100413.P6816807704567596716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100413 (n : ℕ) : ℤ :=
  A100413.P6816807704567596716.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100413.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100430.P16836244561636270343

`(2*n+1)*A000447(n+1)`
-/

namespace A100430.P16836244561636270343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000447 (n + 1)

end

end A100430.P16836244561636270343

noncomputable section

/-- A100430: Bisection of A002417.

Offset 0, canonical program `A100430.P16836244561636270343`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100430 (n : ℕ) : ℤ :=
  A100430.P16836244561636270343.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100434.P12715157221917597726

`(-1)^floor(n/2)*A000034(n)*A126354(n+3)`
-/

namespace A100434.P12715157221917597726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A000034 n : ℚ) * (A126354 (n + 3) : ℚ)

end

end A100434.P12715157221917597726

noncomputable section

/-- A100434: Expansion of g.f. (1+x)*(3+x)/(1+6*x^2+x^4).

Offset 0, canonical program `A100434.P12715157221917597726`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100434 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100434.P12715157221917597726.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100682.P9371819539211820881

`floor(A000332(n+3)^(1/4))`
-/

namespace A100682.P9371819539211820881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000332 (n + 3) : ℝ) ^ ((1 : ℚ) / 4 : ℝ)⌋

end

end A100682.P9371819539211820881

noncomputable section

/-- A100682: Floor of 4th root of pentatope numbers.

Offset 0, canonical program `A100682.P9371819539211820881`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100682 (n : ℕ) : ℤ :=
  A100682.P9371819539211820881.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101293.P7887106159499828766

`A000032(A000142(n))`
-/

namespace A101293.P7887106159499828766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000142 n).toNat

end

end A101293.P7887106159499828766

noncomputable section

/-- A101293: a(n) = Lucas(n!).

Offset 0, canonical program `A101293.P7887106159499828766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101293 (n : ℕ) : ℤ :=
  A101293.P7887106159499828766.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101342.P11648604390926055153

`A000045(A000225(n))`
-/

namespace A101342.P11648604390926055153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000225 n).toNat

end

end A101342.P11648604390926055153

noncomputable section

/-- A101342: Fibonacci-Mersenne numbers: a(n) = Fibonacci(2^n-1).

Offset 0, canonical program `A101342.P11648604390926055153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101342 (n : ℕ) : ℤ :=
  A101342.P11648604390926055153.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101600.P17060745838590597259

`3^n*A000108(n+1)`
-/

namespace A101600.P17060745838590597259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000108 (n + 1)

end

end A101600.P17060745838590597259

noncomputable section

/-- A101600: Expansion of g.f. c(3x)^2, where c(x) is the g.f. of A000108.

Offset 0, canonical program `A101600.P17060745838590597259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101600 (n : ℕ) : ℤ :=
  A101600.P17060745838590597259.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102305.P7406913302567102323

`1/5*A027578(n)`
-/

namespace A102305.P7406913302567102323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (A027578 n : ℚ)

end

end A102305.P7406913302567102323

noncomputable section

/-- A102305: a(n) = n^2 + 2*n + 3.

Offset 1, canonical program `A102305.P7406913302567102323`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102305 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102305.P7406913302567102323.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102305.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102702.P13405051259545939329

`A010049(n+1)+A000045(n+2)`
-/

namespace A102702.P13405051259545939329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + A000045 (n + 2)

end

end A102702.P13405051259545939329

noncomputable section

/-- A102702: Expansion of (2-x-2*x^2-x^3)/(1-x-x^2)^2.

Offset 0, canonical program `A102702.P13405051259545939329`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102702 (n : ℕ) : ℤ :=
  A102702.P13405051259545939329.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102702.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103194.P3023715330219934413

`n*A000262(n)`
-/

namespace A103194.P3023715330219934413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000262 n

end

end A103194.P3023715330219934413

noncomputable section

/-- A103194: LAH transform of squares.

Offset 0, canonical program `A103194.P3023715330219934413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103194 (n : ℕ) : ℤ :=
  A103194.P3023715330219934413.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103325.P17883416061855842686

`A000032(n)^5`
-/

namespace A103325.P17883416061855842686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 5

end

end A103325.P17883416061855842686

noncomputable section

/-- A103325: Fifth powers of Lucas numbers.

Offset 0, canonical program `A103325.P17883416061855842686`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103325 (n : ℕ) : ℤ :=
  A103325.P17883416061855842686.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103488.P11156896087871937604

`A000079(A005563(n))`
-/

namespace A103488.P11156896087871937604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A005563 n).toNat

end

end A103488.P11156896087871937604

noncomputable section

/-- A103488: a(n) = 2^(n^2-1).

Offset 1, canonical program `A103488.P11156896087871937604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103488 (n : ℕ) : ℤ :=
  A103488.P11156896087871937604.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103586.P4367310415255004496

`A070939(n+A070939(n))`
-/

namespace A103586.P4367310415255004496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 ((n : ℤ) + A070939 n).toNat

end

end A103586.P4367310415255004496

noncomputable section

/-- A103586: a(0)=1, for n > 0: n-th run consists of 2^n-1 copies of n+1.

Offset 0, canonical program `A103586.P4367310415255004496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103586 (n : ℕ) : ℤ :=
  A103586.P4367310415255004496.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103604.P12092912013653746525

`A000579(n+6)*A000579(n+10)`
-/

namespace A103604.P12092912013653746525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) * A000579 (n + 10)

end

end A103604.P12092912013653746525

noncomputable section

/-- A103604: a(n) = binomial(n+6,6) * binomial(n+10,6).

Offset 0, canonical program `A103604.P12092912013653746525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103604 (n : ℕ) : ℤ :=
  A103604.P12092912013653746525.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103604.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103975.P1075848612096770561

`4/3*(A001570(n+2)-1)`
-/

namespace A103975.P1075848612096770561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A001570 (n + 2) - 1 : ℚ)

end

end A103975.P1075848612096770561

noncomputable section

/-- A103975: Smaller side in (a,a+1,a+1)-integer triangle with integer area.

Offset 1, canonical program `A103975.P1075848612096770561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103975 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A103975.P1075848612096770561.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103975.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104221.P14710829544417749963

`2*A004695(n)`
-/

namespace A104221.P14710829544417749963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004695 n

end

end A104221.P14710829544417749963

noncomputable section

/-- A104221: a(n) = Fibonacci(n) - (Fibonacci(n) mod 2).

Offset 0, canonical program `A104221.P14710829544417749963`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104221 (n : ℕ) : ℤ :=
  A104221.P14710829544417749963.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104221.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104473.P11315460636961042842

`A034856(n+2)²-1`
-/

namespace A104473.P11315460636961042842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 2) ^ 2 - 1

end

end A104473.P11315460636961042842

noncomputable section

/-- A104473: a(n) = binomial(n+2,2)*binomial(n+6,2).

Offset 0, canonical program `A104473.P11315460636961042842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104473 (n : ℕ) : ℤ :=
  A104473.P11315460636961042842.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104533.P6201253944801465502

`2^n*A000262(n)`
-/

namespace A104533.P6201253944801465502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000262 n

end

end A104533.P6201253944801465502

noncomputable section

/-- A104533: E.g.f.: exp(2x/(1-2x)).

Offset 0, canonical program `A104533.P6201253944801465502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104533 (n : ℕ) : ℤ :=
  A104533.P6201253944801465502.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104538.P7245622453804026081

`2^n*A057078(n)`
-/

namespace A104538.P7245622453804026081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A057078 n

end

end A104538.P7245622453804026081

noncomputable section

/-- A104538: Expansion of g.f. (1 + 2*x) / (1 + 2*x + 4*x^2).

Offset 0, canonical program `A104538.P7245622453804026081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104538 (n : ℕ) : ℤ :=
  A104538.P7245622453804026081.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104629.P11080252807694944211

`A000957(n+3)`
-/

namespace A104629.P11080252807694944211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 3)

end

end A104629.P11080252807694944211

noncomputable section

/-- A104629: Expansion of (1-2*x-sqrt(1-4*x))/(x^2 * (1+2*x+sqrt(1-4*x))).

Offset 0, canonical program `A104629.P11080252807694944211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104629 (n : ℕ) : ℤ :=
  A104629.P11080252807694944211.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104677.P9466062269045366248

`A000292(n+1)*A000292(n+6)`
-/

namespace A104677.P9466062269045366248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A000292 (n + 6)

end

end A104677.P9466062269045366248

noncomputable section

/-- A104677: a(n) = binomial(n+3,3)*binomial(n+8,3).

Offset 0, canonical program `A104677.P9466062269045366248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104677 (n : ℕ) : ℤ :=
  A104677.P9466062269045366248.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104678.P8785204560591952347

`A000332(n+4)*A000332(n+9)`
-/

namespace A104678.P8785204560591952347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) * A000332 (n + 9)

end

end A104678.P8785204560591952347

noncomputable section

/-- A104678: a(n) = binomial(n+4,4) * binomial(n+9,4).

Offset 0, canonical program `A104678.P8785204560591952347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104678 (n : ℕ) : ℤ :=
  A104678.P8785204560591952347.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104679.P1727988399910519163

`A000389(n+5)*A000389(n+10)`
-/

namespace A104679.P1727988399910519163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) * A000389 (n + 10)

end

end A104679.P1727988399910519163

noncomputable section

/-- A104679: a(n) = C(n+5,5)*C(n+10,5).

Offset 0, canonical program `A104679.P1727988399910519163`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104679 (n : ℕ) : ℤ :=
  A104679.P1727988399910519163.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104679.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104686.P6965947764835045247

`A010875(A000217(n))`
-/

namespace A104686.P6965947764835045247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A000217 n).toNat

end

end A104686.P6965947764835045247

noncomputable section

/-- A104686: a(n) = n*(n+1)/2 (mod 6).

Offset 0, canonical program `A104686.P6965947764835045247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104686 (n : ℕ) : ℤ :=
  A104686.P6965947764835045247.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104769.P1152706327967591794

`(-1)^n*A050935(n+2)`
-/

namespace A104769.P1152706327967591794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A050935 (n + 2)

end

end A104769.P1152706327967591794

noncomputable section

/-- A104769: Expansion of g.f. -x/(1+x-x^3).

Offset 0, canonical program `A104769.P1152706327967591794`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104769 (n : ℕ) : ℤ :=
  A104769.P1152706327967591794.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104777.P15788971021228334833

`A007310(n+1)²`
-/

namespace A104777.P15788971021228334833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) ^ 2

end

end A104777.P15788971021228334833

noncomputable section

/-- A104777: Integer squares congruent to 1 mod 6.

Offset 1, canonical program `A104777.P15788971021228334833`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104777 (n : ℕ) : ℤ :=
  A104777.P15788971021228334833.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104777.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104806.P7328187474629430436

`A000194(A022099(n))`
-/

namespace A104806.P7328187474629430436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A022099 n).toNat

end

end A104806.P7328187474629430436

noncomputable section

/-- A104806: "Round of hypotenuse", see comments.

Offset 1, canonical program `A104806.P7328187474629430436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104806 (n : ℕ) : ℤ :=
  A104806.P7328187474629430436.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105058.P1292088914196115128

`2*A001109(n+1)-(-1)^n`
-/

namespace A105058.P1292088914196115128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001109 (n + 1) - (-1) ^ n

end

end A105058.P1292088914196115128

noncomputable section

/-- A105058: Expansion of g.f. (1+8*x-x^2)/((1+x)*(1-6*x+x^2)).

Offset 0, canonical program `A105058.P1292088914196115128`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105058 (n : ℕ) : ℤ :=
  A105058.P1292088914196115128.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105081.P13201815104131715710

`1+A003188(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A105081.P13201815104131715710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A003188 n

end

end A105081.P13201815104131715710

noncomputable section

/-- A105081: a(n) = 1 + A003188(n - 1), n >= 1.

Offset 1, canonical program `A105081.P13201815104131715710`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105081 (n : ℕ) : ℤ :=
  A105081.P13201815104131715710.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105082.P2120761273137320325

`2*A001333(n)+3*A048654(n)`
-/

namespace A105082.P2120761273137320325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001333 n + 3 * A048654 n

end

end A105082.P2120761273137320325

noncomputable section

/-- A105082: Expansion of (5+4x)/(1-2x-x^2).

Offset 0, canonical program `A105082.P2120761273137320325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105082 (n : ℕ) : ℤ :=
  A105082.P2120761273137320325.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105082.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105225.P12311521313674645843

`(A002249(n+1)+1)/2`
-/

namespace A105225.P12311521313674645843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002249 (n + 1) + 1 : ℚ) / 2

end

end A105225.P12311521313674645843

noncomputable section

/-- A105225: a(n+3) = 2a(n+2) - 3a(n+1) + 2a(n); a(0) = 1, a(1) = -1, a(2) = -2.

Offset 0, canonical program `A105225.P12311521313674645843`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105225 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A105225.P12311521313674645843.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105824.P473493758431257763

`A010873(A000203(n+1))`
-/

namespace A105824.P473493758431257763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A000203 (n + 1)).toNat

end

end A105824.P473493758431257763

noncomputable section

/-- A105824: a(n) = sigma(n) mod 4.

Offset 1, canonical program `A105824.P473493758431257763`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105824 (n : ℕ) : ℤ :=
  A105824.P473493758431257763.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105852.P2447880312981508747

`A010878(A000203(n+1))`
-/

namespace A105852.P2447880312981508747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A000203 (n + 1)).toNat

end

end A105852.P2447880312981508747

noncomputable section

/-- A105852: a(n) = sigma(n) mod 9.

Offset 1, canonical program `A105852.P2447880312981508747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105852 (n : ℕ) : ℤ :=
  A105852.P2447880312981508747.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105852.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105853.P14164389647555721919

`A010879(A000203(n+1))`
-/

namespace A105853.P14164389647555721919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A000203 (n + 1)).toNat

end

end A105853.P14164389647555721919

noncomputable section

/-- A105853: a(n) = sigma(n) (mod 10), i.e., unit's digit of sigma(n).

Offset 1, canonical program `A105853.P14164389647555721919`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105853 (n : ℕ) : ℤ :=
  A105853.P14164389647555721919.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105853.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105926.P9471521188307592422

`A000166(n+1)-A000166(n)`
-/

namespace A105926.P9471521188307592422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) - A000166 n

end

end A105926.P9471521188307592422

noncomputable section

/-- A105926: First differences of A000166.

Offset 0, canonical program `A105926.P9471521188307592422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105926 (n : ℕ) : ℤ :=
  A105926.P9471521188307592422.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105926.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105939.P2896659580382746701

`A000292(n+1)*A000292(n+4)`
-/

namespace A105939.P2896659580382746701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A000292 (n + 4)

end

end A105939.P2896659580382746701

noncomputable section

/-- A105939: a(n) = binomial(n+3,3)*binomial(n+6,3).

Offset 0, canonical program `A105939.P2896659580382746701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105939 (n : ℕ) : ℤ :=
  A105939.P2896659580382746701.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106514.P7086376323718576837

`A001333(n+2)-2^(n+1)`
-/

namespace A106514.P7086376323718576837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A106514.P7086376323718576837

noncomputable section

/-- A106514: Expansion of (1-x)/((1-2*x)*(1-2*x-x^2)).

Offset 0, canonical program `A106514.P7086376323718576837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106514 (n : ℕ) : ℤ :=
  A106514.P7086376323718576837.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106514.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106541.P7427309555548918564

`2*A106540(n+1)`
-/

namespace A106541.P7427309555548918564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106540 (n + 1)

end

end A106541.P7427309555548918564

noncomputable section

/-- A106541: a(n) = a(n-1) - 2*a(n-2) - 3*a(n-3) - ... - (n-1)*a(1), with a(1) = a(2) = 2, a(3) = -2.

Offset 1, canonical program `A106541.P7427309555548918564`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106541 (n : ℕ) : ℤ :=
  A106541.P7427309555548918564.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106542.P11856518381955656934

`3*A106540(n+1)`
-/

namespace A106542.P11856518381955656934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A106540 (n + 1)

end

end A106542.P11856518381955656934

noncomputable section

/-- A106542: a(n) = a(n-1) - 2*a(n-2) - 3*a(n-3) - ... - (n-1)*a(1), a(1) = a(2) = 3, a(3) = -3.

Offset 1, canonical program `A106542.P11856518381955656934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106542 (n : ℕ) : ℤ :=
  A106542.P11856518381955656934.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106627.P18116822297848736011

`A000032(n)*A073817(n)`
-/

namespace A106627.P18116822297848736011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A073817 n

end

end A106627.P18116822297848736011

noncomputable section

/-- A106627: Product L(n)*L_4(n), where L(n) are Lucas numbers and L_4(n) are Lucas 4-step numbers.

Offset 0, canonical program `A106627.P18116822297848736011`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106627 (n : ℕ) : ℤ :=
  A106627.P18116822297848736011.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106632.P2326918612903638307

`(-1)^(n+1)*A087455(n+1)²`
-/

namespace A106632.P2326918612903638307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A087455 (n + 1) ^ 2

end

end A106632.P2326918612903638307

noncomputable section

/-- A106632: Expansion of g.f. -(1+27*x^2)/((1+3*x)*(1-2*x+9*x^2)).

Offset 0, canonical program `A106632.P2326918612903638307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106632 (n : ℕ) : ℤ :=
  A106632.P2326918612903638307.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106632.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106664.P3827320183996834941

`1/2*(A010673(n)-A099087(n+2))`
-/

namespace A106664.P3827320183996834941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A010673 n - A099087 (n + 2) : ℚ)

end

end A106664.P3827320183996834941

noncomputable section

/-- A106664: Expansion of g.f.: (1-3*x+x^2)/((1-x)*(1+x)*(1-2*x+2*x^2)).

Offset 0, canonical program `A106664.P3827320183996834941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106664 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A106664.P3827320183996834941.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107025.P4940430506206915883

`A017837(6*n)`
-/

namespace A107025.P4940430506206915883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (6 * n)

end

end A107025.P4940430506206915883

noncomputable section

/-- A107025: Binomial transform of the expansion of 1/(1-x^5-x^6).

Offset 0, canonical program `A107025.P4940430506206915883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107025 (n : ℕ) : ℤ :=
  A107025.P4940430506206915883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107388.P5490449026640914065

`(-1)^(n+1)+(3*A001353(n+1)-11*A001353(n)-1)/2`
-/

namespace A107388.P5490449026640914065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 1) : ℚ) + (3 * A001353 (n + 1) - 11 * A001353 n - 1 : ℚ) / 2

end

end A107388.P5490449026640914065

noncomputable section

/-- A107388: Expansion of x*(3*x-1)*(2*x-1) / ( (1-x)*(1+x)*(x^2-4*x+1) ).

Offset 0, canonical program `A107388.P5490449026640914065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107388.P5490449026640914065.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107751.P15134541237902827226

`A107750(n+1)-A107750(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A107751.P15134541237902827226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (n + 1) - A107750 n

end

end A107751.P15134541237902827226

noncomputable section

/-- A107751: a(n) = A107750(n+1) - A107750(n).

Offset 0, canonical program `A107751.P15134541237902827226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107751 (n : ℕ) : ℤ :=
  A107751.P15134541237902827226.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107751.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107769.P12762071507558441473

`1/4*(A001333(n+2)-2*A000129(floor(n/2)+2)+1)`
-/

namespace A107769.P12762071507558441473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A001333 (n + 2) - 2 * A000129 (⌊(n : ℚ) / 2⌋ + 2).toNat + 1 : ℚ)

end

end A107769.P12762071507558441473

noncomputable section

/-- A107769: a(n) = (A001333(n+1) - 2*A005409(floor((n+3)/2)) - 1) / 4.

Offset 0, canonical program `A107769.P12762071507558441473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107769 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107769.P12762071507558441473.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107906.P3418215027658519983

`2^A014601(n)`
-/

namespace A107906.P3418215027658519983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A014601 n : ℤ)

end

end A107906.P3418215027658519983

noncomputable section

/-- A107906: Expansion of (1+8*x)/(1-16*x^2).

Offset 0, canonical program `A107906.P3418215027658519983`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107906 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107906.P3418215027658519983.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107906.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108078.P9221918094347988259

`A059332(n)*(n+1)!`
-/

namespace A108078.P9221918094347988259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059332 n * (Nat.factorial (n + 1) : ℤ)

end

end A108078.P9221918094347988259

noncomputable section

/-- A108078: Determinant of a Hankel matrix with factorial elements.

Offset 0, canonical program `A108078.P9221918094347988259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108078 (n : ℕ) : ℤ :=
  A108078.P9221918094347988259.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108225.P4355543073646989111

`A002658(n-1)+a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A108225.P4355543073646989111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A002658 (n - 1) + a (n - 1)

end

end A108225.P4355543073646989111

noncomputable section

/-- A108225: a(0) = 0, a(1) = 2; for n >= 2, a(n) = (a(n-1) + a(n-2))*(a(n-1) - a(n-2) + 1)/2.

Offset 0, canonical program `A108225.P4355543073646989111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108225 (n : ℕ) : ℤ :=
  A108225.P4355543073646989111.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108400.P2826040634695423638

`A006125(n+1)*A000178(n)`
-/

namespace A108400.P2826040634695423638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) * A000178 n

end

end A108400.P2826040634695423638

noncomputable section

/-- A108400: a(n) = Product_{k = 0..n} (2^k * k!).

Offset 0, canonical program `A108400.P2826040634695423638`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108400 (n : ℕ) : ℤ :=
  A108400.P2826040634695423638.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108479.P3495565561315379585

`A005252(2*n)`
-/

namespace A108479.P3495565561315379585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (2 * n)

end

end A108479.P3495565561315379585

noncomputable section

/-- A108479: Antidiagonal sums of number triangle A086645.

Offset 0, canonical program `A108479.P3495565561315379585`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108479 (n : ℕ) : ℤ :=
  A108479.P3495565561315379585.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108495.P10044637329903708727

`(n-1)*A059721(n)`
-/

namespace A108495.P10044637329903708727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A059721 n

end

end A108495.P10044637329903708727

noncomputable section

/-- A108495: a(n) = (n^7 - n)/6.

Offset 0, canonical program `A108495.P10044637329903708727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108495 (n : ℕ) : ℤ :=
  A108495.P10044637329903708727.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109394.P15748050402966565973

`A000934(A000934(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109394.P15748050402966565973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000934 (A000934 n).toNat

end

end A109394.P15748050402966565973

noncomputable section

/-- A109394: A000934(A000934(n)).

Offset 0, canonical program `A109394.P15748050402966565973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109394 (n : ℕ) : ℤ :=
  A109394.P15748050402966565973.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109394.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109622.P8458736904500256362

`A005993(n)-n`
-/

namespace A109622.P8458736904500256362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n - (n : ℤ)

end

end A109622.P8458736904500256362

noncomputable section

/-- A109622: Number of different isotemporal classes of diasters with n peripheral edges.

Offset 0, canonical program `A109622.P8458736904500256362`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109622 (n : ℕ) : ℤ :=
  A109622.P8458736904500256362.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109900.P16987226196042379863

`A034828(n+1)`
-/

namespace A109900.P16987226196042379863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 1)

end

end A109900.P16987226196042379863

noncomputable section

/-- A109900: The (n,r)-th term of the following triangle is T(n)-T(r) for r = 0 to n. The n-th row contains n+1 terms. T(n) = the n-th triangular number = n(n+1)/2. Sequence contains the sum of terms at a 45-degree angle.

Offset 0, canonical program `A109900.P16987226196042379863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109900 (n : ℕ) : ℤ :=
  A109900.P16987226196042379863.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110195.P17809634770385540874

`A001020(A161680(n))`
-/

namespace A110195.P17809634770385540874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A161680 n).toNat

end

end A110195.P17809634770385540874

noncomputable section

/-- A110195: a(n) = 11^((n^2-n)/2).

Offset 0, canonical program `A110195.P17809634770385540874`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110195 (n : ℕ) : ℤ :=
  A110195.P17809634770385540874.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110294.P7455359676219234054

`(3*(-1)^n-1)*A001353(n+1)/2`
-/

namespace A110294.P7455359676219234054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (-1) ^ n - 1) * A001353 (n + 1) : ℚ) / 2

end

end A110294.P7455359676219234054

noncomputable section

/-- A110294: a(2*n) = A028230(n), a(2*n+1) = -A067900(n+1).

Offset 0, canonical program `A110294.P7455359676219234054`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110294 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A110294.P7455359676219234054.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110294.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110450.P114851272246151369

`A002378(n)+A062392(n)`
-/

namespace A110450.P114851272246151369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + A062392 n

end

end A110450.P114851272246151369

noncomputable section

/-- A110450: a(n) = n*(n+1)*(n^2+n+1)/2.

Offset 0, canonical program `A110450.P114851272246151369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110450 (n : ℕ) : ℤ :=
  A110450.P114851272246151369.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110491.P10113508686067152025

`n!*A063886(n)`
-/

namespace A110491.P10113508686067152025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A063886 n

end

end A110491.P10113508686067152025

noncomputable section

/-- A110491: Expansion of e.g.f.: sqrt(1+2x)/sqrt(1-2x).

Offset 0, canonical program `A110491.P10113508686067152025`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110491 (n : ℕ) : ℤ :=
  A110491.P10113508686067152025.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110512.P10566462394492671999

`(-1)^n*A078020(n)`
-/

namespace A110512.P10566462394492671999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A078020 n

end

end A110512.P10566462394492671999

noncomputable section

/-- A110512: Expansion of (1 + x)/(1 + x + 2x^2).

Offset 0, canonical program `A110512.P10566462394492671999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110512 (n : ℕ) : ℤ :=
  A110512.P10566462394492671999.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110524.P7895477528921907047

`(-1)^n*A077999(n)`
-/

namespace A110524.P7895477528921907047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077999 n

end

end A110524.P7895477528921907047

noncomputable section

/-- A110524: Expansion of (1 + x)/(1 + 2*x + 2*x^3).

Offset 0, canonical program `A110524.P7895477528921907047`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110524 (n : ℕ) : ℤ :=
  A110524.P7895477528921907047.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110527.P11308464237832908582

`(-1)^n+3*A001076(n)-A015448(n)`
-/

namespace A110527.P11308464237832908582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 3 * A001076 n - A015448 n

end

end A110527.P11308464237832908582

noncomputable section

/-- A110527: a(n+3) = 3*a(n+2) + 5*a(n+1) + a(n), a(0) = 0, a(1) = 1, a(2) = 8.

Offset 0, canonical program `A110527.P11308464237832908582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110527 (n : ℕ) : ℤ :=
  A110527.P11308464237832908582.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110528.P118056775620788616

`A001077(n+1)-(-1)^n`
-/

namespace A110528.P118056775620788616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 (n + 1) - (-1) ^ n

end

end A110528.P118056775620788616

noncomputable section

/-- A110528: a(n+3) = 3*a(n+2) + 5*a(n+1) + a(n), a(0) = 1, a(1) = 10, a(2) = 37.

Offset 0, canonical program `A110528.P118056775620788616`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110528 (n : ℕ) : ℤ :=
  A110528.P118056775620788616.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110609.P15836528026083436779

`n²*A000108(n)`
-/

namespace A110609.P15836528026083436779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000108 n

end

end A110609.P15836528026083436779

noncomputable section

/-- A110609: a(n) = n * binomial(2*n, n-1).

Offset 0, canonical program `A110609.P15836528026083436779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110609 (n : ℕ) : ℤ :=
  A110609.P15836528026083436779.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110657.P7617019695067142471

`A028242(A028242(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110657.P7617019695067142471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A028242 n).toNat

end

end A110657.P7617019695067142471

noncomputable section

/-- A110657: a(n) = A028242(A028242(n)).

Offset 0, canonical program `A110657.P7617019695067142471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110657 (n : ℕ) : ℤ :=
  A110657.P7617019695067142471.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110659.P2010011942329232190

`A028242(ceil(n/2))`
-/

namespace A110659.P2010011942329232190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ⌈(n : ℚ) / 2⌉.toNat

end

end A110659.P2010011942329232190

noncomputable section

/-- A110659: a(n) = A028242(A110654(n)).

Offset 0, canonical program `A110659.P2010011942329232190`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110659 (n : ℕ) : ℤ :=
  A110659.P2010011942329232190.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110665.P12712309309728189405

`n*A010892(n)`
-/

namespace A110665.P12712309309728189405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010892 n

end

end A110665.P12712309309728189405

noncomputable section

/-- A110665: Sequence is {a(0,n)}, where a(m,0)=0, a(m,n) = a(m-1,n)+a(m,n-1) and a(0,n) is such that a(n,n) = n for all n.

Offset 0, canonical program `A110665.P12712309309728189405`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110665 (n : ℕ) : ℤ :=
  A110665.P12712309309728189405.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110665.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110903.P17200263053275712768

`A000142(n)-A006882(n)`
-/

namespace A110903.P17200263053275712768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A006882 n

end

end A110903.P17200263053275712768

noncomputable section

/-- A110903: Difference between the factorial of n and the double factorial of n.

Offset 0, canonical program `A110903.P17200263053275712768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110903 (n : ℕ) : ℤ :=
  A110903.P17200263053275712768.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110903.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111144.P12188021970188586673

`A000292(n)+4*n²+30*n`
-/

namespace A111144.P12188021970188586673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (4 * n ^ 2 : ℤ) + (30 * n : ℤ)

end

end A111144.P12188021970188586673

noncomputable section

/-- A111144: a(n) = n*(n+13)*(n+14)/6.

Offset 0, canonical program `A111144.P12188021970188586673`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111144 (n : ℕ) : ℤ :=
  A111144.P12188021970188586673.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111425.P17236180554162178989

`A000073(A000045(n))`
-/

namespace A111425.P17236180554162178989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A000045 n).toNat

end

end A111425.P17236180554162178989

noncomputable section

/-- A111425: a(n) = tribonacci(Fibonacci(n)).

Offset 0, canonical program `A111425.P17236180554162178989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111425 (n : ℕ) : ℤ :=
  A111425.P17236180554162178989.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111425.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111427.P8272385807123943904

`A000073(A000078(n))`
-/

namespace A111427.P8272385807123943904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A000078 n).toNat

end

end A111427.P8272385807123943904

noncomputable section

/-- A111427: Tribonacci(tetranacci(n)).

Offset 0, canonical program `A111427.P8272385807123943904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111427 (n : ℕ) : ℤ :=
  A111427.P8272385807123943904.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111428.P16386986194206369619

`A000073(A001591(n))`
-/

namespace A111428.P16386986194206369619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A001591 n).toNat

end

end A111428.P16386986194206369619

noncomputable section

/-- A111428: Tribonacci(pentanacci(n)).

Offset 0, canonical program `A111428.P16386986194206369619`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111428 (n : ℕ) : ℤ :=
  A111428.P16386986194206369619.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111429.P5749061677914462688

`A000073(A001592(n))`
-/

namespace A111429.P5749061677914462688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A001592 n).toNat

end

end A111429.P5749061677914462688

noncomputable section

/-- A111429: Tribonacci(hexanacci(n)).

Offset 0, canonical program `A111429.P5749061677914462688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111429 (n : ℕ) : ℤ :=
  A111429.P5749061677914462688.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111430.P28627654388380684

`A000073(A066178(n))`
-/

namespace A111430.P28627654388380684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A066178 n).toNat

end

end A111430.P28627654388380684

noncomputable section

/-- A111430: Tribonacci(heptanacci(n)).

Offset 0, canonical program `A111430.P28627654388380684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111430 (n : ℕ) : ℤ :=
  A111430.P28627654388380684.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111431.P16385383920109285365

`A000045(A000073(n))`
-/

namespace A111431.P16385383920109285365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000073 n).toNat

end

end A111431.P16385383920109285365

noncomputable section

/-- A111431: a(n) = Fibonacci(tribonacci(n)).

Offset 0, canonical program `A111431.P16385383920109285365`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111431 (n : ℕ) : ℤ :=
  A111431.P16385383920109285365.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111432.P2724493811187227791

`A000045(A000078(n))`
-/

namespace A111432.P2724493811187227791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000078 n).toNat

end

end A111432.P2724493811187227791

noncomputable section

/-- A111432: Fibonacci(tetranacci(n)).

Offset 0, canonical program `A111432.P2724493811187227791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111432 (n : ℕ) : ℤ :=
  A111432.P2724493811187227791.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111432.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111433.P8759241119554715409

`A000045(A001591(n))`
-/

namespace A111433.P8759241119554715409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001591 n).toNat

end

end A111433.P8759241119554715409

noncomputable section

/-- A111433: Fibonacci(pentanacci(n)).

Offset 0, canonical program `A111433.P8759241119554715409`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111433 (n : ℕ) : ℤ :=
  A111433.P8759241119554715409.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111435.P18273500984536572132

`A000045(A001592(n))`
-/

namespace A111435.P18273500984536572132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001592 n).toNat

end

end A111435.P18273500984536572132

noncomputable section

/-- A111435: a(n) = Fibonacci(hexanacci(n)).

Offset 0, canonical program `A111435.P18273500984536572132`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111435 (n : ℕ) : ℤ :=
  A111435.P18273500984536572132.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111435.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111438.P9072623533357938817

`A000045(A066178(n))`
-/

namespace A111438.P9072623533357938817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A066178 n).toNat

end

end A111438.P9072623533357938817

noncomputable section

/-- A111438: Fibonacci(heptanacci(n)), restricted to nonzero heptanacci numbers.

Offset 0, canonical program `A111438.P9072623533357938817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111438 (n : ℕ) : ℤ :=
  A111438.P9072623533357938817.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111647.P7618949794261441761

`A001541(n)*A001653(n+1)*A002315(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111647.P7618949794261441761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n * A001653 (n + 1) * A002315 n

end

end A111647.P7618949794261441761

noncomputable section

/-- A111647: a(n) = A001541(n)*A001653(n+1)*A002315(n).

Offset 0, canonical program `A111647.P7618949794261441761`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111647 (n : ℕ) : ℤ :=
  A111647.P7618949794261441761.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111648.P260090981944269229

`A038761(n)²+2`
-/

namespace A111648.P260090981944269229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038761 n ^ 2 + 2

end

end A111648.P260090981944269229

noncomputable section

/-- A111648: a(n) = A001541(n)^2 + A001653(n+1)^2 + A002315(n)^2.

Offset 0, canonical program `A111648.P260090981944269229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111648 (n : ℕ) : ℤ :=
  A111648.P260090981944269229.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111648.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111649.P4548152678062560372

`2*A046176(n+1)+1`
-/

namespace A111649.P4548152678062560372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046176 (n + 1) + 1

end

end A111649.P4548152678062560372

noncomputable section

/-- A111649: a(n) = A001541(n)*A001653(n+1) + A001541(n)*A002315(n) + A001653(n+1)*A002315(n).

Offset 0, canonical program `A111649.P4548152678062560372`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111649 (n : ℕ) : ℤ :=
  A111649.P4548152678062560372.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111649.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111650.P12812755283030262400

`2*A002024(n+1)`
-/

namespace A111650.P12812755283030262400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002024 (n + 1)

end

end A111650.P12812755283030262400

noncomputable section

/-- A111650: 2n appears n times (n>0).

Offset 1, canonical program `A111650.P12812755283030262400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111650 (n : ℕ) : ℤ :=
  A111650.P12812755283030262400.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111652.P14375499418196975320

`3*A002024(n+1)`
-/

namespace A111652.P14375499418196975320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002024 (n + 1)

end

end A111652.P14375499418196975320

noncomputable section

/-- A111652: 3n appears n times.

Offset 1, canonical program `A111652.P14375499418196975320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111652 (n : ℕ) : ℤ :=
  A111652.P14375499418196975320.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111746.P11249351427940693566

`floor(A000447(n+1)/2)`
-/

namespace A111746.P11249351427940693566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000447 (n + 1) : ℚ) / 2⌋

end

end A111746.P11249351427940693566

noncomputable section

/-- A111746: Number of squares in the interior of the square with vertices (n,0), (0,n), (-n,0) and (0,-n) in a square (x,y)-grid.

Offset 0, canonical program `A111746.P11249351427940693566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111746 (n : ℕ) : ℤ :=
  A111746.P11249351427940693566.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111746.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111864.P59391451107892372

`A002275(A000213(n))`
-/

namespace A111864.P59391451107892372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A000213 n).toNat

end

end A111864.P59391451107892372

noncomputable section

/-- A111864: Define the first three terms to be 1, 1 and 1. All the other terms are obtained by concatenating the three previous terms.

Offset 0, canonical program `A111864.P59391451107892372`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111864 (n : ℕ) : ℤ :=
  A111864.P59391451107892372.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111864.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111883.P5174649499070392793

`A000085(n)²`
-/

namespace A111883.P5174649499070392793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n ^ 2

end

end A111883.P5174649499070392793

noncomputable section

/-- A111883: Unsigned row sums of triangle A111595 (normalized rescaled squared Hermite polynomials).

Offset 0, canonical program `A111883.P5174649499070392793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111883 (n : ℕ) : ℤ :=
  A111883.P5174649499070392793.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112261.P11239402943242375889

`A112260(n+2)-A112260(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112261.P11239402943242375889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112260 (n + 2) - A112260 (n + 1)

end

end A112261.P11239402943242375889

noncomputable section

/-- A112261: a(n) = A112260(n+1) - A112260(n).

Offset 1, canonical program `A112261.P11239402943242375889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112261 (n : ℕ) : ℤ :=
  A112261.P11239402943242375889.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112387.P10587408961557432993

`A135318(n+(-1)^n)`
-/

namespace A112387.P10587408961557432993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 ((n : ℤ) + (-1) ^ n).toNat

end

end A112387.P10587408961557432993

noncomputable section

/-- A112387: a(n) = 2^(n/2) if n is even and a(n-1) - a(n-2) if n is odd, a(1) = 1.

Offset 0, canonical program `A112387.P10587408961557432993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112387 (n : ℕ) : ℤ :=
  A112387.P10587408961557432993.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112496.P6425279445534494343

`4*a(n-1)+(n+5)*A112495(n)` with `a(0)=15`
-/

namespace A112496.P6425279445534494343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  4 * a (n - 1) + (n + 5 : ℤ) * A112495 n

end

end A112496.P6425279445534494343

noncomputable section

/-- A112496: Fourth column of triangle A112493 used for e.g.f.s of Stirling2 diagonals.

Offset 0, canonical program `A112496.P6425279445534494343`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112496 (n : ℕ) : ℤ :=
  A112496.P6425279445534494343.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113224.P17804576340316238589

`A001333(n+1)-A000035(n)`
-/

namespace A113224.P17804576340316238589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A000035 n

end

end A113224.P17804576340316238589

noncomputable section

/-- A113224: a(2n) = A002315(n), a(2n+1) = A082639(n+1).

Offset 0, canonical program `A113224.P17804576340316238589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113224 (n : ℕ) : ℤ :=
  A113224.P17804576340316238589.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113436.P12046965809021464307

`A113435(3*n)`
-/

namespace A113436.P12046965809021464307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (3 * n)

end

end A113436.P12046965809021464307

noncomputable section

/-- A113436: First row of A113435.

Offset 0, canonical program `A113436.P12046965809021464307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113436 (n : ℕ) : ℤ :=
  A113436.P12046965809021464307.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113437.P16448476863721399276

`A113435(3*n+1)`
-/

namespace A113437.P16448476863721399276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (3 * n + 1)

end

end A113437.P16448476863721399276

noncomputable section

/-- A113437: Second row of A113435.

Offset 0, canonical program `A113437.P16448476863721399276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113437 (n : ℕ) : ℤ :=
  A113437.P16448476863721399276.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113437.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113442.P6536560468175472114

`A113439(4*n+2)`
-/

namespace A113442.P6536560468175472114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (4 * n + 2)

end

end A113442.P6536560468175472114

noncomputable section

/-- A113442: Third row of A113439.

Offset 0, canonical program `A113442.P6536560468175472114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113442 (n : ℕ) : ℤ :=
  A113442.P6536560468175472114.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113442.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113443.P4465763249933383066

`A113439(4*n+3)`
-/

namespace A113443.P4465763249933383066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (4 * n + 3)

end

end A113443.P4465763249933383066

noncomputable section

/-- A113443: Fourth row of A113439.

Offset 0, canonical program `A113443.P4465763249933383066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113443 (n : ℕ) : ℤ :=
  A113443.P4465763249933383066.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113682.P13320769274093065264

`(A002426(n+1)+(-1)^n)/2`
-/

namespace A113682.P13320769274093065264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002426 (n + 1) + (-1) ^ n : ℚ) / 2

end

end A113682.P13320769274093065264

noncomputable section

/-- A113682: Expansion of 2/(sqrt(1-2*x-3*x^2)*(1+x+sqrt(1-2*x-3*x^2))).

Offset 0, canonical program `A113682.P13320769274093065264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113682 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113682.P13320769274093065264.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113835.P14549211177971540180

`a(n-1)+2^A007494(n)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113835.P14549211177971540180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (A007494 n : ℤ)

end

end A113835.P14549211177971540180

noncomputable section

/-- A113835: a(n) = a(n-1) + 2^(A007494(n-1)).

Offset 1, canonical program `A113835.P14549211177971540180`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113835 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113835.P14549211177971540180.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A113835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A114211.P9397835377014614280

`a(n-1)+(n-1)*(n+2)+A104249(n)` with `a(0)=1`
-/

namespace A114211.P9397835377014614280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) * (n + 2 : ℤ) + A104249 n

end

end A114211.P9397835377014614280

noncomputable section

/-- A114211: a(n) = (5*n^3+12*n^2+n+6)/6.

Offset 0, canonical program `A114211.P9397835377014614280`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114211 (n : ℕ) : ℤ :=
  A114211.P9397835377014614280.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114211.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A114552.P16686322508124319291

`A112373(n+1)/A112373(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114552.P16686322508124319291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112373 (n + 1) : ℚ) / (A112373 n : ℚ)

end

end A114552.P16686322508124319291

noncomputable section

/-- A114552: Odd-indexed bisection of A114551, which is the continued fraction expansion of Sum_{n>=0} 1/A112373(n); also, a(n) = A112373(n+1)/A112373(n) for n>=0.

Offset 0, canonical program `A114552.P16686322508124319291`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A114552.P16686322508124319291.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A114552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086953.P11034586102236523776

`A024493(n)-A131708(n)+A024495(n)`
-/

namespace A086953.P11034586102236523776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n - A131708 n + A024495 n

end

end A086953.P11034586102236523776

noncomputable section

/-- A086953: Binomial transform of (-1)^mod(n,3) (A257075).

Offset 0, canonical program `A086953.P11034586102236523776`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086953 (n : ℕ) : ℤ :=
  A086953.P11034586102236523776.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086953.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087205.P8692516244393102850

`(-1)^(n+1)*A319196(n+1)`
-/

namespace A087205.P8692516244393102850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A319196 (n + 1)

end

end A087205.P8692516244393102850

noncomputable section

/-- A087205: a(n) = -2*a(n-1) + 4*a(n-2), a(0)=1, a(1)=2.

Offset 0, canonical program `A087205.P8692516244393102850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087205 (n : ℕ) : ℤ :=
  A087205.P8692516244393102850.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093123.P8087304089970880975

`2^n*A093129(n)`
-/

namespace A093123.P8087304089970880975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A093129 n

end

end A093123.P8087304089970880975

noncomputable section

/-- A093123: Third binomial transform of Fibonacci(3n-1) (A015448).

Offset 0, canonical program `A093123.P8087304089970880975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093123 (n : ℕ) : ℤ :=
  A093123.P8087304089970880975.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096363.P15742733776789124469

`5*A114307(n+1)`
-/

namespace A096363.P15742733776789124469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A114307 (n + 1)

end

end A096363.P15742733776789124469

noncomputable section

/-- A096363: Length of repeating cycle of the final n digits in the Fibonacci sequence.

Offset 1, canonical program `A096363.P15742733776789124469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096363 (n : ℕ) : ℤ :=
  A096363.P15742733776789124469.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098647.P17253552758232740002

`4^n*A098648(n)`
-/

namespace A098647.P17253552758232740002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A098648 n

end

end A098647.P17253552758232740002

noncomputable section

/-- A098647: Trace sequence associated to the 4 X 4 Krawtchouk matrix and its transpose.

Offset 0, canonical program `A098647.P17253552758232740002`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098647 (n : ℕ) : ℤ :=
  A098647.P17253552758232740002.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099480.P13257379117522122156

`A287393(n+1)/2`
-/

namespace A099480.P13257379117522122156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287393 (n + 1) : ℚ) / 2

end

end A099480.P13257379117522122156

noncomputable section

/-- A099480: Count from 1, repeating 2*n five times.

Offset 0, canonical program `A099480.P13257379117522122156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099480 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099480.P13257379117522122156.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099496.P12915073461282908358

`(-1)^n*A122367(n)`
-/

namespace A099496.P12915073461282908358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122367 n

end

end A099496.P12915073461282908358

noncomputable section

/-- A099496: a(n) = (-1)^n * Fibonacci(2*n+1).

Offset 0, canonical program `A099496.P12915073461282908358`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099496 (n : ℕ) : ℤ :=
  A099496.P12915073461282908358.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103196.P2661514774158666851

`A113954(n+2)`
-/

namespace A103196.P2661514774158666851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113954 (n + 2)

end

end A103196.P2661514774158666851

noncomputable section

/-- A103196: a(n) = (1/9)(2^(n+3)-(-1)^n(3n-1)).

Offset 0, canonical program `A103196.P2661514774158666851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103196 (n : ℕ) : ℤ :=
  A103196.P2661514774158666851.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107904.P5417495946962981595

`2^n*A108411(n+1)`
-/

namespace A107904.P5417495946962981595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A108411 (n + 1)

end

end A107904.P5417495946962981595

noncomputable section

/-- A107904: Expansion of (1+6x)/(1-12x^2).

Offset 0, canonical program `A107904.P5417495946962981595`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107904 (n : ℕ) : ℤ :=
  A107904.P5417495946962981595.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107904.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108734.P14432421809285158341

`2^n*A108735(n)`
-/

namespace A108734.P14432421809285158341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A108735 n

end

end A108734.P14432421809285158341

noncomputable section

/-- A108734: Expansion of (1 + 24*x)^(1/2).

Offset 0, canonical program `A108734.P14432421809285158341`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108734 (n : ℕ) : ℤ :=
  A108734.P14432421809285158341.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108734.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109106.P9669753518214612395

`A178381(4*n+2)`
-/

namespace A109106.P9669753518214612395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (4 * n + 2)

end

end A109106.P9669753518214612395

noncomputable section

/-- A109106: a(n) = (1/sqrt(5))*((sqrt(5) + 1)*((15 + 5*sqrt(5))/2)^(n-1) + (sqrt(5) - 1)*((15 - 5*sqrt(5))/2)^(n-1)).

Offset 1, canonical program `A109106.P9669753518214612395`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109106 (n : ℕ) : ℤ :=
  A109106.P9669753518214612395.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110958.P1247205546048520944

`A248873(n)-A000045(n)`
-/

namespace A110958.P1247205546048520944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248873 n - A000045 n

end

end A110958.P1247205546048520944

noncomputable section

/-- A110958: a(n) = floor(e^(n+1) - e^n) - Fibonacci(n).

Offset 0, canonical program `A110958.P1247205546048520944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110958 (n : ℕ) : ℤ :=
  A110958.P1247205546048520944.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085270.P372733221411449555

`round(log(A005053(n)))`
-/

namespace A085270.P372733221411449555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A005053 n : ℝ))

end

end A085270.P372733221411449555

noncomputable section

/-- A085270: Integer part of the conversion from miles to kilometers.

Offset 0, canonical program `A085270.P372733221411449555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A085270 (n : ℕ) : ℤ :=
  A085270.P372733221411449555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A085270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085370.P6391123702184118906

`eq[val(n+1, 3), A070635(n+1)]+1`
-/

namespace A085370.P6391123702184118906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085370.P6391123702184118906

noncomputable section

/-- A085370: Niven (or Harshad) numbers that are not divisible by 3.

Offset 1, canonical program `A085370.P6391123702184118906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A085370 (n : ℕ) : ℤ :=
  (A085370.P6391123702184118906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A085370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085371.P12296401745651984009

`A065877(lt[A065877(n+1)%3, 1]+1)`
-/

namespace A085371.P12296401745651984009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065877 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A085371.P12296401745651984009

noncomputable section

/-- A085371: Non-Niven (or non-Harshad) numbers that are divisible by 3.

Offset 1, canonical program `A085371.P12296401745651984009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2634 terms. -/
def A085371 (n : ℕ) : ℤ :=
  A085371.P12296401745651984009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2634 terms. -/
def A085371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085384.P2467046585933130820

`∑{d}[n+1, A007427(#)*A112132((n+1)/#)]`
-/

namespace A085384.P2467046585933130820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A112132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085384.P2467046585933130820

noncomputable section

/-- A085384: Ramanujan sum c_n(4).

Offset 1, canonical program `A085384.P2467046585933130820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085384 (n : ℕ) : ℤ :=
  A085384.P2467046585933130820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085385.P13964376620445033525

`A001794(n)-A136530(n)`
-/

namespace A085385.P13964376620445033525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001794 n - A136530 n

end

end A085385.P13964376620445033525

noncomputable section

/-- A085385: Binomial transform of hexagonal pyramidal numbers A002412.

Offset 0, canonical program `A085385.P13964376620445033525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A085385 (n : ℕ) : ℤ :=
  A085385.P13964376620445033525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A085385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085386.P10561297622637148624

`(A000085(n)+A001464(n))/2`
-/

namespace A085386.P10561297622637148624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n + A001464 n : ℚ) / 2

end

end A085386.P10561297622637148624

noncomputable section

/-- A085386: E.g.f. cosh(x+x^2/2).

Offset 0, canonical program `A085386.P10561297622637148624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085386 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085386.P10561297622637148624.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085435.P9552395111669975065

`3*Δ[A000975(n)²]`
-/

namespace A085435.P9552395111669975065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A085435.P9552395111669975065

noncomputable section

/-- A085435: Resultant of the polynomial x^n-1 and the Chebyshev polynomial of the second kind U_2(x).

Offset 1, canonical program `A085435.P9552395111669975065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A085435 (n : ℕ) : ℤ :=
  A085435.P9552395111669975065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A085435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085504.P3540792795459282371

`A099012(A066247(∑[n+1])+n)`
-/

namespace A085504.P3540792795459282371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099012 (A066247 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A085504.P3540792795459282371

noncomputable section

/-- A085504: Horadam sequence (0,1,9,3).

Offset 0, canonical program `A085504.P3540792795459282371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A085504 (n : ℕ) : ℤ :=
  A085504.P3540792795459282371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A085504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085583.P12147947931041383685

`∑[A065033(n)+∑[A008794(n)]]`
-/

namespace A085583.P12147947931041383685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085583.P12147947931041383685

noncomputable section

/-- A085583: Number of (3412,1234)-avoiding involutions in S_n.

Offset 1, canonical program `A085583.P12147947931041383685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085583 (n : ℕ) : ℤ :=
  A085583.P12147947931041383685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085585.P2799919323339678097

`eq[2, ∏{digits}[n², A000034(#)]]²`
-/

namespace A085585.P2799919323339678097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => A000034 x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A085585.P2799919323339678097

noncomputable section

/-- A085585: Squares with exactly one odd digit.

Offset 1, canonical program `A085585.P2799919323339678097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. -/
def A085585 (n : ℕ) : ℤ :=
  (A085585.P2799919323339678097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. -/
def A085585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085613.P9413050005342898450

`A130599(n)+2^n`
-/

namespace A085613.P9413050005342898450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130599 n + (2 ^ n : ℤ)

end

end A085613.P9413050005342898450

noncomputable section

/-- A085613: a(n) = 2^(n-1) + (2 + (-1)^n)^((n-2)/2).

Offset 1, canonical program `A085613.P9413050005342898450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A085613 (n : ℕ) : ℤ :=
  A085613.P9413050005342898450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A085613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085695.P2018092129056950049

`A000045(n)*A001076(n)`
-/

namespace A085695.P2018092129056950049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001076 n

end

end A085695.P2018092129056950049

noncomputable section

/-- A085695: a(n) = Fibonacci(n)*Fibonacci(3n)/2.

Offset 0, canonical program `A085695.P2018092129056950049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A085695 (n : ℕ) : ℤ :=
  A085695.P2018092129056950049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A085695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085696.P96563073395948834

`A075193(n)+A001077(n+1)`
-/

namespace A085696.P96563073395948834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n + A001077 (n + 1)

end

end A085696.P96563073395948834

noncomputable section

/-- A085696: a(n) = L(n) * L(n+1) * L(n+2) / 2, where L(n) = Lucas number (A000032).

Offset 0, canonical program `A085696.P96563073395948834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A085696 (n : ℕ) : ℤ :=
  A085696.P96563073395948834.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A085696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085761.P4906296304370779251

`round(sqrt(4*n+5)-A002024(n+1))`
-/

namespace A085761.P4906296304370779251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (4 * n + 5 : ℝ) - (A002024 (n + 1) : ℝ))

end

end A085761.P4906296304370779251

noncomputable section

/-- A085761: Number of triangular numbers between n and 2n (inclusive).

Offset 1, canonical program `A085761.P4906296304370779251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085761 (n : ℕ) : ℤ :=
  A085761.P4906296304370779251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085854.P7554941538200685592

`∑{digits}[A000045(n), A000007(#)]`
-/

namespace A085854.P7554941538200685592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A085854.P7554941538200685592

noncomputable section

/-- A085854: Number of 0's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085854.P7554941538200685592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085854 (n : ℕ) : ℤ :=
  A085854.P7554941538200685592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085855.P13874846491996111652

`∑{digits}[A000045(n), C(C(2, #), 2)]`
-/

namespace A085855.P13874846491996111652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose (Nat.choose 2 x) 2).sum

end

end A085855.P13874846491996111652

noncomputable section

/-- A085855: Number of 1's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085855.P13874846491996111652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085855 (n : ℕ) : ℤ :=
  (A085855.P13874846491996111652.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085856.P15661587018022403811

`∑{digits}[A000045(n), A002726(A002726(2*#+1)+1)]`
-/

namespace A085856.P15661587018022403811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002726 (A002726 (2 * x + 1) + 1).toNat).sum

end

end A085856.P15661587018022403811

noncomputable section

/-- A085856: Number of 2's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085856.P15661587018022403811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085856 (n : ℕ) : ℤ :=
  A085856.P15661587018022403811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085858.P17719422220940736004

`∑{digits}[A000045(n), val(#+2, 6)]`
-/

namespace A085858.P17719422220940736004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 2) 6).sum

end

end A085858.P17719422220940736004

noncomputable section

/-- A085858: Number of 4's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085858.P17719422220940736004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085858 (n : ℕ) : ℤ :=
  (A085858.P17719422220940736004.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085859.P1868171469195014030

`∑{digits}[A000045(n), val(#+1, 6)]`
-/

namespace A085859.P1868171469195014030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 1) 6).sum

end

end A085859.P1868171469195014030

noncomputable section

/-- A085859: Number of 5's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085859.P1868171469195014030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085859 (n : ℕ) : ℤ :=
  (A085859.P1868171469195014030.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085862.P8203223765781139278

`∑{digits}[A000045(n), A055641(#+2)]`
-/

namespace A085862.P8203223765781139278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055641 (x + 2)).sum

end

end A085862.P8203223765781139278

noncomputable section

/-- A085862: Number of 8's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085862.P8203223765781139278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085862 (n : ℕ) : ℤ :=
  A085862.P8203223765781139278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085863.P14326878376486245491

`∑{digits}[A000045(n), C(#, 9)]`
-/

namespace A085863.P14326878376486245491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose x 9).sum

end

end A085863.P14326878376486245491

noncomputable section

/-- A085863: Number of 9's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085863.P14326878376486245491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085863 (n : ℕ) : ℤ :=
  (A085863.P14326878376486245491.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085903.P8330558477795576685

`2^(n+1)-A094024(n+2)`
-/

namespace A085903.P8330558477795576685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A094024 (n + 2)

end

end A085903.P8330558477795576685

noncomputable section

/-- A085903: Expansion of (1 + 2*x^2)/((1 + x)*(1 - 2*x)*(1 - 2*x^2)).

Offset 1, canonical program `A085903.P8330558477795576685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A085903 (n : ℕ) : ℤ :=
  A085903.P8330558477795576685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A085903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085931.P5980507782806375577

`A003056(n+1)+A000217(A003056(n+1)+n)`
-/

namespace A085931.P5980507782806375577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) + A000217 (A003056 (n + 1) + (n : ℤ)).toNat

end

end A085931.P5980507782806375577

noncomputable section

/-- A085931: Leading diagonal of A085930.

Offset 1, canonical program `A085931.P5980507782806375577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085931 (n : ℕ) : ℤ :=
  A085931.P5980507782806375577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085974.P6515225893456210534

`∑{digits}[A000040(n+1), A000007(#)]`
-/

namespace A085974.P6515225893456210534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A085974.P6515225893456210534

noncomputable section

/-- A085974: Number of 0's in the decimal expansion of prime(n).

Offset 1, canonical program `A085974.P6515225893456210534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085974 (n : ℕ) : ℤ :=
  A085974.P6515225893456210534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085979.P217824273526323431

`∑{digits}[A000040(n+1), A005088(#+2)]`
-/

namespace A085979.P217824273526323431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005088 (x + 2)).sum

end

end A085979.P217824273526323431

noncomputable section

/-- A085979: Number of 5's in decimal expansion of prime(n).

Offset 1, canonical program `A085979.P217824273526323431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085979 (n : ℕ) : ℤ :=
  A085979.P217824273526323431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085980.P6633588710115276968

`∑{digits}[A000040(n+1), A005088(#+1)]`
-/

namespace A085980.P6633588710115276968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005088 (x + 1)).sum

end

end A085980.P6633588710115276968

noncomputable section

/-- A085980: Number of 6's in decimal expansion of prime(n).

Offset 1, canonical program `A085980.P6633588710115276968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085980 (n : ℕ) : ℤ :=
  A085980.P6633588710115276968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085983.P7312168140230554725

`∑{digits}[A000040(n+1), C(#, 9)]`
-/

namespace A085983.P7312168140230554725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose x 9).sum

end

end A085983.P7312168140230554725

noncomputable section

/-- A085983: Number of 9's in decimal expansion of prime(n).

Offset 1, canonical program `A085983.P7312168140230554725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085983 (n : ℕ) : ℤ :=
  (A085983.P7312168140230554725.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086116.P3280581305434518023

`A163590(or(1, n))`
-/

namespace A086116.P3280581305434518023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (Nat.lor 1 n)

end

end A086116.P3280581305434518023

noncomputable section

/-- A086116: Numerator of mean deviation of a symmetrical binomial distribution on n elements.

Offset 1, canonical program `A086116.P3280581305434518023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A086116 (n : ℕ) : ℤ :=
  A086116.P3280581305434518023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A086116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086162.P7879362451490028627

`A008615(n+1)+A008612(n+4)*A008615(n+7)`
-/

namespace A086162.P7879362451490028627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 1) + A008612 (n + 4) * A008615 (n + 7)

end

end A086162.P7879362451490028627

noncomputable section

/-- A086162: Number of monomial ideals in two variables x, y that are Artinian, integrally closed, of colength n and contain x^3.

Offset 0, canonical program `A086162.P7879362451490028627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A086162 (n : ℕ) : ℤ :=
  A086162.P7879362451490028627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A086162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086374.P1835455265533878125

`A069733(2*(n+1))-A000035(n+1)`
-/

namespace A086374.P1835455265533878125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (2 * (n + 1)) - A000035 (n + 1)

end

end A086374.P1835455265533878125

noncomputable section

/-- A086374: Number of factors over Q in the factorization of T_n(x) + 1 where T_n(x) is the Chebyshev polynomial of the first kind.

Offset 1, canonical program `A086374.P1835455265533878125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A086374 (n : ℕ) : ℤ :=
  A086374.P1835455265533878125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A086374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086375.P9880467582994103932

`A070824(n+3)+∑{d}[n+1, #%2]`
-/

namespace A086375.P9880467582994103932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 3) + ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A086375.P9880467582994103932

noncomputable section

/-- A086375: Number of factors over Q in the factorization of U_n(x) + 1 where U_n(x) is the Chebyshev polynomial of the second kind.

Offset 1, canonical program `A086375.P9880467582994103932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A086375 (n : ℕ) : ℤ :=
  A086375.P9880467582994103932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A086375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086377.P18272257375655639388

`A064437(n+2)-2`
-/

namespace A086377.P18272257375655639388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 2) - 2

end

end A086377.P18272257375655639388

noncomputable section

/-- A086377: a(1)=1; a(n)=a(n-1)+2 if n is in the sequence; a(n)=a(n-1)+2 if n and (n-1) are not in the sequence; a(n)=a(n-1)+3 if n is not in the sequence but (n-1) is in the sequence.

Offset 1, canonical program `A086377.P18272257375655639388`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064437, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086377 (n : ℕ) : ℤ :=
  A086377.P18272257375655639388.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064437, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086377.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086401.P15232780058223989996

`A001006(n+1)%(n+1)`
-/

namespace A086401.P15232780058223989996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 (n + 1)) (n + 1 : ℤ)

end

end A086401.P15232780058223989996

noncomputable section

/-- A086401: a(n) = M(n) (mod n) where M(n) = A001006(n) is the n-th Motzkin number.

Offset 1, canonical program `A086401.P15232780058223989996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A086401 (n : ℕ) : ℤ :=
  A086401.P15232780058223989996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A086401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086444.P17780374602119298693

`5*a(n-1)-A085281(n)` with `a(0)=1`
-/

namespace A086444.P17780374602119298693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A085281 n

end

end A086444.P17780374602119298693

noncomputable section

/-- A086444: Sequence associated with palindromic structures.

Offset 0, canonical program `A086444.P17780374602119298693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A086444 (n : ℕ) : ℤ :=
  A086444.P17780374602119298693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A086444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086530.P13313051766598429473

`2*A000040(n)-a(n-1)` with `a(0)=1`
-/

namespace A086530.P13313051766598429473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A000040 n - a (n - 1)

end

end A086530.P13313051766598429473

noncomputable section

/-- A086530: Beginning with 1, odd numbers such that the arithmetic mean of successive pairs of terms gives primes in their natural order. {a(n) + a(n+1)}/2 = prime(n).

Offset 1, canonical program `A086530.P13313051766598429473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086530 (n : ℕ) : ℤ :=
  A086530.P13313051766598429473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086615.P3603228253136164052

`∑[A001006(n)]`
-/

namespace A086615.P3603228253136164052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P3603228253136164052

noncomputable section

/-- A086615: Antidiagonal sums of triangle A086614.

Offset 0, canonical program `A086615.P3603228253136164052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A086615 (n : ℕ) : ℤ :=
  A086615.P3603228253136164052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A086615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086665.P3185455482541912894

`A000203(n+1)-A001414(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086665.P3185455482541912894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A001414 (n + 1)

end

end A086665.P3185455482541912894

noncomputable section

/-- A086665: Difference between sum of divisors of n and integer log of n, i.e., A000203(n) - A001414(n).

Offset 1, canonical program `A086665.P3185455482541912894`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086665 (n : ℕ) : ℤ :=
  A086665.P3185455482541912894.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086666.P18113632580008504605

`2*A069153(n+1)`
-/

namespace A086666.P18113632580008504605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069153 (n + 1)

end

end A086666.P18113632580008504605

noncomputable section

/-- A086666: a(n) = sigma_2(n) - sigma_1(n).

Offset 1, canonical program `A086666.P18113632580008504605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069153, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086666 (n : ℕ) : ℤ :=
  A086666.P18113632580008504605.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069153, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086694.P8380285767258739721

`2-A079882(n)`
-/

namespace A086694.P8380285767258739721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A079882 n

end

end A086694.P8380285767258739721

noncomputable section

/-- A086694: A run of 2^n 1's followed by a run of 2^n 0's, for n=0, 1, 2, ...

Offset 1, canonical program `A086694.P8380285767258739721`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079882, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086694 (n : ℕ) : ℤ :=
  A086694.P8380285767258739721.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079882, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086831.P7506013639067775001

`∑{d}[n+1, A007427(#)*A010684((n+1)/#-1)]`
-/

namespace A086831.P7506013639067775001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A010684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A086831.P7506013639067775001

noncomputable section

/-- A086831: Ramanujan sum c_n(2).

Offset 1, canonical program `A086831.P7506013639067775001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086831 (n : ℕ) : ℤ :=
  A086831.P7506013639067775001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086861.P6424631334588597709

`∏{p}[A000040(n+1), floor(#/log(#))]`
-/

namespace A086861.P6424631334588597709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(p : ℝ) / Real.log (p : ℝ)⌋

end

end A086861.P6424631334588597709

noncomputable section

/-- A086861: Floor( p/log(p) ), where p = prime(n).

Offset 1, canonical program `A086861.P6424631334588597709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086861 (n : ℕ) : ℤ :=
  A086861.P6424631334588597709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086868.P3547738365041611846

`floor(1/sin(A070752(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086868.P3547738365041611846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.sin (A070752 (n + 1) : ℝ)⌋

end

end A086868.P3547738365041611846

noncomputable section

/-- A086868: a(n) = Floor(1/sin(A070752(n))).

Offset 1, canonical program `A086868.P3547738365041611846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070752, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086868 (n : ℕ) : ℤ :=
  A086868.P3547738365041611846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070752, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086868.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087098.P11093039045898509139

`∑[A087100(n)]`
-/

namespace A087098.P11093039045898509139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087098.P11093039045898509139

noncomputable section

/-- A087098: Partial sums of A087100.

Offset 0, canonical program `A087098.P11093039045898509139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A087098 (n : ℕ) : ℤ :=
  A087098.P11093039045898509139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A087098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087124.P3836910195827955306

`A027941(n)+A001611(n)`
-/

namespace A087124.P3836910195827955306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n + A001611 n

end

end A087124.P3836910195827955306

noncomputable section

/-- A087124: a(n) = Fibonacci(n) + Fibonacci(2n+1).

Offset 0, canonical program `A087124.P3836910195827955306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A087124 (n : ℕ) : ℤ :=
  A087124.P3836910195827955306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A087124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087168.P5113920583657061767

`A001607(2*n+1)`
-/

namespace A087168.P5113920583657061767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (2 * n + 1)

end

end A087168.P5113920583657061767

noncomputable section

/-- A087168: Expansion of (1 + 2*x)/(1 + 3*x + 4*x^2).

Offset 0, canonical program `A087168.P5113920583657061767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001607, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087168 (n : ℕ) : ℤ :=
  A087168.P5113920583657061767.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001607, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087168.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087169.P17879908893484888215

`A106852(2*n)`
-/

namespace A087169.P17879908893484888215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106852 (2 * n)

end

end A087169.P17879908893484888215

noncomputable section

/-- A087169: Expansion of (1 + 3*x)/(1 + 5*x + 9*x^2).

Offset 0, canonical program `A087169.P17879908893484888215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A087169 (n : ℕ) : ℤ :=
  A087169.P17879908893484888215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A087169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087170.P15242368904336287075

`A106853(2*n)`
-/

namespace A087170.P15242368904336287075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106853 (2 * n)

end

end A087170.P15242368904336287075

noncomputable section

/-- A087170: Expansion of (1 + 4*x)/(1 + 7*x + 16*x^2).

Offset 0, canonical program `A087170.P15242368904336287075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A087170 (n : ℕ) : ℤ :=
  A087170.P15242368904336287075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A087170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087171.P13001410456734255233

`A106854(2*n)`
-/

namespace A087171.P13001410456734255233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106854 (2 * n)

end

end A087171.P13001410456734255233

noncomputable section

/-- A087171: Expansion of (1 + 5*x)/(1 + 9*x + 25*x^2).

Offset 0, canonical program `A087171.P13001410456734255233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A087171 (n : ℕ) : ℤ :=
  A087171.P13001410456734255233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A087171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087172.P3483419323091950853

`A082524(A003849(n+2)+n+1)`
-/

namespace A087172.P3483419323091950853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082524 (A003849 (n + 2) + (n + 1 : ℤ)).toNat

end

end A087172.P3483419323091950853

noncomputable section

/-- A087172: Greatest Fibonacci number that does not exceed n.

Offset 1, canonical program `A087172.P3483419323091950853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087172 (n : ℕ) : ℤ :=
  A087172.P3483419323091950853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087405.P2819718858922802785

`Δ[or(floor(5^(n-1)), A000034(n))]`
-/

namespace A087405.P2819718858922802785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A000034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087405.P2819718858922802785

noncomputable section

/-- A087405: First differences of A087404: a(n) = A087404(n) - A087404(n-1), a(0) = A087404(0).

Offset 0, canonical program `A087405.P2819718858922802785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A087405 (n : ℕ) : ℤ :=
  A087405.P2819718858922802785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A087405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087439.P17745809255674721182

`5*a(n-1)+1-A003462(n)` with `a(0)=1`
-/

namespace A087439.P17745809255674721182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + 1 - A003462 n

end

end A087439.P17745809255674721182

noncomputable section

/-- A087439: Expansion of (1-4x)/((1-x)(1-3x)(1-5x)).

Offset 0, canonical program `A087439.P17745809255674721182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A087439 (n : ℕ) : ℤ :=
  A087439.P17745809255674721182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A087439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087466.P14536620079445968377

`A008612(A053186(12*n+5))`
-/

namespace A087466.P14536620079445968377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A053186 (12 * n + 5)).toNat

end

end A087466.P14536620079445968377

noncomputable section

/-- A087466: a(n) = number of the row (counting from initial row 0) of the array R in A087465 that contains n.

Offset 1, canonical program `A087466.P14536620079445968377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A087466 (n : ℕ) : ℤ :=
  A087466.P14536620079445968377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A087466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087476.P17641979265843464007

`(2*n+a(n-1)+5)%A002024(n+1)` with `a(0)=0`
-/

namespace A087476.P17641979265843464007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((2 * n : ℤ) + (a (n - 1) + 5)) (A002024 (n + 1))

end

end A087476.P17641979265843464007

noncomputable section

/-- A087476: Triangle read by rows where the n-th row has n terms: T(n,i)=(i+2)^2-4 mod n.

Offset 1, canonical program `A087476.P17641979265843464007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A087476 (n : ℕ) : ℤ :=
  A087476.P17641979265843464007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A087476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087505.P2303323204147198729

`A024896(n+1)-1`
-/

namespace A087505.P2303323204147198729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1) - 1

end

end A087505.P2303323204147198729

noncomputable section

/-- A087505: Numbers k such that 5*k+3 is a prime.

Offset 1, canonical program `A087505.P2303323204147198729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087505 (n : ℕ) : ℤ :=
  A087505.P2303323204147198729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087628.P5452780026811073144

`A078008(∑[(2*n)%3])`
-/

namespace A087628.P5452780026811073144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087628.P5452780026811073144

noncomputable section

/-- A087628: Generalized Jacobsthal sequence.

Offset 0, canonical program `A087628.P5452780026811073144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A087628 (n : ℕ) : ℤ :=
  A087628.P5452780026811073144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A087628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087629.P7296063400555584856

`A087464(n)+A024493(n)`
-/

namespace A087629.P7296063400555584856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087464 n + A024493 n

end

end A087629.P7296063400555584856

noncomputable section

/-- A087629: Generalized Jacobsthal sequence.

Offset 0, canonical program `A087629.P7296063400555584856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A087629 (n : ℕ) : ℤ :=
  A087629.P7296063400555584856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A087629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087686.P7055121400500820265

`a(A004001(n))+n` with `a(0)=1, a(1)=2`
-/

namespace A087686.P7055121400500820265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A004001 n).toNat + n

end

end A087686.P7055121400500820265

noncomputable section

/-- A087686: Elements of A004001 that repeat consecutively.

Offset 1, canonical program `A087686.P7055121400500820265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087686 (n : ℕ) : ℤ :=
  (A087686.P7055121400500820265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087691.P847001691907876156

`A002145(n+1)²`
-/

namespace A087691.P847001691907876156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) ^ 2

end

end A087691.P847001691907876156

noncomputable section

/-- A087691: Squares of primes of the form 4*k+3.

Offset 1, canonical program `A087691.P847001691907876156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087691 (n : ℕ) : ℤ :=
  A087691.P847001691907876156.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087691.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087734.P16870292659209363980

`(1-A036987(n-1))*(1+A063250(n)-A063250(n-1))*(1+a(n-1))` with `a(0)=0`
-/

namespace A087734.P16870292659209363980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (1 - A036987 (n - 1)) * ((1 + A063250 n - A063250 (n - 1)) * (1 + a (n - 1)))

end

end A087734.P16870292659209363980

noncomputable section

/-- A087734: a(n) = f(f(n)), where f() = A035327().

Offset 0, canonical program `A087734.P16870292659209363980`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087734 (n : ℕ) : ℤ :=
  A087734.P16870292659209363980.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087756.P1217633419180058466

`A087745(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A087756.P1217633419180058466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (n + 1)

end

end A087756.P1217633419180058466

noncomputable section

/-- A087756: a(n) = A087745(n+1).

Offset 0, canonical program `A087756.P1217633419180058466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087756 (n : ℕ) : ℤ :=
  A087756.P1217633419180058466.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087745, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087797.P15522956253544412855

`eq[1, ∑{e}[n, A000196(#)]]`
-/

namespace A087797.P15522956253544412855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), A000196 (Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087797.P15522956253544412855

noncomputable section

/-- A087797: Primes, squares of primes and cubes of primes.

Offset 1, canonical program `A087797.P15522956253544412855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A087797 (n : ℕ) : ℤ :=
  (A087797.P15522956253544412855.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A087797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087816.P18112214849068138881

`A080677(n+2)-1`
-/

namespace A087816.P18112214849068138881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (n + 2) - 1

end

end A087816.P18112214849068138881

noncomputable section

/-- A087816: a(n) = a(a(n-1)) + a(n - 1 - a(n-1)) with a(1) = a(2) = 1.

Offset 1, canonical program `A087816.P18112214849068138881`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087816 (n : ℕ) : ℤ :=
  A087816.P18112214849068138881.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080677, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087816.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087851.P1286531590995797042

`a(n-2)+A001468(n)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A087851.P1286531590995797042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 2) + A001468 n

end

end A087851.P1286531590995797042

noncomputable section

/-- A087851: a(n) = abs(a(n-1) - floor(n*phi)), where phi=(1+sqrt(5))/2, with a(1) = a(2) = 1.

Offset 1, canonical program `A087851.P1286531590995797042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087851 (n : ℕ) : ℤ :=
  A087851.P1286531590995797042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087893.P10043656164352134867

`A070824(∏{p}[n+1, #])`
-/

namespace A087893.P10043656164352134867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A087893.P10043656164352134867

noncomputable section

/-- A087893: Number of numbers m satisfying 1 < m < n such that m^2 == m (mod n).

Offset 1, canonical program `A087893.P10043656164352134867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087893 (n : ℕ) : ℤ :=
  A087893.P10043656164352134867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088039.P3468968859594514563

`A088038(n+1)^(1/3)`
-/

namespace A088039.P3468968859594514563
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A088038 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A088039.P3468968859594514563

noncomputable section

/-- A088039: Smallest k such that k^3 == 1 (mod some n-th power), k > 1.

Offset 1, canonical program `A088039.P3468968859594514563`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088039 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088039.P3468968859594514563.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088133.P7364122066664671483

`A000030(n)+A010879(n)`
-/

namespace A088133.P7364122066664671483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n + A010879 n

end

end A088133.P7364122066664671483

noncomputable section

/-- A088133: Sum of first and last digits of n. Different from A115299.

Offset 0, canonical program `A088133.P7364122066664671483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088133 (n : ℕ) : ℤ :=
  A088133.P7364122066664671483.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088161.P8986286637870394846

`A038572(n)-A006257(n)`
-/

namespace A088161.P8986286637870394846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n - A006257 n

end

end A088161.P8986286637870394846

noncomputable section

/-- A088161: n rotated one binary place to the right less n rotated one binary place to the left.

Offset 0, canonical program `A088161.P8986286637870394846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088161 (n : ℕ) : ℤ :=
  A088161.P8986286637870394846.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088161.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088209.P13612305071748861548

`a(n-1)+A000032(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A088209.P13612305071748861548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (A000032 n + a (n - 2))

end

end A088209.P13612305071748861548

noncomputable section

/-- A088209: Numerators of convergents of the continued fraction with the n+1 partial quotients: [1;1,1,...(n 1's)...,1,n+1], starting with [1], [1;2], [1;1,3], [1;1,1,4], ...

Offset 0, canonical program `A088209.P13612305071748861548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A088209 (n : ℕ) : ℤ :=
  A088209.P13612305071748861548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A088209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088359.P524068171485654818

`a(n-A004001(n+1))+n+1` with `a(0)=3`
-/

namespace A088359.P524068171485654818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a ((n : ℤ) - A004001 (n + 1)).toNat + n + 1

end

end A088359.P524068171485654818

noncomputable section

/-- A088359: Numbers which occur only once in A004001.

Offset 1, canonical program `A088359.P524068171485654818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088359 (n : ℕ) : ℤ :=
  (A088359.P524068171485654818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088491.P1155521359578131042

`A093178(n)+A078832(n+1)`
-/

namespace A088491.P1155521359578131042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n + A078832 (n + 1)

end

end A088491.P1155521359578131042

noncomputable section

/-- A088491: a(n) = floor(p(n)/p(n-1)), where p(n) = n!/(Product_{j=1..floor(n/2)} A004001(j)).

Offset 2, canonical program `A088491.P1155521359578131042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A088491 (n : ℕ) : ℤ :=
  A088491.P1155521359578131042.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A088491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088519.P640788755625914234

`A003056(A054404(n+1)+A001650(n+1))`
-/

namespace A088519.P640788755625914234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A054404 (n + 1) + A001650 (n + 1)).toNat

end

end A088519.P640788755625914234

noncomputable section

/-- A088519: 2-Golomb's sequence G(n,2): earliest positive increasing sequence starting with (1,2) and satisfying "length of n-th run = n-th partial sum".

Offset 1, canonical program `A088519.P640788755625914234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A088519 (n : ℕ) : ℤ :=
  A088519.P640788755625914234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A088519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088523.P93549261496627570

`(A000040(n+1)+a(n-1))%(n+1)` with `a(0)=2`
-/

namespace A088523.P93549261496627570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A000040 (n + 1) + a (n - 1)) (n + 1 : ℤ)

end

end A088523.P93549261496627570

noncomputable section

/-- A088523: a(1) = 2; for n > 1, a(n) = (a(n-1) + prime(n)) mod n.

Offset 1, canonical program `A088523.P93549261496627570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088523 (n : ℕ) : ℤ :=
  A088523.P93549261496627570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A088523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088662.P10445434705329533365

`A001405(A109613(n))+n*A001405(n)`
-/

namespace A088662.P10445434705329533365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A109613 n).toNat + (n : ℤ) * A001405 n

end

end A088662.P10445434705329533365

noncomputable section

/-- A088662: Number of peaks at even level in all symmetric Dyck paths of semilength n+2.

Offset 0, canonical program `A088662.P10445434705329533365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A088662 (n : ℕ) : ℤ :=
  A088662.P10445434705329533365.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A088662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088685.P17946984410848939442

`record[A001414(n+1)%(1-lcm(2, n))]`
-/

namespace A088685.P17946984410848939442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001414 (n + 1)) (1 - (Nat.lcm 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A088685.P17946984410848939442

noncomputable section

/-- A088685: Records for the sum-of-primes function sopfr(n) if sopfr(prime) is taken to be 0.

Offset 1, canonical program `A088685.P17946984410848939442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5136 terms. -/
def A088685 (n : ℕ) : ℤ :=
  A088685.P17946984410848939442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5136 terms. -/
def A088685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088688.P13960355821592222794

`A000079(n)-(A134581(n)+A010892(n+1))`
-/

namespace A088688.P13960355821592222794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A134581 n + A010892 (n + 1))

end

end A088688.P13960355821592222794

noncomputable section

/-- A088688: Binomial transform of A088689.

Offset 0, canonical program `A088688.P13960355821592222794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A088688 (n : ℕ) : ℤ :=
  A088688.P13960355821592222794.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A088688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088743.P4379728260745678139

`2*A088023(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088743.P4379728260745678139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088023 (n + 1) - 1

end

end A088743.P4379728260745678139

noncomputable section

/-- A088743: a(n) = 2*A088023(n) - 1.

Offset 1, canonical program `A088743.P4379728260745678139`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088023, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088743 (n : ℕ) : ℤ :=
  A088743.P4379728260745678139.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088023, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088744.P13964639266915660033

`3*A088023(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A088744.P13964639266915660033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A088023 (n + 1) - 2

end

end A088744.P13964639266915660033

noncomputable section

/-- A088744: a(n) = 3*A088023(n) - 2.

Offset 1, canonical program `A088744.P13964639266915660033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088023, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088744 (n : ℕ) : ℤ :=
  A088744.P13964639266915660033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088023, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088744.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088827.P16132540698734930391

`2*A028982(n+1)`
-/

namespace A088827.P16132540698734930391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028982 (n + 1)

end

end A088827.P16132540698734930391

noncomputable section

/-- A088827: Even numbers with odd abundance: even squares or two times squares.

Offset 1, canonical program `A088827.P16132540698734930391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088827 (n : ℕ) : ℤ :=
  A088827.P16132540698734930391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088889.P15062702551850354485

`∑[n*A005900(n)]/2*(∑[n]+1)`
-/

namespace A088889.P15062702551850354485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005900 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ)

end

end A088889.P15062702551850354485

noncomputable section

/-- A088889: Polynexus numbers of order 8.

Offset 1, canonical program `A088889.P15062702551850354485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088889 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088889.P15062702551850354485.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089013.P17718779328250139218

`1-A082410(n+1)`
-/

namespace A089013.P17718779328250139218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082410 (n + 1)

end

end A089013.P17718779328250139218

noncomputable section

/-- A089013: a(n) = (A088567(8n) mod 2).

Offset 0, canonical program `A089013.P17718779328250139218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089013 (n : ℕ) : ℤ :=
  A089013.P17718779328250139218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089033.P1967463785301948197

`A024903(n+1)-1`
-/

namespace A089033.P1967463785301948197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024903 (n + 1) - 1

end

end A089033.P1967463785301948197

noncomputable section

/-- A089033: Numbers n such that 7*n+3 is prime.

Offset 1, canonical program `A089033.P1967463785301948197`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089033 (n : ℕ) : ℤ :=
  A089033.P1967463785301948197.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089033.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089034.P14650621314894558303

`A011863(A000040(n+4))/15`
-/

namespace A089034.P14650621314894558303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011863 (A000040 (n + 4)).toNat : ℚ) / 15

end

end A089034.P14650621314894558303

noncomputable section

/-- A089034: a(n) = (prime(n)^4 - 1) / 240.

Offset 4, canonical program `A089034.P14650621314894558303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1226 terms. -/
def A089034 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089034.P14650621314894558303.a (n - 4))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1226 terms. -/
def A089034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089067.P311458431493702026

`record[a(A029578(n))-2*a(n-1)]` with `a(0)=1`
-/

namespace A089067.P311458431493702026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A029578 n).toNat - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089067.P311458431493702026

noncomputable section

/-- A089067: a(n) = 2*a(n-1) + (-1)^n*a(floor(n/2)); a(1)=1.

Offset 1, canonical program `A089067.P311458431493702026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A089067 (n : ℕ) : ℤ :=
  A089067.P311458431493702026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A089067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089110.P11736030232127959961

`A089109(n+1)+Δ[A008805(A008619(n))]`
-/

namespace A089110.P11736030232127959961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089109 (n + 1) + (f1 (n + 1) - f1 n)

end

end A089110.P11736030232127959961

noncomputable section

/-- A089110: Sign twisted convoluted convolved Fibonacci numbers H_5^(r).

Offset 1, canonical program `A089110.P11736030232127959961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089110 (n : ℕ) : ℤ :=
  A089110.P11736030232127959961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089111.P11309076075631602613

`floor(∑[A055832(n+5)]/(n+1))`
-/

namespace A089111.P11309076075631602613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A089111.P11309076075631602613

noncomputable section

/-- A089111: Convoluted convolved Fibonacci numbers G_6^(r).

Offset 1, canonical program `A089111.P11309076075631602613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089111 (n : ℕ) : ℤ :=
  A089111.P11309076075631602613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089156.P12875916019781417277

`A069722(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089156.P12875916019781417277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069722 (n + 1) ^ 2

end

end A089156.P12875916019781417277

noncomputable section

/-- A089156: a(n) = A069722(n+1)^2.

Offset 0, canonical program `A089156.P12875916019781417277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069722, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089156 (n : ℕ) : ℤ :=
  A089156.P12875916019781417277.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069722, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089156.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089165.P2094944157405990930

`∑[A001850(n)]`
-/

namespace A089165.P2094944157405990930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089165.P2094944157405990930

noncomputable section

/-- A089165: Partial sums of the central Delannoy numbers (A001850).

Offset 0, canonical program `A089165.P2094944157405990930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A089165 (n : ℕ) : ℤ :=
  A089165.P2094944157405990930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A089165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089229.P6090230356470162113

`comp[∪[A000040(n+1), n²]]`
-/

namespace A089229.P6090230356470162113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A089229.P6090230356470162113

noncomputable section

/-- A089229: Neither primes nor square numbers.

Offset 1, canonical program `A089229.P6090230356470162113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089229 (n : ℕ) : ℤ :=
  (A089229.P6090230356470162113.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089237.P17268930472736484206

`∪[A000040(n+1), n²]`
-/

namespace A089237.P17268930472736484206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A089237.P17268930472736484206

noncomputable section

/-- A089237: List of primes and squares.

Offset 1, canonical program `A089237.P17268930472736484206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089237 (n : ℕ) : ℤ :=
  (A089237.P17268930472736484206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089269.P15934336637969450658

`eq[1-and(2, n), A005361(n+1)]+1`
-/

namespace A089269.P15934336637969450658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089269.P15934336637969450658

noncomputable section

/-- A089269: Squarefree numbers congruent to 1 or 2 mod 4.

Offset 1, canonical program `A089269.P15934336637969450658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089269 (n : ℕ) : ℤ :=
  (A089269.P15934336637969450658.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089289.P13264088176311797022

`A007947(A011545(n))`
-/

namespace A089289.P13264088176311797022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A011545 n).toNat

end

end A089289.P13264088176311797022

noncomputable section

/-- A089289: Squarefree kernel of floor(Pi*10^n), Pi = 3.14....

Offset 0, canonical program `A089289.P13264088176311797022`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089289 (n : ℕ) : ℤ :=
  A089289.P13264088176311797022.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089289.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089303.P17740626755866020562

`floor(A060156(n+1)/9)`
-/

namespace A089303.P17740626755866020562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060156 (n + 1) : ℚ) / 9⌋

end

end A089303.P17740626755866020562

noncomputable section

/-- A089303: a(n) = floor( (10^n - 1) / (9*n) ).

Offset 1, canonical program `A089303.P17740626755866020562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A089303 (n : ℕ) : ℤ :=
  A089303.P17740626755866020562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A089303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089433.P18158069655952064341

`(n+4)/2*A004321(n+3)`
-/

namespace A089433.P18158069655952064341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℚ) / 2 * (A004321 (n + 3) : ℚ)

end

end A089433.P18158069655952064341

noncomputable section

/-- A089433: Number of noncrossing connected graphs on n nodes having exactly two interior faces.

Offset 4, canonical program `A089433.P18158069655952064341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A089433 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089433.P18158069655952064341.a (n - 4))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A089433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089508.P13330115643907505506

`A119996(Δ[n²])`
-/

namespace A089508.P13330115643907505506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119996 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A089508.P13330115643907505506

noncomputable section

/-- A089508: Solution to a binomial problem together with companion sequence A081016(n-1).

Offset 1, canonical program `A089508.P13330115643907505506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A089508 (n : ℕ) : ℤ :=
  A089508.P13330115643907505506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A089508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089510.P5048394269918529553

`A182067(n+1)-A182067(n)`
-/

namespace A089510.P5048394269918529553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182067 (n + 1) - A182067 n

end

end A089510.P5048394269918529553

noncomputable section

/-- A089510: A periodic sequence with period length 30.

Offset 1, canonical program `A089510.P5048394269918529553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A089510 (n : ℕ) : ℤ :=
  A089510.P5048394269918529553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A089510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089574.P17152702397633691756

`∑[∑[A178977(n)+A006331(n)]]`
-/

namespace A089574.P17152702397633691756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178977 n + A006331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089574.P17152702397633691756

noncomputable section

/-- A089574: Column 4 of an array closely related to A083480. (Both arrays have shape sequence A083479).

Offset 1, canonical program `A089574.P17152702397633691756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089574 (n : ℕ) : ℤ :=
  A089574.P17152702397633691756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089607.P15571549371010904188

`a(A014709(n))` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A089607.P15571549371010904188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  a (A014709 n).toNat

end

end A089607.P15571549371010904188

noncomputable section

/-- A089607: a(n)=((-1)^(n+1)*A002425(n)) modulo 4.

Offset 1, canonical program `A089607.P15571549371010904188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 649 terms. -/
def A089607 (n : ℕ) : ℤ :=
  (A089607.P15571549371010904188.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 649 terms. -/
def A089607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089620.P2997582030811001978

`A000040(n+1)+(n+1)^3`
-/

namespace A089620.P2997582030811001978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ((n + 1) ^ 3 : ℤ)

end

end A089620.P2997582030811001978

noncomputable section

/-- A089620: a(n) = n^3 + prime(n).

Offset 1, canonical program `A089620.P2997582030811001978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089620 (n : ℕ) : ℤ :=
  A089620.P2997582030811001978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089621.P15142380418788602758

`A000040(n+1)+(n+1)^4`
-/

namespace A089621.P15142380418788602758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ((n + 1) ^ 4 : ℤ)

end

end A089621.P15142380418788602758

noncomputable section

/-- A089621: n^4 + n-th prime.

Offset 1, canonical program `A089621.P15142380418788602758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089621 (n : ℕ) : ℤ :=
  A089621.P15142380418788602758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089806.P10778416609619685068

`A003982(6*n)`
-/

namespace A089806.P10778416609619685068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (6 * n)

end

end A089806.P10778416609619685068

noncomputable section

/-- A089806: Expansion of Jacobi theta function (theta_3(q^(1/3))-theta_2(q^3))/2/q^(1/12).

Offset 0, canonical program `A089806.P10778416609619685068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089806 (n : ℕ) : ℤ :=
  A089806.P10778416609619685068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089889.P34863561432279640

`Δ[A022554(n)]*A089887(n+1)`
-/

namespace A089889.P34863561432279640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A089887 (n + 1)

end

end A089889.P34863561432279640

noncomputable section

/-- A089889: Number of subsets of {1,.., n} containing exactly one square.

Offset 1, canonical program `A089889.P34863561432279640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A089889 (n : ℕ) : ℤ :=
  A089889.P34863561432279640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A089889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090080.P8358327826318951583

`A090079(A000040(n+1))`
-/

namespace A090080.P8358327826318951583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A000040 (n + 1)).toNat

end

end A090080.P8358327826318951583

noncomputable section

/-- A090080: In binary expansion of n-th prime: reduce contiguous blocks of 0's to 0 and contiguous blocks of 1's to 1.

Offset 1, canonical program `A090080.P8358327826318951583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A090079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090080 (n : ℕ) : ℤ :=
  A090080.P8358327826318951583.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A090079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A090080.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090097.P13166210499176410012

`A056020(A047587(n+2))`
-/

namespace A090097.P13166210499176410012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A047587 (n + 2)).toNat

end

end A090097.P13166210499176410012

noncomputable section

/-- A090097: Bases n such that the smallest prime-power-pseudoprime to base n is 9.

Offset 1, canonical program `A090097.P13166210499176410012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A090097 (n : ℕ) : ℤ :=
  A090097.P13166210499176410012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A090097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090178.P13820832381306663161

`A000040(n%a(n-1))+n+1` with `a(0)=2`
-/

namespace A090178.P13820832381306663161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (Int.tmod (n : ℤ) (a (n - 1))).toNat + (n + 1 : ℤ)

end

end A090178.P13820832381306663161

noncomputable section

/-- A090178: a(1) = 2; for n > 1, a(n) = n + prime(n-1).

Offset 1, canonical program `A090178.P13820832381306663161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090178 (n : ℕ) : ℤ :=
  A090178.P13820832381306663161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090340.P8106175153213061609

`Δ[-A001414(n+1)]`
-/

namespace A090340.P8106175153213061609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090340.P8106175153213061609

noncomputable section

/-- A090340: Difference between the sums of the prime factors, including multiplicity, of n and those of n + 1.

Offset 1, canonical program `A090340.P8106175153213061609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090340 (n : ℕ) : ℤ :=
  A090340.P8106175153213061609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090341.P7917850924027615993

`A001414(n+1)-A001414(n+3)`
-/

namespace A090341.P7917850924027615993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A001414 (n + 3)

end

end A090341.P7917850924027615993

noncomputable section

/-- A090341: Difference between the sums of the prime factors, including multiplicity, of n and those of n + 2.

Offset 1, canonical program `A090341.P7917850924027615993`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090341 (n : ℕ) : ℤ :=
  A090341.P7917850924027615993.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090342.P3390152840688326759

`A001414(n+1)-A001414(n+4)`
-/

namespace A090342.P3390152840688326759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A001414 (n + 4)

end

end A090342.P3390152840688326759

noncomputable section

/-- A090342: Difference between the sums of the prime factors, including multiplicity, of n and those of n + 3.

Offset 1, canonical program `A090342.P3390152840688326759`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090342 (n : ℕ) : ℤ :=
  A090342.P3390152840688326759.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090343.P16771865766798184148

`A001414(n+1)-A001414(n+5)`
-/

namespace A090343.P16771865766798184148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A001414 (n + 5)

end

end A090343.P16771865766798184148

noncomputable section

/-- A090343: Difference between the sums of the prime factors, including multiplicity, of n and those of n + 4.

Offset 1, canonical program `A090343.P16771865766798184148`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090343 (n : ℕ) : ℤ :=
  A090343.P16771865766798184148.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090387.P16854048901003584850

`A009230(n+1)/(n+1)`
-/

namespace A090387.P16854048901003584850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009230 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A090387.P16854048901003584850

noncomputable section

/-- A090387: Numerator of d(n)/n, where d(n) (A000005) is the number of divisors of n.

Offset 1, canonical program `A090387.P16854048901003584850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090387 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090387.P16854048901003584850.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090395.P17053832850949546132

`(n+1)/A009191(n+1)`
-/

namespace A090395.P17053832850949546132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A009191 (n + 1) : ℚ)

end

end A090395.P17053832850949546132

noncomputable section

/-- A090395: Denominator of d(n)/n, where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A090395.P17053832850949546132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090395 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090395.P17053832850949546132.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090431.P17020642547868931048

`∑{digits}[n+1, #]-∑{digits}[A000040(n+1), #]`
-/

namespace A090431.P17020642547868931048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A090431.P17020642547868931048

noncomputable section

/-- A090431: Difference between sums of digits of n and n-th prime.

Offset 1, canonical program `A090431.P17020642547868931048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090431 (n : ℕ) : ℤ :=
  A090431.P17020642547868931048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090613.P2640039288221416207

`eq[3, A000040(n+1)%7]+1`
-/

namespace A090613.P2640039288221416207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090613.P2640039288221416207

noncomputable section

/-- A090613: Numbers k such that the k-th prime is congruent to 3 mod 7.

Offset 1, canonical program `A090613.P2640039288221416207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1678 terms. -/
def A090613 (n : ℕ) : ℤ :=
  (A090613.P2640039288221416207.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1678 terms. -/
def A090613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090679.P15281543426046170081

`floor(sqrt(2*((1-p?[A000040(n+1)+2])²+1)))`
-/

namespace A090679.P15281543426046170081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * ((1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 2 + 1))

end

end A090679.P15281543426046170081

noncomputable section

/-- A090679: Integer part of the hypotenuse of a right triangle with twin prime legs.

Offset 1, canonical program `A090679.P15281543426046170081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A090679 (n : ℕ) : ℤ :=
  A090679.P15281543426046170081.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A090679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090682.P17764846344819148553

`floor(2*sqrt(p?[A000040(n+1)-2]+1))`
-/

namespace A090682.P17764846344819148553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℝ)⌋

end

end A090682.P17764846344819148553

noncomputable section

/-- A090682: Integer part of one leg of a right triangle where the other leg and hypotenuse are twin primes.

Offset 3, canonical program `A090682.P17764846344819148553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A090682 (n : ℕ) : ℤ :=
  A090682.P17764846344819148553.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A090682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090701.P294140338646066515

`round(∑[A098181(n)]/A001651(n+1))`
-/

namespace A090701.P294140338646066515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001651 (n + 1) : ℚ))

end

end A090701.P294140338646066515

noncomputable section

/-- A090701: a(n) is the minimal number k such that every binary word of length n can be divided into k palindromes.

Offset 1, canonical program `A090701.P294140338646066515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090701 (n : ℕ) : ℤ :=
  A090701.P294140338646066515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090942.P13553179152955353035

`Δ[n*A000040(abs(1-n)+1)]`
-/

namespace A090942.P13553179152955353035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090942.P13553179152955353035

noncomputable section

/-- A090942: n-th arithmetic mean = prime(n).

Offset 1, canonical program `A090942.P13553179152955353035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090942 (n : ℕ) : ℤ :=
  A090942.P13553179152955353035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090942.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A091052.P2635546842245054828

`A007910(or(1, n)+n-1)`
-/

namespace A091052.P2635546842245054828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 ((Nat.lor 1 n : ℤ) + ((n : ℤ) - 1)).toNat

end

end A091052.P2635546842245054828

noncomputable section

/-- A091052: Record values in A091023.

Offset 1, canonical program `A091052.P2635546842245054828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A091052 (n : ℕ) : ℤ :=
  A091052.P2635546842245054828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A091052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091135.P11426229363453001579

`∑[∑[∑[A268586(n+3)]]]`
-/

namespace A091135.P11426229363453001579
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268586 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091135.P11426229363453001579

noncomputable section

/-- A091135: Number of Dyck paths of semilength n+4, having exactly two long ascents (i.e., ascents of length at least two).

Offset 0, canonical program `A091135.P11426229363453001579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A091135 (n : ℕ) : ℤ :=
  A091135.P11426229363453001579.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A091135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091194.P8566147046527148789

`∑[round(A001065(n+1)/(2*n+3))]`
-/

namespace A091194.P8566147046527148789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001065 (n + 1) : ℚ) / (2 * n + 3 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091194.P8566147046527148789

noncomputable section

/-- A091194: Number of abundant numbers <= n.

Offset 1, canonical program `A091194.P8566147046527148789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091194 (n : ℕ) : ℤ :=
  A091194.P8566147046527148789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091462.P5675951581171116121

`3*A002387(3*n)`
-/

namespace A091462.P5675951581171116121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002387 (3 * n)

end

end A091462.P5675951581171116121

noncomputable section

/-- A091462: a(n) is the smallest j such that 1/3 + 1/6 + 1/9 + ... + 1/j exceeds n.

Offset 0, canonical program `A091462.P5675951581171116121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091462 (n : ℕ) : ℤ :=
  A091462.P5675951581171116121.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091542.P13889737088320293917

`A105662(n)+A000493(n)`
-/

namespace A091542.P13889737088320293917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105662 n + A000493 n

end

end A091542.P13889737088320293917

noncomputable section

/-- A091542: a(n) = floor( |n * sin(n)| ), where n is in radians.

Offset 0, canonical program `A091542.P13889737088320293917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091542 (n : ℕ) : ℤ :=
  A091542.P13889737088320293917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091555.P1151281054652392036

`∑[A002321(n+1)]`
-/

namespace A091555.P1151281054652392036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091555.P1151281054652392036

noncomputable section

/-- A091555: Partial sums of Mertens's function (A002321).

Offset 1, canonical program `A091555.P1151281054652392036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091555 (n : ℕ) : ℤ :=
  A091555.P1151281054652392036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091570.P5029982890749552841

`∑{d}[n+1, (A109043(#)-#)%(n+1)]`
-/

namespace A091570.P5029982890749552841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A109043 d - (d : ℤ)) (n + 1 : ℤ)

end

end A091570.P5029982890749552841

noncomputable section

/-- A091570: Sum of odd proper divisors of n. Sum of the odd divisors of n that are less than n.

Offset 1, canonical program `A091570.P5029982890749552841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091570 (n : ℕ) : ℤ :=
  A091570.P5029982890749552841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091626.P7932652778927836856

`∑[A266977(∑{d}[n, (n+1)%#])]`
-/

namespace A091626.P7932652778927836856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (∑ d ∈ Nat.divisors (f2 n), (n + 1) % d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091626.P7932652778927836856

noncomputable section

/-- A091626: Number of ordered integer pairs (b,c) with 0 <= b, c <= n such that both roots of x^2+bx+c=0 are integers.

Offset 0, canonical program `A091626.P7932652778927836856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091626 (n : ℕ) : ℤ :=
  A091626.P7932652778927836856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091686.P9827242635208383117

`A000007(n)-A091691(n+1)`
-/

namespace A091686.P9827242635208383117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A091691 (n + 1)

end

end A091686.P9827242635208383117

noncomputable section

/-- A091686: a(n) = 0^n + ((n-9)/9)*(1-10^n).

Offset 0, canonical program `A091686.P9827242635208383117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A091686 (n : ℕ) : ℤ :=
  A091686.P9827242635208383117.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A091686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091802.P3295321793161295733

`A002283(n+1)%A000040(n+1)+1`
-/

namespace A091802.P3295321793161295733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002283 (n + 1)) (A000040 (n + 1)) + 1

end

end A091802.P3295321793161295733

noncomputable section

/-- A091802: 10^n - (largest n-digit multiple of the n-th prime).

Offset 1, canonical program `A091802.P3295321793161295733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A091802 (n : ℕ) : ℤ :=
  A091802.P3295321793161295733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A091802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091818.P1536144604709334989

`2*A001065(n+1)`
-/

namespace A091818.P1536144604709334989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1)

end

end A091818.P1536144604709334989

noncomputable section

/-- A091818: Sum of the even proper divisors of 2n. Sum of the even divisors of 2n that are less than 2n.

Offset 1, canonical program `A091818.P1536144604709334989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091818 (n : ℕ) : ℤ :=
  A091818.P1536144604709334989.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091818.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091829.P4819344325037960460

`val((n+1)*A059009(or(n, n+1)), 2)`
-/

namespace A091829.P4819344325037960460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) * A059009 (Nat.lor n (n + 1))).toNat 2

end

end A091829.P4819344325037960460

noncomputable section

/-- A091829: a(1)=1; a(2n)=a(n)+1, a(2n+1)=a(n) mod 2.

Offset 1, canonical program `A091829.P4819344325037960460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091829 (n : ℕ) : ℤ :=
  (A091829.P4819344325037960460.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091848.P14683515746087445450

`floor(A182079(n)/4)`
-/

namespace A091848.P14683515746087445450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182079 n : ℚ) / 4⌋

end

end A091848.P14683515746087445450

noncomputable section

/-- A091848: Johnson bound J(n,4,2).

Offset 1, canonical program `A091848.P14683515746087445450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091848 (n : ℕ) : ℤ :=
  A091848.P14683515746087445450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091880.P8321771741329377910

`lt[1, A005361(A000040(n+1)+2)]+1`
-/

namespace A091880.P8321771741329377910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091880.P8321771741329377910

noncomputable section

/-- A091880: A049232 indexed by A000040.

Offset 1, canonical program `A091880.P8321771741329377910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A091880 (n : ℕ) : ℤ :=
  (A091880.P8321771741329377910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A091880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091932.P4688759596569628977

`p?[A005408(n)*A069283(A006257(n))]`
-/

namespace A091932.P4688759596569628977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A069283 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091932.P4688759596569628977

noncomputable section

/-- A091932: Primes that remain prime when their leading digit in binary representation is replaced by 0.

Offset 1, canonical program `A091932.P4688759596569628977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. -/
def A091932 (n : ℕ) : ℤ :=
  A091932.P4688759596569628977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. -/
def A091932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091973.P9091652725003456893

`floor(A008625(n)+A008742(2*n)/2)`
-/

namespace A091973.P9091652725003456893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008625 n : ℚ) + (A008742 (2 * n) : ℚ) / 2⌋

end

end A091973.P9091652725003456893

noncomputable section

/-- A091973: Poincaré series [or Poincare series] (or Molien series) for a certain three-dimensional group of order 1344.

Offset 0, canonical program `A091973.P9091652725003456893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A091973 (n : ℕ) : ℤ :=
  A091973.P9091652725003456893.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A091973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092022.P1203849625117540271

`(A091968(n+1)-3)/16`
-/

namespace A092022.P1203849625117540271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091968 (n + 1) - 3 : ℚ) / 16

end

end A092022.P1203849625117540271

noncomputable section

/-- A092022: Numbers k such that 16k + 3 is prime.

Offset 1, canonical program `A092022.P1203849625117540271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092022 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092022.P1203849625117540271.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092094.P9579417812492116424

`A068626(n+3)+4+n`
-/

namespace A092094.P9579417812492116424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (n + 3) + 4 + (n : ℤ)

end

end A092094.P9579417812492116424

noncomputable section

/-- A092094: a(n) = Sum_{i=0,1,2,..; n-k*i >= -n} |n-k*i| for k=3.

Offset 4, canonical program `A092094.P9579417812492116424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092094 (n : ℕ) : ℤ :=
  A092094.P9579417812492116424.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092095.P12158295490597299423

`∑[xor(a(n-1), A020710(n))]` with `a(0)=9, a(1)=7`
-/

namespace A092095.P12158295490597299423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 7] fun n f1 =>
  Int.xor (f1 (n - 1)) (A020710 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092095.P12158295490597299423

noncomputable section

/-- A092095: a(n) = Sum_{i=0,1,2,...; n-k*i >= -n} |n-k*i| for k=4.

Offset 5, canonical program `A092095.P12158295490597299423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092095 (n : ℕ) : ℤ :=
  A092095.P12158295490597299423.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092137.P8683289346343519200

`floor(sqrt(A000330(n+1)-1))+1`
-/

namespace A092137.P8683289346343519200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000330 (n + 1) - 1) + 1

end

end A092137.P8683289346343519200

noncomputable section

/-- A092137: Lower bound for A005842(n).

Offset 1, canonical program `A092137.P8683289346343519200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092137 (n : ℕ) : ℤ :=
  A092137.P8683289346343519200.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092182.P1728453642865867596

`A011245(n)+A008911(n)`
-/

namespace A092182.P1728453642865867596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011245 n + A008911 n

end

end A092182.P1728453642865867596

noncomputable section

/-- A092182: Figurate numbers based on the 600-cell (4-D polytope with Schlaefli symbol {3,3,5}).

Offset 1, canonical program `A092182.P1728453642865867596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092182 (n : ℕ) : ℤ :=
  A092182.P1728453642865867596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092236.P13045022325991076883

`A057681(n)+floor(3^(n-1))`
-/

namespace A092236.P13045022325991076883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A092236.P13045022325991076883

noncomputable section

/-- A092236: a(n) = (3^n + 2*3^(n/2)*cos(n*Pi/6))/3.

Offset 0, canonical program `A092236.P13045022325991076883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A092236 (n : ℕ) : ℤ :=
  A092236.P13045022325991076883.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A092236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092293.P13578287219996875528

`3*n+A090239(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092293.P13578287219996875528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A090239 n

end

end A092293.P13578287219996875528

noncomputable section

/-- A092293: a(n) = 3*n + A090239(n).

Offset 0, canonical program `A092293.P13578287219996875528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092293 (n : ℕ) : ℤ :=
  A092293.P13578287219996875528.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092293.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092296.P9774238227988506209

`3*n+A090193(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092296.P9774238227988506209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A090193 n

end

end A092296.P9774238227988506209

noncomputable section

/-- A092296: a(n) = 3*n + A090193(n).

Offset 0, canonical program `A092296.P9774238227988506209`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092296 (n : ℕ) : ℤ :=
  A092296.P9774238227988506209.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092345.P17476470797060356055

`A000007(n)+∑{d}[n, A034262(#)]`
-/

namespace A092345.P17476470797060356055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A034262 d

end

end A092345.P17476470797060356055

noncomputable section

/-- A092345: a(0)=1; a(n) = sigma_1(n) + sigma_3(n).

Offset 0, canonical program `A092345.P17476470797060356055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092345 (n : ℕ) : ℤ :=
  A092345.P17476470797060356055.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092347.P5419427036606339939

`A000007(n)+∑{d}[n, A027444(#)]`
-/

namespace A092347.P5419427036606339939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A027444 d

end

end A092347.P5419427036606339939

noncomputable section

/-- A092347: a(0)=1; a(n) = sigma_1(n) + sigma_2(n) + sigma_3(n).

Offset 0, canonical program `A092347.P5419427036606339939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092347 (n : ℕ) : ℤ :=
  A092347.P5419427036606339939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092347.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A092352.P12300652741479123804

`∑[A000217(Δ[ceil(n²/3)])]`
-/

namespace A092352.P12300652741479123804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092352.P12300652741479123804

noncomputable section

/-- A092352: G.f.: (1+3*x^3)/((1-x)^2*(1-x^3)^2).

Offset 0, canonical program `A092352.P12300652741479123804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092352 (n : ℕ) : ℤ :=
  A092352.P12300652741479123804.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092452.P13510736005175417312

`∪[3*n, A011533(n+1)]`
-/

namespace A092452.P13510736005175417312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092452.P13510736005175417312

noncomputable section

/-- A092452: Numbers that either contain the digit 3 or are divisible by 3.

Offset 0, canonical program `A092452.P13510736005175417312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092452 (n : ℕ) : ℤ :=
  (A092452.P13510736005175417312.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092459.P2398461548746564961

`comp[A000108(n)]`
-/

namespace A092459.P2398461548746564961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P2398461548746564961

noncomputable section

/-- A092459: Numbers that are not Catalan numbers (A000108).

Offset 1, canonical program `A092459.P2398461548746564961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092459 (n : ℕ) : ℤ :=
  (A092459.P2398461548746564961.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092467.P15276664502002150912

`A077949(3*n)`
-/

namespace A092467.P15276664502002150912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077949 (3 * n)

end

end A092467.P15276664502002150912

noncomputable section

/-- A092467: a(n) = Sum_{i+j+k=n, 0<=i,j,k<=n} (n+2k)!/(i! * j! * (3*k)!).

Offset 0, canonical program `A092467.P15276664502002150912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A092467 (n : ℕ) : ℤ :=
  A092467.P15276664502002150912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A092467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092502.P4607441725892613552

`A023896(n+1)/A048671(n+1)`
-/

namespace A092502.P4607441725892613552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023896 (n + 1) : ℚ) / (A048671 (n + 1) : ℚ)

end

end A092502.P4607441725892613552

noncomputable section

/-- A092502: First derivative of cyclotomic(n,x) evaluated at x=1.

Offset 1, canonical program `A092502.P4607441725892613552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092502 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092502.P4607441725892613552.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092508.P16481814429195658915

`∑[A008743(n-A029578(n))]`
-/

namespace A092508.P16481814429195658915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 ((n : ℤ) - A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092508.P16481814429195658915

noncomputable section

/-- A092508: Expansion of g.f. (1+x^18)/((1-x)*(1-x^4)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A092508.P16481814429195658915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092508 (n : ℕ) : ℤ :=
  A092508.P16481814429195658915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092508.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A092520.P11844865706702647306

`∏{e}[n+1, A001651(#+1)]`
-/

namespace A092520.P11844865706702647306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001651 (Nat.factorization (f1 n) p + 1)

end

end A092520.P11844865706702647306

noncomputable section

/-- A092520: Number of square divisors of n-th cube: a(n) = A046951(n^3).

Offset 1, canonical program `A092520.P11844865706702647306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092520 (n : ℕ) : ℤ :=
  A092520.P11844865706702647306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092531.P6757688596704552636

`∑[A008797(n-A029578(n))]`
-/

namespace A092531.P6757688596704552636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 ((n : ℤ) - A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092531.P6757688596704552636

noncomputable section

/-- A092531: Expansion of (1+x^10)/((1-x)*(1-x^4)^2*(1-x^8)).

Offset 0, canonical program `A092531.P6757688596704552636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092531 (n : ℕ) : ℤ :=
  A092531.P6757688596704552636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092569.P9977416492423426890

`xor(n, A053644(or(2, n))-2)`
-/

namespace A092569.P9977416492423426890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A053644 (Nat.lor 2 n) - 2)

end

end A092569.P9977416492423426890

noncomputable section

/-- A092569: Permutation of integers a(a(n)) = n. In binary representation of n, transformation of inner bits, 1 <-> 0, gives binary representation of a(n).

Offset 0, canonical program `A092569.P9977416492423426890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092569 (n : ℕ) : ℤ :=
  A092569.P9977416492423426890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092604.P14882743689300084007

`comp[A013939(n+1)]`
-/

namespace A092604.P14882743689300084007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092604.P14882743689300084007

noncomputable section

/-- A092604: Complement of A013939.

Offset 1, canonical program `A092604.P14882743689300084007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092604 (n : ℕ) : ℤ :=
  (A092604.P14882743689300084007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092693.P489239560406468948

`A053478(n+1)-(n+1)`
-/

namespace A092693.P489239560406468948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053478 (n + 1) - (n + 1 : ℤ)

end

end A092693.P489239560406468948

noncomputable section

/-- A092693: Sum of iterated phi(n).

Offset 1, canonical program `A092693.P489239560406468948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092693 (n : ℕ) : ℤ :=
  A092693.P489239560406468948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092754.P1811900453870475820

`A004754(n+1)-1`
-/

namespace A092754.P1811900453870475820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1) - 1

end

end A092754.P1811900453870475820

noncomputable section

/-- A092754: a(1)=1, a(2n)=2a(n)+1, a(2n+1)=2a(n)+2.

Offset 1, canonical program `A092754.P1811900453870475820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004754, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092754 (n : ℕ) : ℤ :=
  A092754.P1811900453870475820.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004754, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092756.P16734893900534890421

`and(∑[A000227(n+1)], -1)`
-/

namespace A092756.P16734893900534890421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A092756.P16734893900534890421

noncomputable section

/-- A092756: Partial sums of round(exp(n)).

Offset 1, canonical program `A092756.P16734893900534890421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A092756 (n : ℕ) : ℤ :=
  A092756.P16734893900534890421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A092756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092759.P10365930146465751826

`A000040(n+1)^7`
-/

namespace A092759.P10365930146465751826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 7

end

end A092759.P10365930146465751826

noncomputable section

/-- A092759: a(n) = prime(n)^7.

Offset 1, canonical program `A092759.P10365930146465751826`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092759 (n : ℕ) : ℤ :=
  A092759.P10365930146465751826.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092778.P16093359121593778950

`A000045(n)*10^A055642(A000045(n+1))+A000045(n+1)`
-/

namespace A092778.P16093359121593778950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) * (10 : ℚ) ^ (A055642 (A000045 (n + 1)).toNat : ℤ) + (A000045 (n + 1) : ℚ)

end

end A092778.P16093359121593778950

noncomputable section

/-- A092778: Concatenate pairs of successive Fibonacci numbers.

Offset 0, canonical program `A092778.P16093359121593778950`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092778 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092778.P16093359121593778950.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092778.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092779.P649632426038707152

`∑[A088705(A047587(n+1))]`
-/

namespace A092779.P649632426038707152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A047587 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092779.P649632426038707152

noncomputable section

/-- A092779: Exponent of 2 in central fibonomial coefficient A003267.

Offset 0, canonical program `A092779.P649632426038707152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A092779 (n : ℕ) : ℤ :=
  A092779.P649632426038707152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A092779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092780.P9033865282119373017

`∑[A000040(n+1)]²-1`
-/

namespace A092780.P9033865282119373017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A092780.P9033865282119373017

noncomputable section

/-- A092780: Sum(prime(k),k=1..n)^2-1.

Offset 1, canonical program `A092780.P9033865282119373017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092780 (n : ℕ) : ℤ :=
  A092780.P9033865282119373017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092784.P6391485471561778356

`∑[Δ[A022853(n)]-2]`
-/

namespace A092784.P6391485471561778356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092784.P6391485471561778356

noncomputable section

/-- A092784: a(n) = round(n*(Pi - 2)).

Offset 1, canonical program `A092784.P6391485471561778356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092784 (n : ℕ) : ℤ :=
  A092784.P6391485471561778356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092919.P6854998301569668294

`∑[A000193(A000122(n)+1+n)]-1`
-/

namespace A092919.P6854998301569668294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A000122 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A092919.P6854998301569668294

noncomputable section

/-- A092919: Partial sums of A000193 (round(log(n))).

Offset 1, canonical program `A092919.P6854998301569668294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092919 (n : ℕ) : ℤ :=
  A092919.P6854998301569668294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093039.P11914555654143575818

`A096338(n)+C(floor(n/2)+4, 4)`
-/

namespace A093039.P11914555654143575818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 n + (Nat.choose (⌊(n : ℚ) / 2⌋ + 4).toNat 4 : ℤ)

end

end A093039.P11914555654143575818

noncomputable section

/-- A093039: Sequence resulting from a sum of three repeated binomial(n+3,4) sequences.

Offset 1, canonical program `A093039.P11914555654143575818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093039 (n : ℕ) : ℤ :=
  A093039.P11914555654143575818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093041.P14055015513550372121

`A137221(n)+A130781(n)`
-/

namespace A093041.P14055015513550372121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137221 n + A130781 n

end

end A093041.P14055015513550372121

noncomputable section

/-- A093041: Expansion of (1-4x+6x^2-3x^3)/(1-5x+9x^2-8x^3+4x^4).

Offset 0, canonical program `A093041.P14055015513550372121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A093041 (n : ℕ) : ℤ :=
  A093041.P14055015513550372121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A093041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093045.P7082578674066939625

`A000045(n)*Δ[round(2^n/3)]`
-/

namespace A093045.P7082578674066939625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A093045.P7082578674066939625

noncomputable section

/-- A093045: 2*Jacobsthal(n-1)*Fibonacci(n).

Offset 0, canonical program `A093045.P7082578674066939625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A093045 (n : ℕ) : ℤ :=
  A093045.P7082578674066939625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. -/
def A093045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093061.P7921048065262857130

`6*A082909(n+1)`
-/

namespace A093061.P7921048065262857130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A082909 (n + 1)

end

end A093061.P7921048065262857130

noncomputable section

/-- A093061: 6 * Sum_{d|n} (d mod 3).

Offset 1, canonical program `A093061.P7921048065262857130`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093061 (n : ℕ) : ℤ :=
  A093061.P7921048065262857130.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093061.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A093196.P12084554466604382958

`∑[A302298(n)+∑[8*n²+2]-1]`
-/

namespace A093196.P12084554466604382958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302298 n + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093196.P12084554466604382958

noncomputable section

/-- A093196: Number of 4 X 4 pandiagonal magic squares with line sum 2*n.

Offset 0, canonical program `A093196.P12084554466604382958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093196 (n : ℕ) : ℤ :=
  A093196.P12084554466604382958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093198.P2960952486116502484

`∑[∑[A299289(n)+n²]]`
-/

namespace A093198.P2960952486116502484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299289 n + (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093198.P2960952486116502484

noncomputable section

/-- A093198: Number of 4 X 4 symmetric magic squares with line sum 2n.

Offset 0, canonical program `A093198.P2960952486116502484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093198 (n : ℕ) : ℤ :=
  A093198.P2960952486116502484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093318.P13020184346943754968

`A002265(abs(A007427(n+1))-A007427(n+1))`
-/

namespace A093318.P13020184346943754968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (|A007427 (n + 1)| - A007427 (n + 1)).toNat

end

end A093318.P13020184346943754968

noncomputable section

/-- A093318: a(n) = number of positive divisors k of n where mu(k) = 1 and mu(n/k) = -1.

Offset 1, canonical program `A093318.P13020184346943754968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093318 (n : ℕ) : ℤ :=
  A093318.P13020184346943754968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093337.P11463696251009930482

`floor(A000040(n+5)/10)%10`
-/

namespace A093337.P11463696251009930482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000040 (n + 5) : ℚ) / 10⌋ 10

end

end A093337.P11463696251009930482

noncomputable section

/-- A093337: Penultimate digits of the primes.

Offset 11, canonical program `A093337.P11463696251009930482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093337 (n : ℕ) : ℤ :=
  A093337.P11463696251009930482.a (n - 11)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A093337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093347.P11686768757415714358

`a(n-1)-3^val(n, 3)*A056594(2*n)` with `a(0)=0`
-/

namespace A093347.P11686768757415714358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (3 ^ SequenceMachineLib.valuation n 3 : ℤ) * A056594 (2 * n)

end

end A093347.P11686768757415714358

noncomputable section

/-- A093347: A 3-fractal "castle" starting with 0.

Offset 1, canonical program `A093347.P11686768757415714358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A093347 (n : ℕ) : ℤ :=
  A093347.P11686768757415714358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A093347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093387.P2083528164567880830

`2^n-A001405(n+1)`
-/

namespace A093387.P2083528164567880830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A001405 (n + 1)

end

end A093387.P2083528164567880830

noncomputable section

/-- A093387: a(n) = 2^(n-1) - binomial(n, floor(n/2)).

Offset 1, canonical program `A093387.P2083528164567880830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A093387 (n : ℕ) : ℤ :=
  A093387.P2083528164567880830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A093387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093393.P11296675382952924623

`A093390(n)+A004524(n)`
-/

namespace A093393.P11296675382952924623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 n + A004524 n

end

end A093393.P11296675382952924623

noncomputable section

/-- A093393: [n/9] + [n/4] + [(n+1)/9] + [(n+1)/4] + [(n+2)/9].

Offset 0, canonical program `A093393.P11296675382952924623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093393 (n : ℕ) : ℤ :=
  A093393.P11296675382952924623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093505.P4235397940192916104

`A001969(n+1)-n`
-/

namespace A093505.P4235397940192916104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) - (n : ℤ)

end

end A093505.P4235397940192916104

noncomputable section

/-- A093505: a(n) = floor(A001969(n)/2 + 1/2).

Offset 1, canonical program `A093505.P4235397940192916104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001969, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093505 (n : ℕ) : ℤ :=
  A093505.P4235397940192916104.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001969, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093505.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A093544.P14062098747140646535

`2*A342369(n)+1`
-/

namespace A093544.P14062098747140646535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342369 n + 1

end

end A093544.P14062098747140646535

noncomputable section

/-- A093544: Numerator of (4*n-3)/A000265(n). Numerator of pairwise quotients of A004130.

Offset 1, canonical program `A093544.P14062098747140646535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093544 (n : ℕ) : ℤ :=
  A093544.P14062098747140646535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093545.P17928453857707121871

`floor(A047212(n+1)/Δ[A047202(n+1)])`
-/

namespace A093545.P17928453857707121871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047212 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A093545.P17928453857707121871

noncomputable section

/-- A093545: Sorted mapping of A093544 onto the integers.

Offset 0, canonical program `A093545.P17928453857707121871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A093545 (n : ℕ) : ℤ :=
  A093545.P17928453857707121871.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A093545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093567.P12114222028525715418

`A006542(n+4)-∑[n+1]²`
-/

namespace A093567.P12114222028525715418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 4) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A093567.P12114222028525715418

noncomputable section

/-- A093567: Binomial (Binomial (n,2), 3) - Binomial (Binomial (n,3), 2).

Offset 2, canonical program `A093567.P12114222028525715418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093567 (n : ℕ) : ℤ :=
  A093567.P12114222028525715418.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093699.P12283255733859001925

`(n+1)*(n*A317298(n+1)+1)`
-/

namespace A093699.P12283255733859001925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A317298 (n + 1) + 1)

end

end A093699.P12283255733859001925

noncomputable section

/-- A093699: Maximum number of odd 2 X 2 submatrices over all 2n X 2n (0,1) matrices.

Offset 1, canonical program `A093699.P12283255733859001925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093699 (n : ℕ) : ℤ :=
  A093699.P12283255733859001925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093809.P2760437200676210289

`∑[(n+1)*(A064680(A000040(n+1))-(n+1))]`
-/

namespace A093809.P2760437200676210289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A064680 (A000040 (n + 1)).toNat - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093809.P2760437200676210289

noncomputable section

/-- A093809: a[n] =a[n-1] + 2*n*Prime[n]-n^2.

Offset 1, canonical program `A093809.P2760437200676210289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A093809 (n : ℕ) : ℤ :=
  A093809.P2760437200676210289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A093809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093862.P8636765871941824583

`floor(A000040(n+1)^(p?[A057979(n)]/(n+1)))`
-/

namespace A093862.P8636765871941824583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) ^ ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A093862.P8636765871941824583

noncomputable section

/-- A093862: Floor[ prime(n)^{prime(n)/n}], prime(n) = A000040(n).

Offset 1, canonical program `A093862.P8636765871941824583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A093862 (n : ℕ) : ℤ :=
  A093862.P8636765871941824583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A093862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093879.P16906810151059446800

`A004001(n+2)-A004001(n+1)`
-/

namespace A093879.P16906810151059446800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 2) - A004001 (n + 1)

end

end A093879.P16906810151059446800

noncomputable section

/-- A093879: First differences of A004001.

Offset 1, canonical program `A093879.P16906810151059446800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093879 (n : ℕ) : ℤ :=
  A093879.P16906810151059446800.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A093969.P1688578768118067326

`n*A000129(abs(2-n))`
-/

namespace A093969.P1688578768118067326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000129 |2 - (n : ℤ)|.toNat

end

end A093969.P1688578768118067326

noncomputable section

/-- A093969: a(n) = n*Pell(n-2).

Offset 0, canonical program `A093969.P1688578768118067326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A093969 (n : ℕ) : ℤ :=
  A093969.P1688578768118067326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A093969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094012.P8668976523649428060

`n*A062112(A004274(n))`
-/

namespace A094012.P8668976523649428060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062112 (A004274 n).toNat

end

end A094012.P8668976523649428060

noncomputable section

/-- A094012: Expansion of x*(1-6*x+10*x^2)/(1-4*x+2*x^2)^2.

Offset 0, canonical program `A094012.P8668976523649428060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A094012 (n : ℕ) : ℤ :=
  A094012.P8668976523649428060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A094012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094028.P4039679319196803451

`A094027(2*n+1)`
-/

namespace A094028.P4039679319196803451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094027 (2 * n + 1)

end

end A094028.P4039679319196803451

noncomputable section

/-- A094028: Expansion of 1/((1-x)*(1-100*x)).

Offset 0, canonical program `A094028.P4039679319196803451`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094028 (n : ℕ) : ℤ :=
  A094028.P4039679319196803451.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094039.P6879409196476829351

`A000392(n)+floor(∑[2^n/3])`
-/

namespace A094039.P6879409196476829351
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n + ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A094039.P6879409196476829351

noncomputable section

/-- A094039: Binomial transform of (Jacobsthal(n) + 2^n*Jacobsthal(-n))/2.

Offset 0, canonical program `A094039.P6879409196476829351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A094039 (n : ℕ) : ℤ :=
  A094039.P6879409196476829351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A094039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094041.P11803999244234992070

`A002264(A002264(A008598(n+1))+n+1)`
-/

namespace A094041.P11803999244234992070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (A008598 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A094041.P11803999244234992070

noncomputable section

/-- A094041: Beatty sequence for e^Pi - Pi^e - i^i.

Offset 1, canonical program `A094041.P11803999244234992070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A094041 (n : ℕ) : ℤ :=
  A094041.P11803999244234992070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A094041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094042.P7355510371815584698

`A059995(A008601(n+1)-1)`
-/

namespace A094042.P7355510371815584698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A008601 (n + 1) - 1).toNat

end

end A094042.P7355510371815584698

noncomputable section

/-- A094042: Beatty sequence for e^Pi - Pi^e - i^i.

Offset 1, canonical program `A094042.P7355510371815584698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A094042 (n : ℕ) : ℤ :=
  A094042.P7355510371815584698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A094042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094062.P10718842860640723893

`A101360(n+1)-A000007(n)`
-/

namespace A094062.P10718842860640723893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101360 (n + 1) - A000007 n

end

end A094062.P10718842860640723893

noncomputable section

/-- A094062: a(n) = ceiling((3-sqrt(3))*4^(n-3)) + 1 for n>=2, a(1)=1.

Offset 1, canonical program `A094062.P10718842860640723893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A094062 (n : ℕ) : ℤ :=
  A094062.P10718842860640723893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A094062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094114.P17319484531371158423

`A065361(A004526(n+1)+n)-A065361(n)`
-/

namespace A094114.P17319484531371158423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A004526 (n + 1) + (n : ℤ)).toNat - A065361 n

end

end A094114.P17319484531371158423

noncomputable section

/-- A094114: a(n) = -Sum_{i=1..n-1} (-1)^i*2^valuation(i,3).

Offset 1, canonical program `A094114.P17319484531371158423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A094114 (n : ℕ) : ℤ :=
  A094114.P17319484531371158423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A094114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094115.P8635219247474367787

`∑[a(n-1)-3^val(n, 3)*A056594(2*n)]` with `a(0)=0`
-/

namespace A094115.P8635219247474367787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (3 ^ SequenceMachineLib.valuation n 3 : ℤ) * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094115.P8635219247474367787

noncomputable section

/-- A094115: Partial sums of A093347.

Offset 1, canonical program `A094115.P8635219247474367787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2971 terms. -/
def A094115 (n : ℕ) : ℤ :=
  A094115.P8635219247474367787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2971 terms. -/
def A094115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094284.P13642906425844779461

`A094283(n+2)/A094283(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094284.P13642906425844779461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094283 (n + 2) : ℚ) / (A094283 (n + 1) : ℚ)

end

end A094284.P13642906425844779461

noncomputable section

/-- A094284: a(n) = A094283(n+1)/A094283(n).

Offset 1, canonical program `A094284.P13642906425844779461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094284 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094284.P13642906425844779461.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094283, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094284.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094290.P15220465001393100053

`A000040(val(n+1, 2)+1)`
-/

namespace A094290.P15220465001393100053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A094290.P15220465001393100053

noncomputable section

/-- A094290: a(n) = prime(A001511(n)), where A001511 is one more than the 2-adic valuation of n.

Offset 1, canonical program `A094290.P15220465001393100053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094290 (n : ℕ) : ℤ :=
  A094290.P15220465001393100053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094311.P7130402841805399466

`Δ[C(A002817(n)+1, 2)]`
-/

namespace A094311.P7130402841805399466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002817 n + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A094311.P7130402841805399466

noncomputable section

/-- A094311: a(n) = n*(1+n^2)*((2+n^2)^2-n^2)/16.

Offset 1, canonical program `A094311.P7130402841805399466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094311 (n : ℕ) : ℤ :=
  A094311.P7130402841805399466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094387.P8146316033527688361

`eq[1, gcd(n, A005187(n))]`
-/

namespace A094387.P8146316033527688361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A005187 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094387.P8146316033527688361

noncomputable section

/-- A094387: Numbers k such that gcd(k, A000120(k)) = 1.

Offset 1, canonical program `A094387.P8146316033527688361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094387 (n : ℕ) : ℤ :=
  (A094387.P8146316033527688361.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A094387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094423.P11233443411292513625

`∑[A006495(n)]²`
-/

namespace A094423.P11233443411292513625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A094423.P11233443411292513625

noncomputable section

/-- A094423: a(n) = A045873(n)^2.

Offset 1, canonical program `A094423.P11233443411292513625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A094423 (n : ℕ) : ℤ :=
  A094423.P11233443411292513625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A094423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094588.P2206646666125685981

`a(n-1)+A000032(n-2)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A094588.P2206646666125685981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (A000032 (n - 2) + a (n - 2))

end

end A094588.P2206646666125685981

noncomputable section

/-- A094588: a(n) = n*F(n-1) + F(n), where F = A000045.

Offset 0, canonical program `A094588.P2206646666125685981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A094588 (n : ℕ) : ℤ :=
  A094588.P2206646666125685981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A094588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094621.P17941056569297402281

`2*A094620(n)-A094622(n)`
-/

namespace A094621.P17941056569297402281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094620 n - A094622 n

end

end A094621.P17941056569297402281

noncomputable section

/-- A094621: Expansion of x*(11+13*x+20*x^2) / ( (x-1)*(1+x)*(10*x^2-1) ).

Offset 0, canonical program `A094621.P17941056569297402281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A094621 (n : ℕ) : ℤ :=
  A094621.P17941056569297402281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A094621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094625.P13336265683481340594

`A094623(n)+A094624(n)`
-/

namespace A094625.P13336265683481340594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094623 n + A094624 n

end

end A094625.P13336265683481340594

noncomputable section

/-- A094625: Expansion of g.f. x*(2+22*x+11*x^2)/((x-1)*(1+x)*(10*x^2-1)).

Offset 0, canonical program `A094625.P13336265683481340594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094623, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094625 (n : ℕ) : ℤ :=
  A094625.P13336265683481340594.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094623, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094625.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094648.P13765458420596317681

`A033999(n)*A096975(n)`
-/

namespace A094648.P13765458420596317681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A096975 n

end

end A094648.P13765458420596317681

noncomputable section

/-- A094648: An accelerator sequence for Catalan's constant.

Offset 0, canonical program `A094648.P13765458420596317681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A094648 (n : ℕ) : ℤ :=
  A094648.P13765458420596317681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A094648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094650.P10297718232324773788

`A033999(n)*A189234(n)`
-/

namespace A094650.P10297718232324773788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A189234 n

end

end A094650.P10297718232324773788

noncomputable section

/-- A094650: An accelerator sequence for Catalan's constant.

Offset 0, canonical program `A094650.P10297718232324773788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A094650 (n : ℕ) : ℤ :=
  A094650.P10297718232324773788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A094650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094683.P13368703910050772922

`floor(sqrt(n)^A010873(A053742(n)))`
-/

namespace A094683.P13368703910050772922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) ^ (A010873 (A053742 n).toNat : ℤ)⌋

end

end A094683.P13368703910050772922

noncomputable section

/-- A094683: Juggler sequence: if n mod 2 = 0 then floor(sqrt(n)) else floor(n^(3/2)).

Offset 0, canonical program `A094683.P13368703910050772922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. -/
def A094683 (n : ℕ) : ℤ :=
  A094683.P13368703910050772922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. -/
def A094683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094876.P8387167060202303753

`A000108(Δ[round(C(n, 3)/(2*(n+1)))])`
-/

namespace A094876.P8387167060202303753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 3 : ℚ) / (2 * (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f1 (n + 1) - f1 n).toNat

end

end A094876.P8387167060202303753

noncomputable section

/-- A094876: a(1) = a(2) = a(3) = a(4) = a(5) = a(6) = 1; then a(n) = sum( a(2*i)*a(3*j)) where 1< = i< = n, 1< = j< = n and 2*i+3*j = n.

Offset 1, canonical program `A094876.P8387167060202303753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. -/
def A094876 (n : ℕ) : ℤ :=
  A094876.P8387167060202303753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. -/
def A094876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094894.P10948820553726470902

`A000040(A000032(n))`
-/

namespace A094894.P10948820553726470902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000032 n).toNat

end

end A094894.P10948820553726470902

noncomputable section

/-- A094894: a(n) = prime(Lucas(n)), Lucas numbers beginning at 2 (A000032).

Offset 0, canonical program `A094894.P10948820553726470902`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094894 (n : ℕ) : ℤ :=
  A094894.P10948820553726470902.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094945.P9034424689578853627

`or(10*a(n-1), Δ[A083920(n)])` with `a(0)=0`
-/

namespace A094945.P9034424689578853627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A094945.P9034424689578853627

noncomputable section

/-- A094945: Initial n terms of A023532(n) taken as digits.

Offset 0, canonical program `A094945.P9034424689578853627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A094945 (n : ℕ) : ℤ :=
  A094945.P9034424689578853627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A094945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094966.P9582723506633354306

`A001906(ceil(n/2))`
-/

namespace A094966.P9582723506633354306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 ⌈(n : ℚ) / 2⌉.toNat

end

end A094966.P9582723506633354306

noncomputable section

/-- A094966: Left-hand neighbors of Fibonacci numbers in Stern's diatomic series.

Offset 0, canonical program `A094966.P9582723506633354306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A094966 (n : ℕ) : ℤ :=
  A094966.P9582723506633354306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A094966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094996.P16061367853568397859

`floor(A094974(n)/A002379(n))`
-/

namespace A094996.P16061367853568397859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094974 n : ℚ) / (A002379 n : ℚ)⌋

end

end A094996.P16061367853568397859

noncomputable section

/-- A094996: a(n) = floor(10^n/9^n).

Offset 0, canonical program `A094996.P16061367853568397859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A094996 (n : ℕ) : ℤ :=
  A094996.P16061367853568397859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A094996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095001.P3102358957211892500

`∑{d}[n+1, A007947((n+1)/#)^#]`
-/

namespace A095001.P3102358957211892500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ d

end

end A095001.P3102358957211892500

noncomputable section

/-- A095001: a(n) = Sum_{d|n} rad(d)^(n/d), where rad(d) = A007947(d) is the squarefree kernel of d.

Offset 1, canonical program `A095001.P3102358957211892500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A095001 (n : ℕ) : ℤ :=
  A095001.P3102358957211892500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A095001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095077.P13354407846713250107

`p?[A014312(n+1)]`
-/

namespace A095077.P13354407846713250107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095077.P13354407846713250107

noncomputable section

/-- A095077: Primes with four 1-bits in their binary expansion.

Offset 1, canonical program `A095077.P13354407846713250107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A095077 (n : ℕ) : ℤ :=
  A095077.P13354407846713250107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A095077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095112.P14061564638786358280

`∑{d}[n+1, #*A069513((n+1)/#)]`
-/

namespace A095112.P14061564638786358280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A069513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A095112.P14061564638786358280

noncomputable section

/-- A095112: a(n) is the sum of n/k over all prime powers k > 1 which divide n.

Offset 1, canonical program `A095112.P14061564638786358280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095112 (n : ℕ) : ℤ :=
  A095112.P14061564638786358280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095125.P348354507931389114

`A095127(n+1)-∑[A122299(n+1)]`
-/

namespace A095125.P348354507931389114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095127 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095125.P348354507931389114

noncomputable section

/-- A095125: Expansion of -x*(-1-x+x^2) / ( 1-2*x-3*x^2+x^3 ).

Offset 1, canonical program `A095125.P348354507931389114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A095125 (n : ℕ) : ℤ :=
  A095125.P348354507931389114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A095125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095129.P1580295399358873830

`(A014113(n)-1)*A001045(n)`
-/

namespace A095129.P1580295399358873830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014113 n - 1) * A001045 n

end

end A095129.P1580295399358873830

noncomputable section

/-- A095129: a(n) = Jac(n)*(2Jac(n)-1), where Jac(n) = A001045(n).

Offset 0, canonical program `A095129.P1580295399358873830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A095129 (n : ℕ) : ℤ :=
  A095129.P1580295399358873830.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A095129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095262.P1740434345136401168

`A126643(n+1)-A297928(n)`
-/

namespace A095262.P1740434345136401168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126643 (n + 1) - A297928 n

end

end A095262.P1740434345136401168

noncomputable section

/-- A095262: A sequence derived from a truncated Pascal's Triangle matrix.

Offset 1, canonical program `A095262.P1740434345136401168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A095262 (n : ℕ) : ℤ :=
  A095262.P1740434345136401168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A095262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095266.P16673346761263433357

`∑[5*n*A005897(n)+1]`
-/

namespace A095266.P16673346761263433357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) * A005897 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095266.P16673346761263433357

noncomputable section

/-- A095266: A sequence generated from the Narayana triangle considered as a matrix, or from Pascal's triangle.

Offset 1, canonical program `A095266.P16673346761263433357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095266 (n : ℕ) : ℤ :=
  A095266.P16673346761263433357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095278.P16565177898415012224

`(A002145(n+1)-3)/4`
-/

namespace A095278.P16565177898415012224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) - 3 : ℚ) / 4

end

end A095278.P16565177898415012224

noncomputable section

/-- A095278: Numbers k such that 4k + 3 is prime.

Offset 1, canonical program `A095278.P16565177898415012224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095278 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A095278.P16565177898415012224.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095278.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095286.P13517122244104778707

`p?[2*A072600(n+1)+1]`
-/

namespace A095286.P13517122244104778707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072600 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095286.P13517122244104778707

noncomputable section

/-- A095286: Primes in whose binary expansion the number of 1 bits is > 1 + number of 0 bits.

Offset 1, canonical program `A095286.P13517122244104778707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2122 terms. -/
def A095286 (n : ℕ) : ℤ :=
  A095286.P13517122244104778707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2122 terms. -/
def A095286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095310.P9758420245812040289

`A122299(n+3)`
-/

namespace A095310.P9758420245812040289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 3)

end

end A095310.P9758420245812040289

noncomputable section

/-- A095310: a(n+3) = 2*a(n+2) + 3*(n+1) - a(n).

Offset 1, canonical program `A095310.P9758420245812040289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A095310 (n : ℕ) : ℤ :=
  A095310.P9758420245812040289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A095310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095314.P9563485731236940498

`p?[A072600(n+2)+1]`
-/

namespace A095314.P9563485731236940498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072600 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095314.P9563485731236940498

noncomputable section

/-- A095314: Primes in whose binary expansion the number of 1 bits is > 2 + number of 0 bits.

Offset 1, canonical program `A095314.P9563485731236940498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A095314 (n : ℕ) : ℤ :=
  A095314.P9563485731236940498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. -/
def A095314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095317.P12578229701509974055

`p?[A071045(A072603(n+1))]`
-/

namespace A095317.P12578229701509974055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (A072603 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095317.P12578229701509974055

noncomputable section

/-- A095317: Primes in whose binary expansion the number of 1 bits is <= number of 0 bits minus 2.

Offset 1, canonical program `A095317.P12578229701509974055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A095317 (n : ℕ) : ℤ :=
  A095317.P12578229701509974055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A095317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095319.P7579409491582349673

`p?[A029578(A072602(n+1)+2)]`
-/

namespace A095319.P7579409491582349673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A072602 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095319.P7579409491582349673

noncomputable section

/-- A095319: Primes in whose binary expansion the number of 1 bits is <= 3 + number of 0 bits.

Offset 1, canonical program `A095319.P7579409491582349673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A095319 (n : ℕ) : ℤ :=
  A095319.P7579409491582349673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A095319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095395.P13995882039872132703

`A059921(n+1)-A095394(n+1)`
-/

namespace A095395.P13995882039872132703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059921 (n + 1) - A095394 (n + 1)

end

end A095395.P13995882039872132703

noncomputable section

/-- A095395: a(n) = floor(n^((n+1)/(n))) - floor(n^((n)/(n+1))).

Offset 1, canonical program `A095395.P13995882039872132703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059921, A095394, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A095395 (n : ℕ) : ℤ :=
  A095395.P13995882039872132703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059921, A095394, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A095395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095407.P3444143367220701582

`∑{p}[n+1, A004218(#)]`
-/

namespace A095407.P3444143367220701582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A004218 p

end

end A095407.P3444143367220701582

noncomputable section

/-- A095407: Total number of decimal digits of all distinct prime factors of n.

Offset 1, canonical program `A095407.P3444143367220701582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095407 (n : ℕ) : ℤ :=
  A095407.P3444143367220701582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095681.P6198139865931610935

`∑[A000100(n+3)]`
-/

namespace A095681.P6198139865931610935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000100 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095681.P6198139865931610935

noncomputable section

/-- A095681: Expansion of 1/((1-x)(1-x-x^2)(1-x-x^2-x^3)).

Offset 0, canonical program `A095681.P6198139865931610935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A095681 (n : ℕ) : ℤ :=
  A095681.P6198139865931610935.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A095681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095713.P5976554658561473307

`A011551(C(comp[∑[n]]-n, 2)-(n+1))%10`
-/

namespace A095713.P5976554658561473307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011551 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))) 10

end

end A095713.P5976554658561473307

noncomputable section

/-- A095713: Triangle of numbers obtained by reversing the first n digits of golden ratio phi and juxtaposing.

Offset 1, canonical program `A095713.P5976554658561473307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A095713 (n : ℕ) : ℤ :=
  A095713.P5976554658561473307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A095713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095767.P1169779296822918440

`val(A004001(n+1), 2)`
-/

namespace A095767.P1169779296822918440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004001 (n + 1)).toNat 2

end

end A095767.P1169779296822918440

noncomputable section

/-- A095767: a(n) = valuation(A004001(n),2).

Offset 1, canonical program `A095767.P1169779296822918440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095767 (n : ℕ) : ℤ :=
  (A095767.P1169779296822918440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095774.P3934160063967268362

`2*A003160(n+1)-(n+1)`
-/

namespace A095774.P3934160063967268362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003160 (n + 1) - (n + 1 : ℤ)

end

end A095774.P3934160063967268362

noncomputable section

/-- A095774: a(n)=2*A003160(n)-n.

Offset 1, canonical program `A095774.P3934160063967268362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095774 (n : ℕ) : ℤ :=
  A095774.P3934160063967268362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095791.P9376458256394770809

`floor(a(A060143(n)))+1` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A095791.P9376458256394770809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A060143 n).toNat + 1

end

end A095791.P9376458256394770809

noncomputable section

/-- A095791: Number of digits in lazy-Fibonacci-binary representation of n (A104326).

Offset 0, canonical program `A095791.P9376458256394770809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095791 (n : ℕ) : ℤ :=
  (A095791.P9376458256394770809.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095792.P5756927233554498933

`1-A010056(n+1)`
-/

namespace A095792.P5756927233554498933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010056 (n + 1)

end

end A095792.P5756927233554498933

noncomputable section

/-- A095792: a(n) = Z(n) - L(n), where Z=A072649 and L=A095791 are lengths of Zeckendorf and lazy Fibonacci representations in binary notation.

Offset 0, canonical program `A095792.P5756927233554498933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095792 (n : ℕ) : ℤ :=
  A095792.P5756927233554498933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095808.P3090164483403179767

`A078703(n+1)-1`
-/

namespace A095808.P3090164483403179767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (n + 1) - 1

end

end A095808.P3090164483403179767

noncomputable section

/-- A095808: Number of ways to write n in the form m + (m+1) + ... + (m+k-1) + (m+k) + (m+k-1) + ... + (m+1) + m with integers m>= 1, k>=1. Or, number of divisors d of 4n-1 with 0 < (d-1)^2 < 4n.

Offset 1, canonical program `A095808.P3090164483403179767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078703, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095808 (n : ℕ) : ℤ :=
  A095808.P3090164483403179767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078703, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095808.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095862.P2197383471254196251

`eq[A032741(n)+1, A004218(n+1)]`
-/

namespace A095862.P2197383471254196251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095862.P2197383471254196251

noncomputable section

/-- A095862: Numbers whose number of decimal digits and number of divisors are equal.

Offset 1, canonical program `A095862.P2197383471254196251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A095862 (n : ℕ) : ℤ :=
  (A095862.P2197383471254196251.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. -/
def A095862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095900.P7388897981805196754

`A004001(10^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095900.P7388897981805196754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (10 ^ n)

end

end A095900.P7388897981805196754

noncomputable section

/-- A095900: a(n) = A004001(10^n).

Offset 0, canonical program `A095900.P7388897981805196754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095900 (n : ℕ) : ℤ :=
  A095900.P7388897981805196754.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095900.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095901.P9101877422872607810

`A000035(A004001(n+1))`
-/

namespace A095901.P9101877422872607810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004001 (n + 1)).toNat

end

end A095901.P9101877422872607810

noncomputable section

/-- A095901: A004001 (mod 2).

Offset 1, canonical program `A095901.P9101877422872607810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095901 (n : ℕ) : ℤ :=
  A095901.P9101877422872607810.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004001, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096228.P5573145635654282284

`A032634((n+1)²-char[6])`
-/

namespace A096228.P5573145635654282284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 ((n + 1) ^ 2 - (if ∃ j, f1 j = n then 1 else 0))

end

end A096228.P5573145635654282284

noncomputable section

/-- A096228: a(n) = floor(n^2*((n-1)/n)^(n-1/2)).

Offset 1, canonical program `A096228.P5573145635654282284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A096228 (n : ℕ) : ℤ :=
  A096228.P5573145635654282284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A096228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096229.P1156246642711404417

`(2*n-n%5)*A293481(5-2*n%5+n)`
-/

namespace A096229.P1156246642711404417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - ((n % 5 : ℕ) : ℤ)) * A293481 (5 - ((2 * (n % 5) : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A096229.P1156246642711404417

noncomputable section

/-- A096229: 0*9, 1*8, 2*7, 3*6, 4*5; 10*19, 11*18, ..., 14*15; 20*29, 21*28, ..., 24*25; 30*39, ...

Offset 0, canonical program `A096229.P1156246642711404417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096229 (n : ℕ) : ℤ :=
  A096229.P1156246642711404417.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096273.P18173474624231968017

`A029578(n)+a(A029578(n))` with `a(0)=0`
-/

namespace A096273.P18173474624231968017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A029578 n + a (A029578 n).toNat

end

end A096273.P18173474624231968017

noncomputable section

/-- A096273: a(0)=0, then a(n)=a(n-1)+(n-1) if n is odd, a(n)=a(n/2)+n/2 otherwise.

Offset 0, canonical program `A096273.P18173474624231968017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096273 (n : ℕ) : ℤ :=
  A096273.P18173474624231968017.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096319.P6503528609690428362

`∑[A000040(n-and(2, a(n-1)²))]%10` with `a(0)=0`
-/

namespace A096319.P6503528609690428362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000040 ((n : ℤ) - Int.land 2 (f1 (n - 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A096319.P6503528609690428362

noncomputable section

/-- A096319: Final digit of the sum of the first n primes.

Offset 0, canonical program `A096319.P6503528609690428362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7612 terms. -/
def A096319 (n : ℕ) : ℤ :=
  A096319.P6503528609690428362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7612 terms. -/
def A096319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096484.P13122390860223814343

`A096483(2*n+1)`
-/

namespace A096484.P13122390860223814343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096483 (2 * n + 1)

end

end A096484.P13122390860223814343

noncomputable section

/-- A096484: Integer part of the square root of (2n-1)-th decimal repunit.

Offset 1, canonical program `A096484.P13122390860223814343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096484 (n : ℕ) : ℤ :=
  A096484.P13122390860223814343.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096487.P15740216586139559020

`2*A096483(n+1)`
-/

namespace A096487.P15740216586139559020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096483 (n + 1)

end

end A096487.P15740216586139559020

noncomputable section

/-- A096487: Largest term in periodic part of continued fraction expansion of square root of n-th repunit.

Offset 2, canonical program `A096487.P15740216586139559020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096487 (n : ℕ) : ℤ :=
  A096487.P15740216586139559020.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096490.P8790020191321555782

`lt[A000217(n), A067558(n+1)]+1`
-/

namespace A096490.P8790020191321555782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A096490.P8790020191321555782

noncomputable section

/-- A096490: Numbers k such that sigma_2(k) >= (3/2) * k^2, where sigma_2(k) is the sum of the squares of the divisors of k.

Offset 1, canonical program `A096490.P8790020191321555782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A096490 (n : ℕ) : ℤ :=
  (A096490.P8790020191321555782.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. -/
def A096490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096491.P9046291183319835938

`(2-Δ[floor(sqrt(n))])*A000196(n+1)`
-/

namespace A096491.P9046291183319835938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * A000196 (n + 1)

end

end A096491.P9046291183319835938

noncomputable section

/-- A096491: a(n) = sqrt(n) of n if n is a perfect square, otherwise a(n) = largest term in period of continued fraction expansion of square root of n.

Offset 1, canonical program `A096491.P9046291183319835938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096491 (n : ℕ) : ℤ :=
  A096491.P9046291183319835938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096738.P612081876185050098

`lt[lcm(1-n, A032741(n))/2+1, n]`
-/

namespace A096738.P612081876185050098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (1 - (n : ℤ)) (A032741 n) : ℚ) / 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A096738.P612081876185050098

noncomputable section

/-- A096738: Numbers n such that A096736(n) = (n*tau(n)-1)/(tau(n)-1).

Offset 1, canonical program `A096738.P612081876185050098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096738 (n : ℕ) : ℤ :=
  (A096738.P612081876185050098.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096787.P14938742021689819963

`p?[4*(n+1)-A066247(2*n+1)]`
-/

namespace A096787.P14938742021689819963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A066247 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A096787.P14938742021689819963

noncomputable section

/-- A096787: Primes of form 4n+3 that are the sum of two consecutive composite numbers.

Offset 1, canonical program `A096787.P14938742021689819963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096787 (n : ℕ) : ℤ :=
  A096787.P14938742021689819963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A096787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096856.P6825072489695385686

`A062402(2^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096856.P6825072489695385686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (2 ^ n + 1)

end

end A096856.P6825072489695385686

noncomputable section

/-- A096856: a(n) = A062402(2^n+1).

Offset 0, canonical program `A096856.P6825072489695385686`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096856 (n : ℕ) : ℤ :=
  A096856.P6825072489695385686.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097040.P11139350595590274570

`∑[2*A094292(n)]`
-/

namespace A097040.P11139350595590274570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097040.P11139350595590274570

noncomputable section

/-- A097040: a(n) = 2*sum(C(n,2k+1)*F(2k), k=0..floor((n-1)/2)), where F(n) are Fibonacci numbers A000045.

Offset 1, canonical program `A097040.P11139350595590274570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A097040 (n : ℕ) : ℤ :=
  A097040.P11139350595590274570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A097040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097053.P4975277391521676891

`∑[abs(Δ[n*A072376(n)])]`
-/

namespace A097053.P4975277391521676891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A072376 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097053.P4975277391521676891

noncomputable section

/-- A097053: First occurrence of n in A097051.

Offset 1, canonical program `A097053.P4975277391521676891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097053 (n : ℕ) : ℤ :=
  A097053.P4975277391521676891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097070.P10985676525260391429

`(n+1)*(A260878(n)-1)`
-/

namespace A097070.P10985676525260391429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A260878 n - 1)

end

end A097070.P10985676525260391429

noncomputable section

/-- A097070: Consider all compositions (ordered partitions) of n into n parts, allowing zeros. E.g., for n = 3 we get 300, 030, 003, 210, 120, 201, 102, 021, 012, 111. Then a(n) is the total number of 1's.

Offset 1, canonical program `A097070.P10985676525260391429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A097070 (n : ℕ) : ℤ :=
  A097070.P10985676525260391429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A097070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097108.P5400944798271563091

`A000601(n)-A181120(A130481(n))`
-/

namespace A097108.P5400944798271563091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n - A181120 (A130481 n).toNat

end

end A097108.P5400944798271563091

noncomputable section

/-- A097108: If a geodesic dome is made by dividing each triangle of an icosahedron into n^2 identical equilateral triangles and the vertices of those newly created triangles are pushed out from the center to lie on the surface of the sphere in which the icosahedron is inscribed, then this sequence gives the number of different strut lengths that are required to build the dome.

Offset 1, canonical program `A097108.P5400944798271563091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097108 (n : ℕ) : ℤ :=
  A097108.P5400944798271563091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097162.P5323784844606847333

`floor(A097111(n+1)/2)`
-/

namespace A097162.P5323784844606847333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097111 (n + 1) : ℚ) / 2⌋

end

end A097162.P5323784844606847333

noncomputable section

/-- A097162: a(n) = Sum_{k=0..n} C(floor((n+1)/2),floor((k+1)/2))*2^k.

Offset 0, canonical program `A097162.P5323784844606847333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A097162 (n : ℕ) : ℤ :=
  A097162.P5323784844606847333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A097162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097188.P11448230231202733973

`A025748(n+1)`
-/

namespace A097188.P11448230231202733973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025748 (n + 1)

end

end A097188.P11448230231202733973

noncomputable section

/-- A097188: G.f. A(x) satisfies A057083(x*A(x)) = A(x) and so equals the ratio of the g.f.s of any two adjacent diagonals of triangle A097186.

Offset 0, canonical program `A097188.P11448230231202733973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097188 (n : ℕ) : ℤ :=
  A097188.P11448230231202733973.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097258.P9869990002715108354

`11*A033048(n)`
-/

namespace A097258.P9869990002715108354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A033048 n

end

end A097258.P9869990002715108354

noncomputable section

/-- A097258: Numbers whose set of base 12 digits is {0,B}, where B base 12 = 11 base 10.

Offset 0, canonical program `A097258.P9869990002715108354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033048, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097258 (n : ℕ) : ℤ :=
  A097258.P9869990002715108354.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033048, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097258.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097332.P7595539259687864480

`∑[A001006(abs(1-n))]`
-/

namespace A097332.P7595539259687864480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097332.P7595539259687864480

noncomputable section

/-- A097332: Expansion of (1/(1-x))(1+2x/(1-x+sqrt(1-2x-3x^2))).

Offset 0, canonical program `A097332.P7595539259687864480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A097332 (n : ℕ) : ℤ :=
  A097332.P7595539259687864480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A097332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097337.P9085390289055085705

`∑[2-Δ[A195129(n)]]`
-/

namespace A097337.P9085390289055085705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097337.P9085390289055085705

noncomputable section

/-- A097337: Integer part of the edge of a cube that has space-diagonal n.

Offset 1, canonical program `A097337.P9085390289055085705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097337 (n : ℕ) : ℤ :=
  A097337.P9085390289055085705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097401.P1180606095488522513

`A008574(n+5)+A008574(n+6)*A167614(n+3)`
-/

namespace A097401.P1180606095488522513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 5) + A008574 (n + 6) * A167614 (n + 3)

end

end A097401.P1180606095488522513

noncomputable section

/-- A097401: Largest achievable determinant of a 3 X 3 matrix whose elements are 9 distinct nonnegative integers chosen from the range 0..n.

Offset 8, canonical program `A097401.P1180606095488522513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A097401 (n : ℕ) : ℤ :=
  A097401.P1180606095488522513.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A097401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097430.P1422973966249241568

`A002266(floor(sqrt(8*n+4)))`
-/

namespace A097430.P1422973966249241568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Nat.sqrt (8 * n + 4))

end

end A097430.P1422973966249241568

noncomputable section

/-- A097430: Integer part of the radii of circles with area n.

Offset 1, canonical program `A097430.P1422973966249241568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A097430 (n : ℕ) : ℤ :=
  A097430.P1422973966249241568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A097430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097456.P2347121820243890794

`floor((n+2)/Δ[A046992(n+1)])-1`
-/

namespace A097456.P2347121820243890794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋ - 1

end

end A097456.P2347121820243890794

noncomputable section

/-- A097456: Integer part of the ratio (number of composites <=n) / (number of primes <=n).

Offset 2, canonical program `A097456.P2347121820243890794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A097456 (n : ℕ) : ℤ :=
  A097456.P2347121820243890794.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A097456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097503.P814692216769319230

`lt[gcd(6, A000203(n+1)), 6]+1`
-/

namespace A097503.P814692216769319230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A000203 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A097503.P814692216769319230

noncomputable section

/-- A097503: Numbers k such that A000203(k) = sigma(k) is not divisible by 6.

Offset 1, canonical program `A097503.P814692216769319230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097503 (n : ℕ) : ℤ :=
  (A097503.P814692216769319230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097602.P609783979289905020

`∑[A004396(n%A004396(n+1))+1]`
-/

namespace A097602.P609783979289905020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.tmod (n : ℤ) (A004396 (n + 1))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097602.P609783979289905020

noncomputable section

/-- A097602: a(n+1) = a(n) + number of squares so far; a(1) = 1.

Offset 1, canonical program `A097602.P609783979289905020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097602 (n : ℕ) : ℤ :=
  A097602.P609783979289905020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097693.P9585363353736095296

`A167561(n+2)+6*(n+1)²`
-/

namespace A097693.P9585363353736095296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167561 (n + 2) + (6 * (n + 1) ^ 2 : ℤ)

end

end A097693.P9585363353736095296

noncomputable section

/-- A097693: Largest achievable determinant of a 3 X 3 matrix whose elements are 9 distinct integers chosen from the range -n...n.

Offset 4, canonical program `A097693.P9585363353736095296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A097693 (n : ℕ) : ℤ :=
  A097693.P9585363353736095296.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A097693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097796.P11790072631369088763

`A097795(gcd(xor(1, n²), ∑[n]))`
-/

namespace A097796.P11790072631369088763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A097796.P11790072631369088763

noncomputable section

/-- A097796: Number of partitions of n into perfect numbers.

Offset 1, canonical program `A097796.P11790072631369088763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A097796 (n : ℕ) : ℤ :=
  A097796.P11790072631369088763.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A097796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097870.P5312423832647180621

`A004773(n)+∑[A002620(A004773(n))]+1`
-/

namespace A097870.P5312423832647180621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004773 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A097870.P5312423832647180621

noncomputable section

/-- A097870: Molien series for group of order 4608 acting on joint weight enumerators of a pair of binary doubly-even self-dual codes.

Offset 0, canonical program `A097870.P5312423832647180621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A097870 (n : ℕ) : ℤ :=
  A097870.P5312423832647180621.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A097870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097882.P11052188071973986715

`floor((n+1)²/A000040(n+1))`
-/

namespace A097882.P11052188071973986715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A097882.P11052188071973986715

noncomputable section

/-- A097882: a(n) = floor( n^2/prime(n) ).

Offset 1, canonical program `A097882.P11052188071973986715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097882 (n : ℕ) : ℤ :=
  A097882.P11052188071973986715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097893.P4112899202506986756

`∑[A002426(n)]`
-/

namespace A097893.P4112899202506986756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097893.P4112899202506986756

noncomputable section

/-- A097893: Partial sums of the central trinomial coefficients (A002426).

Offset 0, canonical program `A097893.P4112899202506986756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A097893 (n : ℕ) : ℤ :=
  A097893.P4112899202506986756.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A097893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097926.P11923288587698775998

`A001630(n)+3*A001630(n+5)`
-/

namespace A097926.P11923288587698775998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 n + 3 * A001630 (n + 5)

end

end A097926.P11923288587698775998

noncomputable section

/-- A097926: Number of (n,4) Freiman-Wyner sequences.

Offset 5, canonical program `A097926.P11923288587698775998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A097926 (n : ℕ) : ℤ :=
  A097926.P11923288587698775998.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A097926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097944.P13040113314910335954

`A055642(A000040(n+1))`
-/

namespace A097944.P13040113314910335954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000040 (n + 1)).toNat

end

end A097944.P13040113314910335954

noncomputable section

/-- A097944: Number of digits in n-th prime.

Offset 1, canonical program `A097944.P13040113314910335954`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097944 (n : ℕ) : ℤ :=
  A097944.P13040113314910335954.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A097944.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097949.P14965958809356418113

`xor(n-xor(1, n), A120892(n))`
-/

namespace A097949.P14965958809356418113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - (Nat.xor 1 n : ℤ)) (A120892 n)

end

end A097949.P14965958809356418113

noncomputable section

/-- A097949: G.f.: -(2+7*x-x^3)/(1+4*x-4*x^3-x^4).

Offset 0, canonical program `A097949.P14965958809356418113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A097949 (n : ℕ) : ℤ :=
  A097949.P14965958809356418113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A097949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097988.P8818768520283579158

`A007425(n+1)²`
-/

namespace A097988.P8818768520283579158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) ^ 2

end

end A097988.P8818768520283579158

noncomputable section

/-- A097988: a(n) = Sum_{d dividing n} tau(d)^3 = (Sum_{d dividing n} tau(d))^2.

Offset 1, canonical program `A097988.P8818768520283579158`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097988 (n : ℕ) : ℤ :=
  A097988.P8818768520283579158.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098054.P9115985897233041401

`abs(A051792(xor(2, n)+1))`
-/

namespace A098054.P9115985897233041401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051792 (Nat.xor 2 n + 1)|

end

end A098054.P9115985897233041401

noncomputable section

/-- A098054: Absolute values of elements of flattened successive matrices B(k), k>=0, read by rows where B(k) = M^k*C where M=[[2, -1], [-1, 1]] and C = [[0, 1], [1, 1]].

Offset 0, canonical program `A098054.P9115985897233041401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 964 terms. -/
def A098054 (n : ℕ) : ℤ :=
  A098054.P9115985897233041401.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 964 terms. -/
def A098054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098106.P4822648328663930188

`ceil(2^(n-1)*A100052(n))`
-/

namespace A098106.P4822648328663930188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A100052 n : ℚ)⌉

end

end A098106.P4822648328663930188

noncomputable section

/-- A098106: Hankel transform of sequence (b(n)) where b(n) = Sum_{i=0..n} binomial(2*i,i).

Offset 0, canonical program `A098106.P4822648328663930188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A098106 (n : ℕ) : ℤ :=
  A098106.P4822648328663930188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A098106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098108.P9198718972153523697

`A000035(n)*A010052(n)`
-/

namespace A098108.P9198718972153523697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A010052 n

end

end A098108.P9198718972153523697

noncomputable section

/-- A098108: a(n) = 1 if n is an odd square, otherwise 0.

Offset 0, canonical program `A098108.P9198718972153523697`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098108 (n : ℕ) : ℤ :=
  A098108.P9198718972153523697.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098108.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098117.P10750374104259115939

`A198764(A000040(n+1)-1)`
-/

namespace A098117.P10750374104259115939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198764 (A000040 (n + 1) - 1).toNat

end

end A098117.P10750374104259115939

noncomputable section

/-- A098117: a(n) = 5^(prime(n) - 1) + 5^prime(n) - 1.

Offset 1, canonical program `A098117.P10750374104259115939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098117 (n : ℕ) : ℤ :=
  A098117.P10750374104259115939.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098156.P17131941534347252642

`A106472(n)-floor(2^(n-1))`
-/

namespace A098156.P17131941534347252642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A098156.P17131941534347252642

noncomputable section

/-- A098156: Interleave n+1 and 2n+1 and take binomial transform.

Offset 0, canonical program `A098156.P17131941534347252642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A098156 (n : ℕ) : ℤ :=
  A098156.P17131941534347252642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A098156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098220.P2076552491029807430

`A098219(p?[xor(1, n)])`
-/

namespace A098220.P2076552491029807430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A098220.P2076552491029807430

noncomputable section

/-- A098220: a(n) = floor(sigma(sigma(p))/p) = floor(sigma(p+1)/p) = floor(A008333(n)/p), where p is the n-th prime number.

Offset 1, canonical program `A098220.P2076552491029807430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098220 (n : ℕ) : ℤ :=
  A098220.P2076552491029807430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098295.P17186308517406756389

`A056576(n+1)-(n+1)`
-/

namespace A098295.P17186308517406756389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (n + 1) - (n + 1 : ℤ)

end

end A098295.P17186308517406756389

noncomputable section

/-- A098295: ((3/2)^n)/2^a(n) lies in the half-open interval [1,2).

Offset 1, canonical program `A098295.P17186308517406756389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098295 (n : ℕ) : ℤ :=
  A098295.P17186308517406756389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098337.P806555067326063376

`2^n*A098331(n)`
-/

namespace A098337.P806555067326063376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A098331 n

end

end A098337.P806555067326063376

noncomputable section

/-- A098337: Expansion of 1/sqrt(1-4x+20x^2).

Offset 0, canonical program `A098337.P806555067326063376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A098337 (n : ℕ) : ℤ :=
  A098337.P806555067326063376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A098337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098386.P4482360098935159292

`A000040(n+1)-floor(log2(n+1))`
-/

namespace A098386.P4482360098935159292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (Nat.log 2 (n + 1) : ℤ)

end

end A098386.P4482360098935159292

noncomputable section

/-- A098386: a(n) = prime(n)-Log2(n), where Log2 = A000523.

Offset 1, canonical program `A098386.P4482360098935159292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098386 (n : ℕ) : ℤ :=
  A098386.P4482360098935159292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098389.P4585131490544966447

`∏{d}[A000040(n+1), #-floor(log2(#))]`
-/

namespace A098389.P4585131490544966447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - (Nat.log 2 d : ℤ))

end

end A098389.P4585131490544966447

noncomputable section

/-- A098389: Prime(n) - floor(log_2(prime(n))).

Offset 1, canonical program `A098389.P4585131490544966447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098389 (n : ℕ) : ℤ :=
  A098389.P4585131490544966447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098429.P10990739135687540276

`∑[A061007(4*A061007(n+1)+n+1)]`
-/

namespace A098429.P10990739135687540276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (4 * A061007 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098429.P10990739135687540276

noncomputable section

/-- A098429: Number of cousin prime pairs (p, p+4) with p <= n.

Offset 1, canonical program `A098429.P10990739135687540276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098429 (n : ℕ) : ℤ :=
  A098429.P10990739135687540276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098453.P18121437596487375124

`2^n*A002426(n)`
-/

namespace A098453.P18121437596487375124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002426 n

end

end A098453.P18121437596487375124

noncomputable section

/-- A098453: Expansion of 1/sqrt(1 - 4*x - 12*x^2).

Offset 0, canonical program `A098453.P18121437596487375124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A098453 (n : ℕ) : ℤ :=
  A098453.P18121437596487375124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A098453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098500.P14725214712110708323

`∑[A047883(n)]+1`
-/

namespace A098500.P14725214712110708323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A098500.P14725214712110708323

noncomputable section

/-- A098500: Number of squares on infinite quarter chessboard at <=n knight moves from the corner.

Offset 0, canonical program `A098500.P14725214712110708323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098500 (n : ℕ) : ℤ :=
  A098500.P14725214712110708323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098508.P8809239731924744520

`C(n, 2)/gcd(C(n, 2), A000108(n))`
-/

namespace A098508.P8809239731924744520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) / (Int.gcd (Nat.choose n 2 : ℤ) (A000108 n) : ℚ)

end

end A098508.P8809239731924744520

noncomputable section

/-- A098508: Second column of the inverse of a Catalan scaled binomial matrix (A098505).

Offset 0, canonical program `A098508.P8809239731924744520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A098508 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098508.P8809239731924744520.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A098508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098512.P16240624662413006847

`A000108(n)/gcd(n, A000108(n))`
-/

namespace A098512.P16240624662413006847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (Int.gcd (n : ℤ) (A000108 n) : ℚ)

end

end A098512.P16240624662413006847

noncomputable section

/-- A098512: Second column and subdiagonal of number triangle A098509.

Offset 0, canonical program `A098512.P16240624662413006847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A098512 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098512.P16240624662413006847.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A098512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098520.P3172092028380321248

`n*A091147((2*n)%(n+1))`
-/

namespace A098520.P3172092028380321248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A091147 (2 * n % (n + 1))

end

end A098520.P3172092028380321248

noncomputable section

/-- A098520: E.g.f. exp(x)*BesselI(1,4*x)/2.

Offset 0, canonical program `A098520.P3172092028380321248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A098520 (n : ℕ) : ℤ :=
  A098520.P3172092028380321248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A098520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098574.P2504122614395177173

`A369813(2*n)`
-/

namespace A098574.P2504122614395177173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369813 (2 * n)

end

end A098574.P2504122614395177173

noncomputable section

/-- A098574: a(n) = Sum_{k=0..floor(n/7)} C(n-5*k,2*k).

Offset 0, canonical program `A098574.P2504122614395177173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A098574 (n : ℕ) : ℤ :=
  A098574.P2504122614395177173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A098574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098663.P8436479234476084253

`floor(A331323(n)/A028242(2*n))`
-/

namespace A098663.P8436479234476084253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A331323 n : ℚ) / (A028242 (2 * n) : ℚ)⌋

end

end A098663.P8436479234476084253

noncomputable section

/-- A098663: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+1,k+1) * 3^k.

Offset 0, canonical program `A098663.P8436479234476084253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A098663 (n : ℕ) : ℤ :=
  A098663.P8436479234476084253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A098663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098741.P15014924215178314495

`C(A000040(n+1)+2, 3)*A000040(n+1)`
-/

namespace A098741.P15014924215178314495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000040 (n + 1) + 2).toNat 3 : ℤ) * A000040 (n + 1)

end

end A098741.P15014924215178314495

noncomputable section

/-- A098741: a(n) = (p^2*(p+1)*(p+2))/6 where p is n-th prime.

Offset 1, canonical program `A098741.P15014924215178314495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098741 (n : ℕ) : ℤ :=
  A098741.P15014924215178314495.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098823.P17108854429955026847

`16*(8*A000040(n+1)+7)`
-/

namespace A098823.P17108854429955026847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (8 * A000040 (n + 1) + 7)

end

end A098823.P17108854429955026847

noncomputable section

/-- A098823: a(n) = 16*(8*prime(n) + 7).

Offset 1, canonical program `A098823.P17108854429955026847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098823 (n : ℕ) : ℤ :=
  A098823.P17108854429955026847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098827.P13582355249411680889

`record[-A055615(n+1)*A055615(n+2)]`
-/

namespace A098827.P13582355249411680889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A055615 (n + 1) * A055615 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098827.P13582355249411680889

noncomputable section

/-- A098827: Squarefree oblong (pronic) numbers having an odd number of prime factors.

Offset 1, canonical program `A098827.P13582355249411680889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3216 terms. -/
def A098827 (n : ℕ) : ℤ :=
  A098827.P13582355249411680889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3216 terms. -/
def A098827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098870.P1759252361198647536

`A055012(a(n-1))` with `a(0)=2`
-/

namespace A098870.P1759252361198647536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A055012 (a (n - 1)).toNat

end

end A098870.P1759252361198647536

noncomputable section

/-- A098870: Sum of the cubes of the digits of the previous term, starting with 2.

Offset 1, canonical program `A098870.P1759252361198647536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098870 (n : ℕ) : ℤ :=
  A098870.P1759252361198647536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098952.P494826860385429382

`eq[n, lcm(n, A055642(n))]`
-/

namespace A098952.P494826860385429382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A055642 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098952.P494826860385429382

noncomputable section

/-- A098952: Integers divisible by their number of digits.

Offset 1, canonical program `A098952.P494826860385429382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2606 terms. -/
def A098952 (n : ℕ) : ℤ :=
  (A098952.P494826860385429382.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2606 terms. -/
def A098952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098955.P14080805560172354874

`10*n+A004218(n+1)+1`
-/

namespace A098955.P14080805560172354874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) + (A004218 (n + 1) + 1)

end

end A098955.P14080805560172354874

noncomputable section

/-- A098955: Numbers with property that the last digit is the length of the number (written in base 10).

Offset 1, canonical program `A098955.P14080805560172354874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098955 (n : ℕ) : ℤ :=
  A098955.P14080805560172354874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098997.P10983094338893603845

`A000538(A000040(n+1))`
-/

namespace A098997.P10983094338893603845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A000040 (n + 1)).toNat

end

end A098997.P10983094338893603845

noncomputable section

/-- A098997: (1/30)*(p(p+1)(2p+1)(3p^2+3p-1)) where p is prime.

Offset 1, canonical program `A098997.P10983094338893603845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A098997 (n : ℕ) : ℤ :=
  A098997.P10983094338893603845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A098997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098998.P9371131733342517634

`(11*A000040(n+1)-7)*A000040(n+1)`
-/

namespace A098998.P9371131733342517634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * A000040 (n + 1) - 7) * A000040 (n + 1)

end

end A098998.P9371131733342517634

noncomputable section

/-- A098998: p(11p-7) where p is prime.

Offset 1, canonical program `A098998.P9371131733342517634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098998 (n : ℕ) : ℤ :=
  A098998.P9371131733342517634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099014.P16613586745379697457

`A000045(n)*A295690(2*n)`
-/

namespace A099014.P16613586745379697457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A295690 (2 * n)

end

end A099014.P16613586745379697457

noncomputable section

/-- A099014: a(n) = Fibonacci(n)*(Fibonacci(n-1)^2 + Fibonacci(n+1)^2).

Offset 0, canonical program `A099014.P16613586745379697457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A099014 (n : ℕ) : ℤ :=
  A099014.P16613586745379697457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A099014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099015.P3801293077919128128

`A000045(n+1)*A099016(n)`
-/

namespace A099015.P3801293077919128128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A099016 n

end

end A099015.P3801293077919128128

noncomputable section

/-- A099015: a(n) = Fib(n+1)*(2*Fib(n)^2 + Fib(n)*Fib(n-1) + Fib(n-1)^2).

Offset 0, canonical program `A099015.P3801293077919128128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A099015 (n : ℕ) : ℤ :=
  A099015.P3801293077919128128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A099015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099250.P11271761103759966923

`A001006(Δ[n²])`
-/

namespace A099250.P11271761103759966923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099250.P11271761103759966923

noncomputable section

/-- A099250: Bisection of Motzkin numbers A001006.

Offset 0, canonical program `A099250.P11271761103759966923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A099250 (n : ℕ) : ℤ :=
  A099250.P11271761103759966923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A099250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099325.P1293649765398382915

`A027306(n)+n*A063886(n)`
-/

namespace A099325.P1293649765398382915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n + (n : ℤ) * A063886 n

end

end A099325.P1293649765398382915

noncomputable section

/-- A099325: Expansion of (sqrt(1+2x) + sqrt(1-2x))/(2*(1-2x)^(3/2)).

Offset 0, canonical program `A099325.P1293649765398382915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A099325 (n : ℕ) : ℤ :=
  A099325.P1293649765398382915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A099325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099398.P16116864796008942121

`A000108(n)/gcd(A000108(n), A001792(n))`
-/

namespace A099398.P16116864796008942121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (Int.gcd (A000108 n) (A001792 n) : ℚ)

end

end A099398.P16116864796008942121

noncomputable section

/-- A099398: Numerators of rationals (in lowest terms) used in a certain high temperature expansion.

Offset 0, canonical program `A099398.P16116864796008942121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A099398 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099398.P16116864796008942121.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A099398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099444.P9642672831190929825

`A099445(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A099444.P9642672831190929825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A099445 n + a (n - 2)

end

end A099444.P9642672831190929825

noncomputable section

/-- A099444: A Chebyshev transform of Fib(2n+2).

Offset 0, canonical program `A099444.P9642672831190929825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A099444 (n : ℕ) : ℤ :=
  A099444.P9642672831190929825.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A099444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099446.P17003484543671317239

`∑[A123879(n)]-Δ[A123879(n)]`
-/

namespace A099446.P17003484543671317239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A099446.P17003484543671317239

noncomputable section

/-- A099446: A Chebyshev transform of A057083.

Offset 0, canonical program `A099446.P17003484543671317239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A099446 (n : ℕ) : ℤ :=
  A099446.P17003484543671317239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A099446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099448.P5949926366844989757

`A099449(n)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A099448.P5949926366844989757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A099449 n + a (n - 2)

end

end A099448.P5949926366844989757

noncomputable section

/-- A099448: A Chebyshev transform of A030191 associated to the knot 7_6.

Offset 0, canonical program `A099448.P5949926366844989757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A099448 (n : ℕ) : ℤ :=
  A099448.P5949926366844989757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A099448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099471.P3758560992746988726

`1-∑[∑[A076118(n)]]`
-/

namespace A099471.P3758560992746988726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099471.P3758560992746988726

noncomputable section

/-- A099471: A sequence generated from the Quadrifoil (flat knot).

Offset 0, canonical program `A099471.P3758560992746988726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099471 (n : ℕ) : ℤ :=
  A099471.P3758560992746988726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099475.P148219688828894509

`∑{d}[2*(n+1), 1-A049240(#+1)]`
-/

namespace A099475.P148219688828894509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A049240 (d + 1))

end

end A099475.P148219688828894509

noncomputable section

/-- A099475: Number of divisors d of n such that d+2 is also a divisor of n.

Offset 1, canonical program `A099475.P148219688828894509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099475 (n : ℕ) : ℤ :=
  A099475.P148219688828894509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099483.P6445812526066757728

`A293544(2*(n+1))`
-/

namespace A099483.P6445812526066757728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (2 * (n + 1))

end

end A099483.P6445812526066757728

noncomputable section

/-- A099483: A Fibonacci convolution.

Offset 0, canonical program `A099483.P6445812526066757728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A099483 (n : ℕ) : ℤ :=
  A099483.P6445812526066757728.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A099483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099484.P8054864551775682799

`A001906(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A099484.P8054864551775682799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001906 n - a (n - 2)

end

end A099484.P8054864551775682799

noncomputable section

/-- A099484: A Fibonacci convolution.

Offset 0, canonical program `A099484.P8054864551775682799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A099484 (n : ℕ) : ℤ :=
  A099484.P8054864551775682799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A099484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099485.P9369651672809964162

`Δ[A293545(Δ[n²])]`
-/

namespace A099485.P9369651672809964162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099485.P9369651672809964162

noncomputable section

/-- A099485: A Fibonacci convolution.

Offset 0, canonical program `A099485.P9369651672809964162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A099485 (n : ℕ) : ℤ :=
  A099485.P9369651672809964162.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A099485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099487.P8046641937189732212

`A001353(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A099487.P8046641937189732212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001353 n - a (n - 2)

end

end A099487.P8046641937189732212

noncomputable section

/-- A099487: Expansion of (1-3x+x^2)/((1+x^2)(1-4x+x^2)).

Offset 0, canonical program `A099487.P8046641937189732212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A099487 (n : ℕ) : ℤ :=
  A099487.P8046641937189732212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A099487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099494.P2326143996376125961

`A049347(n)+A014019(A017497(n))`
-/

namespace A099494.P2326143996376125961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n + A014019 (A017497 n).toNat

end

end A099494.P2326143996376125961

noncomputable section

/-- A099494: A Chebyshev transform of Fibonacci(n)+(-1)^n.

Offset 0, canonical program `A099494.P2326143996376125961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 909 terms. -/
def A099494 (n : ℕ) : ℤ :=
  A099494.P2326143996376125961.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 909 terms. -/
def A099494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099528.P12475961799198535278

`A124370(2*n+1)+A124370(2*n)`
-/

namespace A099528.P12475961799198535278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124370 (2 * n + 1) + A124370 (2 * n)

end

end A099528.P12475961799198535278

noncomputable section

/-- A099528: Row sums of triangle A099527, so that a(n) = Sum_{k=0..n} coefficient of z^k in (2 + 3*z + z^2)^(n-[k/2]), where [k/2] is the integer floor of k/2.

Offset 0, canonical program `A099528.P12475961799198535278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A099528 (n : ℕ) : ℤ :=
  A099528.P12475961799198535278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A099528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099531.P6310939162051162280

`A033999(n)*A124750(3*(n+1))`
-/

namespace A099531.P6310939162051162280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A124750 (3 * (n + 1))

end

end A099531.P6310939162051162280

noncomputable section

/-- A099531: Expansion of (1+x)^3/((1+x)^3+x^4).

Offset 0, canonical program `A099531.P6310939162051162280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. -/
def A099531 (n : ℕ) : ℤ :=
  A099531.P6310939162051162280.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. -/
def A099531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099558.P12897108019287353997

`A005686(2*(n+1))`
-/

namespace A099558.P12897108019287353997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (2 * (n + 1))

end

end A099558.P12897108019287353997

noncomputable section

/-- A099558: Antidiagonal sums of the triangle A099557.

Offset 0, canonical program `A099558.P12897108019287353997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A099558 (n : ℕ) : ℤ :=
  A099558.P12897108019287353997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. -/
def A099558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099571.P6637755611067996443

`A054451(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A099571.P6637755611067996443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A054451 n + a (n - 2)

end

end A099571.P6637755611067996443

noncomputable section

/-- A099571: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k+3, k).

Offset 0, canonical program `A099571.P6637755611067996443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A099571 (n : ℕ) : ℤ :=
  A099571.P6637755611067996443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A099571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099578.P8147707500236874273

`A051033(A001651(n+1))`
-/

namespace A099578.P8147707500236874273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (A001651 (n + 1)).toNat

end

end A099578.P8147707500236874273

noncomputable section

/-- A099578: a(n) = binomial(floor((3n+2)/2), floor(n/2)).

Offset 0, canonical program `A099578.P8147707500236874273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A099578 (n : ℕ) : ℤ :=
  A099578.P8147707500236874273.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A099578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099590.P17229970317893452470

`A038608(∑[A001057(n+1)])+A001787(n+1)`
-/

namespace A099590.P17229970317893452470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A001787 (n + 1)

end

end A099590.P17229970317893452470

noncomputable section

/-- A099590: 2^(n-1) times coefficient of x in (1+x)^n mod U(n,x), U the Chebyshev polynomials.

Offset 1, canonical program `A099590.P17229970317893452470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A099590 (n : ℕ) : ℤ :=
  A099590.P17229970317893452470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A099590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099634.P8282463789983654818

`abs(xor(-2, A020500(n+2)))`
-/

namespace A099634.P8282463789983654818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-2) (A020500 (n + 2))|

end

end A099634.P8282463789983654818

noncomputable section

/-- A099634: a(n) = gcd(P+p, P*p) where P is the largest and p the smallest prime factor of n.

Offset 2, canonical program `A099634.P8282463789983654818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A099634 (n : ℕ) : ℤ :=
  A099634.P8282463789983654818.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A099634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099741.P10588166953744365583

`A088468(round(n/3))`
-/

namespace A099741.P10588166953744365583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A099741.P10588166953744365583

noncomputable section

/-- A099741: a(1) = a(2) = 1; a(n) = a([n/2])+a([n/3]) (n >= 3).

Offset 1, canonical program `A099741.P10588166953744365583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099741 (n : ℕ) : ℤ :=
  A099741.P10588166953744365583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099842.P4022631841332511426

`A033999(n)*A287811(n)`
-/

namespace A099842.P4022631841332511426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A287811 n

end

end A099842.P4022631841332511426

noncomputable section

/-- A099842: Expansion of (1-x)/(1 + 6*x - 3*x^2).

Offset 0, canonical program `A099842.P4022631841332511426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A099842 (n : ℕ) : ℤ :=
  A099842.P4022631841332511426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A099842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099859.P11234783524769903663

`A046978(A302255(n))`
-/

namespace A099859.P11234783524769903663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A302255 n).toNat

end

end A099859.P11234783524769903663

noncomputable section

/-- A099859: A Chebyshev transform of A006053 related to the knot 7_1.

Offset 0, canonical program `A099859.P11234783524769903663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099859 (n : ℕ) : ℤ :=
  A099859.P11234783524769903663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099896.P13419305368164812444

`xor(n+1, A003188(ceil(n/2)))`
-/

namespace A099896.P13419305368164812444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A003188 ⌈(n : ℚ) / 2⌉.toNat)

end

end A099896.P13419305368164812444

noncomputable section

/-- A099896: A permutation of the natural numbers where a(n) = n XOR [n/2] XOR [n/4].

Offset 1, canonical program `A099896.P13419305368164812444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A099896 (n : ℕ) : ℤ :=
  A099896.P13419305368164812444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A099896.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A099984.P17262912568737395689

`A007947(2*n+1)`
-/

namespace A099984.P17262912568737395689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * n + 1)

end

end A099984.P17262912568737395689

noncomputable section

/-- A099984: Bisection of A007947.

Offset 1, canonical program `A099984.P17262912568737395689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099984 (n : ℕ) : ℤ :=
  A099984.P17262912568737395689.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099984.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A100071.P8396180016226964810

`n*A001405(abs(1-n))`
-/

namespace A100071.P8396180016226964810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 |1 - (n : ℤ)|.toNat

end

end A100071.P8396180016226964810

noncomputable section

/-- A100071: a(n) = n * binomial(n-1, floor((n-1)/2)) = n * max_{i=0..n} binomial(n-1, i).

Offset 0, canonical program `A100071.P8396180016226964810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A100071 (n : ℕ) : ℤ :=
  A100071.P8396180016226964810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A100071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100107.P9232786256714375716

`∑{d}[n+1, A000032(#)]`
-/

namespace A100107.P9232786256714375716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000032 d

end

end A100107.P9232786256714375716

noncomputable section

/-- A100107: Inverse Moebius transform of Lucas numbers (A000032) 1,3,4,7,11,..

Offset 1, canonical program `A100107.P9232786256714375716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A100107 (n : ℕ) : ℤ :=
  A100107.P9232786256714375716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A100107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100111.P2057885307952917356

`A000040(n+1)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A100111.P2057885307952917356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 7] fun n a =>
  A000040 (n + 1) + a (n - 4)

end

end A100111.P2057885307952917356

noncomputable section

/-- A100111: a(n) = Sum_{k >= 0} prime(n-4k).

Offset 1, canonical program `A100111.P2057885307952917356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A100111 (n : ℕ) : ℤ :=
  A100111.P2057885307952917356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A100111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100158.P3438561864312441379

`∑[60*A000290(n)+1]+n-(∑[n*2*(n-1)]+n^3)`
-/

namespace A100158.P3438561864312441379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A000290 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 * ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - (∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 3 : ℤ))

end

end A100158.P3438561864312441379

noncomputable section

/-- A100158: Structured disdyakis triacontahedral numbers (vertex structure 11).

Offset 1, canonical program `A100158.P3438561864312441379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100158 (n : ℕ) : ℤ :=
  A100158.P3438561864312441379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100162.P15643614588111931167

`∑[3*A092277(n)+1]`
-/

namespace A100162.P15643614588111931167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A092277 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100162.P15643614588111931167

noncomputable section

/-- A100162: Structured disdyakis dodecahedral numbers (vertex structure 7).

Offset 1, canonical program `A100162.P15643614588111931167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100162 (n : ℕ) : ℤ :=
  A100162.P15643614588111931167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100169.P6207570101962168845

`(n+1)*(A033576(n)+∑[A008589(n)])`
-/

namespace A100169.P6207570101962168845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A033576 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100169.P6207570101962168845

noncomputable section

/-- A100169: Structured pentagonal hexacontahedral numbers (vertex structure 16).

Offset 1, canonical program `A100169.P6207570101962168845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100169 (n : ℕ) : ℤ :=
  A100169.P6207570101962168845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100170.P13657415818565633589

`∑[A017162(n)+∑[9*n]+1]`
-/

namespace A100170.P13657415818565633589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017162 n + ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100170.P13657415818565633589

noncomputable section

/-- A100170: Structured pentagonal hexacontahedral numbers (vertex structure 10).

Offset 1, canonical program `A100170.P13657415818565633589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100170 (n : ℕ) : ℤ :=
  A100170.P13657415818565633589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100213.P18322163746539117801

`A100215(n)+A100212(n)`
-/

namespace A100213.P18322163746539117801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100215 n + A100212 n

end

end A100213.P18322163746539117801

noncomputable section

/-- A100213: Expansion of g.f.: x*(4-7*x+2*x^2-8*x^4+16*x^5-16*x^6)/((1-2*x) * (1-2*x^2) * (1-2*x+2*x^2) * (1+2*x^2)).

Offset 1, canonical program `A100213.P18322163746539117801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A100213 (n : ℕ) : ℤ :=
  A100213.P18322163746539117801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A100213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100316.P14902676668082116420

`A008486(A062545(n))+A000225(n)`
-/

namespace A100316.P14902676668082116420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A062545 n).toNat + A000225 n

end

end A100316.P14902676668082116420

noncomputable section

/-- A100316: Number of 4 X n 0-1 matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (00;1), (01;0), (10;0) and (01;1).

Offset 0, canonical program `A100316.P14902676668082116420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A100316 (n : ℕ) : ℤ :=
  A100316.P14902676668082116420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A100316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100470.P5715799717501174216

`a(n-A055642(a(n-1)))+1` with `a(0)=0`
-/

namespace A100470.P5715799717501174216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A055642 (a (n - 1))).toNat + 1

end

end A100470.P5715799717501174216

noncomputable section

/-- A100470: n appears A055642(n) times (appearances equal number of decimal digits).

Offset 0, canonical program `A100470.P5715799717501174216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100470 (n : ℕ) : ℤ :=
  (A100470.P5715799717501174216.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100484.P9678625670825099636

`2*A000040(n+1)`
-/

namespace A100484.P9678625670825099636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1)

end

end A100484.P9678625670825099636

noncomputable section

/-- A100484: The primes doubled; even semiprimes.

Offset 1, canonical program `A100484.P9678625670825099636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100484 (n : ℕ) : ℤ :=
  A100484.P9678625670825099636.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100538.P11684291316528357968

`∑[A134816(n+1)²*A134816(n+2)]`
-/

namespace A100538.P11684291316528357968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) ^ 2 * A134816 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100538.P11684291316528357968

noncomputable section

/-- A100538: Volume of the 3-dimensional box of sides of length equal to consecutive Padovan numbers (A000931). These boxes form a spiral in three dimensions similar to the spiral of Fibonacci boxes in two dimensions.

Offset 1, canonical program `A100538.P11684291316528357968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A100538 (n : ℕ) : ℤ :=
  A100538.P11684291316528357968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A100538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100587.P17314510828858688908

`A052551(A086369(n+1))`
-/

namespace A100587.P17314510828858688908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A086369 (n + 1)).toNat

end

end A100587.P17314510828858688908

noncomputable section

/-- A100587: Number of nonempty subsets of divisors of n.

Offset 1, canonical program `A100587.P17314510828858688908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100587 (n : ℕ) : ℤ :=
  A100587.P17314510828858688908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100634.P13152122209848196161

`∑[a(Δ[A095117(n)]-1)^n]` with `a(0)=0, a(1)=2`
-/

namespace A100634.P13152122209848196161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (f2 (n + 1) - f2 n - 1).toNat ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100634.P13152122209848196161

noncomputable section

/-- A100634: a(n) is the decimal equivalent of the binary number whose k-th least significant bit is 1 iff k is a prime number and k <= n.

Offset 1, canonical program `A100634.P13152122209848196161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A100634 (n : ℕ) : ℤ :=
  (A100634.P13152122209848196161.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A100634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100635.P7386032928192710046

`∏{e}[n+1, A056220(#+1)]`
-/

namespace A100635.P7386032928192710046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A056220 (Nat.factorization (f1 n) p + 1)

end

end A100635.P7386032928192710046

noncomputable section

/-- A100635: Number of 2 X 2 matrices with elements in {1,2,...,n} such that LCMs of rows and columns are n.

Offset 1, canonical program `A100635.P7386032928192710046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100635 (n : ℕ) : ℤ :=
  A100635.P7386032928192710046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100659.P8630831035962272207

`floor(A066164(n+3)/(n+3))`
-/

namespace A100659.P8630831035962272207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066164 (n + 3) : ℚ) / (n + 3 : ℚ)⌋

end

end A100659.P8630831035962272207

noncomputable section

/-- A100659: Floor of measure (in degrees) of the internal angles of a regular polygon with n sides.

Offset 3, canonical program `A100659.P8630831035962272207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100659 (n : ℕ) : ℤ :=
  A100659.P8630831035962272207.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100665.P11688048755445767426

`round(sqrt(A000045(n)))`
-/

namespace A100665.P11688048755445767426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000045 n : ℝ))

end

end A100665.P11688048755445767426

noncomputable section

/-- A100665: a(n) = round(sqrt(Fibonacci(n))).

Offset 0, canonical program `A100665.P11688048755445767426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A100665 (n : ℕ) : ℤ :=
  A100665.P11688048755445767426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A100665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100689.P5204241397294549211

`A060416(A000040(n+1))`
-/

namespace A100689.P5204241397294549211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060416 (A000040 (n + 1)).toNat

end

end A100689.P5204241397294549211

noncomputable section

/-- A100689: a(n) = prime(n) * 4^prime(n) - 1.

Offset 1, canonical program `A100689.P5204241397294549211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100689 (n : ℕ) : ℤ :=
  A100689.P5204241397294549211.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100689.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100700.P1265436559416670714

`A081659(n)-A095116(n+1)`
-/

namespace A100700.P1265436559416670714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n - A095116 (n + 1)

end

end A100700.P1265436559416670714

noncomputable section

/-- A100700: n-th Fibonacci number minus n-th prime number.

Offset 1, canonical program `A100700.P1265436559416670714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A100700 (n : ℕ) : ℤ :=
  A100700.P1265436559416670714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A100700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100720.P16385423633345855163

`A290114(n+1)+and(2, n+1)`
-/

namespace A100720.P16385423633345855163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 (n + 1) + (Nat.land 2 (n + 1) : ℤ)

end

end A100720.P16385423633345855163

noncomputable section

/-- A100720: Expansion of g.f.: (3+x+2*x^2-2*x^3)/((1-2*x)*(1+x^2)).

Offset 0, canonical program `A100720.P16385423633345855163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A100720 (n : ℕ) : ℤ :=
  A100720.P16385423633345855163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A100720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100723.P15974936563613986025

`p?[A043574(n+1)]`
-/

namespace A100723.P15974936563613986025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100723.P15974936563613986025

noncomputable section

/-- A100723: Prime numbers whose binary representations are split into exactly seven runs.

Offset 1, canonical program `A100723.P15974936563613986025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A100723 (n : ℕ) : ℤ :=
  A100723.P15974936563613986025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A100723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100788.P6119317323625712770

`Δ[A063843(n)]`
-/

namespace A100788.P6119317323625712770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100788.P6119317323625712770

noncomputable section

/-- A100788: First differences of A063843.

Offset 0, canonical program `A100788.P6119317323625712770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A100788 (n : ℕ) : ℤ :=
  A100788.P6119317323625712770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A100788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100789.P571457685267019163

`Δ[A000543(n)]`
-/

namespace A100789.P571457685267019163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100789.P571457685267019163

noncomputable section

/-- A100789: First differences of A000543.

Offset 0, canonical program `A100789.P571457685267019163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A100789 (n : ℕ) : ℤ :=
  A100789.P571457685267019163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A100789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100794.P18098992418490120474

`Δ[A060530(n)]`
-/

namespace A100794.P18098992418490120474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100794.P18098992418490120474

noncomputable section

/-- A100794: First differences of A060530.

Offset 0, canonical program `A100794.P18098992418490120474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A100794 (n : ℕ) : ℤ :=
  A100794.P18098992418490120474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A100794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100990.P1137242080379291754

`A170786(n)%A199681(C(n, n²)!)`
-/

namespace A100990.P1137242080379291754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170786 n) (A199681 (Nat.factorial (Nat.choose n (n ^ 2))))

end

end A100990.P1137242080379291754

noncomputable section

/-- A100990: a(n) = n^21 mod 100.

Offset 0, canonical program `A100990.P1137242080379291754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100990 (n : ℕ) : ℤ :=
  A100990.P1137242080379291754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101035.P3462403393033249231

`∑{d}[n+1, #*A007427(#)]`
-/

namespace A101035.P3462403393033249231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007427 d

end

end A101035.P3462403393033249231

noncomputable section

/-- A101035: Dirichlet inverse of the gcd-sum function (A018804).

Offset 1, canonical program `A101035.P3462403393033249231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101035 (n : ℕ) : ℤ :=
  A101035.P3462403393033249231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101096.P15224727630853011032

`∑[A101095(n+1)]`
-/

namespace A101096.P15224727630853011032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101096.P15224727630853011032

noncomputable section

/-- A101096: Third differences of fifth powers (A000584).

Offset 1, canonical program `A101096.P15224727630853011032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101096 (n : ℕ) : ℤ :=
  A101096.P15224727630853011032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101119.P12552389747307359596

`A101120(val(n+1, 2)+1)`
-/

namespace A101119.P12552389747307359596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101120 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A101119.P12552389747307359596

noncomputable section

/-- A101119: Nonzero differences of A006519 (highest power of 2 dividing n) and A003484 (Radon function).

Offset 1, canonical program `A101119.P12552389747307359596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101119 (n : ℕ) : ℤ :=
  A101119.P12552389747307359596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101184.P4962460749792820799

`a(A033270(n+1))+1+n` with `a(0)=1`
-/

namespace A101184.P4962460749792820799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A033270 (n + 1)).toNat + 1 + n

end

end A101184.P4962460749792820799

noncomputable section

/-- A101184: a(n) = n + pi(n) + pi(pi(n)) + pi(pi(pi(n))) + pi(pi(pi(pi(n)))) + ...

Offset 1, canonical program `A101184.P4962460749792820799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101184 (n : ℕ) : ℤ :=
  (A101184.P4962460749792820799.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101337.P13079162381244238891

`∑{digits}[n+1, #^A055642(n)]`
-/

namespace A101337.P13079162381244238891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) ^ (A055642 n : ℤ)).sum

end

end A101337.P13079162381244238891

noncomputable section

/-- A101337: Sum of (each digit of n raised to the power (number of digits in n)).

Offset 1, canonical program `A101337.P13079162381244238891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101337 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A101337.P13079162381244238891.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101339.P9413652513648766075

`A061190(A000040(n+1))`
-/

namespace A101339.P9413652513648766075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061190 (A000040 (n + 1)).toNat

end

end A101339.P9413652513648766075

noncomputable section

/-- A101339: a(n) = prime(n)^prime(n)-prime(n).

Offset 1, canonical program `A101339.P9413652513648766075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101339 (n : ℕ) : ℤ :=
  A101339.P9413652513648766075.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101339.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101348.P11946240456356224351

`Δ[A001399(n)]%2*A008620(n)`
-/

namespace A101348.P11946240456356224351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2 * A008620 n

end

end A101348.P11946240456356224351

noncomputable section

/-- A101348: Arises from a particular cyclic transformation of the floretion - .5'i - .5i' - .5'ij' - .5'ik' + .5'ji' + .5'ki'.

Offset 0, canonical program `A101348.P11946240456356224351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101348 (n : ℕ) : ℤ :=
  A101348.P11946240456356224351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101352.P10543662595786334617

`A101353(n)-(n+1)`
-/

namespace A101352.P10543662595786334617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101353 n - (n + 1 : ℤ)

end

end A101352.P10543662595786334617

noncomputable section

/-- A101352: Partial sums of A101351.

Offset 0, canonical program `A101352.P10543662595786334617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A101352 (n : ℕ) : ℤ :=
  A101352.P10543662595786334617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A101352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101427.P12585664161864066347

`∑[A059329(n)]-A001840(n)`
-/

namespace A101427.P12585664161864066347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001840 n

end

end A101427.P12585664161864066347

noncomputable section

/-- A101427: Number of different cuboids with volume (pq)^n, where p,q are distinct prime numbers.

Offset 0, canonical program `A101427.P12585664161864066347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101427 (n : ℕ) : ℤ :=
  A101427.P12585664161864066347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101448.P1558543184600313031

`A088967(n+1)/2-1`
-/

namespace A101448.P1558543184600313031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088967 (n + 1) : ℚ) / 2 - 1

end

end A101448.P1558543184600313031

noncomputable section

/-- A101448: Nonnegative numbers k such that 2k + 11 is prime.

Offset 1, canonical program `A101448.P1558543184600313031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A101448.P1558543184600313031.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101463.P1762575670874682738

`A217787(∑[3-a(n-1)]+1)/(1-and(2, n))` with `a(0)=2`
-/

namespace A101463.P1762575670874682738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217787 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

end

end A101463.P1762575670874682738

noncomputable section

/-- A101463: Expansion of g.f. (x^3+x^2+2*x+1)/(x^4+5*x^2+1).

Offset 0, canonical program `A101463.P1762575670874682738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A101463 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A101463.P1762575670874682738.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A101463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101488.P1693039392814745994

`A091712(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A101488.P1693039392814745994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091712 (n + 1) - a (n - 1)

end

end A101488.P1693039392814745994

noncomputable section

/-- A101488: Number of naturally embedded binary trees with n nodes that have no label greater than 0.

Offset 0, canonical program `A101488.P1693039392814745994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A101488 (n : ℕ) : ℤ :=
  A101488.P1693039392814745994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A101488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101566.P11526131365689363908

`A018819(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A101566.P11526131365689363908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A101566.P11526131365689363908

noncomputable section

/-- A101566: Binary partition sequence matrix.

Offset 0, canonical program `A101566.P11526131365689363908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101566 (n : ℕ) : ℤ :=
  A101566.P11526131365689363908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101606.P17365113457941405446

`∑{d}[n+1, A101605(#)]`
-/

namespace A101606.P17365113457941405446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101605 d

end

end A101606.P17365113457941405446

noncomputable section

/-- A101606: a(n) = number of divisors of n that have exactly three (not necessarily distinct) prime factors.

Offset 1, canonical program `A101606.P17365113457941405446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101606 (n : ℕ) : ℤ :=
  A101606.P17365113457941405446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101614.P2926755992576604800

`A053186(a(floor(n/2))+A010684(n)-1)` with `a(0)=0`
-/

namespace A101614.P2926755992576604800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053186 (a ⌊(n : ℚ) / 2⌋.toNat + (A010684 n - 1)).toNat

end

end A101614.P2926755992576604800

noncomputable section

/-- A101614: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 10.

Offset 0, canonical program `A101614.P2926755992576604800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101614 (n : ℕ) : ℤ :=
  A101614.P2926755992576604800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101637.P10076770007622641866

`C(4, A086436(n+1))%2`
-/

namespace A101637.P10076770007622641866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (A086436 (n + 1)).toNat % 2

end

end A101637.P10076770007622641866

noncomputable section

/-- A101637: a(n) = 1 if n is a 4-almost prime, that is a product of exactly four (not necessarily distinct) primes, 0 otherwise.

Offset 1, canonical program `A101637.P10076770007622641866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101637 (n : ℕ) : ℤ :=
  (A101637.P10076770007622641866.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101661.P4985312497426929413

`A000122(a(floor(n/2))+gcd(2, n)-n%2)` with `a(0)=0`
-/

namespace A101661.P4985312497426929413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000122 (a ⌊(n : ℚ) / 2⌋.toNat + (Nat.gcd 2 n : ℤ) - ((n % 2 : ℕ) : ℤ)).toNat

end

end A101661.P4985312497426929413

noncomputable section

/-- A101661: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 20.

Offset 0, canonical program `A101661.P4985312497426929413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101661 (n : ℕ) : ℤ :=
  A101661.P4985312497426929413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101666.P1208846011814995245

`A000045(and(3, a(floor(n/2))+2*n))` with `a(0)=0`
-/

namespace A101666.P1208846011814995245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (Int.land 3 (a ⌊(n : ℚ) / 2⌋.toNat + (2 * n : ℤ))).toNat

end

end A101666.P1208846011814995245

noncomputable section

/-- A101666: Fixed point of morphism 0 -> 01, 1 -> 12, 2 -> 10, starting with 0.

Offset 0, canonical program `A101666.P1208846011814995245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101666 (n : ℕ) : ℤ :=
  A101666.P1208846011814995245.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101867.P10472538568036195083

`(n+1)²+A004956(n+1)²`
-/

namespace A101867.P10472538568036195083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A004956 (n + 1) ^ 2

end

end A101867.P10472538568036195083

noncomputable section

/-- A101867: Main diagonal of A101866.

Offset 1, canonical program `A101867.P10472538568036195083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101867 (n : ℕ) : ℤ :=
  A101867.P10472538568036195083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101870.P10946422111716822723

`A035338(n)+8`
-/

namespace A101870.P10946422111716822723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035338 n + 8

end

end A101870.P10946422111716822723

noncomputable section

/-- A101870: Row 3 of A101866.

Offset 1, canonical program `A101870.P10946422111716822723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101870 (n : ℕ) : ℤ :=
  A101870.P10946422111716822723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101987.P17223147805662488485

`∏{digits}[A000040(n+1), gcd(#, #!²)]`
-/

namespace A101987.P17223147805662488485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod

end

end A101987.P17223147805662488485

noncomputable section

/-- A101987: Product of nonzero digits of n-th prime.

Offset 1, canonical program `A101987.P17223147805662488485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101987 (n : ℕ) : ℤ :=
  (A101987.P17223147805662488485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102129.P5207466991010902462

`Δ[A014445(n)]-A110679(n)`
-/

namespace A102129.P5207466991010902462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A110679 n

end

end A102129.P5207466991010902462

noncomputable section

/-- A102129: Expansion of (1 - x)*(1 + 2*x) / ((1 + x)*(1 - 4*x - x^2)).

Offset 0, canonical program `A102129.P5207466991010902462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A102129 (n : ℕ) : ℤ :=
  A102129.P5207466991010902462.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A102129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102395.P9889113456198764165

`A078008(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A102395.P9889113456198764165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102395.P9889113456198764165

noncomputable section

/-- A102395: A mod 2 related Jacobsthal sequence.

Offset 0, canonical program `A102395.P9889113456198764165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102395 (n : ℕ) : ℤ :=
  A102395.P9889113456198764165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102428.P7794472988143770787

`record[C(floor(5*n/3), A087509(n))]`
-/

namespace A102428.P7794472988143770787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊5 * ((n : ℚ) / 3)⌋.toNat (A087509 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102428.P7794472988143770787

noncomputable section

/-- A102428: Central column of triangle A102427.

Offset 0, canonical program `A102428.P7794472988143770787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A102428 (n : ℕ) : ℤ :=
  (A102428.P7794472988143770787.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A102428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102429.P12839459425190765546

`∑[abs(Δ[A108742(n)])]`
-/

namespace A102429.P12839459425190765546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108742 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102429.P12839459425190765546

noncomputable section

/-- A102429: Row sums of A102427.

Offset 0, canonical program `A102429.P12839459425190765546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A102429 (n : ℕ) : ℤ :=
  A102429.P12839459425190765546.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A102429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102477.P4036510561896638930

`A102475(n)+C(n, C(n, n²))`
-/

namespace A102477.P4036510561896638930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 n + (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ)

end

end A102477.P4036510561896638930

noncomputable section

/-- A102477: a(n) = ceiling(Pi^(n/2)).

Offset 0, canonical program `A102477.P4036510561896638930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A102477 (n : ℕ) : ℤ :=
  A102477.P4036510561896638930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A102477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102516.P15752394676013825574

`∑[A100134(n)]-A100134(n)`
-/

namespace A102516.P15752394676013825574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100134 n

end

end A102516.P15752394676013825574

noncomputable section

/-- A102516: Sum C(n-3k,3k+1), k=0..floor(n/6).

Offset 0, canonical program `A102516.P15752394676013825574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A102516 (n : ℕ) : ℤ :=
  A102516.P15752394676013825574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A102516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102572.P14136622743880055354

`A004526(floor(log2(n+1)))`
-/

namespace A102572.P14136622743880055354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.log 2 (n + 1))

end

end A102572.P14136622743880055354

noncomputable section

/-- A102572: a(n) = floor(log_4(n)).

Offset 1, canonical program `A102572.P14136622743880055354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102572 (n : ℕ) : ℤ :=
  A102572.P14136622743880055354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102722.P3996859844004071078

`A052488(n+1)-Δ[A078567(n+1)]`
-/

namespace A102722.P3996859844004071078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052488 (n + 1) - (f1 (n + 1) - f1 n)

end

end A102722.P3996859844004071078

noncomputable section

/-- A102722: Given n, sum all division remainders {n/k}, with k=1,...,n. The value a(n) is given by the floor of that sum. Note that {x}:=x-[x].

Offset 1, canonical program `A102722.P3996859844004071078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A102722 (n : ℕ) : ℤ :=
  A102722.P3996859844004071078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A102722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102875.P10479456155437138433

`A000045(A074066(n+1)-1)`
-/

namespace A102875.P10479456155437138433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A074066 (n + 1) - 1).toNat

end

end A102875.P10479456155437138433

noncomputable section

/-- A102875: Let f(n) = n+2 if n == 1 mod 3, = n if n == 2 mod 3, = n-2 if n == 0 mod 3; then a(n) = Fibonacci(f(n)).

Offset 0, canonical program `A102875.P10479456155437138433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A102875 (n : ℕ) : ℤ :=
  A102875.P10479456155437138433.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A102875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102905.P4240375732378782734

`A157726(n+1)-A157729(3*(n+1))%6`
-/

namespace A102905.P4240375732378782734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (n + 1) - Int.tmod (A157729 (3 * (n + 1))) 6

end

end A102905.P4240375732378782734

noncomputable section

/-- A102905: a(n) = A113655(Fibonacci(n+1)).

Offset 0, canonical program `A102905.P4240375732378782734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A102905 (n : ℕ) : ℤ :=
  A102905.P4240375732378782734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A102905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102915.P10532418710621167245

`floor(A101780(n+1)/10)`
-/

namespace A102915.P10532418710621167245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101780 (n + 1) : ℚ) / 10⌋

end

end A102915.P10532418710621167245

noncomputable section

/-- A102915: Numbers n such that n3 is prime and n is a multiple of 10.

Offset 1, canonical program `A102915.P10532418710621167245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102915 (n : ℕ) : ℤ :=
  A102915.P10532418710621167245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103322.P2551417729250779443

`A000073(n+3)-A182097(n+1)`
-/

namespace A103322.P2551417729250779443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3) - A182097 (n + 1)

end

end A103322.P2551417729250779443

noncomputable section

/-- A103322: Expansion of 1 / ((1-x-x^2-x^3)*(1-x^2-x^3)).

Offset 0, canonical program `A103322.P2551417729250779443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A103322 (n : ℕ) : ℤ :=
  A103322.P2551417729250779443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. -/
def A103322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103355.P17909756641454416049

`n+1-floor(sqrt(A000040(n+1)))`
-/

namespace A103355.P17909756641454416049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.sqrt (A000040 (n + 1))

end

end A103355.P17909756641454416049

noncomputable section

/-- A103355: a(n) = n - floor( sqrt(prime(n) ) ).

Offset 1, canonical program `A103355.P17909756641454416049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103355 (n : ℕ) : ℤ :=
  A103355.P17909756641454416049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103390.P2202769410101344544

`n*A005451(abs(1-n)+1)`
-/

namespace A103390.P2202769410101344544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005451 (|1 - (n : ℤ)| + 1).toNat

end

end A103390.P2202769410101344544

noncomputable section

/-- A103390: Natural numbers but with nonprimes squared.

Offset 1, canonical program `A103390.P2202769410101344544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103390 (n : ℕ) : ℤ :=
  A103390.P2202769410101344544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103433.P10108746420322740503

`∑[A001519(n)²]-1`
-/

namespace A103433.P10108746420322740503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A103433.P10108746420322740503

noncomputable section

/-- A103433: a(n) = Sum_{i=1..n} Fibonacci(2i-1)^2.

Offset 0, canonical program `A103433.P10108746420322740503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A103433 (n : ℕ) : ℤ :=
  A103433.P10108746420322740503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A103433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103434.P6201310393928210542

`∑[A049684(n)]`
-/

namespace A103434.P6201310393928210542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103434.P6201310393928210542

noncomputable section

/-- A103434: a(n) = Sum_{i=1..n} Fibonacci(2i)^2.

Offset 0, canonical program `A103434.P6201310393928210542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A103434 (n : ℕ) : ℤ :=
  A103434.P6201310393928210542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A103434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103452.P9591001737205339396

`Δ[A073424(n)]`
-/

namespace A103452.P9591001737205339396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103452.P9591001737205339396

noncomputable section

/-- A103452: Inverse of number triangle A103451.

Offset 0, canonical program `A103452.P9591001737205339396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103452 (n : ℕ) : ℤ :=
  A103452.P9591001737205339396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103610.P13812086684880233208

`A000045(floor(5*n/8)-and(n, -4)/2)`
-/

namespace A103610.P13812086684880233208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((⌊5 * ((n : ℚ) / 8)⌋ : ℚ) - (Int.land (n : ℤ) (-4) : ℚ) / 2)).toNat

end

end A103610.P13812086684880233208

noncomputable section

/-- A103610: 4 X infinity array read by rows: let M = {{0, 1, 0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {1, 0, 1, 0}}, w[0] = {0, 0, 1, 1}', w[n]' = M*w[n -1]'; the n-th row of the array is w[n]' (the prime denotes transpose).

Offset 0, canonical program `A103610.P13812086684880233208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3839 terms. -/
def A103610 (n : ℕ) : ℤ :=
  A103610.P13812086684880233208.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3839 terms. -/
def A103610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103645.P12884807089351849703

`A131040(n)²`
-/

namespace A103645.P12884807089351849703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131040 n ^ 2

end

end A103645.P12884807089351849703

noncomputable section

/-- A103645: G.f.: (108*x^2+27*x+1)/(1+2*x-6*x^2-27*x^3).

Offset 0, canonical program `A103645.P12884807089351849703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A103645 (n : ℕ) : ℤ :=
  A103645.P12884807089351849703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A103645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103646.P12039972778156622063

`9*A103644(n)`
-/

namespace A103646.P12039972778156622063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A103644 n

end

end A103646.P12039972778156622063

noncomputable section

/-- A103646: G.f.: 9*(3x+1)/(1+2x-6x^2-27x^3).

Offset 0, canonical program `A103646.P12039972778156622063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103646 (n : ℕ) : ℤ :=
  A103646.P12039972778156622063.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103646.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103745.P6321366916771548531

`A103528(n+1)+2^n`
-/

namespace A103745.P6321366916771548531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103528 (n + 1) + (2 ^ n : ℤ)

end

end A103745.P6321366916771548531

noncomputable section

/-- A103745: a(n) = (A102371(n) + n)/2.

Offset 1, canonical program `A103745.P6321366916771548531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103745 (n : ℕ) : ℤ :=
  A103745.P6321366916771548531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A103528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A103745.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103762.P12145414582890211163

`A065475(A136616(n))`
-/

namespace A103762.P12145414582890211163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A136616 n).toNat

end

end A103762.P12145414582890211163

noncomputable section

/-- A103762: a(n) = least k with Sum_{j = n..k} 1/j >= 1.

Offset 1, canonical program `A103762.P12145414582890211163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A103762 (n : ℕ) : ℤ :=
  A103762.P12145414582890211163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A103762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103781.P11199361034277531858

`Δ[A000040(n-3)+a(n-4)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A103781.P11199361034277531858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  A000040 (n - 3) + f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103781.P11199361034277531858

noncomputable section

/-- A103781: Sum of any four successive terms is prime, a(1)=a(2)=0,a(3)=1.

Offset 1, canonical program `A103781.P11199361034277531858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A103781 (n : ℕ) : ℤ :=
  A103781.P11199361034277531858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A103781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103829.P11488243533967495339

`lt[8, 8-∑{digits}[n, A181983(#)]]`
-/

namespace A103829.P11488243533967495339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => A181983 x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A103829.P11488243533967495339

noncomputable section

/-- A103829: Sum of even digits greater than sum of odd digits.

Offset 1, canonical program `A103829.P11488243533967495339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4044 terms. -/
def A103829 (n : ℕ) : ℤ :=
  (A103829.P11488243533967495339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4044 terms. -/
def A103829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103838.P15271122950961256239

`A003619(n+1)+1`
-/

namespace A103838.P15271122950961256239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003619 (n + 1) + 1

end

end A103838.P15271122950961256239

noncomputable section

/-- A103838: Complement of A001671.

Offset 0, canonical program `A103838.P15271122950961256239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103838 (n : ℕ) : ℤ :=
  A103838.P15271122950961256239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103848.P1313370246448149026

`lt[0, ∑{digits}[n+1, A181983(#)]]+1`
-/

namespace A103848.P1313370246448149026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => A181983 x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A103848.P1313370246448149026

noncomputable section

/-- A103848: Numbers k such that sum of even digits of k is less than sum of odd digits.

Offset 1, canonical program `A103848.P1313370246448149026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5476 terms. -/
def A103848 (n : ℕ) : ℤ :=
  (A103848.P1313370246448149026.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5476 terms. -/
def A103848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103982.P552433682598118556

`eq[2, A103981(n)]`
-/

namespace A103982.P552433682598118556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103981 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103982.P552433682598118556

noncomputable section

/-- A103982: Indices of octahedral numbers (A005900) which are semiprimes.

Offset 1, canonical program `A103982.P552433682598118556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A103982 (n : ℕ) : ℤ :=
  (A103982.P552433682598118556.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A103982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104103.P17142170085833821437

`A000196(A000040(n+1))+1`
-/

namespace A104103.P17142170085833821437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000040 (n + 1)).toNat + 1

end

end A104103.P17142170085833821437

noncomputable section

/-- A104103: a(n) = ceiling(sqrt(prime(n))).

Offset 1, canonical program `A104103.P17142170085833821437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104103 (n : ℕ) : ℤ :=
  A104103.P17142170085833821437.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104127.P11741976163939502003

`(1+A000040(n+1))^A000040(n+1)`
-/

namespace A104127.P11741976163939502003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A000040 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A104127.P11741976163939502003

noncomputable section

/-- A104127: a(n) = (1+prime(n))^prime(n).

Offset 1, canonical program `A104127.P11741976163939502003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104127 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104127.P11741976163939502003.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104127.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104136.P7909773224878822051

`A104135(n+1)+1`
-/

namespace A104136.P7909773224878822051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104135 (n + 1) + 1

end

end A104136.P7909773224878822051

noncomputable section

/-- A104136: a(n) = ceiling(sqrt(2*Pi*n)).

Offset 1, canonical program `A104136.P7909773224878822051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104136 (n : ℕ) : ℤ :=
  A104136.P7909773224878822051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104144.P15865153976698881542

`Δ[A127193(n+1)/8]`
-/

namespace A104144.P15865153976698881542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127193 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104144.P15865153976698881542

noncomputable section

/-- A104144: a(n) = Sum_{k=1..9} a(n-k); a(8) = 1, a(n) = 0 for n < 8.

Offset 0, canonical program `A104144.P15865153976698881542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A104144 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104144.P15865153976698881542.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A104144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104376.P2189828864766888220

`n*A060887(n)+1`
-/

namespace A104376.P2189828864766888220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060887 n + 1

end

end A104376.P2189828864766888220

noncomputable section

/-- A104376: a(n) = Sum_{j=0..13} n^j.

Offset 0, canonical program `A104376.P2189828864766888220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104376 (n : ℕ) : ℤ :=
  A104376.P2189828864766888220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104401.P12404378533121080749

`A104235(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A104401.P12404378533121080749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104235 (n + 1) : ℚ) / 4

end

end A104401.P12404378533121080749

noncomputable section

/-- A104401: a(n) = A104235(n)/4.

Offset 0, canonical program `A104401.P12404378533121080749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104235, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104401 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104401.P12404378533121080749.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104235, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104406.P1074933166497164848

`∑[A039966(n+1)]`
-/

namespace A104406.P1074933166497164848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104406.P1074933166497164848

noncomputable section

/-- A104406: Number of numbers <= n having no 2 in ternary representation.

Offset 1, canonical program `A104406.P1074933166497164848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104406 (n : ℕ) : ℤ :=
  A104406.P1074933166497164848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104475.P16730994054173301246

`70*A000581(n+8)`
-/

namespace A104475.P16730994054173301246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  70 * A000581 (n + 8)

end

end A104475.P16730994054173301246

noncomputable section

/-- A104475: a(n) = binomial(n+4,4) * binomial(n+8,4).

Offset 0, canonical program `A104475.P16730994054173301246`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104475 (n : ℕ) : ℤ :=
  A104475.P16730994054173301246.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104475.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104476.P2344560477967671189

`C(n+7, 7)*Δ[A000581(n+11)]`
-/

namespace A104476.P2344560477967671189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * (f1 (n + 1) - f1 n)

end

end A104476.P2344560477967671189

noncomputable section

/-- A104476: a(n) = binomial(n+7,7)*binomial(n+11,7).

Offset 0, canonical program `A104476.P2344560477967671189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A104476 (n : ℕ) : ℤ :=
  A104476.P2344560477967671189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A104476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104478.P10890111403220166605

`A000581(n+8)*A000581(n+12)`
-/

namespace A104478.P10890111403220166605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A000581 (n + 12)

end

end A104478.P10890111403220166605

noncomputable section

/-- A104478: a(n) = binomial(n+8,8)*binomial(n+12,8).

Offset 0, canonical program `A104478.P10890111403220166605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104478 (n : ℕ) : ℤ :=
  A104478.P10890111403220166605.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104487.P4628420298259898103

`Δ[A285197(n+1)]`
-/

namespace A104487.P4628420298259898103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104487.P4628420298259898103

noncomputable section

/-- A104487: a(n+3) = 6a(n+2) - 10a(n+1) + 3a(n); a(0) = 1, a(1) = 4, a(2) = 14.

Offset 0, canonical program `A104487.P4628420298259898103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A104487 (n : ℕ) : ℤ :=
  A104487.P4628420298259898103.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A104487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104489.P2998061387433102461

`n+2-and(n+1, A103530(n+2))`
-/

namespace A104489.P2998061387433102461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - Int.land (n + 1 : ℤ) (A103530 (n + 2))

end

end A104489.P2998061387433102461

noncomputable section

/-- A104489: Read central column in Table 3 in reference from right to left, convert to base 10.

Offset 1, canonical program `A104489.P2998061387433102461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A104489 (n : ℕ) : ℤ :=
  A104489.P2998061387433102461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A104489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104506.P2148906376944204592

`-n*A100223(n+1)`
-/

namespace A104506.P2148906376944204592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * A100223 (n + 1))

end

end A104506.P2148906376944204592

noncomputable section

/-- A104506: Column 1 of triangle A104505, which is equal to the right-hand side of the triangle A084610 of coefficients in (1 + x - x^2)^n.

Offset 0, canonical program `A104506.P2148906376944204592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. -/
def A104506 (n : ℕ) : ℤ :=
  A104506.P2148906376944204592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. -/
def A104506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104635.P8825604190058391155

`floor(A002145(n+1)/2)`
-/

namespace A104635.P8825604190058391155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002145 (n + 1) : ℚ) / 2⌋

end

end A104635.P8825604190058391155

noncomputable section

/-- A104635: Odd n such that 2*n+1 is prime.

Offset 1, canonical program `A104635.P8825604190058391155`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104635 (n : ℕ) : ℤ :=
  A104635.P8825604190058391155.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104635.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104639.P9424678519764599972

`∑{digits}[(n+1)^3, A056594(#)²]`
-/

namespace A104639.P9424678519764599972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A056594 x ^ 2).sum

end

end A104639.P9424678519764599972

noncomputable section

/-- A104639: Number of even digits in n^3.

Offset 1, canonical program `A104639.P9424678519764599972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104639 (n : ℕ) : ℤ :=
  A104639.P9424678519764599972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104673.P222287622841635634

`(A051745(n+1)-(n+1))*∑[A000582(n+9)]`
-/

namespace A104673.P222287622841635634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051745 (n + 1) - (n + 1 : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104673.P222287622841635634

noncomputable section

/-- A104673: a(n) = binomial(n+5, n)*binomial(n+10, n).

Offset 0, canonical program `A104673.P222287622841635634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104673 (n : ℕ) : ℤ :=
  A104673.P222287622841635634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104674.P11394683327931263403

`∑[∑[A000332(n+4)]]*A001288(n)`
-/

namespace A104674.P11394683327931263403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001288 (n + 11)

end

end A104674.P11394683327931263403

noncomputable section

/-- A104674: a(n) = binomial(n+6, 6) * binomial(n+11, n).

Offset 0, canonical program `A104674.P11394683327931263403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A104674 (n : ℕ) : ℤ :=
  A104674.P11394683327931263403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A104674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104859.P6965904932722830606

`∑[A001764(n)]`
-/

namespace A104859.P6965904932722830606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A104859.P6965904932722830606

noncomputable section

/-- A104859: Partial sums of A001764.

Offset 0, canonical program `A104859.P6965904932722830606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A104859 (n : ℕ) : ℤ :=
  A104859.P6965904932722830606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A104859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105025.P3996598977755789891

`A103530(A070939(n)+1+n)-1`
-/

namespace A105025.P3996598977755789891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103530 (A070939 n + 1 + (n : ℤ)).toNat - 1

end

end A105025.P3996598977755789891

noncomputable section

/-- A105025: Write numbers in binary under each other; to get the next block of 2^k (k >= 0) terms of the sequence, start at 2^k, read diagonals in downward direction and convert to decimal.

Offset 0, canonical program `A105025.P3996598977755789891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. -/
def A105025 (n : ℕ) : ℤ :=
  A105025.P3996598977755789891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. -/
def A105025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105115.P15486050954571292780

`∩[A065502(n+1), A085837(n+1)]`
-/

namespace A105115.P15486050954571292780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105115.P15486050954571292780

noncomputable section

/-- A105115: Numbers k such that the decimal representation of 1/k is neither terminating nor purely repeating.

Offset 1, canonical program `A105115.P15486050954571292780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5982 terms. -/
def A105115 (n : ℕ) : ℤ :=
  (A105115.P15486050954571292780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5982 terms. -/
def A105115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105133.P12778689426666315964

`(A007521(n+1)-5)/8`
-/

namespace A105133.P12778689426666315964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007521 (n + 1) - 5 : ℚ) / 8

end

end A105133.P12778689426666315964

noncomputable section

/-- A105133: Numbers n such that 8n + 5 is prime.

Offset 1, canonical program `A105133.P12778689426666315964`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105133 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A105133.P12778689426666315964.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105136.P17428083750107149856

`floor(A105128(n+1)/64)`
-/

namespace A105136.P17428083750107149856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105128 (n + 1) : ℚ) / 64⌋

end

end A105136.P17428083750107149856

noncomputable section

/-- A105136: Numbers n such that 64n+33 is prime.

Offset 1, canonical program `A105136.P17428083750107149856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105136 (n : ℕ) : ℤ :=
  A105136.P17428083750107149856.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105137.P10062708586341460979

`eq[1, A100995(64*(2*n+1)+1)]`
-/

namespace A105137.P10062708586341460979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (64 * (2 * n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105137.P10062708586341460979

noncomputable section

/-- A105137: Numbers n such that 128n+65 is prime.

Offset 1, canonical program `A105137.P10062708586341460979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A105137 (n : ℕ) : ℤ :=
  (A105137.P10062708586341460979.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A105137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105192.P11359607203134994014

`∏{e}[A158128(A017281(n)), #+1]`
-/

namespace A105192.P11359607203134994014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A105192.P11359607203134994014

noncomputable section

/-- A105192: Number of divisors of n101.

Offset 0, canonical program `A105192.P11359607203134994014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105192 (n : ℕ) : ℤ :=
  (A105192.P11359607203134994014.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105234.P16903634671580157466

`A087049(∑[and(2, n)])`
-/

namespace A105234.P16903634671580157466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105234.P16903634671580157466

noncomputable section

/-- A105234: Central column of a Moebius-binomial triangle.

Offset 0, canonical program `A105234.P16903634671580157466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105234 (n : ℕ) : ℤ :=
  A105234.P16903634671580157466.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105252.P13510397417478235058

`∑[∑[∑[n+1]]]*A054334(n)`
-/

namespace A105252.P13510397417478235058
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A054334 n

end

end A105252.P13510397417478235058

noncomputable section

/-- A105252: a(n) = binomial(n+5,n)*binomial(n+9,n).

Offset 0, canonical program `A105252.P13510397417478235058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105252 (n : ℕ) : ℤ :=
  A105252.P13510397417478235058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105253.P14915572952284782147

`C(n+6, 6)*A001287(n)`
-/

namespace A105253.P14915572952284782147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℤ) * A001287 (n + 10)

end

end A105253.P14915572952284782147

noncomputable section

/-- A105253: a(n) = binomial(n+6,n)*binomial(n+10,n).

Offset 0, canonical program `A105253.P14915572952284782147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105253 (n : ℕ) : ℤ :=
  A105253.P14915572952284782147.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105385.P8101583098295325085

`A092202(n+1)`
-/

namespace A105385.P8101583098295325085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092202 (n + 1)

end

end A105385.P8101583098295325085

noncomputable section

/-- A105385: Expansion of (1-x^2)/(1-x^5).

Offset 0, canonical program `A105385.P8101583098295325085`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105385 (n : ℕ) : ℤ :=
  A105385.P8101583098295325085.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105402.P13031207710352222205

`lt[(n+1)%A007947(A000203(n+1)), 1]+1`
-/

namespace A105402.P13031207710352222205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A007947 (A000203 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A105402.P13031207710352222205

noncomputable section

/-- A105402: Positive integers k such that the prime factors of sigma(k) are a subset of the prime factors of k.

Offset 1, canonical program `A105402.P13031207710352222205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A105402 (n : ℕ) : ℤ :=
  (A105402.P13031207710352222205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A105402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105472.P8431656739219211522

`floor(A000045(n)/10)%10`
-/

namespace A105472.P8431656739219211522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000045 n : ℚ) / 10⌋ 10

end

end A105472.P8431656739219211522

noncomputable section

/-- A105472: Next-to-last digit of n-th Fibonacci number in decimal representation, a(n) = 0 for n <= 6.

Offset 0, canonical program `A105472.P8431656739219211522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A105472 (n : ℕ) : ℤ :=
  A105472.P8431656739219211522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A105472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105498.P7447428712844368662

`A158478(and(n, 2*n+1))+1`
-/

namespace A105498.P7447428712844368662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (Nat.land n (2 * n + 1)) + 1

end

end A105498.P7447428712844368662

noncomputable section

/-- A105498: Trajectory of 1 under the morphism 1->{1,2}, 2->{1,4}, 3->{3,4}, 4->{3,4}.

Offset 0, canonical program `A105498.P7447428712844368662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105498 (n : ℕ) : ℤ :=
  A105498.P7447428712844368662.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105554.P3431656955138672764

`A000040(A000045(n+3)-1)`
-/

namespace A105554.P3431656955138672764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000045 (n + 3) - 1).toNat

end

end A105554.P3431656955138672764

noncomputable section

/-- A105554: Primes whose indices are the sum of the first n+1 Fibonacci numbers.

Offset 1, canonical program `A105554.P3431656955138672764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105554 (n : ℕ) : ℤ :=
  A105554.P3431656955138672764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105555.P12553018118310523770

`A000040(∏{e}[n+1, #+1])`
-/

namespace A105555.P12553018118310523770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A105555.P12553018118310523770

noncomputable section

/-- A105555: Let d = number of divisors of n; a(n) = d-th prime.

Offset 1, canonical program `A105555.P12553018118310523770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105555 (n : ℕ) : ℤ :=
  A105555.P12553018118310523770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105561.P9613495167303290584

`A052955(∑{e}[n+1, #]-∑{e}[n+1, #-1])`
-/

namespace A105561.P9613495167303290584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - ∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1)).toNat

end

end A105561.P9613495167303290584

noncomputable section

/-- A105561: a(n) is the m-th prime, where m is the number of distinct prime factors of n (A001221), a(1) = 1.

Offset 1, canonical program `A105561.P9613495167303290584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105561 (n : ℕ) : ℤ :=
  A105561.P9613495167303290584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105580.P425684970587378099

`Δ[A078046(n)]-A057597(n+5)`
-/

namespace A105580.P425684970587378099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A057597 (n + 5)

end

end A105580.P425684970587378099

noncomputable section

/-- A105580: a(n+3) = a(n) - a(n+1) - a(n+2); a(0) = -5, a(1) = 6, a(2) = 0.

Offset 0, canonical program `A105580.P425684970587378099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A105580 (n : ℕ) : ℤ :=
  A105580.P425684970587378099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. -/
def A105580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105597.P2071212981677891923

`A087049(floor(n/2*A087049(n)))`
-/

namespace A105597.P2071212981677891923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 ⌊(n : ℚ) / 2 * (A087049 n : ℚ)⌋.toNat

end

end A105597.P2071212981677891923

noncomputable section

/-- A105597: Central numbers in a Moebius-binomial triangle.

Offset 0, canonical program `A105597.P2071212981677891923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105597 (n : ℕ) : ℤ :=
  A105597.P2071212981677891923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105602.P5123984197085087200

`gcd(A000045(n+1), ∏{p}[n+1, A000045((n+1)/#)])`
-/

namespace A105602.P5123984197085087200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (n + 1)) (∏ p ∈ Nat.primeFactors (f1 n), A000045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat)

end

end A105602.P5123984197085087200

noncomputable section

/-- A105602: Divide each Fibonacci number by its primitive part.

Offset 1, canonical program `A105602.P5123984197085087200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A105602 (n : ℕ) : ℤ :=
  (A105602.P5123984197085087200.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A105602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105814.P1850531126647959836

`A068824(n+1)+∑[A004767(n)]`
-/

namespace A105814.P1850531126647959836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068824 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105814.P1850531126647959836

noncomputable section

/-- A105814: a(n) = n^2 + (n concatenated with n).

Offset 1, canonical program `A105814.P1850531126647959836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105814 (n : ℕ) : ℤ :=
  A105814.P1850531126647959836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105855.P14524528389678712476

`A104647(n+1)-A104647(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A105855.P14524528389678712476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104647 (n + 1) - A104647 n

end

end A105855.P14524528389678712476

noncomputable section

/-- A105855: A104647(n+1) - A104647(n).

Offset 0, canonical program `A105855.P14524528389678712476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104647, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105855 (n : ℕ) : ℤ :=
  A105855.P14524528389678712476.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104647, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105856.P10679960069310382758

`a(n-1)+A104647(n)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A105856.P10679960069310382758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A104647 n

end

end A105856.P10679960069310382758

noncomputable section

/-- A105856: a(n) = a(n-1) + A104647(n), a(0) = 0.

Offset 0, canonical program `A105856.P10679960069310382758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104647, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105856 (n : ℕ) : ℤ :=
  A105856.P10679960069310382758.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104647, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105863.P815048038742356543

`(n+1)*A056045(n+1)`
-/

namespace A105863.P815048038742356543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056045 (n + 1)

end

end A105863.P815048038742356543

noncomputable section

/-- A105863: a(n) = n * Sum_{d|n} (binomial(n,d) / gcd(n,d)).

Offset 1, canonical program `A105863.P815048038742356543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A105863 (n : ℕ) : ℤ :=
  A105863.P815048038742356543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A105863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105948.P16007118280732115850

`∑[∑[A000292(n+1)]]*A000580(n+7)`
-/

namespace A105948.P16007118280732115850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000580 (n + 7)

end

end A105948.P16007118280732115850

noncomputable section

/-- A105948: a(n) = C(n+5,5) * C(n+7,7).

Offset 0, canonical program `A105948.P16007118280732115850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105948 (n : ℕ) : ℤ :=
  A105948.P16007118280732115850.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105964.P12356650590304909845

`A004526(gcd(A007980(n), A051274(n)))`
-/

namespace A105964.P12356650590304909845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.gcd (A007980 n) (A051274 n))

end

end A105964.P12356650590304909845

noncomputable section

/-- A105964: Expansion of x*(1+x^3-x^6+x^7)/(1-x^6)^2.

Offset 0, canonical program `A105964.P12356650590304909845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105964 (n : ℕ) : ℤ :=
  A105964.P12356650590304909845.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106044.P18354520358344311336

`A068527(A000040(n+1))`
-/

namespace A106044.P18354520358344311336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A000040 (n + 1)).toNat

end

end A106044.P18354520358344311336

noncomputable section

/-- A106044: Difference between n-th prime and next larger perfect square.

Offset 1, canonical program `A106044.P18354520358344311336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A106044 (n : ℕ) : ℤ :=
  A106044.P18354520358344311336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A106044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106192.P12701748668715467887

`A106191(n)-a(n-1)` with `a(0)=1`
-/

namespace A106192.P12701748668715467887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106191 n - a (n - 1)

end

end A106192.P12701748668715467887

noncomputable section

/-- A106192: Expansion of sqrt(1-4x)/(1-x^2).

Offset 0, canonical program `A106192.P12701748668715467887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A106192 (n : ℕ) : ℤ :=
  A106192.P12701748668715467887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A106192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106257.P16202374529222529415

`6*A254709(n+1)-1`
-/

namespace A106257.P16202374529222529415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A254709 (n + 1) - 1

end

end A106257.P16202374529222529415

noncomputable section

/-- A106257: Numbers k such that k^2 = 12*n^2 + 13.

Offset 1, canonical program `A106257.P16202374529222529415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A106257 (n : ℕ) : ℤ :=
  A106257.P16202374529222529415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A106257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106330.P7175881464032306002

`2*A233231(n)+1`
-/

namespace A106330.P7175881464032306002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233231 n + 1

end

end A106330.P7175881464032306002

noncomputable section

/-- A106330: Numbers k such that k^2 = 24*j^2 + 25.

Offset 1, canonical program `A106330.P7175881464032306002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A106330 (n : ℕ) : ℤ :=
  A106330.P7175881464032306002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A106330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106388.P9611018495557512792

`12*A195313(n)+11`
-/

namespace A106388.P9611018495557512792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A195313 n + 11

end

end A106388.P9611018495557512792

noncomputable section

/-- A106388: Numbers k such that 11k = 6j^2 + 6j + 1.

Offset 1, canonical program `A106388.P9611018495557512792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106388 (n : ℕ) : ℤ :=
  A106388.P9611018495557512792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106390.P7277479422933852833

`A001844(n)+7*A132356(n)`
-/

namespace A106390.P7277479422933852833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + 7 * A132356 n

end

end A106390.P7277479422933852833

noncomputable section

/-- A106390: Numbers k such that 13k = 6j^2 + 6j + 1.

Offset 1, canonical program `A106390.P7277479422933852833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106390 (n : ℕ) : ℤ :=
  A106390.P7277479422933852833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106517.P14602133901887459701

`Δ[A094688(n)]`
-/

namespace A106517.P14602133901887459701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106517.P14602133901887459701

noncomputable section

/-- A106517: Convolution of Fibonacci(n-1) and 3^n.

Offset 0, canonical program `A106517.P14602133901887459701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A106517 (n : ℕ) : ℤ :=
  A106517.P14602133901887459701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A106517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106576.P14659276137320816727

`A029578(or(2, n))%10`
-/

namespace A106576.P14659276137320816727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029578 (Nat.lor 2 n)) 10

end

end A106576.P14659276137320816727

noncomputable section

/-- A106576: Period 20. Sequence gives last digit of A106157, starting from the first positive term.

Offset 0, canonical program `A106576.P14659276137320816727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106576 (n : ℕ) : ℤ :=
  A106576.P14659276137320816727.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106594.P7438179704489849897

`A031358(n+1)/2`
-/

namespace A106594.P7438179704489849897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031358 (n + 1) : ℚ) / 2

end

end A106594.P7438179704489849897

noncomputable section

/-- A106594: a(n) = number of primitive solutions to 4n+1 = x^2 + y^2.

Offset 1, canonical program `A106594.P7438179704489849897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A106594 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A106594.P7438179704489849897.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A106594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106602.P17168999429164720550

`ceil(A031358(n)/2)`
-/

namespace A106602.P17168999429164720550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A031358 n : ℚ) / 2⌉

end

end A106602.P17168999429164720550

noncomputable section

/-- A106602: Number of primitive positive solutions to 8n+2=x^2+y^2.

Offset 0, canonical program `A106602.P17168999429164720550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A106602 (n : ℕ) : ℤ :=
  A106602.P17168999429164720550.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A106602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106638.P16182271314387707793

`A005187(xor(n, floor(n/2)))%3+1`
-/

namespace A106638.P16182271314387707793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005187 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat) 3 + 1

end

end A106638.P16182271314387707793

noncomputable section

/-- A106638: Limiting word of the morphism 1->1221, 2->2332, 3->3113 starting from 1.

Offset 0, canonical program `A106638.P16182271314387707793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106638 (n : ℕ) : ℤ :=
  A106638.P16182271314387707793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106666.P13688260135589677912

`∑[A052970(n+1)]+1`
-/

namespace A106666.P13688260135589677912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A106666.P13688260135589677912

noncomputable section

/-- A106666: Expansion of g.f. (1-4*x^2+2*x^3)/((1-x)*(1-2*x-2*x^2+2*x^3)).

Offset 0, canonical program `A106666.P13688260135589677912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A106666 (n : ℕ) : ℤ :=
  A106666.P13688260135589677912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A106666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106709.P13984006052591381800

`-A079162(2*n)`
-/

namespace A106709.P13984006052591381800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A079162 (2 * n)

end

end A106709.P13984006052591381800

noncomputable section

/-- A106709: Expansion of g.f. -2*x/(1 - 5*x + 2*x^2).

Offset 0, canonical program `A106709.P13984006052591381800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A106709 (n : ℕ) : ℤ :=
  A106709.P13984006052591381800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A106709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106789.P17416882602866253332

`A001644(n+1)²+A001644(n)²`
-/

namespace A106789.P17416882602866253332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) ^ 2 + A001644 n ^ 2

end

end A106789.P17416882602866253332

noncomputable section

/-- A106789: Sum of two consecutive squares of Lucas 3-step numbers (A001644).

Offset 0, canonical program `A106789.P17416882602866253332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A106789 (n : ℕ) : ℤ :=
  A106789.P17416882602866253332.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A106789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106831.P17287596638849734060

`(val(n+1, 2)+2)*a(A065033(n)-1)` with `a(0)=2`
-/

namespace A106831.P17287596638849734060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (SequenceMachineLib.valuation (n + 1) 2 + 2) * a (A065033 n - 1).toNat

end

end A106831.P17287596638849734060

noncomputable section

/-- A106831: Define a triangle in which the entries are of the form +-1/(b!c!d!e!...), where the order of the factorials is important; read the triangle by rows and record and expand the denominators.

Offset 0, canonical program `A106831.P17287596638849734060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106831 (n : ℕ) : ℤ :=
  (A106831.P17287596638849734060.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106846.P9938484105339249012

`∑[n*(A008574(n)+∑[A032741(n)])]`
-/

namespace A106846.P9938484105339249012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008574 n + ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106846.P9938484105339249012

noncomputable section

/-- A106846: a(n) = Sum_{k + l*m <= n} (k + l*m), with 0 <= k,l,m <= n.

Offset 0, canonical program `A106846.P9938484105339249012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106846 (n : ℕ) : ℤ :=
  A106846.P9938484105339249012.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106915.P15563211329436691642

`∩[A003625(n+1), A003629(n+1)]`
-/

namespace A106915.P15563211329436691642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106915.P15563211329436691642

noncomputable section

/-- A106915: Primes of the form 3x^2 + 2xy + 5y^2, with x and y any integer.

Offset 1, canonical program `A106915.P15563211329436691642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A106915 (n : ℕ) : ℤ :=
  (A106915.P15563211329436691642.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A106915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107068.P6111804930617495569

`(-1)^n*A017817(3*n+8)`
-/

namespace A107068.P6111804930617495569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A017817 (3 * n + 8)

end

end A107068.P6111804930617495569

noncomputable section

/-- A107068: Expansion of 1/((1+x)^3-x^4).

Offset 0, canonical program `A107068.P6111804930617495569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 382 terms. -/
def A107068 (n : ℕ) : ℤ :=
  A107068.P6111804930617495569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 382 terms. -/
def A107068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107133.P1704800267406391955

`∩[A002145(n+1), A033207(n+1)]`
-/

namespace A107133.P1704800267406391955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107133.P1704800267406391955

noncomputable section

/-- A107133: Primes of the form 4x^2 + 7y^2.

Offset 1, canonical program `A107133.P1704800267406391955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A107133 (n : ℕ) : ℤ :=
  (A107133.P1704800267406391955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A107133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107137.P776458122758253668

`∩[A038873(n+1), A106859(n+1)]`
-/

namespace A107137.P776458122758253668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107137.P776458122758253668

noncomputable section

/-- A107137: Primes of the form 2x^2 + 15y^2.

Offset 1, canonical program `A107137.P776458122758253668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. -/
def A107137 (n : ℕ) : ℤ :=
  (A107137.P776458122758253668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. -/
def A107137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107168.P10088901203869572944

`p?[or(2, A033212(n+1))]`
-/

namespace A107168.P10088901203869572944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A033212 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107168.P10088901203869572944

noncomputable section

/-- A107168: Primes of the form 4x^2 + 15y^2.

Offset 1, canonical program `A107168.P10088901203869572944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5023 terms. -/
def A107168 (n : ℕ) : ℤ :=
  A107168.P10088901203869572944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5023 terms. -/
def A107168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107178.P16614462838010122114

`∩[A001132(n+1), A106878(n+1)]`
-/

namespace A107178.P16614462838010122114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107178.P16614462838010122114

noncomputable section

/-- A107178: Primes of the form 7x^2 + 10y^2.

Offset 1, canonical program `A107178.P16614462838010122114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A107178 (n : ℕ) : ℤ :=
  (A107178.P16614462838010122114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. -/
def A107178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107231.P17294312273811050320

`∑[n+1]*A001405(n)`
-/

namespace A107231.P17294312273811050320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001405 n

end

end A107231.P17294312273811050320

noncomputable section

/-- A107231: a(n) = C(n+2,2)*C(n,floor(n/2)).

Offset 0, canonical program `A107231.P17294312273811050320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A107231 (n : ℕ) : ℤ :=
  A107231.P17294312273811050320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A107231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107240.P9688559620881821996

`∑[A141583(n)]`
-/

namespace A107240.P9688559620881821996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107240.P9688559620881821996

noncomputable section

/-- A107240: Sum of squares of first n tribonacci numbers (A000213).

Offset 1, canonical program `A107240.P9688559620881821996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A107240 (n : ℕ) : ℤ :=
  A107240.P9688559620881821996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A107240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107241.P7635625253122821340

`∑[A000288(n)²]`
-/

namespace A107241.P7635625253122821340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107241.P7635625253122821340

noncomputable section

/-- A107241: Sum of squares of first n tetranacci numbers (A000288).

Offset 1, canonical program `A107241.P7635625253122821340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A107241 (n : ℕ) : ℤ :=
  A107241.P7635625253122821340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A107241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107242.P778560434958617196

`∑[A001630(n)²]`
-/

namespace A107242.P778560434958617196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107242.P778560434958617196

noncomputable section

/-- A107242: Sum of squares of tetranacci numbers (A001630).

Offset 0, canonical program `A107242.P778560434958617196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A107242 (n : ℕ) : ℤ :=
  A107242.P778560434958617196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A107242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107243.P6046497353442191983

`∑[A001591(n)²]`
-/

namespace A107243.P6046497353442191983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107243.P6046497353442191983

noncomputable section

/-- A107243: Sum of squares of pentanacci numbers (A001591).

Offset 0, canonical program `A107243.P6046497353442191983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A107243 (n : ℕ) : ℤ :=
  A107243.P6046497353442191983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A107243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107244.P1170527571034993744

`∑[A001592(n)²]`
-/

namespace A107244.P1170527571034993744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107244.P1170527571034993744

noncomputable section

/-- A107244: Sum of squares of hexanacci numbers (A001592, Fibonacci 6-step numbers).

Offset 0, canonical program `A107244.P1170527571034993744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A107244 (n : ℕ) : ℤ :=
  A107244.P1170527571034993744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A107244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107245.P15153055423378604384

`∑[A122189(n)²]`
-/

namespace A107245.P15153055423378604384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122189 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107245.P15153055423378604384

noncomputable section

/-- A107245: Sum of squares of heptanacci numbers (Fibonacci 7-step numbers).

Offset 0, canonical program `A107245.P15153055423378604384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A107245 (n : ℕ) : ℤ :=
  A107245.P15153055423378604384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A107245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107246.P7222239587590482686

`∑[A079262(n)²]`
-/

namespace A107246.P7222239587590482686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107246.P7222239587590482686

noncomputable section

/-- A107246: Sum of squares of octanacci numbers (Fibonacci 8-step numbers).

Offset 0, canonical program `A107246.P7222239587590482686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A107246 (n : ℕ) : ℤ :=
  A107246.P7222239587590482686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A107246.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A107304.P8298507591522945342

`A024896(n+1)+1`
-/

namespace A107304.P8298507591522945342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1) + 1

end

end A107304.P8298507591522945342

noncomputable section

/-- A107304: Numbers k such that 5k - 7 is prime.

Offset 1, canonical program `A107304.P8298507591522945342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107304 (n : ℕ) : ℤ :=
  A107304.P8298507591522945342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107351.P1785385007253951998

`∑[∑[∑[A053090(n+3)]]]`
-/

namespace A107351.P1785385007253951998
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053090 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107351.P1785385007253951998

noncomputable section

/-- A107351: Expansion of (1+x^3)/((1-x)^3*(1-x^2)^3*(1-x^3)).

Offset 0, canonical program `A107351.P1785385007253951998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107351 (n : ℕ) : ℤ :=
  A107351.P1785385007253951998.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107399.P15814944579892048566

`A000581(n+8)*A000581(n+10)`
-/

namespace A107399.P15814944579892048566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A000581 (n + 10)

end

end A107399.P15814944579892048566

noncomputable section

/-- A107399: a(n) = binomial(n+8,8)*binomial(n+10,8).

Offset 0, canonical program `A107399.P15814944579892048566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A107399 (n : ℕ) : ℤ :=
  A107399.P15814944579892048566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A107399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107409.P4194081853284292606

`Δ[A089068(n)]%10`
-/

namespace A107409.P4194081853284292606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 10

end

end A107409.P4194081853284292606

noncomputable section

/-- A107409: Each term is sum of three previous terms mod 10.

Offset 0, canonical program `A107409.P4194081853284292606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A107409 (n : ℕ) : ℤ :=
  A107409.P4194081853284292606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A107409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107419.P674098352605240472

`∑[∑[n+1]]*∑[A050486(n)]`
-/

namespace A107419.P674098352605240472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A107419.P674098352605240472

noncomputable section

/-- A107419: a(n) = binomial(n+4,4)*binomial(n+7,7).

Offset 0, canonical program `A107419.P674098352605240472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107419 (n : ℕ) : ℤ :=
  A107419.P674098352605240472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107420.P998991494534180804

`∑[∑[A000292(n+1)]]*A000581(n+8)`
-/

namespace A107420.P998991494534180804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000581 (n + 8)

end

end A107420.P998991494534180804

noncomputable section

/-- A107420: a(n) = binomial(n+5,5)*binomial(n+8,8).

Offset 0, canonical program `A107420.P998991494534180804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107420 (n : ℕ) : ℤ :=
  A107420.P998991494534180804.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107421.P15477046414225489138

`∑[A051745(n+1)-(n+1)]*A000582(n+9)`
-/

namespace A107421.P15477046414225489138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051745 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000582 (n + 9)

end

end A107421.P15477046414225489138

noncomputable section

/-- A107421: a(n) = binomial(n+6,6)*binomial(n+9,9).

Offset 0, canonical program `A107421.P15477046414225489138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107421 (n : ℕ) : ℤ :=
  A107421.P15477046414225489138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107443.P17674549567923757110

`-A078033(∑[(-1)^n]+n)`
-/

namespace A107443.P17674549567923757110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A078033 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A107443.P17674549567923757110

noncomputable section

/-- A107443: Expansion of g.f.: (1+3*x^2)/((1-x)*(1+x+2*x^2)*(1-x+2*x^2)).

Offset 0, canonical program `A107443.P17674549567923757110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A107443 (n : ℕ) : ℤ :=
  A107443.P17674549567923757110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A107443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107620.P6210584321330120110

`A000040(n+1)*A176059(n)`
-/

namespace A107620.P6210584321330120110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A176059 n

end

end A107620.P6210584321330120110

noncomputable section

/-- A107620: Primes multiplied alternately by 3 and 2.

Offset 1, canonical program `A107620.P6210584321330120110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107620 (n : ℕ) : ℤ :=
  A107620.P6210584321330120110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107621.P17162531475681835558

`A000040(n+1)*A010693(n)`
-/

namespace A107621.P17162531475681835558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A010693 n

end

end A107621.P17162531475681835558

noncomputable section

/-- A107621: Primes multiplied alternately by 2 and 3.

Offset 1, canonical program `A107621.P17162531475681835558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107621 (n : ℕ) : ℤ :=
  A107621.P17162531475681835558.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107684.P10903729212609213626

`record[2^floor(n/4)-A056594(n)]`
-/

namespace A107684.P10903729212609213626
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ) - (A056594 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107684.P10903729212609213626

noncomputable section

/-- A107684: Union of sequences 2^k-1, 2^k and 2^k+1.

Offset 0, canonical program `A107684.P10903729212609213626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. -/
def A107684 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107684.P10903729212609213626.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. -/
def A107684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107756.P8154172557650536797

`A074940(n+1)-1`
-/

namespace A107756.P8154172557650536797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (n + 1) - 1

end

end A107756.P8154172557650536797

noncomputable section

/-- A107756: Numbers k such that Sum_{j=1..k} Catalan(j) == 1 (mod 3).

Offset 1, canonical program `A107756.P8154172557650536797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107756 (n : ℕ) : ℤ :=
  A107756.P8154172557650536797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107836.P6158526147254269933

`eq[1, A032741(A000030(n)+n)]`
-/

namespace A107836.P6158526147254269933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000030 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107836.P6158526147254269933

noncomputable section

/-- A107836: Slowest increasing sequence where a(n)+(first digit of a(n)) is prime.

Offset 1, canonical program `A107836.P6158526147254269933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A107836 (n : ℕ) : ℤ :=
  (A107836.P6158526147254269933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A107836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107854.P417753760362536162

`A159284(n)+A014017(n+5)`
-/

namespace A107854.P417753760362536162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n + A014017 (n + 5)

end

end A107854.P417753760362536162

noncomputable section

/-- A107854: G.f. x*(x^2+1)*(x^3-x-1)/((2*x^3+x^2-1)*(x^4+1)).

Offset 0, canonical program `A107854.P417753760362536162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107854 (n : ℕ) : ℤ :=
  A107854.P417753760362536162.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107947.P8270504018113973656

`a(n-1)+a(n%A053644(n))` with `a(0)=1`
-/

namespace A107947.P8270504018113973656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (Int.tmod (n : ℤ) (A053644 n)).toNat

end

end A107947.P8270504018113973656

noncomputable section

/-- A107947: Partial sums of A107946.

Offset 1, canonical program `A107947.P8270504018113973656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A107947 (n : ℕ) : ℤ :=
  (A107947.P8270504018113973656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A107947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107956.P15713167515399959811

`∑[A107969(n)]`
-/

namespace A107956.P15713167515399959811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107956.P15713167515399959811

noncomputable section

/-- A107956: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)(5n^2 + 21n + 20)/2880.

Offset 0, canonical program `A107956.P15713167515399959811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107956 (n : ℕ) : ℤ :=
  A107956.P15713167515399959811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107959.P13522799043123851570

`∑[A107970(n)]`
-/

namespace A107959.P13522799043123851570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107959.P13522799043123851570

noncomputable section

/-- A107959: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)*(n^2 + 5*n + 5)/720.

Offset 0, canonical program `A107959.P13522799043123851570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107959 (n : ℕ) : ℤ :=
  A107959.P13522799043123851570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108031.P3615489872226532230

`∑{d}[n+1, abs(A061084(#))]`
-/

namespace A108031.P3615489872226532230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A061084 d|

end

end A108031.P3615489872226532230

noncomputable section

/-- A108031: Inverse Moebius transform of Lucas numbers (A000032).

Offset 1, canonical program `A108031.P3615489872226532230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A108031 (n : ℕ) : ℤ :=
  A108031.P3615489872226532230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A108031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108035.P3509439464980621154

`A053602(A131507(n))`
-/

namespace A108035.P3509439464980621154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A131507 n).toNat

end

end A108035.P3509439464980621154

noncomputable section

/-- A108035: Triangle read by rows: n-th row consists of n copies of the n-th nonzero Fibonacci number.

Offset 1, canonical program `A108035.P3509439464980621154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108035 (n : ℕ) : ℤ :=
  A108035.P3509439464980621154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108037.P17027528278419021511

`A053602(A279891(n))`
-/

namespace A108037.P17027528278419021511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A279891 n).toNat

end

end A108037.P17027528278419021511

noncomputable section

/-- A108037: Triangle read by rows: n-th row is n-th nonzero Fibonacci number repeated n+1 times.

Offset 0, canonical program `A108037.P17027528278419021511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108037 (n : ℕ) : ℤ :=
  A108037.P17027528278419021511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108046.P11021715180848033602

`∑{d}[n+1, A000045(#-1)]`
-/

namespace A108046.P11021715180848033602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (d - 1)

end

end A108046.P11021715180848033602

noncomputable section

/-- A108046: Inverse Moebius transform of Fibonacci numbers 0, 1, 1, 2, 3, 5, 8, ...

Offset 1, canonical program `A108046.P11021715180848033602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A108046 (n : ℕ) : ℤ :=
  A108046.P11021715180848033602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A108046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108103.P10097195682817123467

`or(gcd(2, n+1), A096270(floor(n/2)))`
-/

namespace A108103.P10097195682817123467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.gcd 2 (n + 1) : ℤ) (A096270 ⌊(n : ℚ) / 2⌋.toNat)

end

end A108103.P10097195682817123467

noncomputable section

/-- A108103: Fixed point of the square of the morphism: 1->3, 2->1, 3->121, starting with 1.

Offset 1, canonical program `A108103.P10097195682817123467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108103 (n : ℕ) : ℤ :=
  A108103.P10097195682817123467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108167.P8145188214537581929

`∑[n]-A007290(A000196(n)+2)`
-/

namespace A108167.P8145188214537581929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A007290 (A000196 n + 2).toNat

end

end A108167.P8145188214537581929

noncomputable section

/-- A108167: Partial sums of the positive integers n according to the rule: if n is square then subtract sqrt(n) else add n.

Offset 0, canonical program `A108167.P8145188214537581929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108167 (n : ℕ) : ℤ :=
  A108167.P8145188214537581929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108174.P8958809533646394211

`∑[n]-A006331(floor(sqrt(n)))`
-/

namespace A108174.P8958809533646394211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A006331 (Nat.sqrt n)

end

end A108174.P8958809533646394211

noncomputable section

/-- A108174: Partial sums of the positive integers n according to the rule: if n is square then subtract n, otherwise add n.

Offset 0, canonical program `A108174.P8958809533646394211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108174 (n : ℕ) : ℤ :=
  A108174.P8958809533646394211.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108360.P15563532672908890628

`∑[A291142(n+1)-∑[A291142(n)]]`
-/

namespace A108360.P15563532672908890628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291142 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108360.P15563532672908890628

noncomputable section

/-- A108360: Expansion of (1-2x)^2/((1-x)^2(1-2x-x^2)^2).

Offset 0, canonical program `A108360.P15563532672908890628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A108360 (n : ℕ) : ℤ :=
  A108360.P15563532672908890628.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A108360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108520.P1521124145426792481

`A016116(n+1)*A075553(n+1)`
-/

namespace A108520.P1521124145426792481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) * A075553 (n + 1)

end

end A108520.P1521124145426792481

noncomputable section

/-- A108520: Expansion of 1/(1+2*x+2*x^2).

Offset 0, canonical program `A108520.P1521124145426792481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075553, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108520 (n : ℕ) : ℤ :=
  A108520.P1521124145426792481.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075553, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108576.P11044419720950305093

`∑[A108578(n%∑[(n+1)%2]+1)]`
-/

namespace A108576.P11044419720950305093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108578 (n % (∑ j ∈ Finset.range (n + 1), f2 j) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108576.P11044419720950305093

noncomputable section

/-- A108576: Number of 3 X 3 magic squares (with distinct positive entries) having all entries < n.

Offset 1, canonical program `A108576.P11044419720950305093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108576 (n : ℕ) : ℤ :=
  A108576.P11044419720950305093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108582.P7606440210925370142

`A002024(floor(sqrt(n))+1)`
-/

namespace A108582.P7606440210925370142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Nat.sqrt n + 1)

end

end A108582.P7606440210925370142

noncomputable section

/-- A108582: n appears n^3 times.

Offset 1, canonical program `A108582.P7606440210925370142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108582 (n : ℕ) : ℤ :=
  A108582.P7606440210925370142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108585.P15039985952883067938

`∑[A240809(2*(n+1))]`
-/

namespace A108585.P15039985952883067938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240809 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108585.P15039985952883067938

noncomputable section

/-- A108585: a(n) = a(n-1) + 2*A005185(n+1), with a(1) = 2.

Offset 1, canonical program `A108585.P15039985952883067938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A108585 (n : ℕ) : ℤ :=
  A108585.P15039985952883067938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A108585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108588.P7215769571112862849

`A102342(n+6)-9`
-/

namespace A108588.P7215769571112862849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 6) - 9

end

end A108588.P7215769571112862849

noncomputable section

/-- A108588: Numbers k such that 10*k + 97 is prime.

Offset 1, canonical program `A108588.P7215769571112862849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A108588 (n : ℕ) : ℤ :=
  A108588.P7215769571112862849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A108588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108598.P17407371397596913023

`∑[3-Δ[A195122(n)]]`
-/

namespace A108598.P17407371397596913023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108598.P17407371397596913023

noncomputable section

/-- A108598: a(n) = floor(n*((5+sqrt(5))/4)).

Offset 1, canonical program `A108598.P17407371397596913023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108598 (n : ℕ) : ℤ :=
  A108598.P17407371397596913023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108623.P9128770104114728293

`1-∑[A100223(n+1)]`
-/

namespace A108623.P9128770104114728293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108623.P9128770104114728293

noncomputable section

/-- A108623: G.f. satisfies x = A(x)*(1-A(x))/(1-A(x)-(A(x))^2).

Offset 1, canonical program `A108623.P9128770104114728293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A108623 (n : ℕ) : ℤ :=
  A108623.P9128770104114728293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A108623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108626.P8036561101586251315

`∑[A047085(n)]`
-/

namespace A108626.P8036561101586251315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108626.P8036561101586251315

noncomputable section

/-- A108626: Antidiagonal sums of square array A108625, in which row n equals the crystal ball sequence for A_n lattice.

Offset 0, canonical program `A108626.P8036561101586251315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A108626 (n : ℕ) : ℤ :=
  A108626.P8036561101586251315.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A108626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108627.P11293089793975210258

`A354784(2*n+1)+A202012(2*n)+1`
-/

namespace A108627.P11293089793975210258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (2 * n + 1) + (A202012 (2 * n) + 1)

end

end A108627.P11293089793975210258

noncomputable section

/-- A108627: Logarithmic g.f.: Sum_{n>=1} a(n)/n*x^n = log(G108626(x)), where G108626(x) is g.f. for A108626.

Offset 1, canonical program `A108627.P11293089793975210258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A108627 (n : ℕ) : ℤ :=
  A108627.P11293089793975210258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A108627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108680.P13157378904117379808

`∑[A108682(n)]`
-/

namespace A108680.P13157378904117379808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108680.P13157378904117379808

noncomputable section

/-- A108680: Kekulé numbers for certain benzenoids.

Offset 0, canonical program `A108680.P13157378904117379808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108680 (n : ℕ) : ℤ :=
  A108680.P13157378904117379808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108724.P6681805313567510208

`A108187(n+1)-2`
-/

namespace A108724.P6681805313567510208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108187 (n + 1) - 2

end

end A108724.P6681805313567510208

noncomputable section

/-- A108724: Numbers n such that 11*n + 17 is prime.

Offset 1, canonical program `A108724.P6681805313567510208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108724 (n : ℕ) : ℤ :=
  A108724.P6681805313567510208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108726.P17618332896624414764

`A102711(n+2)-2`
-/

namespace A108726.P17618332896624414764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102711 (n + 2) - 2

end

end A108726.P17618332896624414764

noncomputable section

/-- A108726: Numbers n such that 11*n + 29 is prime.

Offset 1, canonical program `A108726.P17618332896624414764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108726 (n : ℕ) : ℤ :=
  A108726.P17618332896624414764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108751.P15721226409477724031

`A106690(n+1)+74`
-/

namespace A108751.P15721226409477724031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106690 (n + 1) + 74

end

end A108751.P15721226409477724031

noncomputable section

/-- A108751: Numbers k such that 11*k - 911 is prime.

Offset 1, canonical program `A108751.P15721226409477724031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108751 (n : ℕ) : ℤ :=
  A108751.P15721226409477724031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108856.P2268540047810434247

`A105042(n+1)+13`
-/

namespace A108856.P2268540047810434247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1) + 13

end

end A108856.P2268540047810434247

noncomputable section

/-- A108856: Numbers k such that 10*k - 131 is prime.

Offset 1, canonical program `A108856.P2268540047810434247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108856 (n : ℕ) : ℤ :=
  A108856.P2268540047810434247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109170.P12375664245295773507

`floor((or(n, n+1)+1)/A010685(n))`
-/

namespace A109170.P12375664245295773507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor n (n + 1) + 1 : ℚ) / (A010685 n : ℚ)⌋

end

end A109170.P12375664245295773507

noncomputable section

/-- A109170: Continued fraction expansion of 2*x which equals the continued fraction of x (A109168) interleaved with positive even numbers.

Offset 1, canonical program `A109170.P12375664245295773507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109170 (n : ℕ) : ℤ :=
  A109170.P12375664245295773507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109188.P2443413669718948693

`Δ[A102839(n)]`
-/

namespace A109188.P2443413669718948693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109188.P2443413669718948693

noncomputable section

/-- A109188: Number of (1,0) steps in all Grand Motzkin paths of length n.

Offset 1, canonical program `A109188.P2443413669718948693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A109188 (n : ℕ) : ℤ :=
  A109188.P2443413669718948693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A109188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109217.P6222269728258825326

`10*a(n-1)+1-A010052(n)` with `a(0)=0`
-/

namespace A109217.P6222269728258825326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + (1 - A010052 n)

end

end A109217.P6222269728258825326

noncomputable section

/-- A109217: a(n) is the binary string of length n+1 that has 0's at indices that are squares and 1's elsewhere, where the most significant digit has index 0.

Offset 0, canonical program `A109217.P6222269728258825326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A109217 (n : ℕ) : ℤ :=
  A109217.P6222269728258825326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A109217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109231.P474354304567041827

`ceil((A059563(n+1)-1)/2)`
-/

namespace A109231.P474354304567041827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059563 (n + 1) - 1 : ℚ) / 2⌉

end

end A109231.P474354304567041827

noncomputable section

/-- A109231: a(n) = floor(n*cosh(1)).

Offset 1, canonical program `A109231.P474354304567041827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109231 (n : ℕ) : ℤ :=
  A109231.P474354304567041827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109453.P3348527290827092913

`∑[A000030(n+1)]`
-/

namespace A109453.P3348527290827092913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109453.P3348527290827092913

noncomputable section

/-- A109453: Cumulative sum of initial digits of n.

Offset 1, canonical program `A109453.P3348527290827092913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109453 (n : ℕ) : ℤ :=
  A109453.P3348527290827092913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109470.P12537663432029271618

`and(∑[A007412(n+1)], -1)`
-/

namespace A109470.P12537663432029271618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A109470.P12537663432029271618

noncomputable section

/-- A109470: Sum of first n noncubes.

Offset 1, canonical program `A109470.P12537663432029271618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109470 (n : ℕ) : ℤ :=
  A109470.P12537663432029271618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109506.P11028972124802489963

`(-1)^n*A046897(n+1)`
-/

namespace A109506.P11028972124802489963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A046897 (n + 1)

end

end A109506.P11028972124802489963

noncomputable section

/-- A109506: Expansion of (1 - phi(-q)^4)/ 8 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A109506.P11028972124802489963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109506 (n : ℕ) : ℤ :=
  A109506.P11028972124802489963.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109506.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109525.P13814706912585357675

`n%2+A021913(n)+A000078(n+2)`
-/

namespace A109525.P13814706912585357675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + (A021913 n + A000078 (n + 2))

end

end A109525.P13814706912585357675

noncomputable section

/-- A109525: Expansion of g.f.: x*(2 - 4*x^3 - 5*x^4 - 3*x^5 - 2*x^6)/((1 - x)*(1 + x)*(1 + x^2)*(1 - x - x^2 - x^3 - x^4)).

Offset 0, canonical program `A109525.P13814706912585357675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A109525 (n : ℕ) : ℤ :=
  A109525.P13814706912585357675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 353 terms. -/
def A109525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109594.P12159731967704815742

`A109588(A064429(n)+1)`
-/

namespace A109594.P12159731967704815742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (A064429 n + 1).toNat

end

end A109594.P12159731967704815742

noncomputable section

/-- A109594: n followed by n^3 followed by n^2.

Offset 1, canonical program `A109594.P12159731967704815742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109594 (n : ℕ) : ℤ :=
  A109594.P12159731967704815742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109607.P12964960874719585389

`A023896(abs(1-n)+1)-1`
-/

namespace A109607.P12964960874719585389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A109607.P12964960874719585389

noncomputable section

/-- A109607: Sum of coprimes of n greater than 1.

Offset 0, canonical program `A109607.P12964960874719585389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109607 (n : ℕ) : ℤ :=
  A109607.P12964960874719585389.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109609.P1159351187097088451

`round(A080239(n+5)/8)`
-/

namespace A109609.P1159351187097088451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A080239 (n + 5) : ℚ) / 8)

end

end A109609.P1159351187097088451

noncomputable section

/-- A109609: Expansion of 1/((x-1)*(x+1)*(x^2+x+1)*(x^2+x-1)*(x^2-x+1)*(x^2+1)*(x^4-x^2+1)).

Offset 0, canonical program `A109609.P1159351187097088451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A109609 (n : ℕ) : ℤ :=
  A109609.P1159351187097088451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A109609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109634.P4631575809494686795

`∑[(n+1)/2*A002605(n)]`
-/

namespace A109634.P4631575809494686795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A002605 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109634.P4631575809494686795

noncomputable section

/-- A109634: Number of 1's that appear among all ternary strings of length n that contain no consecutive 1's.

Offset 0, canonical program `A109634.P4631575809494686795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A109634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109634.P4631575809494686795.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A109634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109652.P646909924150016559

`A000040(floor(ϕ*(n+1)))`
-/

namespace A109652.P646909924150016559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

end

end A109652.P646909924150016559

noncomputable section

/-- A109652: a(n) = prime(A000201(n)).

Offset 1, canonical program `A109652.P646909924150016559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A109652 (n : ℕ) : ℤ :=
  A109652.P646909924150016559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A109652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109768.P2649727777907042333

`A176260(A106108(n+2)+A027656(n))`
-/

namespace A109768.P2649727777907042333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176260 (A106108 (n + 2) + A027656 n).toNat

end

end A109768.P2649727777907042333

noncomputable section

/-- A109768: a(n) = gcd(3^n-2,2^n-3).

Offset 1, canonical program `A109768.P2649727777907042333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3777 terms. -/
def A109768 (n : ℕ) : ℤ :=
  A109768.P2649727777907042333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3777 terms. -/
def A109768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109815.P17504753605678059150

`A008620(n)^(A102283(n)+2)`
-/

namespace A109815.P17504753605678059150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 n : ℚ) ^ (A102283 n + 2 : ℤ)

end

end A109815.P17504753605678059150

noncomputable section

/-- A109815: n^2 followed by n^3 followed by n.

Offset 1, canonical program `A109815.P17504753605678059150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109815 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109815.P17504753605678059150.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109834.P6817855908879848063

`∏[A000030(n+1)]`
-/

namespace A109834.P6817855908879848063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109834.P6817855908879848063

noncomputable section

/-- A109834: Startorial numbers: product of initial digits of integers 1 through n.

Offset 1, canonical program `A109834.P6817855908879848063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A109834 (n : ℕ) : ℤ :=
  A109834.P6817855908879848063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A109834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109849.P8305553994812616947

`lcm(n+1, a(A004755(n)%n))` with `a(0)=1`
-/

namespace A109849.P8305553994812616947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (n + 1) (a (Int.tmod (A004755 n) (n : ℤ)).toNat)

end

end A109849.P8305553994812616947

noncomputable section

/-- A109849: a(1) = 1, a(2) = 2; a(n) = lcm(n, a(n-2)), a(n+1) = lcm((n+1), a(n-3)) and so on until a(2n-1) = lcm(2n-1, a(1)). Then a(2n) = lcm(2n, a(2n-2)) and so on.

Offset 1, canonical program `A109849.P8305553994812616947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A109849 (n : ℕ) : ℤ :=
  (A109849.P8305553994812616947.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A109849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109975.P6480111214704536251

`record[A034007(n)]`
-/

namespace A109975.P6480111214704536251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109975.P6480111214704536251

noncomputable section

/-- A109975: Second differences of A045623, prefixed by an initial 1.

Offset 0, canonical program `A109975.P6480111214704536251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A109975 (n : ℕ) : ℤ :=
  A109975.P6480111214704536251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A109975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110001.P16280007747613036978

`A008621(n)^(and(3, n)+1)`
-/

namespace A110001.P16280007747613036978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n ^ (Nat.land 3 n + 1)

end

end A110001.P16280007747613036978

noncomputable section

/-- A110001: n followed by n^2 followed by n^3 followed by n^4.

Offset 1, canonical program `A110001.P16280007747613036978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110001 (n : ℕ) : ℤ :=
  A110001.P16280007747613036978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110037.P11994965284015990983

`(-A088567(n)%2)^C(n, 2)`
-/

namespace A110037.P11994965284015990983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-Int.tmod (A088567 n) 2) ^ Nat.choose n 2

end

end A110037.P11994965284015990983

noncomputable section

/-- A110037: Signed version of A090678 and congruent to A088567 mod 2.

Offset 0, canonical program `A110037.P11994965284015990983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110037 (n : ℕ) : ℤ :=
  A110037.P11994965284015990983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110199.P14169950119371139962

`A014137(floor(n/2))`
-/

namespace A110199.P14169950119371139962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 ⌊(n : ℚ) / 2⌋.toNat

end

end A110199.P14169950119371139962

noncomputable section

/-- A110199: a(n) = Sum_{k=0..floor(n/2)} Catalan(k).

Offset 0, canonical program `A110199.P14169950119371139962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A110199 (n : ℕ) : ℤ :=
  A110199.P14169950119371139962.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A110199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110210.P3649676558639193553

`∑[A033999(n+1)*A094433(n+1)]`
-/

namespace A110210.P3649676558639193553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A094433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110210.P3649676558639193553

noncomputable section

/-- A110210: a(n+3) = 6*a(n) - 5*a(n+2), a(0) = -1, a(1) = 1, a(2) = -5.

Offset 0, canonical program `A110210.P3649676558639193553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A110210 (n : ℕ) : ℤ :=
  A110210.P3649676558639193553.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A110210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110211.P2344330517744322074

`-∑[A033999(n)*A086405(n)]`
-/

namespace A110211.P2344330517744322074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A086405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110211.P2344330517744322074

noncomputable section

/-- A110211: a(n+3) = 6*a(n) - 5*a(n+2), a(0) = -1, a(1) = 3, a(2) = -15.

Offset 0, canonical program `A110211.P2344330517744322074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A110211 (n : ℕ) : ℤ :=
  A110211.P2344330517744322074.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A110211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110213.P12758922269275891489

`∑[A033999(n)*A276265(n)]`
-/

namespace A110213.P12758922269275891489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A276265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110213.P12758922269275891489

noncomputable section

/-- A110213: a(n+3) = 6*a(n) - 5*a(n+2), a(0) = 1, a(1) = -7, a(2) = 35.

Offset 0, canonical program `A110213.P12758922269275891489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A110213 (n : ℕ) : ℤ :=
  A110213.P12758922269275891489.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A110213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110254.P9092773517580308089

`lcm(n, A023896(record[A124625(n)]))+1`
-/

namespace A110254.P9092773517580308089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A023896 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) + 1

end

end A110254.P9092773517580308089

noncomputable section

/-- A110254: Square-indexed values of A110243.

Offset 0, canonical program `A110254.P9092773517580308089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. -/
def A110254 (n : ℕ) : ℤ :=
  (A110254.P9092773517580308089.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 935 terms. -/
def A110254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110388.P11303662736327610985

`A001654(n+1)%9`
-/

namespace A110388.P11303662736327610985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001654 (n + 1)) 9

end

end A110388.P11303662736327610985

noncomputable section

/-- A110388: a(n) = F(n)*F(n+1) mod 9, where F(n) = n-th Fibonacci number.

Offset 1, canonical program `A110388.P11303662736327610985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A110388 (n : ℕ) : ℤ :=
  A110388.P11303662736327610985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A110388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110390.P10483059375321568774

`A020695(n+4)%∑{digits}[A020695(n+4), #]`
-/

namespace A110390.P10483059375321568774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020695 (n + 4)) ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A110390.P10483059375321568774

noncomputable section

/-- A110390: a(n) = F(n) mod s(n) where s(n) is the sum of the digits of the n-th Fibonacci number F(n).

Offset 7, canonical program `A110390.P10483059375321568774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A110390 (n : ℕ) : ℤ :=
  A110390.P10483059375321568774.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A110390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110412.P8100209294395193234

`∑{d}[n+1, A032741(n+1-#%(n+1))]`
-/

namespace A110412.P8100209294395193234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 (n + 1 - d % (n + 1))

end

end A110412.P8100209294395193234

noncomputable section

/-- A110412: Sum_{d

Offset 1, canonical program `A110412.P8100209294395193234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110412 (n : ℕ) : ℤ :=
  A110412.P8100209294395193234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110477.P8420225142418887401

`A000040(n+1)*∑[n+1]-∑[(n+1)²]`
-/

namespace A110477.P8420225142418887401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A110477.P8420225142418887401

noncomputable section

/-- A110477: a(n) = Sum_{k=1..n} k*(prime(k) - k).

Offset 1, canonical program `A110477.P8420225142418887401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110477 (n : ℕ) : ℤ :=
  A110477.P8420225142418887401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110513.P15568398655367443659

`A033999(n)*A052980(n)`
-/

namespace A110513.P15568398655367443659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A052980 n

end

end A110513.P15568398655367443659

noncomputable section

/-- A110513: Expansion of (1 + x)/(1 + 2x + x^3).

Offset 0, canonical program `A110513.P15568398655367443659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A110513 (n : ℕ) : ℤ :=
  A110513.P15568398655367443659.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A110513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110526.P11505210651505819374

`floor(A232970(n)/2)`
-/

namespace A110526.P11505210651505819374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A232970 n : ℚ) / 2⌋

end

end A110526.P11505210651505819374

noncomputable section

/-- A110526: a(n+3) = 3*a(n+2) + 5*a(n+1) + a(n), a(0) = 0, a(1) = 1, a(2) = 3.

Offset 0, canonical program `A110526.P11505210651505819374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A110526 (n : ℕ) : ℤ :=
  A110526.P11505210651505819374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A110526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110547.P8289138240859309376

`lt[18, A106621(lcm(9, n))]`
-/

namespace A110547.P8289138240859309376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (Nat.lcm 9 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110547.P8289138240859309376

noncomputable section

/-- A110547: Number of sides of regular polygons whose interior angles (in degrees) are not integers.

Offset 1, canonical program `A110547.P8289138240859309376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1087 terms. -/
def A110547 (n : ℕ) : ℤ :=
  (A110547.P8289138240859309376.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1087 terms. -/
def A110547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110549.P14919985307104375088

`1+A105198(n)`
-/

namespace A110549.P14919985307104375088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A105198 n

end

end A110549.P14919985307104375088

noncomputable section

/-- A110549: Period 8: repeat [1, 2, 4, 3, 3, 4, 2, 1].

Offset 0, canonical program `A110549.P14919985307104375088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110549 (n : ℕ) : ℤ :=
  A110549.P14919985307104375088.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105198, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110560.P3912990218243023519

`A090585(A131055(n+1))`
-/

namespace A110560.P3912990218243023519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090585 (A131055 (n + 1)).toNat

end

end A110560.P3912990218243023519

noncomputable section

/-- A110560: Numerators of T(n+1)/n! reduced to lowest terms, where T(n) are the triangular numbers A000217.

Offset 0, canonical program `A110560.P3912990218243023519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110560 (n : ℕ) : ℤ :=
  A110560.P3912990218243023519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110613.P13217836540761452184

`Δ[A124303(n)-a(n-1)]` with `a(0)=0`
-/

namespace A110613.P13217836540761452184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A124303 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110613.P13217836540761452184

noncomputable section

/-- A110613: a(n+3) = 5*a(n+2) - 2*a(n+1) - 8*a(n), a(0) = 1, a(1) = 0, a(2) = 3.

Offset 0, canonical program `A110613.P13217836540761452184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A110613 (n : ℕ) : ℤ :=
  A110613.P13217836540761452184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A110613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110670.P4000988478831837358

`∑[A110669(n)]`
-/

namespace A110670.P4000988478831837358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110670.P4000988478831837358

noncomputable section

/-- A110670: Sequence is {a(5,n)}, where a(m,n) is defined at sequence A110665.

Offset 0, canonical program `A110670.P4000988478831837358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110670 (n : ℕ) : ℤ :=
  A110670.P4000988478831837358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110801.P10495732041269564719

`floor(∩[A002313(n+1), A017533(n)]/12)`
-/

namespace A110801.P10495732041269564719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 12⌋

end

end A110801.P10495732041269564719

noncomputable section

/-- A110801: Numbers k such that 12k + 1 is prime.

Offset 1, canonical program `A110801.P10495732041269564719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2793 terms. -/
def A110801 (n : ℕ) : ℤ :=
  A110801.P10495732041269564719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2793 terms. -/
def A110801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110805.P11855113545855583108

`∑{digits}[n+1, #*A055642(n+1)]`
-/

namespace A110805.P11855113545855583108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) * A055642 (n + 1)).sum

end

end A110805.P11855113545855583108

noncomputable section

/-- A110805: Sum of digits of n times number of digits of n.

Offset 1, canonical program `A110805.P11855113545855583108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110805 (n : ℕ) : ℤ :=
  A110805.P11855113545855583108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110923.P9641699143134640492

`A000040(n+1)%(4/(1/5)²)`
-/

namespace A110923.P9641699143134640492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (SequenceMachineLib.roundAway (4 / ((1 : ℚ) / 5) ^ 2))

end

end A110923.P9641699143134640492

noncomputable section

/-- A110923: Final two digits of prime(n), with leading zero omitted.

Offset 1, canonical program `A110923.P9641699143134640492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110923 (n : ℕ) : ℤ :=
  A110923.P9641699143134640492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111025.P4862041035301823537

`Δ[A048763(10*n)]%6`
-/

namespace A111025.P4862041035301823537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A111025.P4862041035301823537

noncomputable section

/-- A111025: Number of cubes between 10n and 10n+9 (inclusive).

Offset 0, canonical program `A111025.P4862041035301823537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A111025 (n : ℕ) : ℤ :=
  A111025.P4862041035301823537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A111025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111075.P8801867717305907114

`∑{d}[n+1, A000045(n+1)/A000045(#)]`
-/

namespace A111075.P8801867717305907114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000045 (n + 1) : ℚ) / (A000045 d : ℚ)

end

end A111075.P8801867717305907114

noncomputable section

/-- A111075: a(n) = F(n) * Sum_{k|n} 1/F(k), where F(k) is the k-th Fibonacci number.

Offset 1, canonical program `A111075.P8801867717305907114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A111075 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A111075.P8801867717305907114.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A111075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111094.P17054907925859865419

`floor(A061237(n+1)/18)`
-/

namespace A111094.P17054907925859865419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061237 (n + 1) : ℚ) / 18⌋

end

end A111094.P17054907925859865419

noncomputable section

/-- A111094: Numbers k such that 18*k + 1 is prime.

Offset 1, canonical program `A111094.P17054907925859865419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111094 (n : ℕ) : ℤ :=
  A111094.P17054907925859865419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111223.P4485146468064268820

`floor(A045380(n+1)/5)`
-/

namespace A111223.P4485146468064268820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045380 (n + 1) : ℚ) / 5⌋

end

end A111223.P4485146468064268820

noncomputable section

/-- A111223: Numbers n such that 5*n + 2 is prime.

Offset 1, canonical program `A111223.P4485146468064268820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111223 (n : ℕ) : ℤ :=
  A111223.P4485146468064268820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111224.P3130398945095072566

`2*A102342(n+1)`
-/

namespace A111224.P3130398945095072566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102342 (n + 1)

end

end A111224.P3130398945095072566

noncomputable section

/-- A111224: Numbers n such that 5*n + 7 is prime.

Offset 1, canonical program `A111224.P3130398945095072566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111224 (n : ℕ) : ℤ :=
  A111224.P3130398945095072566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111230.P12790612550037976015

`2*A105042(n+1)-3`
-/

namespace A111230.P12790612550037976015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105042 (n + 1) - 3

end

end A111230.P12790612550037976015

noncomputable section

/-- A111230: Numbers k such that 5*k + 14 is prime.

Offset 1, canonical program `A111230.P12790612550037976015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111230 (n : ℕ) : ℤ :=
  A111230.P12790612550037976015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111309.P9636718998780668294

`abs(∑{digits}[A000040(n+1), #*(-1)^#])`
-/

namespace A111309.P9636718998780668294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) * (-1) ^ x).sum|

end

end A111309.P9636718998780668294

noncomputable section

/-- A111309: Absolute difference between the sum of the odd digits and the sum of the even digits of the n-th prime.

Offset 1, canonical program `A111309.P9636718998780668294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111309 (n : ℕ) : ℤ :=
  A111309.P9636718998780668294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111312.P7205974306783462108

`A106690(n+1)-9`
-/

namespace A111312.P7205974306783462108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106690 (n + 1) - 9

end

end A111312.P7205974306783462108

noncomputable section

/-- A111312: Numbers n such that 11*n + 2 is prime.

Offset 1, canonical program `A111312.P7205974306783462108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111312 (n : ℕ) : ℤ :=
  A111312.P7205974306783462108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111385.P14884277287133215483

`∑[A050407(n)-A050407(A110654(n))]`
-/

namespace A111385.P14884277287133215483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n - A050407 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111385.P14884277287133215483

noncomputable section

/-- A111385: a(n) = binomial(n,4) - binomial(floor(n/2),4) - binomial(ceiling(n/2),4).

Offset 0, canonical program `A111385.P14884277287133215483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111385 (n : ℕ) : ℤ :=
  A111385.P14884277287133215483.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111408.P2533623690227406188

`A051027(n+1)-∑{d}[∑{d}[n, #], #]`
-/

namespace A111408.P2533623690227406188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A111408.P2533623690227406188

noncomputable section

/-- A111408: f(f(n+1))-f(f(n)), where f(0)=0, and for m>0, f(m) = sigma(m) = A000203(m).

Offset 0, canonical program `A111408.P2533623690227406188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111408 (n : ℕ) : ℤ :=
  A111408.P2533623690227406188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111466.P4078905407378025872

`∑[(2-gcd(n+2, n-1))*A000045(n+1)]`
-/

namespace A111466.P4078905407378025872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1) : ℤ)) * A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111466.P4078905407378025872

noncomputable section

/-- A111466: a(1) = 1, a(n+1) = a(n) - F(n+1), if F(n+1) <= a(n), else a(n+1) = a(n) + F(n+1). F(n) is the n-th Fibonacci number (A000045).

Offset 1, canonical program `A111466.P4078905407378025872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A111466 (n : ℕ) : ℤ :=
  A111466.P4078905407378025872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A111466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111656.P15593076391265150402

`A000040(A111654(n+1))`
-/

namespace A111656.P15593076391265150402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A111654 (n + 1)).toNat

end

end A111656.P15593076391265150402

noncomputable section

/-- A111656: n-th prime appears n-th composite number times.

Offset 1, canonical program `A111656.P15593076391265150402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111656 (n : ℕ) : ℤ :=
  A111656.P15593076391265150402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111700.P2892397724252149663

`A085599(Δ[A000040(n+1)])`
-/

namespace A111700.P2892397724252149663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085599 (f1 (n + 1) - f1 n).toNat

end

end A111700.P2892397724252149663

noncomputable section

/-- A111700: Number of integers between p(n) and p(n+1) which are coprime to (p(n+1)-p(n)), where p(n) is the n-th prime.

Offset 1, canonical program `A111700.P2892397724252149663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A111700 (n : ℕ) : ℤ :=
  A111700.P2892397724252149663.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A111700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111734.P12314175265102162575

`Δ[A112469(n)+A106511(n)]`
-/

namespace A111734.P12314175265102162575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 n + A106511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111734.P12314175265102162575

noncomputable section

/-- A111734: Expansion of (1-x)*(2*x^2+2*x+1) / ((x^2-x-1)*(x^2+x+1)).

Offset 1, canonical program `A111734.P12314175265102162575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A111734 (n : ℕ) : ℤ :=
  A111734.P12314175265102162575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A111734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111775.P14958011218348248884

`floor(A070824(n+1)/(val(n+1, 2)+1))`
-/

namespace A111775.P14958011218348248884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070824 (n + 1) : ℚ) / (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ)⌋

end

end A111775.P14958011218348248884

noncomputable section

/-- A111775: Number of ways n can be written as a sum of at least three consecutive integers.

Offset 1, canonical program `A111775.P14958011218348248884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111775 (n : ℕ) : ℤ :=
  A111775.P14958011218348248884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111851.P6379286893962933652

`∑[char[eq[1, A023961(n+1)]]]`
-/

namespace A111851.P6379286893962933652
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111851.P6379286893962933652

noncomputable section

/-- A111851: Number of numbers m <= n such that 1 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111851.P6379286893962933652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111851 (n : ℕ) : ℤ :=
  (A111851.P6379286893962933652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111852.P16125321229967938784

`∑[char[eq[2, A023961(n+1)]]]`
-/

namespace A111852.P16125321229967938784
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111852.P16125321229967938784

noncomputable section

/-- A111852: Number of numbers m <= n such that 2 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111852.P16125321229967938784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111852 (n : ℕ) : ℤ :=
  (A111852.P16125321229967938784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111853.P1744786022427487095

`∑[char[eq[3, A023961(n+1)]]]`
-/

namespace A111853.P1744786022427487095
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111853.P1744786022427487095

noncomputable section

/-- A111853: Number of numbers m <= n such that 3 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111853.P1744786022427487095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111853 (n : ℕ) : ℤ :=
  (A111853.P1744786022427487095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111856.P3255611336082219841

`∑[val(A023961(Δ[n²]-n)+1, 7)]`
-/

namespace A111856.P3255611336082219841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023961 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat + 1).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111856.P3255611336082219841

noncomputable section

/-- A111856: Number of numbers m <= n such that 6 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111856.P3255611336082219841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111856 (n : ℕ) : ℤ :=
  (A111856.P3255611336082219841.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111858.P11714212007858520479

`∑[char[eq[8, A023961(n+1)]]]`
-/

namespace A111858.P11714212007858520479
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111858.P11714212007858520479

noncomputable section

/-- A111858: Number of numbers m <= n such that 8 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111858.P11714212007858520479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111858 (n : ℕ) : ℤ :=
  (A111858.P11714212007858520479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111859.P11523082048664198437

`∑[C(A023961(n+1), 9)]`
-/

namespace A111859.P11523082048664198437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023961 (n + 1)).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111859.P11523082048664198437

noncomputable section

/-- A111859: Number of numbers m <= n such that 9 equals the first digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111859.P11523082048664198437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111859 (n : ℕ) : ℤ :=
  (A111859.P11523082048664198437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111862.P16889340879789303359

`A023961(10*10*(n+1))`
-/

namespace A111862.P16889340879789303359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (10 * (10 * (n + 1)))

end

end A111862.P16889340879789303359

noncomputable section

/-- A111862: Second digit after decimal point of square root of n in decimal representation.

Offset 1, canonical program `A111862.P16889340879789303359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A111862 (n : ℕ) : ℤ :=
  A111862.P16889340879789303359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A111862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111882.P12209817337723100160

`A001464(n)²`
-/

namespace A111882.P12209817337723100160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001464 n ^ 2

end

end A111882.P12209817337723100160

noncomputable section

/-- A111882: Row sums of triangle A111595 (normalized rescaled squared Hermite polynomials).

Offset 0, canonical program `A111882.P12209817337723100160`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111882 (n : ℕ) : ℤ :=
  A111882.P12209817337723100160.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111926.P17207668477546160759

`A131708(n)-n`
-/

namespace A111926.P17207668477546160759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n - (n : ℤ)

end

end A111926.P17207668477546160759

noncomputable section

/-- A111926: Expansion of x^4/((1-2*x)*(x^2-x+1)*(x-1)^2).

Offset 0, canonical program `A111926.P17207668477546160759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A111926 (n : ℕ) : ℤ :=
  A111926.P17207668477546160759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A111926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111932.P8397638407762564101

`∑{d}[n+1, #*A117188((n+1)/#-1)]`
-/

namespace A111932.P8397638407762564101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A117188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A111932.P8397638407762564101

noncomputable section

/-- A111932: Expansion of q * (psi(q) * psi(q^3))^2 in powers of q where psi() is a Ramanujan theta function.

Offset 1, canonical program `A111932.P8397638407762564101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111932 (n : ℕ) : ℤ :=
  A111932.P8397638407762564101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111990.P1711683096646036050

`2^n*A119852(n+3)`
-/

namespace A111990.P1711683096646036050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A119852 (n + 3)

end

end A111990.P1711683096646036050

noncomputable section

/-- A111990: Convolution of A111989 with itself.

Offset 0, canonical program `A111990.P1711683096646036050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A111990 (n : ℕ) : ℤ :=
  A111990.P1711683096646036050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A111990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112045.P4691997246529510817

`A028391(A000040(n+1))`
-/

namespace A112045.P4691997246529510817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A000040 (n + 1)).toNat

end

end A112045.P4691997246529510817

noncomputable section

/-- A112045: Positions of primes (A000040) among nonsquares A000037.

Offset 1, canonical program `A112045.P4691997246529510817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112045 (n : ℕ) : ℤ :=
  A112045.P4691997246529510817.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112045.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112249.P1816405693271131223

`eq[a(n-1)+1, lcm(n, 1-A070939(n))]` with `a(0)=1, a(1)=1`
-/

namespace A112249.P1816405693271131223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - A070939 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112249.P1816405693271131223

noncomputable section

/-- A112249: Numbers m such that m mod floor(log_2(m)) = 0.

Offset 1, canonical program `A112249.P1816405693271131223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 903 terms. -/
def A112249 (n : ℕ) : ℤ :=
  (A112249.P1816405693271131223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 903 terms. -/
def A112249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112250.P13827447425674520046

`A009056(lt[0, (n+2)%floor(log2(n+2))])`
-/

namespace A112250.P13827447425674520046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % Nat.log 2 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A112250.P13827447425674520046

noncomputable section

/-- A112250: Numbers m such that m mod floor(log_2(m)) > 0.

Offset 1, canonical program `A112250.P13827447425674520046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9098 terms. -/
def A112250 (n : ℕ) : ℤ :=
  A112250.P13827447425674520046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9098 terms. -/
def A112250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112259.P15048791681661884961

`A112260(n+1)²*A335840(n+1)`
-/

namespace A112259.P15048791681661884961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112260 (n + 1) ^ 2 * A335840 (n + 1)

end

end A112259.P15048791681661884961

noncomputable section

/-- A112259: Expansion of x*(1+8*x)/((1-8*x)*(1+11*x+64*x^2)).

Offset 1, canonical program `A112259.P15048791681661884961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A112259 (n : ℕ) : ℤ :=
  A112259.P15048791681661884961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A112259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112279.P17420047865284397606

`A000040(and(a(n-1)%50, a(n-1)))` with `a(0)=1`
-/

namespace A112279.P17420047865284397606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Int.land (Int.tmod (a (n - 1)) 50) (a (n - 1))).toNat

end

end A112279.P17420047865284397606

noncomputable section

/-- A112279: a(1)=1; a(n)=prime(mod(a(n-1),100)).

Offset 1, canonical program `A112279.P17420047865284397606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112279 (n : ℕ) : ℤ :=
  A112279.P17420047865284397606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112403.P15024895408612493886

`A000580(n+7)*A087204(n+1)`
-/

namespace A112403.P15024895408612493886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A087204 (n + 1)

end

end A112403.P15024895408612493886

noncomputable section

/-- A112403: G.f.: (1-16*x+28*x^2+56*x^3-140*x^4+56*x^5+28*x^6-16*x^7+x^8)/(x^2-x+1)^8.

Offset 0, canonical program `A112403.P15024895408612493886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A112403 (n : ℕ) : ℤ :=
  A112403.P15024895408612493886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A112403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112416.P18301865782257136029

`floor(p?[n%3+n]/A003188(p?[n%3+n]))`
-/

namespace A112416.P18301865782257136029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / (A003188 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) : ℚ)⌋

end

end A112416.P18301865782257136029

noncomputable section

/-- A112416: Next-to-most-significant binary digit of the n-th prime.

Offset 1, canonical program `A112416.P18301865782257136029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A112416 (n : ℕ) : ℤ :=
  A112416.P18301865782257136029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A112416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112461.P11124848281320804814

`∑[(n+5)*A000581(n+8)]`
-/

namespace A112461.P11124848281320804814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112461.P11124848281320804814

noncomputable section

/-- A112461: Absolute value of coefficient of term [x^(n-5)] in characteristic polynomial of maximum matrix A of size n X n, where n >= 5. Maximum matrix A(i,j) is MAX(i,j), where indices i and j run from 1 to n.

Offset 5, canonical program `A112461.P11124848281320804814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112461 (n : ℕ) : ℤ :=
  A112461.P11124848281320804814.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112464.P5635973965075633800

`∑[(n+8)*A010967(n)]`
-/

namespace A112464.P5635973965075633800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 8 : ℤ) * A010967 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112464.P5635973965075633800

noncomputable section

/-- A112464: Absolute value of coefficient of term [x^(n-8)] in characteristic polynomial of maximum matrix A of size n X n, where n >= 8. Maximum matrix A(i,j) is MAX(i,j), where indices i and j run from 1 to n.

Offset 8, canonical program `A112464.P5635973965075633800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112464 (n : ℕ) : ℤ :=
  A112464.P5635973965075633800.a (n - 8)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112502.P14853169081115967169

`∑[∑[∑[A066810(n+2)]]]`
-/

namespace A112502.P14853169081115967169
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066810 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112502.P14853169081115967169

noncomputable section

/-- A112502: Third column of triangle A112500.

Offset 0, canonical program `A112502.P14853169081115967169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A112502 (n : ℕ) : ℤ :=
  A112502.P14853169081115967169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A112502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112523.P6535100202666777397

`(1-A033138(n+1))*A087960(n)`
-/

namespace A112523.P6535100202666777397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A033138 (n + 1)) * A087960 n

end

end A112523.P6535100202666777397

noncomputable section

/-- A112523: Expansion of x*(1+3*x-4*x^2-5*x^3-4*x^6+4*x^5+3*x^4) / ((1+4*x^2)*(1+x^2)*(1-x^2+x^4)).

Offset 0, canonical program `A112523.P6535100202666777397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A112523 (n : ℕ) : ℤ :=
  A112523.P6535100202666777397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A112523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112575.P12568196279514189982

`A100048(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A112575.P12568196279514189982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A100048 n + a (n - 2)

end

end A112575.P12568196279514189982

noncomputable section

/-- A112575: Chebyshev transform of the second kind of the Pell numbers.

Offset 0, canonical program `A112575.P12568196279514189982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A112575 (n : ℕ) : ℤ :=
  A112575.P12568196279514189982.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. -/
def A112575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112712.P9166218734312221038

`∑[1-and(2, n)-A099443(3*n+1)]`
-/

namespace A112712.P9166218734312221038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ) - A099443 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112712.P9166218734312221038

noncomputable section

/-- A112712: Expansion of x/(1 - x + 2*x^2 - 2*x^3 + 2*x^4 - x^5 + x^6).

Offset 0, canonical program `A112712.P9166218734312221038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A112712 (n : ℕ) : ℤ :=
  A112712.P9166218734312221038.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A112712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112774.P17976456391943950983

`2*A003627(n+1)`
-/

namespace A112774.P17976456391943950983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003627 (n + 1)

end

end A112774.P17976456391943950983

noncomputable section

/-- A112774: Semiprimes of the form 6n+4.

Offset 1, canonical program `A112774.P17976456391943950983`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112774 (n : ℕ) : ℤ :=
  A112774.P17976456391943950983.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112774.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112848.P9414413279454382001

`∑{d}[n+1, A049347(#-1)*A117188((n+1)/#-1)]`
-/

namespace A112848.P9414413279454382001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049347 (d - 1) * A117188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A112848.P9414413279454382001

noncomputable section

/-- A112848: Expansion of eta(q)*eta(q^2)*eta(q^18)^2/(eta(q^6)*eta(q^9)) in powers of q.

Offset 1, canonical program `A112848.P9414413279454382001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112848 (n : ℕ) : ℤ :=
  A112848.P9414413279454382001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112987.P11133508842565046312

`A000079(A000079(n)%(abs(1-n)+1))`
-/

namespace A112987.P11133508842565046312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.tmod (A000079 n) (|1 - (n : ℤ)| + 1)).toNat

end

end A112987.P11133508842565046312

noncomputable section

/-- A112987: a(n) = 2^(2^n mod n) for n > 0; a(0) = 2.

Offset 0, canonical program `A112987.P11133508842565046312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A112987 (n : ℕ) : ℤ :=
  A112987.P11133508842565046312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A112987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113018.P1459564956732011392

`A010888(n)^A055642(n)`
-/

namespace A113018.P1459564956732011392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010888 n : ℚ) ^ (A055642 n : ℤ)

end

end A113018.P1459564956732011392

noncomputable section

/-- A113018: {Digital root of n} raised to the power {number of digits of n}.

Offset 0, canonical program `A113018.P1459564956732011392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113018 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113018.P1459564956732011392.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113018.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113019.P17489053355663883129

`A055642(n)^A010888(n)`
-/

namespace A113019.P17489053355663883129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055642 n : ℚ) ^ (A010888 n : ℤ)

end

end A113019.P17489053355663883129

noncomputable section

/-- A113019: (Number of digits of n) raised to the power of (the digital root of n).

Offset 0, canonical program `A113019.P17489053355663883129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113019 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113019.P17489053355663883129.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113019.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113061.P11150295760055610552

`∑{d}[n+1, #*A010057(#)]`
-/

namespace A113061.P11150295760055610552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010057 d

end

end A113061.P11150295760055610552

noncomputable section

/-- A113061: Sum of cube divisors of n.

Offset 1, canonical program `A113061.P11150295760055610552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113061 (n : ℕ) : ℤ :=
  A113061.P11150295760055610552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113066.P13612942405928097668

`(-1)^n*∑[A109961(n)]`
-/

namespace A113066.P13612942405928097668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113066.P13612942405928097668

noncomputable section

/-- A113066: Expansion of (1 + x)^2/((1 + x + x^2)*(1 + 3*x + x^2)).

Offset 0, canonical program `A113066.P13612942405928097668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A113066 (n : ℕ) : ℤ :=
  A113066.P13612942405928097668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A113066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113067.P17358365710722140311

`(-1)^n*A290890(n)`
-/

namespace A113067.P17358365710722140311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A290890 n

end

end A113067.P17358365710722140311

noncomputable section

/-- A113067: Expansion of -x/((x^2+x+1)*(x^2+3*x+1)); invert transform gives signed version of tetrahedral numbers A000292.

Offset 0, canonical program `A113067.P17358365710722140311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A113067 (n : ℕ) : ℤ :=
  A113067.P17358365710722140311.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A113067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113176.P13024036530350340049

`∏{p}[n+1, A000045(#)]`
-/

namespace A113176.P13024036530350340049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000045 p

end

end A113176.P13024036530350340049

noncomputable section

/-- A113176: Product_{p|n} F(p), where F(p) is the p-th Fibonacci number and where the product is over the distinct prime divisors of n.

Offset 1, canonical program `A113176.P13024036530350340049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113176 (n : ℕ) : ℤ :=
  A113176.P13024036530350340049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113177.P7455112070587647153

`∑{p}[n+1, val(n+1, #)*A000045(#)]`
-/

namespace A113177.P7455112070587647153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p : ℤ) * A000045 p

end

end A113177.P7455112070587647153

noncomputable section

/-- A113177: Fully additive with a(p) = Fibonacci(p); If, for p prime, p^(m_{n,p}) is the highest power of p dividing n with m>=0, then a(n) = Sum_{p prime} F(p)*(m_{n,p}), where F(p) = p-th Fibonacci number.

Offset 1, canonical program `A113177.P7455112070587647153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113177 (n : ℕ) : ℤ :=
  A113177.P7455112070587647153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113178.P11479393303320467576

`∑{p}[n+1, A000045(#)]`
-/

namespace A113178.P11479393303320467576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000045 p

end

end A113178.P11479393303320467576

noncomputable section

/-- A113178: a(n) = Sum_{p|n} F(p), where F(p) is the p-th Fibonacci number and where the sum is over the distinct prime divisors of n.

Offset 1, canonical program `A113178.P11479393303320467576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113178 (n : ℕ) : ℤ :=
  A113178.P11479393303320467576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113195.P16463248062575638555

`∏{p}[n+1, A000045(#^val(n+1, #))]`
-/

namespace A113195.P16463248062575638555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000045 (p ^ SequenceMachineLib.valuation (n + 1) p)

end

end A113195.P16463248062575638555

noncomputable section

/-- A113195: a(n) = Product_{p primes} F(p^(m_{n,p})), where p^(m_{n,p}) is highest power of p dividing n, m = nonnegative integer and F(k) is the k-th Fibonacci number.

Offset 1, canonical program `A113195.P16463248062575638555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113195 (n : ℕ) : ℤ :=
  A113195.P16463248062575638555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113215.P12781133178255026095

`∑[∏{e}[n, A027656(#)]]-1`
-/

namespace A113215.P12781133178255026095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A027656 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A113215.P12781133178255026095

noncomputable section

/-- A113215: Repeat A006218(n) 2n+1 times.

Offset 0, canonical program `A113215.P12781133178255026095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113215 (n : ℕ) : ℤ :=
  A113215.P12781133178255026095.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113222.P11804118331044823861

`∑{p}[n+1, A000045(#^val(n+1, #))]`
-/

namespace A113222.P11804118331044823861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000045 (p ^ SequenceMachineLib.valuation (n + 1) p)

end

end A113222.P11804118331044823861

noncomputable section

/-- A113222: a(n) = Sum_{p^e | n} F(p^e), where each p^e is the highest power of prime p dividing n (with e > 0), and F(k) is the k-th Fibonacci number.

Offset 1, canonical program `A113222.P11804118331044823861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113222 (n : ℕ) : ℤ :=
  A113222.P11804118331044823861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A113222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113282.P12522905124999059652

`A001333(n+1)+∑[∑[2*n]]%4`
-/

namespace A113282.P12522905124999059652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) % 4 : ℕ) : ℤ)

end

end A113282.P12522905124999059652

noncomputable section

/-- A113282: Logarithmic derivative of the g.f. of A113281.

Offset 0, canonical program `A113282.P12522905124999059652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A113282 (n : ℕ) : ℤ :=
  A113282.P12522905124999059652.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A113282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113338.P13131328520765291318

`A179088(xor(1, 3*n+2))`
-/

namespace A113338.P13131328520765291318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179088 (Nat.xor 1 (3 * n + 2))

end

end A113338.P13131328520765291318

noncomputable section

/-- A113338: Positive integers of the form (18*m^2+1)/11.

Offset 1, canonical program `A113338.P13131328520765291318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A113338 (n : ℕ) : ℤ :=
  A113338.P13131328520765291318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A113338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113414.P8404864618405883066

`∑{d}[n+1, A056594(#-1)^(n+1)]`
-/

namespace A113414.P8404864618405883066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1) ^ (n + 1)

end

end A113414.P8404864618405883066

noncomputable section

/-- A113414: Expansion of Sum_{k>0} x^k/(1-(-x^2)^k).

Offset 1, canonical program `A113414.P8404864618405883066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113414 (n : ℕ) : ℤ :=
  A113414.P8404864618405883066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113473.P7804708315665494230

`A029837(n+2)`
-/

namespace A113473.P7804708315665494230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 2)

end

end A113473.P7804708315665494230

noncomputable section

/-- A113473: n repeated 2^(n-1) times.

Offset 1, canonical program `A113473.P7804708315665494230`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113473 (n : ℕ) : ℤ :=
  A113473.P7804708315665494230.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113553.P315012750750507759

`A174296(floor(n/2))+3*n`
-/

namespace A113553.P315012750750507759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 ⌊(n : ℚ) / 2⌋.toNat + (3 * n : ℤ)

end

end A113553.P315012750750507759

noncomputable section

/-- A113553: Numbers k such that A113552(k) is odd.

Offset 1, canonical program `A113553.P315012750750507759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113553 (n : ℕ) : ℤ :=
  A113553.P315012750750507759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113553.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A113705.P14451842261117549684

`A000007(n)+∑{d}[n, A011557(#)]`
-/

namespace A113705.P14451842261117549684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A011557 d

end

end A113705.P14451842261117549684

noncomputable section

/-- A113705: Inverse Moebius transform of powers of 10.

Offset 0, canonical program `A113705.P14451842261117549684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A113705 (n : ℕ) : ℤ :=
  A113705.P14451842261117549684.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A113705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113753.P12093795732217762677

`A000045(n)+p?[A001057(n)]`
-/

namespace A113753.P12093795732217762677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113753.P12093795732217762677

noncomputable section

/-- A113753: a(n) = Fibonacci(n-1) + prime(n).

Offset 1, canonical program `A113753.P12093795732217762677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A113753 (n : ℕ) : ℤ :=
  A113753.P12093795732217762677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A113753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113829.P6113477736535144026

`∑[A000079(eq[∑[n]%2, val(n+1, 6)])]`
-/

namespace A113829.P6113477736535144026
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => f2 j = f4 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113829.P6113477736535144026

noncomputable section

/-- A113829: a(n) = a(n-1) + 2^(k(n)), where k(n) is the n-th term of the sequence of numbers that are congruent to {0,3,4,5,7,8} mod 12.

Offset 1, canonical program `A113829.P6113477736535144026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A113829 (n : ℕ) : ℤ :=
  A113829.P6113477736535144026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A113829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113854.P1585080033724339666

`∑[A011782(2*(n+1)-(n+1)%3)]`
-/

namespace A113854.P1585080033724339666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * (n + 1) - (n + 1) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113854.P1585080033724339666

noncomputable section

/-- A113854: a(n) = sum(2^(A047240(i)-1), i=1..n).

Offset 1, canonical program `A113854.P1585080033724339666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A113854 (n : ℕ) : ℤ :=
  A113854.P1585080033724339666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A113854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113859.P5019011952636722556

`A006012(n+2)+1`
-/

namespace A113859.P5019011952636722556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 2) + 1

end

end A113859.P5019011952636722556

noncomputable section

/-- A113859: Expansion of (7-14*x+6*x^2)/((1-x)*(2*x^2-4*x+1)); related to the binomial transform of Pell numbers A000129 (see formula and comment for A007070).

Offset 0, canonical program `A113859.P5019011952636722556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A113859 (n : ℕ) : ℤ :=
  A113859.P5019011952636722556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A113859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113867.P3677341860952729368

`∑[4^n*A153727(n)]`
-/

namespace A113867.P3677341860952729368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A153727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113867.P3677341860952729368

noncomputable section

/-- A113867: a(n) = a(n-1) + 2^(A047258(n)) for n>1, a(1)=1.

Offset 1, canonical program `A113867.P3677341860952729368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A113867 (n : ℕ) : ℤ :=
  A113867.P3677341860952729368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A113867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113873.P74120000114504862

`a(n-2)+a(n-1)*A005131(n)` with `a(0)=1, a(1)=1`
-/

namespace A113873.P74120000114504862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A005131 n

end

end A113873.P74120000114504862

noncomputable section

/-- A113873: a(3n) = a(3n-1) + a(3n-2), a(3n+1) = 2n*a(3n) + a(3n-1), a(3n+2) = a(3n+1) + a(3n).

Offset 0, canonical program `A113873.P74120000114504862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A113873 (n : ℕ) : ℤ :=
  A113873.P74120000114504862.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A113873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113874.P794801418721017797

`a(n-2)+a(n-1)*A005131(n)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A113874.P794801418721017797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 2) + a (n - 1) * A005131 n

end

end A113874.P794801418721017797

noncomputable section

/-- A113874: a(3n) = a(3n-1) + a(3n-2), a(3n+1) = 2n*a(3n) + a(3n-1), a(3n+2) = a(3n+1) + a(3n).

Offset 0, canonical program `A113874.P794801418721017797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A113874 (n : ℕ) : ℤ :=
  A113874.P794801418721017797.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A113874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113924.P2432872278928687912

`gcd(A113605(n+1), A113605(n+2))`
-/

namespace A113924.P2432872278928687912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113605 (n + 1)) (A113605 (n + 2))

end

end A113924.P2432872278928687912

noncomputable section

/-- A113924: a(n) = gcd(A113605(n+1), A113605(n)). Also, for n >= 2, a(n) = A113605(n+2) - A113605(n-1).

Offset 1, canonical program `A113924.P2432872278928687912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A113924 (n : ℕ) : ℤ :=
  (A113924.P2432872278928687912.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A113924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113935.P5086893406653941242

`A052147(n+1)+1`
-/

namespace A113935.P5086893406653941242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + 1

end

end A113935.P5086893406653941242

noncomputable section

/-- A113935: a(n) = prime(n) + 3.

Offset 1, canonical program `A113935.P5086893406653941242`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113935 (n : ℕ) : ℤ :=
  A113935.P5086893406653941242.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052147, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113946.P1873626453072486687

`A266976(n)-A109765(n)`
-/

namespace A113946.P1873626453072486687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266976 n - A109765 n

end

end A113946.P1873626453072486687

noncomputable section

/-- A113946: Series expansion of Farey rational polynomial based on A112627.

Offset 0, canonical program `A113946.P1873626453072486687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A113946 (n : ℕ) : ℤ :=
  A113946.P1873626453072486687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A113946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113980.P13529792398552718209

`A005418(n+1)-Δ[A052551(n)]`
-/

namespace A113980.P13529792398552718209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) - (f1 (n + 1) - f1 n)

end

end A113980.P13529792398552718209

noncomputable section

/-- A113980: Number of compositions of n with an odd number of 1's.

Offset 1, canonical program `A113980.P13529792398552718209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A113980 (n : ℕ) : ℤ :=
  A113980.P13529792398552718209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A113980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114122.P18205452546024225000

`A138231(n+1)*A138231(A004442(n))`
-/

namespace A114122.P18205452546024225000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (n + 1) * A138231 (A004442 n).toNat

end

end A114122.P18205452546024225000

noncomputable section

/-- A114122: Expansion of (1+x)^2/(1+2x-4x^3-4x^4).

Offset 0, canonical program `A114122.P18205452546024225000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A114122 (n : ℕ) : ℤ :=
  A114122.P18205452546024225000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A114122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114185.P10564892342634865361

`A054452(n+2)-1`
-/

namespace A114185.P10564892342634865361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054452 (n + 2) - 1

end

end A114185.P10564892342634865361

noncomputable section

/-- A114185: a(n) = Fibonacci(2*n) - n - 1.

Offset 2, canonical program `A114185.P10564892342634865361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A114185 (n : ℕ) : ℤ :=
  A114185.P10564892342634865361.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A114185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114210.P14163795220227250827

`A124093(n)+A114209(n+1)`
-/

namespace A114210.P14163795220227250827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 n + A114209 (n + 1)

end

end A114210.P14163795220227250827

noncomputable section

/-- A114210: Number of derangements of [n] avoiding the patterns 123 and 231.

Offset 1, canonical program `A114210.P14163795220227250827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114210 (n : ℕ) : ℤ :=
  A114210.P14163795220227250827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114300.P1978939017107757490

`A038990(n)+3%A001595(n)`
-/

namespace A114300.P1978939017107757490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038990 n + Int.tmod 3 (A001595 n)

end

end A114300.P1978939017107757490

noncomputable section

/-- A114300: Number of non-intersecting cycle systems in a particular directed graph.

Offset 0, canonical program `A114300.P1978939017107757490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A114300 (n : ℕ) : ℤ :=
  A114300.P1978939017107757490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A114300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114487.P16900368004980004026

`A000108(n)-(a(n-1)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A114487.P16900368004980004026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000108 n - (a (n - 1) + a (n - 3))

end

end A114487.P16900368004980004026

noncomputable section

/-- A114487: Number of Dyck paths of semilength n having no UUDD's starting at level 0.

Offset 0, canonical program `A114487.P16900368004980004026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A114487 (n : ℕ) : ℤ :=
  A114487.P16900368004980004026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A114487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114515.P8369440402788739489

`n/2*A000957(n+1)`
-/

namespace A114515.P8369440402788739489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A000957 (n + 1) : ℚ)

end

end A114515.P8369440402788739489

noncomputable section

/-- A114515: Number of peaks in all hill-free Dyck paths of semilength n (a Dyck path is hill-free if it has no peaks at level 1).

Offset 0, canonical program `A114515.P8369440402788739489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A114515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A114515.P8369440402788739489.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A114515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114540.P17425760661350549232

`floor(A007587(n)/A005899(n))`
-/

namespace A114540.P17425760661350549232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007587 n : ℚ) / (A005899 n : ℚ)⌋

end

end A114540.P17425760661350549232

noncomputable section

/-- A114540: Number of correct decimal digits given by the n-th convergent to the golden ratio.

Offset 0, canonical program `A114540.P17425760661350549232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114540 (n : ℕ) : ℤ :=
  A114540.P17425760661350549232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114548.P10557893245006236416

`eq[3, ∑{e}[A000566(n), #]]`
-/

namespace A114548.P10557893245006236416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A114548.P10557893245006236416

noncomputable section

/-- A114548: Numbers k such that k-th heptagonal number is 3-almost prime.

Offset 1, canonical program `A114548.P10557893245006236416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A114548 (n : ℕ) : ℤ :=
  (A114548.P10557893245006236416.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A114548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114574.P4745346072233660576

`A001563(A000040(n+1))`
-/

namespace A114574.P4745346072233660576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (A000040 (n + 1)).toNat

end

end A114574.P4745346072233660576

noncomputable section

/-- A114574: a(n) = p*p! where p = prime(n).

Offset 1, canonical program `A114574.P4745346072233660576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114574 (n : ℕ) : ℤ :=
  A114574.P4745346072233660576.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A114574.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085971.P4688826160104707978

`eq[1, A306694(n+2)]+2`
-/

namespace A085971.P4688826160104707978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306694 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A085971.P4688826160104707978

noncomputable section

/-- A085971: Union of primes and numbers that are not prime powers (A000040, A024619).

Offset 1, canonical program `A085971.P4688826160104707978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085971 (n : ℕ) : ℤ :=
  (A085971.P4688826160104707978.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085976.P515009545935069561

`A316863(A000040(n+1))`
-/

namespace A085976.P515009545935069561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A000040 (n + 1)).toNat

end

end A085976.P515009545935069561

noncomputable section

/-- A085976: Number of 2's in decimal expansion of prime(n).

Offset 1, canonical program `A085976.P515009545935069561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A085976 (n : ℕ) : ℤ :=
  A085976.P515009545935069561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A085976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085977.P14742223954839599986

`A316864(A000040(n+1))`
-/

namespace A085977.P14742223954839599986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A000040 (n + 1)).toNat

end

end A085977.P14742223954839599986

noncomputable section

/-- A085977: Number of 3's in decimal expansion of prime(n).

Offset 1, canonical program `A085977.P14742223954839599986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A085977 (n : ℕ) : ℤ :=
  A085977.P14742223954839599986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A085977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085978.P3613833929199214065

`∑{digits}[A000040(n+1), A316867(#+2)]`
-/

namespace A085978.P3613833929199214065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316867 (x + 2)).sum

end

end A085978.P3613833929199214065

noncomputable section

/-- A085978: Number of 4's in decimal expansion of prime(n).

Offset 1, canonical program `A085978.P3613833929199214065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085978 (n : ℕ) : ℤ :=
  A085978.P3613833929199214065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087003.P9157037938585938204

`-A099991(n+1)`
-/

namespace A087003.P9157037938585938204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A099991 (n + 1)

end

end A087003.P9157037938585938204

noncomputable section

/-- A087003: a(2n) = 0 and a(2n+1) = mu(2n+1); also the sum of Mobius function values computed for terms of 3x+1 trajectory started at n, provided that Collatz conjecture is true.

Offset 1, canonical program `A087003.P9157037938585938204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099991, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087003 (n : ℕ) : ℤ :=
  A087003.P9157037938585938204.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099991, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087003.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087508.P427705373924640183

`A000027(n+1)-A087509(n)-A087507(n)`
-/

namespace A087508.P427705373924640183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A087509 n - A087507 n

end

end A087508.P427705373924640183

noncomputable section

/-- A087508: Number of k such that mod(k*n,3) = 1 for 0 <= k <= n.

Offset 0, canonical program `A087508.P427705373924640183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087508 (n : ℕ) : ℤ :=
  A087508.P427705373924640183.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088166.P13572598566070584273

`A088305(n+2)*A173495(2*(n+2))`
-/

namespace A088166.P13572598566070584273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 2) * A173495 (2 * (n + 2))

end

end A088166.P13572598566070584273

noncomputable section

/-- A088166: Smallest integer divisible by Fibonacci(2n) such that the second partial quotient in the continued fraction expansion of a(n)/phi is 2 (phi is the golden ratio), n >= 2.

Offset 2, canonical program `A088166.P13572598566070584273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A088166 (n : ℕ) : ℤ :=
  A088166.P13572598566070584273.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A088166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088232.P18376775273542459675

`lt[A354099(n+1), 1]+1`
-/

namespace A088232.P18376775273542459675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088232.P18376775273542459675

noncomputable section

/-- A088232: Numbers k such that 3 does not divide phi(k).

Offset 1, canonical program `A088232.P18376775273542459675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088232 (n : ℕ) : ℤ :=
  (A088232.P18376775273542459675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088441.P8766483255871811894

`A006368(gcd(A131380(n), A133310(n)))`
-/

namespace A088441.P8766483255871811894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.gcd (A131380 n) (A133310 n))

end

end A088441.P8766483255871811894

noncomputable section

/-- A088441: a(n) = n if n == 0 (mod 3), a(n) = 1 if n == 2 (mod 3), otherwise a(n) = floor((n-2)/2).

Offset 2, canonical program `A088441.P8766483255871811894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088441 (n : ℕ) : ℤ :=
  A088441.P8766483255871811894.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089648.P4732096365320624093

`lt[abs(A145037(n)), 2]`
-/

namespace A089648.P4732096365320624093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145037 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089648.P4732096365320624093

noncomputable section

/-- A089648: Numbers whose numbers of zeros and ones in binary representation differ at most by 1.

Offset 1, canonical program `A089648.P4732096365320624093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4707 terms. -/
def A089648 (n : ℕ) : ℤ :=
  (A089648.P4732096365320624093.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4707 terms. -/
def A089648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089684.P17861152038474701417

`eq[n%2/6, A323170(n+1)]+1`
-/

namespace A089684.P17861152038474701417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℚ) / 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A089684.P17861152038474701417

noncomputable section

/-- A089684: Numbers k such that 2*phi(k) > k.

Offset 1, canonical program `A089684.P17861152038474701417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089684 (n : ℕ) : ℤ :=
  (A089684.P17861152038474701417.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089819.P17905297640131055560

`∏[3-Δ[A095117(n)]]`
-/

namespace A089819.P17905297640131055560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089819.P17905297640131055560

noncomputable section

/-- A089819: Number of subsets of {1,2,...,n} containing no primes.

Offset 1, canonical program `A089819.P17905297640131055560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A089819 (n : ℕ) : ℤ :=
  A089819.P17905297640131055560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A089819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090187.P17998606559123912834

`∪[A142050(n+1), A142056(n+1)]`
-/

namespace A090187.P17998606559123912834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090187.P17998606559123912834

noncomputable section

/-- A090187: Primes of the form 11*n+2.

Offset 1, canonical program `A090187.P17998606559123912834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090187 (n : ℕ) : ℤ :=
  (A090187.P17998606559123912834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090405.P1950137915139078483

`A101808(A263997(n+1))`
-/

namespace A090405.P1950137915139078483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 (A263997 (n + 1)).toNat

end

end A090405.P1950137915139078483

noncomputable section

/-- A090405: a(n) = PrimePi(n+2) - PrimePi(n).

Offset 1, canonical program `A090405.P1950137915139078483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090405 (n : ℕ) : ℤ :=
  A090405.P1950137915139078483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090893.P80685579650298146

`eq[1, A110091(A198081(n))]`
-/

namespace A090893.P80685579650298146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110091 (A198081 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090893.P80685579650298146

noncomputable section

/-- A090893: Solutions x to equation floor(x*r*floor(x/r)) = floor(x/r*floor(x*r)) when r=sqrt(3).

Offset 0, canonical program `A090893.P80685579650298146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1927 terms. -/
def A090893 (n : ℕ) : ℤ :=
  (A090893.P80685579650298146.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1927 terms. -/
def A090893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090972.P8282025296357103097

`floor(A000040(A095117(n+1))/(n+1))+1`
-/

namespace A090972.P8282025296357103097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (A095117 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A090972.P8282025296357103097

noncomputable section

/-- A090972: Least k such that there are at least n primes between n and n*k.

Offset 1, canonical program `A090972.P8282025296357103097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A090972 (n : ℕ) : ℤ :=
  A090972.P8282025296357103097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A090972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091003.P6832451832434425772

`round(Δ[A091005(n+1)/2])`
-/

namespace A091003.P6832451832434425772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091005 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A091003.P6832451832434425772

noncomputable section

/-- A091003: Expansion of (1-3*x^2)/((1-2*x)*(1+3*x)).

Offset 0, canonical program `A091003.P6832451832434425772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A091003 (n : ℕ) : ℤ :=
  A091003.P6832451832434425772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A091003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091995.P16558306300262697301

`A161680(A322832(n))+A000267(n)`
-/

namespace A091995.P16558306300262697301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A322832 n).toNat + A000267 n

end

end A091995.P16558306300262697301

noncomputable section

/-- A091995: Permutation of the natural numbers.

Offset 1, canonical program `A091995.P16558306300262697301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091995 (n : ℕ) : ℤ :=
  A091995.P16558306300262697301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092037.P12766482184421942466

`A046698(A151668(n))`
-/

namespace A092037.P12766482184421942466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A151668 n).toNat

end

end A092037.P12766482184421942466

noncomputable section

/-- A092037: A092255 mod 3.

Offset 0, canonical program `A092037.P12766482184421942466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092037 (n : ℕ) : ℤ :=
  A092037.P12766482184421942466.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092091.P16055475286875245941

`(A177747(n)+A052267(n))/2`
-/

namespace A092091.P16055475286875245941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177747 n + A052267 n : ℚ) / 2

end

end A092091.P16055475286875245941

noncomputable section

/-- A092091: Molien series for 9-dimensional group of structure Z_2 X Z_2 and order 4, corresponding to complete weight enumerators of Hermitian self-dual GF(3)-linear codes over GF(9).

Offset 0, canonical program `A092091.P16055475286875245941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092091 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092091.P16055475286875245941.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092178.P7112471024238772753

`∪[A142164(n+1), A142179(n+1)]`
-/

namespace A092178.P7112471024238772753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092178.P7112471024238772753

noncomputable section

/-- A092178: Primes congruent to 8 mod 13.

Offset 1, canonical program `A092178.P7112471024238772753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092178 (n : ℕ) : ℤ :=
  (A092178.P7112471024238772753.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092400.P712876146201366220

`Δ[A145204(n+1)/3]`
-/

namespace A092400.P712876146201366220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145204 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092400.P712876146201366220

noncomputable section

/-- A092400: Fixed point of the morphism 1 -> 1121211, 2 -> 1121212121211, starting from a(1) = 1.

Offset 1, canonical program `A092400.P712876146201366220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A092400 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092400.P712876146201366220.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A092400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092405.P15399323989473945972

`A320111(2*(n+1))+A320111(2*(n+2))`
-/

namespace A092405.P15399323989473945972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) + A320111 (2 * (n + 2))

end

end A092405.P15399323989473945972

noncomputable section

/-- A092405: a(n) = tau(n) + tau(n+1), where tau(n) = A000005(n), the number of divisors of n.

Offset 1, canonical program `A092405.P15399323989473945972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092405 (n : ℕ) : ℤ :=
  A092405.P15399323989473945972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092606.P13489676363175363184

`val(A161580(n+1)-1, 2)`
-/

namespace A092606.P13489676363175363184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A161580 (n + 1) - 1).toNat 2

end

end A092606.P13489676363175363184

noncomputable section

/-- A092606: Fixed point of the morphism 0 -> 021, 1 -> 0, 2 -> 0; starting with a(1) = 0.

Offset 1, canonical program `A092606.P13489676363175363184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092606 (n : ℕ) : ℤ :=
  (A092606.P13489676363175363184.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093191.P2249662244197298181

`∪[A142161(n+1), A142169(n+1)]`
-/

namespace A093191.P2249662244197298181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093191.P2249662244197298181

noncomputable section

/-- A093191: Primes congruent to 4 mod 13.

Offset 1, canonical program `A093191.P2249662244197298181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093191 (n : ℕ) : ℤ :=
  (A093191.P2249662244197298181.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093350.P6153094955691601461

`∪[A142170(n+1), A142178(n+1)]`
-/

namespace A093350.P6153094955691601461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P6153094955691601461

noncomputable section

/-- A093350: Primes congruent to 6 mod 13.

Offset 1, canonical program `A093350.P6153094955691601461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093350 (n : ℕ) : ℤ :=
  (A093350.P6153094955691601461.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093641.P7151041484961963095

`eq[1, A340371(n+1)]+1`
-/

namespace A093641.P7151041484961963095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093641.P7151041484961963095

noncomputable section

/-- A093641: Numbers of form 2^i * prime(j), i>=0, j>0, together with 1.

Offset 1, canonical program `A093641.P7151041484961963095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093641 (n : ℕ) : ℤ :=
  (A093641.P7151041484961963095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094222.P9243178486073536326

`A229109(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A094222.P9243178486073536326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A229109 (a (n - 1)).toNat

end

end A094222.P9243178486073536326

noncomputable section

/-- A094222: a(n+1) = a(n) + (number of distinct prime factors of a(n)) for n>1; a(1)=1, a(2)=2.

Offset 1, canonical program `A094222.P9243178486073536326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3994 terms. -/
def A094222 (n : ℕ) : ℤ :=
  A094222.P9243178486073536326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3994 terms. -/
def A094222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095082.P2898843738196785764

`∪[A095085(n+1), A095088(n+1)]`
-/

namespace A095082.P2898843738196785764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095082.P2898843738196785764

noncomputable section

/-- A095082: Fib00 primes, i.e., primes p whose Zeckendorf-expansion A014417(p) ends with two zeros.

Offset 1, canonical program `A095082.P2898843738196785764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095082 (n : ℕ) : ℤ :=
  (A095082.P2898843738196785764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095187.P2938965686663211602

`A288327(n)%A329503(n)`
-/

namespace A095187.P2938965686663211602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288327 n) (A329503 n)

end

end A095187.P2938965686663211602

noncomputable section

/-- A095187: Least significant digit of (n mod 10)^floor(n/10).

Offset 10, canonical program `A095187.P2938965686663211602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A095187 (n : ℕ) : ℤ :=
  A095187.P2938965686663211602.a (n - 10)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A095187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095248.P3897611275695587455

`Δ[A113638(A113638(n))-(char[1]-n)]`
-/

namespace A095248.P3897611275695587455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113638 (A113638 n).toNat - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095248.P3897611275695587455

noncomputable section

/-- A095248: a(n) = least k > 0 such that n-th partial sum is divisible by n if and only if n is not prime.

Offset 1, canonical program `A095248.P3897611275695587455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A095248 (n : ℕ) : ℤ :=
  A095248.P3897611275695587455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A095248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095284.P16076198240132505544

`p?[lt[5, A145037(n)]]`
-/

namespace A095284.P16076198240132505544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095284.P16076198240132505544

noncomputable section

/-- A095284: Primes in whose binary expansion the number of 1 bits is > 5 + number of 0 bits.

Offset 1, canonical program `A095284.P16076198240132505544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A095284 (n : ℕ) : ℤ :=
  (A095284.P16076198240132505544.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A095284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095315.P11245035000692481419

`p?[lt[A145037(n), 3]]`
-/

namespace A095315.P11245035000692481419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095315.P11245035000692481419

noncomputable section

/-- A095315: Primes in whose binary expansion the number of 1 bits is <= 2 + number of 0 bits.

Offset 1, canonical program `A095315.P11245035000692481419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1012 terms. -/
def A095315 (n : ℕ) : ℤ :=
  (A095315.P11245035000692481419.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1012 terms. -/
def A095315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095322.P13433444378243822473

`p?[lt[4, A145037(n)]]`
-/

namespace A095322.P13433444378243822473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095322.P13433444378243822473

noncomputable section

/-- A095322: Primes in whose binary expansion the number of 1 bits is > 4 + number of 0 bits.

Offset 1, canonical program `A095322.P13433444378243822473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A095322 (n : ℕ) : ℤ :=
  (A095322.P13433444378243822473.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A095322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095374.P12292882618606204966

`A099774(n+2)-1`
-/

namespace A095374.P12292882618606204966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 2) - 1

end

end A095374.P12292882618606204966

noncomputable section

/-- A095374: One less than the number of divisors of 2*n + 1.

Offset 1, canonical program `A095374.P12292882618606204966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095374 (n : ℕ) : ℤ :=
  A095374.P12292882618606204966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095374.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095683.P1485054367092641857

`∏{e}[n+1, A230980(#)]`
-/

namespace A095683.P1485054367092641857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A230980 (Nat.factorization (f1 n) p)

end

end A095683.P1485054367092641857

noncomputable section

/-- A095683: Number of prime power divisors of n. If n = product p_i^r_i then d = product {p_i^s_i, 2 <= s_i <= r_i, s_i is prime} is a prime power divisor of n.

Offset 1, canonical program `A095683.P1485054367092641857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095683 (n : ℕ) : ℤ :=
  A095683.P1485054367092641857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096605.P6853506264240162189

`A096607(∑[(C(3, n)+n)%2])`
-/

namespace A096605.P6853506264240162189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 n + n) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A096605.P6853506264240162189

noncomputable section

/-- A096605: a(n) = floor((floor(n/2) + a(floor(n/2)))/2), a(1) = 1.

Offset 1, canonical program `A096605.P6853506264240162189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096605 (n : ℕ) : ℤ :=
  A096605.P6853506264240162189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097535.P5399689886954939678

`A008620(n)+A004773(A132292(n+4))`
-/

namespace A097535.P5399689886954939678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n + A004773 (A132292 (n + 4)).toNat

end

end A097535.P5399689886954939678

noncomputable section

/-- A097535: Dimensions of spaces of cusp forms.

Offset 4, canonical program `A097535.P5399689886954939678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A097535 (n : ℕ) : ℤ :=
  A097535.P5399689886954939678.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A097535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097703.P2355678231752813967

`eq[0, A156277(2*n+1)]`
-/

namespace A097703.P2355678231752813967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097703.P2355678231752813967

noncomputable section

/-- A097703: Numbers j such that m = 216*j + 108 satisfies sigma(m) != 2*usigma(m).

Offset 1, canonical program `A097703.P2355678231752813967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097703 (n : ℕ) : ℤ :=
  (A097703.P2355678231752813967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097920.P16070333679688351481

`A211524(A289207(n))+A008672(n)`
-/

namespace A097920.P16070333679688351481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (A289207 n).toNat + A008672 n

end

end A097920.P16070333679688351481

noncomputable section

/-- A097920: G.f.: (1+x^10)/((1-x)*(1-x^3)*(1-x^5)).

Offset 0, canonical program `A097920.P16070333679688351481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097920 (n : ℕ) : ℤ :=
  A097920.P16070333679688351481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097947.P9017310774011974101

`xor(-A112832(n), A033999(n))`
-/

namespace A097947.P9017310774011974101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A112832 n) (A033999 n)

end

end A097947.P9017310774011974101

noncomputable section

/-- A097947: Expansion of g.f. (2+7*x+2*x^2)/((x^2-1)*(1+4*x+x^2)).

Offset 0, canonical program `A097947.P9017310774011974101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A097947 (n : ℕ) : ℤ :=
  A097947.P9017310774011974101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A097947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098383.P14149341988143288811

`Δ[∑[n]+a(A230980(n))]` with `a(0)=1`
-/

namespace A098383.P14149341988143288811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (A230980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A098383.P14149341988143288811

noncomputable section

/-- A098383: Define a function f on the positive integers by: if n is 1 or composite, stop; but if n = prime(k) then f(n) = k; a(n) = sum of terms in trajectory of n under repeated application of f.

Offset 1, canonical program `A098383.P14149341988143288811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A098383 (n : ℕ) : ℤ :=
  A098383.P14149341988143288811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A098383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099801.P5638060238408130792

`∑[A101808(n)]-1`
-/

namespace A099801.P5638060238408130792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099801.P5638060238408130792

noncomputable section

/-- A099801: PrimePi(2n+1), the number of primes less than or equal to 2n+1.

Offset 0, canonical program `A099801.P5638060238408130792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099801 (n : ℕ) : ℤ :=
  A099801.P5638060238408130792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099849.P16938997681837756791

`∑[A168324(n+1)]+1`
-/

namespace A099849.P16938997681837756791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099849.P16938997681837756791

noncomputable section

/-- A099849: Partial sums of A008480.

Offset 1, canonical program `A099849.P16938997681837756791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099849 (n : ℕ) : ℤ :=
  A099849.P16938997681837756791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100145.P15586670370049883548

`A100148(n+1)+A100159(n+1)-(n+1)`
-/

namespace A100145.P15586670370049883548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100148 (n + 1) + (A100159 (n + 1) - (n + 1 : ℤ))

end

end A100145.P15586670370049883548

noncomputable section

/-- A100145: Structured great rhombicosidodecahedral numbers.

Offset 1, canonical program `A100145.P15586670370049883548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100145 (n : ℕ) : ℤ :=
  A100145.P15586670370049883548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100717.P16628526132421071626

`eq[0, A203908(n+1)]+1`
-/

namespace A100717.P16628526132421071626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203908 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100717.P16628526132421071626

noncomputable section

/-- A100717: Numbers k having a prime divisor p such that p^p is the highest power of p that divides k.

Offset 1, canonical program `A100717.P16628526132421071626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1469 terms. -/
def A100717 (n : ℕ) : ℤ :=
  (A100717.P16628526132421071626.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1469 terms. -/
def A100717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100727.P8972541328592972460

`ceil(gcd(A092535(n), A233035(n+1))/2)`
-/

namespace A100727.P8972541328592972460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.gcd (A092535 n) (A233035 (n + 1)) : ℚ) / 2⌉

end

end A100727.P8972541328592972460

noncomputable section

/-- A100727: Continued fraction expansion of (1/2) [tan(1) + sec(1)].

Offset 0, canonical program `A100727.P8972541328592972460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100727 (n : ℕ) : ℤ :=
  A100727.P8972541328592972460.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100776.P6673390157140184545

`A362361(n+1)-A154266(n)`
-/

namespace A100776.P6673390157140184545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362361 (n + 1) - A154266 n

end

end A100776.P6673390157140184545

noncomputable section

/-- A100776: a(n) = 997*n + 1009.

Offset 0, canonical program `A100776.P6673390157140184545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100776 (n : ℕ) : ℤ :=
  A100776.P6673390157140184545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101203.P14556017355783921895

`A191558(n)+a(n-1)` with `a(0)=0`
-/

namespace A101203.P14556017355783921895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A191558 n + a (n - 1)

end

end A101203.P14556017355783921895

noncomputable section

/-- A101203: a(n) = sum of nonprimes <= n.

Offset 0, canonical program `A101203.P14556017355783921895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101203 (n : ℕ) : ℤ :=
  A101203.P14556017355783921895.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101471.P3271450895035044751

`floor(floor(A167442(n+1)/10)/10)`
-/

namespace A101471.P3271450895035044751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A167442 (n + 1) : ℚ) / 10⌋ : ℚ) / 10⌋

end

end A101471.P3271450895035044751

noncomputable section

/-- A101471: Numbers k such that the number k11 is prime.

Offset 1, canonical program `A101471.P3271450895035044751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101471 (n : ℕ) : ℤ :=
  A101471.P3271450895035044751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101561.P6242027696701198991

`abs(∑{d}[n+1, A141413(#+1)])`
-/

namespace A101561.P6242027696701198991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A141413 (d + 1)|

end

end A101561.P6242027696701198991

noncomputable section

/-- A101561: a(n) = (-1)^n * [x^n] Sum_{k>=1} x^(k-1)/(1+3*x^k).

Offset 0, canonical program `A101561.P6242027696701198991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A101561 (n : ℕ) : ℤ :=
  A101561.P6242027696701198991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A101561.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A102026.P8993672898975337737

`A218199(n+1)+C(n, n²)`
-/

namespace A102026.P8993672898975337737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218199 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

end

end A102026.P8993672898975337737

noncomputable section

/-- A102026: Number of n-bit strings that contain no more than 4 zeros and no more than 2 leading and 2 trailing zeros.

Offset 1, canonical program `A102026.P8993672898975337737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A102026 (n : ℕ) : ℤ :=
  A102026.P8993672898975337737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A102026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102700.P10486691176846618732

`A105042(n+1)-1`
-/

namespace A102700.P10486691176846618732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1) - 1

end

end A102700.P10486691176846618732

noncomputable section

/-- A102700: Numbers k such that 10*k + 9 is prime.

Offset 1, canonical program `A102700.P10486691176846618732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102700 (n : ℕ) : ℤ :=
  A102700.P10486691176846618732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102732.P17968271667745353129

`∪[A142162(n+1), A142177(n+1)]`
-/

namespace A102732.P17968271667745353129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102732.P17968271667745353129

noncomputable section

/-- A102732: Primes of the form 13n+5.

Offset 1, canonical program `A102732.P17968271667745353129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102732 (n : ℕ) : ℤ :=
  (A102732.P17968271667745353129.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102768.P1129723811227511314

`floor(A141915(n+1)/23)`
-/

namespace A102768.P1129723811227511314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141915 (n + 1) : ℚ) / 23⌋

end

end A102768.P1129723811227511314

noncomputable section

/-- A102768: Numbers k such that 23*k + 11 is prime.

Offset 1, canonical program `A102768.P1129723811227511314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102768 (n : ℕ) : ℤ :=
  A102768.P1129723811227511314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102851.P2293259666346344215

`∪[A142668(n+1), A142691(n+1)]`
-/

namespace A102851.P2293259666346344215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P2293259666346344215

noncomputable section

/-- A102851: Primes of the form 19n + 5.

Offset 1, canonical program `A102851.P2293259666346344215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102851 (n : ℕ) : ℤ :=
  (A102851.P2293259666346344215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103288.P3473752797644887944

`eq[1, A378550(n+1)]+1`
-/

namespace A103288.P3473752797644887944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A103288.P3473752797644887944

noncomputable section

/-- A103288: Numbers k such that sigma(k) >= 2k-1 (union of perfect, abundant and least deficient numbers).

Offset 1, canonical program `A103288.P3473752797644887944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103288 (n : ℕ) : ℤ :=
  (A103288.P3473752797644887944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103440.P2264346228062661877

`∑{d}[n+1, #*A162397(#)]`
-/

namespace A103440.P2264346228062661877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A162397 d

end

end A103440.P2264346228062661877

noncomputable section

/-- A103440: a(n) = Sum[d|n, d==1 (mod 3), d^2] - Sum[d|n, d==2 (mod 3), d^2].

Offset 1, canonical program `A103440.P2264346228062661877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103440 (n : ℕ) : ℤ :=
  A103440.P2264346228062661877.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104162.P11515092191127984625

`A130234(n+1)-A130234(n)`
-/

namespace A104162.P11515092191127984625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130234 (n + 1) - A130234 n

end

end A104162.P11515092191127984625

noncomputable section

/-- A104162: Indicator sequence for the Fibonacci numbers.

Offset 0, canonical program `A104162.P11515092191127984625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104162 (n : ℕ) : ℤ :=
  A104162.P11515092191127984625.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104624.P6145398982740437534

`A033999(n)*A182122(n)`
-/

namespace A104624.P6145398982740437534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A182122 n

end

end A104624.P6145398982740437534

noncomputable section

/-- A104624: Expansion of exp( arcsinh( -2*x ) ) in powers of x.

Offset 0, canonical program `A104624.P6145398982740437534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A104624 (n : ℕ) : ℤ :=
  A104624.P6145398982740437534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A104624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104638.P17611447121107343307

`A196564(A000040(n+1))`
-/

namespace A104638.P17611447121107343307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A000040 (n + 1)).toNat

end

end A104638.P17611447121107343307

noncomputable section

/-- A104638: Number of odd digits in n-th prime.

Offset 1, canonical program `A104638.P17611447121107343307`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A196564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104638 (n : ℕ) : ℤ :=
  A104638.P17611447121107343307.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A196564, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A104638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104680.P6736682743963126176

`C(n+7, 7)*Δ[A166813(n+4)]`
-/

namespace A104680.P6736682743963126176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * (f1 (n + 1) - f1 n)

end

end A104680.P6736682743963126176

noncomputable section

/-- A104680: a(n) = binomial(n+7,7)*binomial(n+12,7).

Offset 0, canonical program `A104680.P6736682743963126176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A104680 (n : ℕ) : ℤ :=
  A104680.P6736682743963126176.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A104680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105127.P662147929748795778

`∪[A142933(n+1), A142947(n+1)]`
-/

namespace A105127.P662147929748795778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P662147929748795778

noncomputable section

/-- A105127: Primes of the form 32n+17.

Offset 1, canonical program `A105127.P662147929748795778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105127 (n : ℕ) : ℤ :=
  (A105127.P662147929748795778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105223.P13046729923239661957

`A105224(p?[xor(1, n)])`
-/

namespace A105223.P13046729923239661957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A105223.P13046729923239661957

noncomputable section

/-- A105223: Number of squares between prime(n) and 2*prime(n) inclusive.

Offset 1, canonical program `A105223.P13046729923239661957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A105223 (n : ℕ) : ℤ :=
  A105223.P13046729923239661957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A105223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105284.P13040137328639473281

`A107284(n+1)/2`
-/

namespace A105284.P13040137328639473281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107284 (n + 1) : ℚ) / 2

end

end A105284.P13040137328639473281

noncomputable section

/-- A105284: a(n)/4^n is the measure of the subset of [0,1] remaining when all intervals of the form [b/2^m - 1/2^(2m+1), b/2^m + 1/2^(2m+1)] have been removed, with b and m positive integers, b

Offset 0, canonical program `A105284.P13040137328639473281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A105284 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A105284.P13040137328639473281.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A105284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105441.P5710754477606272407

`lt[A340371(n+1), 1]+1`
-/

namespace A105441.P5710754477606272407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A105441.P5710754477606272407

noncomputable section

/-- A105441: Numbers with at least two odd prime factors (not necessarily distinct).

Offset 1, canonical program `A105441.P5710754477606272407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105441 (n : ℕ) : ℤ :=
  (A105441.P5710754477606272407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105661.P3681913577367138940

`and(2*n+1, A105700(n+1))`
-/

namespace A105661.P3681913577367138940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A105700 (n + 1))

end

end A105661.P3681913577367138940

noncomputable section

/-- A105661: a(n)=1 if n is a prime, 2 if n is an even semiprime, otherwise 0.

Offset 1, canonical program `A105661.P3681913577367138940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105661 (n : ℕ) : ℤ :=
  A105661.P3681913577367138940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105943.P1611191503344466060

`C(n+7, 7)*Δ[A166813(n+2)]`
-/

namespace A105943.P1611191503344466060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * (f1 (n + 1) - f1 n)

end

end A105943.P1611191503344466060

noncomputable section

/-- A105943: a(n) = binomial(n+7,7) * binomial(n+10,7).

Offset 0, canonical program `A105943.P1611191503344466060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A105943 (n : ℕ) : ℤ :=
  A105943.P1611191503344466060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A105943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105961.P2774094207711005184

`p?[floor(A139830(n+1)/20)]`
-/

namespace A105961.P2774094207711005184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139830 (n + 1) : ℚ) / 20⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105961.P2774094207711005184

noncomputable section

/-- A105961: Primes p such that 20*p + 3 is prime.

Offset 1, canonical program `A105961.P2774094207711005184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1454 terms. -/
def A105961 (n : ℕ) : ℤ :=
  A105961.P2774094207711005184.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1454 terms. -/
def A105961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106036.P1973716910247846646

`Δ[A138670(n)]`
-/

namespace A106036.P1973716910247846646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106036.P1973716910247846646

noncomputable section

/-- A106036: Trajectory of 1 under the morphism 1->{1,2}, 2->{1,2,3}, 3->{1,2,3,3}.

Offset 0, canonical program `A106036.P1973716910247846646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A106036 (n : ℕ) : ℤ :=
  A106036.P1973716910247846646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A106036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106229.P17219211889580716875

`sqrt(A106230(n+1)+1)+(n+1)*A106230(n+1)`
-/

namespace A106229.P17219211889580716875
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106230 (n + 1) + 1 : ℝ) + ((n + 1 : ℤ) * A106230 (n + 1) : ℝ)

end

end A106229.P17219211889580716875

noncomputable section

/-- A106229: Least j > 1 for n > 0 such that j^2 = (n^2 + 1)*(k^2) + (n^2 + 1)*k + 1 where k sequence = A106230.

Offset 1, canonical program `A106229.P17219211889580716875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106229 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A106229.P17219211889580716875.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106667.P4598466350426453199

`A154955(∑{e}[A052147(n+1), #])`
-/

namespace A106667.P4598466350426453199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106667.P4598466350426453199

noncomputable section

/-- A106667: a(n) = 1 if prime(n) + 2 is a prime, a(n) = -1 if prime(n) + 2 is a semiprime, otherwise 0.

Offset 1, canonical program `A106667.P4598466350426453199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106667 (n : ℕ) : ℤ :=
  A106667.P4598466350426453199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106847.P3405529995713514203

`∑[n*(A350102(n)-2)]`
-/

namespace A106847.P3405529995713514203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A350102 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106847.P3405529995713514203

noncomputable section

/-- A106847: a(n) = Sum {k + j*m <= n} (k + j*m), with 0 < k,j,m <= n.

Offset 0, canonical program `A106847.P3405529995713514203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106847 (n : ℕ) : ℤ :=
  A106847.P3405529995713514203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107227.P5941040212230299952

`∑[A306672(val(n+1, 2))]`
-/

namespace A107227.P5941040212230299952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306672 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107227.P5941040212230299952

noncomputable section

/-- A107227: Numbers having no odd terms in their Zeckendorf representation.

Offset 1, canonical program `A107227.P5941040212230299952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A107227 (n : ℕ) : ℤ :=
  A107227.P5941040212230299952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A107227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107316.P13380186559279956000

`A132407(n+1)-1`
-/

namespace A107316.P13380186559279956000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132407 (n + 1) - 1

end

end A107316.P13380186559279956000

noncomputable section

/-- A107316: a(n) = floor(exp(n)/n).

Offset 1, canonical program `A107316.P13380186559279956000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A107316 (n : ℕ) : ℤ :=
  A107316.P13380186559279956000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A107316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107398.P2619390316984547439

`C(n+7, 7)*Δ[A166813(n+1)]`
-/

namespace A107398.P2619390316984547439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * (f1 (n + 1) - f1 n)

end

end A107398.P2619390316984547439

noncomputable section

/-- A107398: a(n) = binomial(n+7, 7) * binomial(n+9, 7).

Offset 0, canonical program `A107398.P2619390316984547439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A107398 (n : ℕ) : ℤ :=
  A107398.P2619390316984547439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A107398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107853.P15316702921158502148

`Δ[abs(A078028(n)-A128130(n))]`
-/

namespace A107853.P15316702921158502148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078028 n - A128130 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107853.P15316702921158502148

noncomputable section

/-- A107853: Expansion of g.f. x*(x-1)*(x+1)^3/((2*x^3+x^2-1)*(x^4+1)).

Offset 0, canonical program `A107853.P15316702921158502148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A107853 (n : ℕ) : ℤ :=
  A107853.P15316702921158502148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A107853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108577.P3318721791506617652

`∑[A108579(n%∑[(n+1)%2]+1)]`
-/

namespace A108577.P3318721791506617652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108579 (n % (∑ j ∈ Finset.range (n + 1), f2 j) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108577.P3318721791506617652

noncomputable section

/-- A108577: Number of symmetry classes of 3 X 3 magic squares (with distinct positive entries) having all entries < n.

Offset 1, canonical program `A108577.P3318721791506617652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108577 (n : ℕ) : ℤ :=
  A108577.P3318721791506617652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108679.P9730175226178725277

`(A005585(n+2)²-A288876(n+1))/24`
-/

namespace A108679.P9730175226178725277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005585 (n + 2) ^ 2 - A288876 (n + 1) : ℚ) / 24

end

end A108679.P9730175226178725277

noncomputable section

/-- A108679: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)^2*(n+5)^2*(n+6)/86400.

Offset 0, canonical program `A108679.P9730175226178725277`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005585, A288876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A108679 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A108679.P9730175226178725277.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005585, A288876, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A108679.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108969.P15391048143242835784

`floor(A142290(n+1)/43)`
-/

namespace A108969.P15391048143242835784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142290 (n + 1) : ℚ) / 43⌋

end

end A108969.P15391048143242835784

noncomputable section

/-- A108969: Numbers n such that 43*n + 41 is prime.

Offset 1, canonical program `A108969.P15391048143242835784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108969 (n : ℕ) : ℤ :=
  A108969.P15391048143242835784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108976.P11036911029861267488

`A113487(n+2)-1`
-/

namespace A108976.P11036911029861267488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 2) - 1

end

end A108976.P11036911029861267488

noncomputable section

/-- A108976: Numbers k such that 17*k + 19 is prime.

Offset 1, canonical program `A108976.P11036911029861267488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108976 (n : ℕ) : ℤ :=
  A108976.P11036911029861267488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108979.P16884793668270795336

`floor(A142033(n+1)/31)`
-/

namespace A108979.P16884793668270795336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142033 (n + 1) : ℚ) / 31⌋

end

end A108979.P16884793668270795336

noncomputable section

/-- A108979: Numbers k such that 31*k + 29 is prime.

Offset 1, canonical program `A108979.P16884793668270795336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108979 (n : ℕ) : ℤ :=
  A108979.P16884793668270795336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109386.P5253081201004666906

`∑{d}[n+1, A245579(#)]`
-/

namespace A109386.P5253081201004666906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245579 d

end

end A109386.P5253081201004666906

noncomputable section

/-- A109386: G.f. is the logarithm of the g.f. of A107742: Sum_{n>=1} (a(n)/n)*x^n = log( Sum_{n>=0} A107742(n)*x^n ).

Offset 1, canonical program `A109386.P5253081201004666906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109386 (n : ℕ) : ℤ :=
  A109386.P5253081201004666906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109603.P9296114933607659280

`ceil(A142251(n+1)/43)`
-/

namespace A109603.P9296114933607659280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A142251 (n + 1) : ℚ) / 43⌉

end

end A109603.P9296114933607659280

noncomputable section

/-- A109603: Numbers n such that 43*n - 41 is prime.

Offset 1, canonical program `A109603.P9296114933607659280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109603 (n : ℕ) : ℤ :=
  A109603.P9296114933607659280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109604.P16646580073884693843

`floor(A142236(n+1)/41)+2`
-/

namespace A109604.P16646580073884693843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142236 (n + 1) : ℚ) / 41⌋ + 2

end

end A109604.P16646580073884693843

noncomputable section

/-- A109604: Numbers n such that 41*n - 43 is prime.

Offset 1, canonical program `A109604.P16646580073884693843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109604 (n : ℕ) : ℤ :=
  A109604.P16646580073884693843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109784.P14098114956757658124

`Δ[A267210(n)-A112689(n+1)]`
-/

namespace A109784.P14098114956757658124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267210 n - A112689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109784.P14098114956757658124

noncomputable section

/-- A109784: Expansion of (x^2-x-1)*(x^3-x^2+x-2) / ((x-1)*(2*x-1)*(x^2+x+1)*(x^2+1)).

Offset 0, canonical program `A109784.P14098114956757658124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A109784 (n : ℕ) : ℤ :=
  A109784.P14098114956757658124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A109784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110523.P13350269027281313467

`A214733(n+1)+A214733(n)`
-/

namespace A110523.P13350269027281313467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214733 (n + 1) + A214733 n

end

end A110523.P13350269027281313467

noncomputable section

/-- A110523: Expansion of (1 + x)/(1 + x + 3*x^2).

Offset 0, canonical program `A110523.P13350269027281313467`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110523 (n : ℕ) : ℤ :=
  A110523.P13350269027281313467.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A110523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110694.P8426452220887507948

`A000292(n+1)*A145126(n+1)-A145129(n)`
-/

namespace A110694.P8426452220887507948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A145126 (n + 1) - A145129 n

end

end A110694.P8426452220887507948

noncomputable section

/-- A110694: Kekulé numbers for certain benzenoids.

Offset 0, canonical program `A110694.P8426452220887507948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A110694 (n : ℕ) : ℤ :=
  A110694.P8426452220887507948.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A110694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111113.P6143501810428345060

`Δ[A209229(xor(1, n)%(n+1))]`
-/

namespace A111113.P6143501810428345060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (Nat.xor 1 n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111113.P6143501810428345060

noncomputable section

/-- A111113: a(2^m) = 1, a(2^m+1) = -1 (m>0), otherwise a(n) = 0.

Offset 0, canonical program `A111113.P6143501810428345060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111113 (n : ℕ) : ℤ :=
  A111113.P6143501810428345060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111175.P12766162240952230038

`floor(A132230(n+1)/30)`
-/

namespace A111175.P12766162240952230038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132230 (n + 1) : ℚ) / 30⌋

end

end A111175.P12766162240952230038

noncomputable section

/-- A111175: Numbers k such that 30*k + 1 is prime.

Offset 1, canonical program `A111175.P12766162240952230038`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132230, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111175 (n : ℕ) : ℤ :=
  A111175.P12766162240952230038.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132230, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111175.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111405.P1243639223157774270

`Δ[A167746(round(acot(n)+n))]`
-/

namespace A111405.P1243639223157774270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167746 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111405.P1243639223157774270

noncomputable section

/-- A111405: a(n) = f(f(n+1)) - f(f(n)), where f(0) = 0 and f(m) = bigomega(m) = A001222(m) for m > 0.

Offset 0, canonical program `A111405.P1243639223157774270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111405 (n : ℕ) : ℤ :=
  A111405.P1243639223157774270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112494.P17689983258366522921

`∑[(n+1)*∑[A259455(n+1)]]`
-/

namespace A112494.P17689983258366522921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259455 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112494.P17689983258366522921

noncomputable section

/-- A112494: Sixth diagonal of the Stirling2 triangle A048993 and sixth column of triangle A008278.

Offset 6, canonical program `A112494.P17689983258366522921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112494 (n : ℕ) : ℤ :=
  A112494.P17689983258366522921.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112865.P9931685587358820780

`1-2*A341389(n)`
-/

namespace A112865.P9931685587358820780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A341389 n

end

end A112865.P9931685587358820780

noncomputable section

/-- A112865: a(n) = (-1)^(n + floor(n/4) + floor(n/4^2) + ...).

Offset 0, canonical program `A112865.P9931685587358820780`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112865 (n : ℕ) : ℤ :=
  A112865.P9931685587358820780.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341389, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112865.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113115.P10396370869397378492

`p?[A113487(n+1)]`
-/

namespace A113115.P10396370869397378492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113115.P10396370869397378492

noncomputable section

/-- A113115: Primes p such that 17*p + 2 is also prime.

Offset 1, canonical program `A113115.P10396370869397378492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A113115 (n : ℕ) : ℤ :=
  A113115.P10396370869397378492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A113115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113151.P9338455062429795251

`p?[A113488(n+1)]`
-/

namespace A113151.P9338455062429795251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113151.P9338455062429795251

noncomputable section

/-- A113151: Primes p such that 19*p + 2 is also prime.

Offset 1, canonical program `A113151.P9338455062429795251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1264 terms. -/
def A113151 (n : ℕ) : ℤ :=
  A113151.P9338455062429795251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1264 terms. -/
def A113151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113169.P5794704079807078136

`p?[floor(A141858(n+1)/13)]`
-/

namespace A113169.P5794704079807078136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141858 (n + 1) : ℚ) / 13⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113169.P5794704079807078136

noncomputable section

/-- A113169: Primes p such that 13*p + 2 is also prime.

Offset 1, canonical program `A113169.P5794704079807078136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1253 terms. -/
def A113169 (n : ℕ) : ℤ :=
  A113169.P5794704079807078136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1253 terms. -/
def A113169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113262.P2399975146988731264

`∑{d}[n+1, #*A187074(#)]`
-/

namespace A113262.P2399975146988731264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A187074 d

end

end A113262.P2399975146988731264

noncomputable section

/-- A113262: One quarter of the number of solutions to a^2 + b^2 + 3*c^2 + 3*d^2 = n.

Offset 1, canonical program `A113262.P2399975146988731264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113262 (n : ℕ) : ℤ :=
  A113262.P2399975146988731264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113828.P708080319697099683

`∑[A255047(A106249(3*n+1))]+n`
-/

namespace A113828.P708080319697099683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (A106249 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A113828.P708080319697099683

noncomputable section

/-- A113828: a(n) = Sum[2^(A047260(i)-1), {i,1,n}].

Offset 1, canonical program `A113828.P708080319697099683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A113828 (n : ℕ) : ℤ :=
  A113828.P708080319697099683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A113828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114482.P5475032961031310785

`char[3*n-A160384(n)]`
-/

namespace A114482.P5475032961031310785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A160384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A114482.P5475032961031310785

noncomputable section

/-- A114482: Let S(1)=1, S(2)=10; S(2n)=concatenation of S(2n-1), S(2n-2) and 0; and S(2n+1)=concatenation of S(2n), S(2n) and 0. Sequence gives S(infinity).

Offset 1, canonical program `A114482.P5475032961031310785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114482 (n : ℕ) : ℤ :=
  (A114482.P5475032961031310785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A114482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114517.P2047956437619684237

`eq[4, A276680(n+1)]+1`
-/

namespace A114517.P2047956437619684237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A114517.P2047956437619684237

noncomputable section

/-- A114517: Numbers k such that the k-th heptagonal number is semiprime.

Offset 1, canonical program `A114517.P2047956437619684237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A114517 (n : ℕ) : ℤ :=
  (A114517.P2047956437619684237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A114517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085970.P2562174614589588878

`A085972(n+1)-A000720(n+1)`
-/

namespace A085970.P2562174614589588878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085972 (n + 1) - A000720 (n + 1)

end

end A085970.P2562174614589588878

noncomputable section

/-- A085970: Number of integers ranging from 2 to n that are not prime-powers.

Offset 1, canonical program `A085970.P2562174614589588878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A085972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085970 (n : ℕ) : ℤ :=
  A085970.P2562174614589588878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A085972, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A085970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086455.P7944634964476585279

`A000203(lt[A001221(n+1), 2]+1)`
-/

namespace A086455.P7944634964476585279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A086455.P7944634964476585279

noncomputable section

/-- A086455: Sum of divisors of prime powers: sigma(p^e).

Offset 1, canonical program `A086455.P7944634964476585279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5218 terms. -/
def A086455 (n : ℕ) : ℤ :=
  A086455.P7944634964476585279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5218 terms. -/
def A086455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087652.P15006884797631348990

`A007955(n+1)/A007947(n+1)`
-/

namespace A087652.P15006884797631348990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A087652.P15006884797631348990

noncomputable section

/-- A087652: Product of the nonprime divisors of n.

Offset 1, canonical program `A087652.P15006884797631348990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A007955, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087652 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A087652.P15006884797631348990.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A007955, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A087652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087724.P14916302636304607318

`A085581(n+2)-(A000720(n+2)+2)`
-/

namespace A087724.P14916302636304607318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085581 (n + 2) - (A000720 (n + 2) + 2)

end

end A087724.P14916302636304607318

noncomputable section

/-- A087724: a(n) = -PrimePi(n) +floor( prime(n)/log(n))-2.

Offset 2, canonical program `A087724.P14916302636304607318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087724 (n : ℕ) : ℤ :=
  A087724.P14916302636304607318.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088004.P3214712745860726339

`A002321(n+1)+A000720(n+1)`
-/

namespace A088004.P3214712745860726339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + A000720 (n + 1)

end

end A088004.P3214712745860726339

noncomputable section

/-- A088004: "Truncated Mertens function": values of -1 at primes are left out, that is, summatory Moebius when argument runs through nonprimes.

Offset 1, canonical program `A088004.P3214712745860726339`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A002321, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088004 (n : ℕ) : ℤ :=
  A088004.P3214712745860726339.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A002321, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A088004.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088218.P16894379730140654192

`A260878(n)-1`
-/

namespace A088218.P16894379730140654192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 n - 1

end

end A088218.P16894379730140654192

noncomputable section

/-- A088218: Total number of leaves in all rooted ordered trees with n edges.

Offset 0, canonical program `A088218.P16894379730140654192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A088218 (n : ℕ) : ℤ :=
  A088218.P16894379730140654192.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A088218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088838.P14984780205107405931

`(3^(2+A007949(n+1))-1)/2`
-/

namespace A088838.P14984780205107405931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (2 + A007949 (n + 1) : ℤ) - 1) / 2

end

end A088838.P14984780205107405931

noncomputable section

/-- A088838: Numerator of the quotient sigma(3n)/sigma(n).

Offset 1, canonical program `A088838.P14984780205107405931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088838 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A088838.P14984780205107405931.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089286.P16205142239837257181

`A008472(A011545(n))`
-/

namespace A089286.P16205142239837257181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A011545 n).toNat

end

end A089286.P16205142239837257181

noncomputable section

/-- A089286: Sum of distinct prime factors of floor(Pi*10^n), Pi=3.14....

Offset 0, canonical program `A089286.P16205142239837257181`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089286 (n : ℕ) : ℤ :=
  A089286.P16205142239837257181.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089352.P4755244017656261528

`eq[n+1, lcm(n+1, A008472(n+1))]+1`
-/

namespace A089352.P4755244017656261528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A008472 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A089352.P4755244017656261528

noncomputable section

/-- A089352: Numbers that are divisible by the sum of their distinct prime factors (A008472).

Offset 1, canonical program `A089352.P4755244017656261528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6080 terms. -/
def A089352 (n : ℕ) : ℤ :=
  (A089352.P4755244017656261528.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6080 terms. -/
def A089352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089559.P3372472513908806142

`A086303(n+1)/2`
-/

namespace A089559.P3372472513908806142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086303 (n + 1) : ℚ) / 2

end

end A089559.P3372472513908806142

noncomputable section

/-- A089559: Nonnegative numbers n such that 2*n + 15 is prime.

Offset 1, canonical program `A089559.P3372472513908806142`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089559 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089559.P3372472513908806142.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086303, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089559.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089614.P1682478564131423360

`A000720(A004526(n+1)+(n+1)²)-A000720((n+1)²)`
-/

namespace A089614.P1682478564131423360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A004526 (n + 1) + ((n + 1) ^ 2 : ℤ)).toNat - A000720 ((n + 1) ^ 2)

end

end A089614.P1682478564131423360

noncomputable section

/-- A089614: Number of primes between n^2 and (n+1/4)^2.

Offset 1, canonical program `A089614.P1682478564131423360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A089614 (n : ℕ) : ℤ :=
  A089614.P1682478564131423360.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A089614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090498.P16429585968713607720

`Δ[A006218(∑[n])]`
-/

namespace A090498.P16429585968713607720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090498.P16429585968713607720

noncomputable section

/-- A090498: Number of divisors of all the numbers from (1/2)n(n-1)+1 to n(n+1)/2, i.e., tau(1), tau(2)+tau(3), tau(4)+tau(5)+tau(6), tau(7)+tau(8)+tau(9)+tau(10), ..., where tau(j) is the number of divisors of j.

Offset 1, canonical program `A090498.P16429585968713607720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A090498 (n : ℕ) : ℤ :=
  A090498.P16429585968713607720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A090498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091512.P12959083986982032109

`A069895(n+1)/2`
-/

namespace A091512.P12959083986982032109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069895 (n + 1) : ℚ) / 2

end

end A091512.P12959083986982032109

noncomputable section

/-- A091512: a(n) is the largest integer m such that 2^m divides (2*n)^n, i.e., the exponent of 2 in (2*n)^n.

Offset 1, canonical program `A091512.P12959083986982032109`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091512 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091512.P12959083986982032109.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A091855.P1047884060551790839

`A003159(2*n+1)`
-/

namespace A091855.P1047884060551790839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (2 * n + 1)

end

end A091855.P1047884060551790839

noncomputable section

/-- A091855: Odious numbers (see A000069) in A003159.

Offset 1, canonical program `A091855.P1047884060551790839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091855 (n : ℕ) : ℤ :=
  A091855.P1047884060551790839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A091855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092523.P10829292723473762999

`A001221(2*n+1)`
-/

namespace A092523.P10829292723473762999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 1)

end

end A092523.P10829292723473762999

noncomputable section

/-- A092523: Number of distinct prime factors of n-th odd number.

Offset 1, canonical program `A092523.P10829292723473762999`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092523 (n : ℕ) : ℤ :=
  A092523.P10829292723473762999.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A093012.P15360718911743357819

`A000720(A091968(n+1)+1)`
-/

namespace A093012.P15360718911743357819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A091968 (n + 1) + 1).toNat

end

end A093012.P15360718911743357819

noncomputable section

/-- A093012: Numbers k such that prime(k) == 3 (mod 16).

Offset 1, canonical program `A093012.P15360718911743357819`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A091968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A093012 (n : ℕ) : ℤ :=
  A093012.P15360718911743357819.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A091968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A093012.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094471.P10880822235094612413

`A038040(n+1)-A000203(n+1)`
-/

namespace A094471.P10880822235094612413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A000203 (n + 1)

end

end A094471.P10880822235094612413

noncomputable section

/-- A094471: a(n) = Sum_{(n - k)|n, 0 <= k <= n} k.

Offset 1, canonical program `A094471.P10880822235094612413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094471 (n : ℕ) : ℤ :=
  A094471.P10880822235094612413.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094892.P3447562354296670442

`Δ[A000720(A008458(35*n))]`
-/

namespace A094892.P3447562354296670442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008458 (35 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094892.P3447562354296670442

noncomputable section

/-- A094892: a(n) is the number of primes between n*210 and (n+1)*210.

Offset 0, canonical program `A094892.P3447562354296670442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A094892 (n : ℕ) : ℤ :=
  A094892.P3447562354296670442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A094892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097706.P9633468710195769328

`gcd(n+1, A170819(n+1)^8)`
-/

namespace A097706.P9633468710195769328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A170819 (n + 1) ^ 8)

end

end A097706.P9633468710195769328

noncomputable section

/-- A097706: Part of n composed of prime factors of form 4k+3.

Offset 1, canonical program `A097706.P9633468710195769328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097706 (n : ℕ) : ℤ :=
  (A097706.P9633468710195769328.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099636.P13601309160301149210

`A082299(∏{p}[n+1, #])`
-/

namespace A099636.P13601309160301149210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082299 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A099636.P13601309160301149210

noncomputable section

/-- A099636: a(n) = gcd(sum of distinct prime factors of n, product of distinct prime factors of n).

Offset 1, canonical program `A099636.P13601309160301149210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099636 (n : ℕ) : ℤ :=
  A099636.P13601309160301149210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100196.P5989948745544554590

`A077113(n)-1`
-/

namespace A100196.P5989948745544554590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077113 n - 1

end

end A100196.P5989948745544554590

noncomputable section

/-- A100196: Number of positive integer cubes <= n^2.

Offset 0, canonical program `A100196.P5989948745544554590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077113, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100196 (n : ℕ) : ℤ :=
  A100196.P5989948745544554590.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077113, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100486.P14505039985477023089

`A000720(n+1)+A000040(n+1)`
-/

namespace A100486.P14505039985477023089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A000040 (n + 1)

end

end A100486.P14505039985477023089

noncomputable section

/-- A100486: a(n) = pi(n) + prime(n).

Offset 1, canonical program `A100486.P14505039985477023089`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100486 (n : ℕ) : ℤ :=
  A100486.P14505039985477023089.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A100486.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101402.P15905755480955357529

`a(A053644(n-1))+a(A053645(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A101402.P15905755480955357529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A053644 (n - 1)).toNat + a (A053645 (n - 1)).toNat

end

end A101402.P15905755480955357529

noncomputable section

/-- A101402: a(0)=0, a(1)=1; for n>=2, let k = smallest power of 2 that is >= n, then a(n) = a(k/2) + a(n-1-k/2).

Offset 0, canonical program `A101402.P15905755480955357529`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101402 (n : ℕ) : ℤ :=
  (A101402.P15905755480955357529.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102261.P11817500884935070454

`A002144(n+1)-A002145(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102261.P11817500884935070454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A002145 (n + 1)

end

end A102261.P11817500884935070454

noncomputable section

/-- A102261: a(n) = A002144(n) - A002145(n).

Offset 1, canonical program `A102261.P11817500884935070454`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A102261 (n : ℕ) : ℤ :=
  A102261.P11817500884935070454.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A102261.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102553.P12254408032347522241

`eq[A001221(n+1), A102550(n+1)]+1`
-/

namespace A102553.P12254408032347522241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A102553.P12254408032347522241

noncomputable section

/-- A102553: Numbers k such that for all prime-factors p: p = (k AND p), bitwise.

Offset 1, canonical program `A102553.P12254408032347522241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1541 terms. -/
def A102553 (n : ℕ) : ℤ :=
  (A102553.P12254408032347522241.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1541 terms. -/
def A102553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104260.P17281038735353621208

`∑{digits}[A000040(n+1), (#^5)%16]`
-/

namespace A104260.P17281038735353621208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 5 % 16).sum

end

end A104260.P17281038735353621208

noncomputable section

/-- A104260: Sum of odd digits (1,3,5,7,9) of n-th prime.

Offset 1, canonical program `A104260.P17281038735353621208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104260 (n : ℕ) : ℤ :=
  (A104260.P17281038735353621208.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105551.P10952115211423103239

`A001221(n^3+n²+71)`
-/

namespace A105551.P10952115211423103239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n ^ 3 + n ^ 2 + 71)

end

end A105551.P10952115211423103239

noncomputable section

/-- A105551: Number of distinct prime factors of n^3 + n^2 + 71.

Offset 0, canonical program `A105551.P10952115211423103239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105551 (n : ℕ) : ℤ :=
  A105551.P10952115211423103239.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106404.P11986901570279237370

`A001221(gcd(xor(1, -n), ∑[n]))`
-/

namespace A106404.P11986901570279237370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A106404.P11986901570279237370

noncomputable section

/-- A106404: Number of even semiprimes dividing n.

Offset 1, canonical program `A106404.P11986901570279237370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106404 (n : ℕ) : ℤ :=
  A106404.P11986901570279237370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106633.P11456217349808284816

`A005408(n)+A006218(n)`
-/

namespace A106633.P11456217349808284816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A006218 n

end

end A106633.P11456217349808284816

noncomputable section

/-- A106633: Number of ways to express n as k+l*m, with k, l, m all in the range [0..n].

Offset 0, canonical program `A106633.P11456217349808284816`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106633 (n : ℕ) : ℤ :=
  A106633.P11456217349808284816.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106633.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107079.P8145768499534566836

`1+A013928(n+1)`
-/

namespace A107079.P8145768499534566836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A013928 (n + 1)

end

end A107079.P8145768499534566836

noncomputable section

/-- A107079: Minimal number of squared primes in a squarefree gap of length n.

Offset 1, canonical program `A107079.P8145768499534566836`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107079 (n : ℕ) : ℤ :=
  A107079.P8145768499534566836.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109255.P9671639298697881659

`(A002144(n+1)²-1)/12`
-/

namespace A109255.P9671639298697881659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) ^ 2 - 1 : ℚ) / 12

end

end A109255.P9671639298697881659

noncomputable section

/-- A109255: a(n) = (p^2 - 1) / 12, where p is the n-th prime of the form 4*k+1.

Offset 1, canonical program `A109255.P9671639298697881659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109255 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109255.P9671639298697881659.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111181.P943142989482477223

`A000040(n+1)-A000720(n+1)`
-/

namespace A111181.P943142989482477223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000720 (n + 1)

end

end A111181.P943142989482477223

noncomputable section

/-- A111181: a(n) = prime(n) - pi(n).

Offset 1, canonical program `A111181.P943142989482477223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111181 (n : ℕ) : ℤ :=
  A111181.P943142989482477223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A000720, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A111181.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112329.P9266863657397997386

`A094572(n+1)/2`
-/

namespace A112329.P9266863657397997386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094572 (n + 1) : ℚ) / 2

end

end A112329.P9266863657397997386

noncomputable section

/-- A112329: Number of divisors of n if n odd, number of divisors of n/4 if n divisible by 4, otherwise 0.

Offset 1, canonical program `A112329.P9266863657397997386`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112329 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112329.P9266863657397997386.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112329.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113161.P7234913530930346429

`A000040(A000720(a(n-1)+n))` with `a(0)=1`
-/

namespace A113161.P7234913530930346429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A000720 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A113161.P7234913530930346429

noncomputable section

/-- A113161: a(1) = 1; for n > 1, a(n) = largest prime <= a(n-1) + n - 1.

Offset 1, canonical program `A113161.P7234913530930346429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. -/
def A113161 (n : ℕ) : ℤ :=
  A113161.P7234913530930346429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. -/
def A113161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104015.P16873203914429241289

`A293354(n)-A293352(n)`
-/

namespace A104015.P16873203914429241289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293354 n - A293352 n

end

end A104015.P16873203914429241289

noncomputable section

/-- A104015: Binary expansion of Euler's constant (or Euler-Mascheroni constant) gamma (A001620).

Offset 0, canonical program `A104015.P16873203914429241289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A104015 (n : ℕ) : ℤ :=
  A104015.P16873203914429241289.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A104015.provenance : SequenceMachineLib.Provenance := .conjectured

