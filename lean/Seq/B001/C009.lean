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

/-! ## A338192.P8906844135182273752

`A000073(n)+A000045(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A338192.P8906844135182273752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + A000045 n

end

end A338192.P8906844135182273752

noncomputable section

/-- A338192: Sum of Fibonacci and tribonacci numbers: a(n) = A000073(n) + A000045(n).

Offset 0, canonical program `A338192.P8906844135182273752`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000073(n)+A000045(n)` (program `A338192.P8906844135182273752`, by `A338192.P8906844135182273752.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A338192 (n : ℕ) : ℤ :=
  A338192.P8906844135182273752.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000073(n)+A000045(n)` (program `A338192.P8906844135182273752`, by `A338192.P8906844135182273752.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A338192.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A352180.P7692494567590223161

`9*A006190(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A352180.P7692494567590223161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A006190 n + 1

end

end A352180.P7692494567590223161

noncomputable section

/-- A352180: a(n) = 9*A006190(n)+1.

Offset 0, canonical program `A352180.P7692494567590223161`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*A006190(n)+1` (program `A352180.P7692494567590223161`, by `A352180.P7692494567590223161.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A352180 (n : ℕ) : ℤ :=
  A352180.P7692494567590223161.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*A006190(n)+1` (program `A352180.P7692494567590223161`, by `A352180.P7692494567590223161.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A352180.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A355020.P11655395210472108157

`(-1)^n*A000045(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355020.P11655395210472108157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000045 n + 1

end

end A355020.P11655395210472108157

noncomputable section

/-- A355020: a(n) = (-1)^n * A000045(n) + 1.

Offset 0, canonical program `A355020.P11655395210472108157`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*A000045(n)+1` (program `A355020.P11655395210472108157`, by `A355020.P11655395210472108157.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A355020 (n : ℕ) : ℤ :=
  A355020.P11655395210472108157.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*A000045(n)+1` (program `A355020.P11655395210472108157`, by `A355020.P11655395210472108157.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A355020.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A356050.P14022949044699761598

`2*A135318(n+1)-A135318(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356050.P14022949044699761598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135318 (n + 1) - A135318 n

end

end A356050.P14022949044699761598

noncomputable section

/-- A356050: a(n) = 2*A135318(n+1) - A135318(n).

Offset 0, canonical program `A356050.P14022949044699761598`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A135318(n+1)-A135318(n)` (program `A356050.P14022949044699761598`, by `A356050.P14022949044699761598.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356050 (n : ℕ) : ℤ :=
  A356050.P14022949044699761598.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A135318(n+1)-A135318(n)` (program `A356050.P14022949044699761598`, by `A356050.P14022949044699761598.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A356050.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A316386.P3567086635132274071

`n*A009545(n)`
-/

namespace A316386.P3567086635132274071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A009545 n

end

end A316386.P3567086635132274071

noncomputable section

/-- A316386: Binomial transform of [0, 1, 2, -3, -4, 5, 6, -7, -8, ...].

Offset 0, canonical program `A316386.P3567086635132274071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316386 (n : ℕ) : ℤ :=
  A316386.P3567086635132274071.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316386.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A317408.P10668422814070760855

`n*A001906(n)`
-/

namespace A317408.P10668422814070760855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001906 n

end

end A317408.P10668422814070760855

noncomputable section

/-- A317408: a(n) = n * Fibonacci(2n).

Offset 0, canonical program `A317408.P10668422814070760855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A317408 (n : ℕ) : ℤ :=
  A317408.P10668422814070760855.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A317408.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A317873.P14961294624964069725

`A034887(n!)`
-/

namespace A317873.P14961294624964069725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (Nat.factorial n)

end

end A317873.P14961294624964069725

noncomputable section

/-- A317873: Number of digits in 2^(n!).

Offset 0, canonical program `A317873.P14961294624964069725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A317873 (n : ℕ) : ℤ :=
  A317873.P14961294624964069725.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A317873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319527.P18010082604810730284

`7*A000203(n+1)`
-/

namespace A319527.P18010082604810730284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000203 (n + 1)

end

end A319527.P18010082604810730284

noncomputable section

/-- A319527: a(n) = 7 * sigma(n).

Offset 1, canonical program `A319527.P18010082604810730284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319527 (n : ℕ) : ℤ :=
  A319527.P18010082604810730284.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319588.P16662565000547195772

`A000217(A165517(n+1))`
-/

namespace A319588.P16662565000547195772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A165517 (n + 1)).toNat

end

end A319588.P16662565000547195772

noncomputable section

/-- A319588: First of three consecutive triangular numbers that add up to a perfect square.

Offset 1, canonical program `A319588.P16662565000547195772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319588 (n : ℕ) : ℤ :=
  A319588.P16662565000547195772.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319750.P4324588437210756397

`A006190(2^n)`
-/

namespace A319750.P4324588437210756397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (2 ^ n)

end

end A319750.P4324588437210756397

noncomputable section

/-- A319750: a(n) is the denominator of the Heron sequence with h(0) = 3.

Offset 0, canonical program `A319750.P4324588437210756397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319750 (n : ℕ) : ℤ :=
  A319750.P4324588437210756397.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319842.P8477965333211123551

`8*A104720(n)+ceil(n/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319842.P8477965333211123551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A104720 n + ⌈(n : ℚ) / 2⌉

end

end A319842.P8477965333211123551

noncomputable section

/-- A319842: a(n) = 8 * A104720(n) + ceiling(n/2).

Offset 0, canonical program `A319842.P8477965333211123551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319842 (n : ℕ) : ℤ :=
  A319842.P8477965333211123551.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319842.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A320660.P311254634174233026

`3*(A084128(n)-2*A239549(n)+3*A239549(n+1))`
-/

namespace A320660.P311254634174233026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A084128 n - 2 * A239549 n + 3 * A239549 (n + 1))

end

end A320660.P311254634174233026

noncomputable section

/-- A320660: Number of business cards required to build an origami level n Jerusalem cube.

Offset 0, canonical program `A320660.P311254634174233026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320660 (n : ℕ) : ℤ :=
  A320660.P311254634174233026.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320660.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A321311.P15851712544406314478

`A293156(n+1)-5*2^n`
-/

namespace A321311.P15851712544406314478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293156 (n + 1) - (5 * 2 ^ n : ℤ)

end

end A321311.P15851712544406314478

noncomputable section

/-- A321311: Number of linear chord diagrams having n+2 chords and minimal chord length n.

Offset 1, canonical program `A321311.P15851712544406314478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A321311 (n : ℕ) : ℤ :=
  A321311.P15851712544406314478.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A321311.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A321672.P12387618061068922238

`A000584(n)-A168178(n)`
-/

namespace A321672.P12387618061068922238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n - A168178 n

end

end A321672.P12387618061068922238

noncomputable section

/-- A321672: Number of chiral pairs of rows of length 5 using up to n colors.

Offset 0, canonical program `A321672.P12387618061068922238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A321672 (n : ℕ) : ℤ :=
  A321672.P12387618061068922238.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A321672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A322496.P15569204734757494915

`2*a(n-1)+a(n-2)+A049347(n)` with `a(0)=1, a(1)=1`
-/

namespace A322496.P15569204734757494915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) + a (n - 2) + A049347 n

end

end A322496.P15569204734757494915

noncomputable section

/-- A322496: Number of tilings of a 3 X n rectangle using V (2m+1)-ominoes (m >= 0) in standard orientation.

Offset 0, canonical program `A322496.P15569204734757494915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322496 (n : ℕ) : ℤ :=
  A322496.P15569204734757494915.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A323202.P6238491376433411398

`(-1)^n*A098178(n)`
-/

namespace A323202.P6238491376433411398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A098178 n

end

end A323202.P6238491376433411398

noncomputable section

/-- A323202: Expansion of (1 - x) * (1 - x^3) / (1 - x^4) in powers of x.

Offset 0, canonical program `A323202.P6238491376433411398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323202 (n : ℕ) : ℤ :=
  A323202.P6238491376433411398.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A323225.P13106198949139252087

`(A001787(n)+A009545(n))/2`
-/

namespace A323225.P13106198949139252087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 n + A009545 n : ℚ) / 2

end

end A323225.P13106198949139252087

noncomputable section

/-- A323225: a(n) = ((2^n*n + i*(1 - i)^n - i*(1 + i)^n))/4, where i is the imaginary unit.

Offset 0, canonical program `A323225.P13106198949139252087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323225 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323225.P13106198949139252087.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A323723.P10463574231425585088

`2*A004526(n*A000982(n))`
-/

namespace A323723.P10463574231425585088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004526 ((n : ℤ) * A000982 n).toNat

end

end A323723.P10463574231425585088

noncomputable section

/-- A323723: a(n) = (-2 - (-1)^n*(-2 + n) + n + 2*n^3)/4.

Offset 0, canonical program `A323723.P10463574231425585088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323723 (n : ℕ) : ℤ :=
  A323723.P10463574231425585088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324487.P9094464048076715283

`A001350(n)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324487.P9094464048076715283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 n ^ 3

end

end A324487.P9094464048076715283

noncomputable section

/-- A324487: a(n) = A001350(n)^3.

Offset 0, canonical program `A324487.P9094464048076715283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324487 (n : ℕ) : ℤ :=
  A324487.P9094464048076715283.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325691.P1920078443294648485

`A005044(n+3)-A000035(n+3)`
-/

namespace A325691.P1920078443294648485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 3) - A000035 (n + 3)

end

end A325691.P1920078443294648485

noncomputable section

/-- A325691: Number of length-3 integer partitions of n whose largest part is not greater than the sum of the other two.

Offset 0, canonical program `A325691.P1920078443294648485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325691 (n : ℕ) : ℤ :=
  A325691.P1920078443294648485.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325912.P16718850207318004596

`A001146(n)-a(n-1)` with `a(0)=2`
-/

namespace A325912.P16718850207318004596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001146 n - a (n - 1)

end

end A325912.P16718850207318004596

noncomputable section

/-- A325912: a(n) = (-1)^n * Sum_{k=0..n} (-1)^k*2^(2^k).

Offset 0, canonical program `A325912.P16718850207318004596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325912 (n : ℕ) : ℤ :=
  A325912.P16718850207318004596.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325912.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326251.P7252874658050800609

`2^(n*(n+1)/2)*A054726(n)`
-/

namespace A326251.P7252874658050800609
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n : ℚ) * ((n + 1 : ℚ) / 2) : ℝ) * (A054726 n : ℝ)

end

end A326251.P7252874658050800609

noncomputable section

/-- A326251: Number of digraphs with vertices {1..n} whose increasing edges are not crossing.

Offset 0, canonical program `A326251.P7252874658050800609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A326251.P7252874658050800609.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326253.P12016112695788045133

`A000522(n²)`
-/

namespace A326253.P12016112695788045133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (n ^ 2)

end

end A326253.P12016112695788045133

noncomputable section

/-- A326253: Number of sequences of distinct ordered pairs of positive integers up to n.

Offset 0, canonical program `A326253.P12016112695788045133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326253 (n : ℕ) : ℤ :=
  A326253.P12016112695788045133.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326290.P15676469729340094560

`2^n*A054726(n)`
-/

namespace A326290.P15676469729340094560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A054726 n

end

end A326290.P15676469729340094560

noncomputable section

/-- A326290: Number of non-crossing n-vertex graphs with loops.

Offset 0, canonical program `A326290.P15676469729340094560`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326290 (n : ℕ) : ℤ :=
  A326290.P15676469729340094560.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326290.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326988.P10350462572344602994

`A000203(n+1)-A038712(n+1)`
-/

namespace A326988.P10350462572344602994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A038712 (n + 1)

end

end A326988.P10350462572344602994

noncomputable section

/-- A326988: Sum of nonpowers of 2 dividing n.

Offset 1, canonical program `A326988.P10350462572344602994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326988 (n : ℕ) : ℤ :=
  A326988.P10350462572344602994.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A327767.P14717215174623562762

`-A168361(n+2)`
-/

namespace A327767.P14717215174623562762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A168361 (n + 2)

end

end A327767.P14717215174623562762

noncomputable section

/-- A327767: Period 2: repeat [1, -2].

Offset 1, canonical program `A327767.P14717215174623562762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327767 (n : ℕ) : ℤ :=
  A327767.P14717215174623562762.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327767.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A328334.P11458621354846274728

`A063005(n+1)-A063005(n)`
-/

namespace A328334.P11458621354846274728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063005 (n + 1) - A063005 n

end

end A328334.P11458621354846274728

noncomputable section

/-- A328334: Forward difference of difference between 2^n and the next smaller power of 3.

Offset 0, canonical program `A328334.P11458621354846274728`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328334 (n : ℕ) : ℤ :=
  A328334.P11458621354846274728.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A328334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329115.P3151289939489292325

`floor(A026549(n)/5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329115.P3151289939489292325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026549 n : ℚ) / 5⌋

end

end A329115.P3151289939489292325

noncomputable section

/-- A329115: a(n) = floor(A026549(n)/5).

Offset 1, canonical program `A329115.P3151289939489292325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329115 (n : ℕ) : ℤ :=
  A329115.P3151289939489292325.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329227.P5060117533590298669

`A000931(n)*A000931(n+1)`
-/

namespace A329227.P5060117533590298669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n * A000931 (n + 1)

end

end A329227.P5060117533590298669

noncomputable section

/-- A329227: Products of consecutive terms of the Padovan sequence A000931.

Offset 0, canonical program `A329227.P5060117533590298669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329227 (n : ℕ) : ℤ :=
  A329227.P5060117533590298669.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329244.P4010248767116107399

`A000931(3*n+2)+1`
-/

namespace A329244.P4010248767116107399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (3 * n + 2) + 1

end

end A329244.P4010248767116107399

noncomputable section

/-- A329244: Sum of every third term of the Padovan sequence A000931.

Offset 0, canonical program `A329244.P4010248767116107399`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329244 (n : ℕ) : ℤ :=
  A329244.P4010248767116107399.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329583.P13906209976555148954

`A261327(n)+A131561(n+2)`
-/

namespace A329583.P13906209976555148954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 n + A131561 (n + 2)

end

end A329583.P13906209976555148954

noncomputable section

/-- A329583: Numerators of 1 + n^2/4 + period 3: repeat [-1, 1, 1].

Offset 0, canonical program `A329583.P13906209976555148954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329583 (n : ℕ) : ℤ :=
  A329583.P13906209976555148954.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329753.P2415687677086321597

`A000330(A000330(n))`
-/

namespace A329753.P2415687677086321597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A000330 n).toNat

end

end A329753.P2415687677086321597

noncomputable section

/-- A329753: Doubly square pyramidal numbers.

Offset 0, canonical program `A329753.P2415687677086321597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329753 (n : ℕ) : ℤ :=
  A329753.P2415687677086321597.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329753.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329754.P3232725764694053512

`A002411(A002411(n))`
-/

namespace A329754.P3232725764694053512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (A002411 n).toNat

end

end A329754.P3232725764694053512

noncomputable section

/-- A329754: Doubly pentagonal pyramidal numbers.

Offset 0, canonical program `A329754.P3232725764694053512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329754 (n : ℕ) : ℤ :=
  A329754.P3232725764694053512.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329755.P13787465299086933215

`A002412(A002412(n))`
-/

namespace A329755.P13787465299086933215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A002412 n).toNat

end

end A329755.P13787465299086933215

noncomputable section

/-- A329755: Doubly hexagonal pyramidal numbers.

Offset 0, canonical program `A329755.P13787465299086933215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329755 (n : ℕ) : ℤ :=
  A329755.P13787465299086933215.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329755.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329756.P11124779587301009923

`A002413(A002413(n))`
-/

namespace A329756.P11124779587301009923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 (A002413 n).toNat

end

end A329756.P11124779587301009923

noncomputable section

/-- A329756: Doubly heptagonal pyramidal numbers.

Offset 0, canonical program `A329756.P11124779587301009923`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329756 (n : ℕ) : ℤ :=
  A329756.P11124779587301009923.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A329964.P473401621958208727

`A262033(n)²`
-/

namespace A329964.P473401621958208727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262033 n ^ 2

end

end A329964.P473401621958208727

noncomputable section

/-- A329964: a(n) = (n!/floor(1+n/2)!)^2.

Offset 0, canonical program `A329964.P473401621958208727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329964 (n : ℕ) : ℤ :=
  A329964.P473401621958208727.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A330520.P8694839705143417177

`A002378(floor(n/2))*A000290(ceil(n/2))`
-/

namespace A330520.P8694839705143417177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 ⌊(n : ℚ) / 2⌋.toNat * A000290 ⌈(n : ℚ) / 2⌉.toNat

end

end A330520.P8694839705143417177

noncomputable section

/-- A330520: Sum of even integers <= n times the sum of odd integers <= n.

Offset 0, canonical program `A330520.P8694839705143417177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330520 (n : ℕ) : ℤ :=
  A330520.P8694839705143417177.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A330638.P2324242124826982898

`A000129(n)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A330638.P2324242124826982898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000129 n * a (n - 1) + a (n - 2)

end

end A330638.P2324242124826982898

noncomputable section

/-- A330638: a(n) = P(n)*a(n-1) + a(n-2), with a(0) = 0, a(1) = 1 where P(n) is the n-th Pell number.

Offset 0, canonical program `A330638.P2324242124826982898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330638 (n : ℕ) : ℤ :=
  A330638.P2324242124826982898.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A330638.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331433.P3188401635239420393

`6*(-1)^n*A000292(n+1)`
-/

namespace A331433.P3188401635239420393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (-1) ^ n * A000292 (n + 1)

end

end A331433.P3188401635239420393

noncomputable section

/-- A331433: Column 1 of triangle in A331431.

Offset 0, canonical program `A331433.P3188401635239420393`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331433 (n : ℕ) : ℤ :=
  A331433.P3188401635239420393.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331434.P10241733263217648519

`30*(-1)^n*A000389(n+5)`
-/

namespace A331434.P10241733263217648519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * (-1) ^ n * A000389 (n + 5)

end

end A331434.P10241733263217648519

noncomputable section

/-- A331434: Column 2 of triangle in A331431.

Offset 0, canonical program `A331434.P10241733263217648519`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331434 (n : ℕ) : ℤ :=
  A331434.P10241733263217648519.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331768.P238044851699842190

`480*A000447(n+1)`
-/

namespace A331768.P238044851699842190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  480 * A000447 (n + 1)

end

end A331768.P238044851699842190

noncomputable section

/-- A331768: El Gradechi's hybrid coefficients alpha^{4,4}_{2n}.

Offset 0, canonical program `A331768.P238044851699842190`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331768 (n : ℕ) : ℤ :=
  A331768.P238044851699842190.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331768.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331788.P17157103669528982093

`A331786(n+1)+1`
-/

namespace A331788.P17157103669528982093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331786 (n + 1) + 1

end

end A331788.P17157103669528982093

noncomputable section

/-- A331788: a(n) is the smallest m such that for any N, at least one of S(N), S(N+1), ..., S(N+m-1) is divisible by n, where S(N) is the sum of digits of N.

Offset 1, canonical program `A331788.P17157103669528982093`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331788 (n : ℕ) : ℤ :=
  A331788.P17157103669528982093.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331788.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332126.P18443881036410398908

`2*A332113(n)`
-/

namespace A332126.P18443881036410398908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332113 n

end

end A332126.P18443881036410398908

noncomputable section

/-- A332126: a(n) = 2*(10^(2n+1)-1)/9 + 4*10^n.

Offset 0, canonical program `A332126.P18443881036410398908`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332126 (n : ℕ) : ℤ :=
  A332126.P18443881036410398908.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332128.P7823734631749699510

`2*A332114(n)`
-/

namespace A332128.P7823734631749699510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332114 n

end

end A332128.P7823734631749699510

noncomputable section

/-- A332128: a(n) = 2*(10^(2n+1)-1)/9 + 6*10^n.

Offset 0, canonical program `A332128.P7823734631749699510`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332128 (n : ℕ) : ℤ :=
  A332128.P7823734631749699510.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332136.P3185806271854131447

`3*A332112(n)`
-/

namespace A332136.P3185806271854131447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A332112 n

end

end A332136.P3185806271854131447

noncomputable section

/-- A332136: a(n) = 3*(10^(2n+1)-1)/9 + 3*10^n.

Offset 0, canonical program `A332136.P3185806271854131447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332136 (n : ℕ) : ℤ :=
  A332136.P3185806271854131447.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332139.P6092008335846991546

`3*A332113(n)`
-/

namespace A332139.P6092008335846991546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A332113 n

end

end A332139.P6092008335846991546

noncomputable section

/-- A332139: a(n) = (10^(2*n+1)-1)/3 + 6*10^n.

Offset 0, canonical program `A332139.P6092008335846991546`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332139 (n : ℕ) : ℤ :=
  A332139.P6092008335846991546.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332142.P8543533334691509087

`2*A332121(n)`
-/

namespace A332142.P8543533334691509087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332121 n

end

end A332142.P8543533334691509087

noncomputable section

/-- A332142: a(n) = 4*(10^(2*n+1)-1)/9 - 2*10^n.

Offset 0, canonical program `A332142.P8543533334691509087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332142 (n : ℕ) : ℤ :=
  A332142.P8543533334691509087.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332146.P16291419532192447065

`2*A332123(n)`
-/

namespace A332146.P16291419532192447065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332123 n

end

end A332146.P16291419532192447065

noncomputable section

/-- A332146: a(n) = 4*(10^(2*n+1)-1)/9 + 2*10^n.

Offset 0, canonical program `A332146.P16291419532192447065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332146 (n : ℕ) : ℤ :=
  A332146.P16291419532192447065.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332146.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332162.P16025973414823091023

`2*A332131(n)`
-/

namespace A332162.P16025973414823091023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332131 n

end

end A332162.P16025973414823091023

noncomputable section

/-- A332162: a(n) = 6*(10^(2*n+1)-1)/9 - 4*10^n.

Offset 0, canonical program `A332162.P16025973414823091023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332162 (n : ℕ) : ℤ :=
  A332162.P16025973414823091023.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332163.P16601454885459279620

`3*A332121(n)`
-/

namespace A332163.P16601454885459279620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A332121 n

end

end A332163.P16601454885459279620

noncomputable section

/-- A332163: a(n) = 6*(10^(2*n+1)-1)/9 - 3*10^n.

Offset 0, canonical program `A332163.P16601454885459279620`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332163 (n : ℕ) : ℤ :=
  A332163.P16601454885459279620.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332163.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332164.P10843297782638885530

`2*A332132(n)`
-/

namespace A332164.P10843297782638885530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332132 n

end

end A332164.P10843297782638885530

noncomputable section

/-- A332164: a(n) = 6*(10^(2*n+1)-1)/9 - 2*10^n.

Offset 0, canonical program `A332164.P10843297782638885530`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332164 (n : ℕ) : ℤ :=
  A332164.P10843297782638885530.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332168.P10262815002557834672

`2*A332134(n)`
-/

namespace A332168.P10262815002557834672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332134 n

end

end A332168.P10262815002557834672

noncomputable section

/-- A332168: a(n) = 6*(10^(2*n+1)-1)/9 + 2*10^n.

Offset 0, canonical program `A332168.P10262815002557834672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332168 (n : ℕ) : ℤ :=
  A332168.P10262815002557834672.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332168.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332169.P17019299661943486869

`3*A332123(n)`
-/

namespace A332169.P17019299661943486869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A332123 n

end

end A332169.P17019299661943486869

noncomputable section

/-- A332169: a(n) = 6*(10^(2*n+1)-1)/9 + 3*10^n.

Offset 0, canonical program `A332169.P17019299661943486869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332169 (n : ℕ) : ℤ :=
  A332169.P17019299661943486869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332182.P442223223405626062

`2*A332141(n)`
-/

namespace A332182.P442223223405626062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332141 n

end

end A332182.P442223223405626062

noncomputable section

/-- A332182: a(n) = 8*(10^(2*n+1) - 1)/9 - 6*10^n.

Offset 0, canonical program `A332182.P442223223405626062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332182 (n : ℕ) : ℤ :=
  A332182.P442223223405626062.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332182.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A332186.P6676226021013196062

`2*A332143(n)`
-/

namespace A332186.P6676226021013196062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332143 n

end

end A332186.P6676226021013196062

noncomputable section

/-- A332186: a(n) = 8*(10^(2n+1)-1)/9 - 2*10^n.

Offset 0, canonical program `A332186.P6676226021013196062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332186 (n : ℕ) : ℤ :=
  A332186.P6676226021013196062.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332186.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A334415.P14383701703113336650

`n-A101803(n)`
-/

namespace A334415.P14383701703113336650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A101803 n

end

end A334415.P14383701703113336650

noncomputable section

/-- A334415: Nearest integer to n*(2-phi), where phi is the golden ratio (A001622).

Offset 0, canonical program `A334415.P14383701703113336650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334415 (n : ℕ) : ℤ :=
  A334415.P14383701703113336650.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A334670.P1019668788374680318

`(2*n+1)*a(n-1)+A001147(n)` with `a(0)=0`
-/

namespace A334670.P1019668788374680318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n + 1 : ℤ) * a (n - 1) + A001147 n

end

end A334670.P1019668788374680318

noncomputable section

/-- A334670: a(n) = (2*n+1)!! * (Sum_{k=1..n} 1/(2*k+1)).

Offset 0, canonical program `A334670.P1019668788374680318`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334670 (n : ℕ) : ℤ :=
  A334670.P1019668788374680318.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A334716.P14988388449803785155

`A000166(n)+A001563(n)`
-/

namespace A334716.P14988388449803785155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n + A001563 n

end

end A334716.P14988388449803785155

noncomputable section

/-- A334716: a(n) = !n + n * n!, where !n = A000166(n) is subfactorial of n.

Offset 0, canonical program `A334716.P14988388449803785155`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334716 (n : ℕ) : ℤ :=
  A334716.P14988388449803785155.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A335111.P10838613545657729623

`A000023(n)-A122803(n)`
-/

namespace A335111.P10838613545657729623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000023 n - A122803 n

end

end A335111.P10838613545657729623

noncomputable section

/-- A335111: a(n) = n! * Sum_{k=0..n-1} (-2)^k / k!.

Offset 0, canonical program `A335111.P10838613545657729623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335111 (n : ℕ) : ℤ :=
  A335111.P10838613545657729623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A335649.P1885497609821891369

`1/3*A092184(n+1)*(A092184(n+1)-1)`
-/

namespace A335649.P1885497609821891369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A092184 (n + 1) * (A092184 (n + 1) - 1) : ℚ)

end

end A335649.P1885497609821891369

noncomputable section

/-- A335649: a(n) is the frequency of multi-pairs in a sequence of multi-set designs with 2 blocks.

Offset 1, canonical program `A335649.P1885497609821891369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335649 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A335649.P1885497609821891369.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335649.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A335691.P3112059523892470956

`A000166(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A335691.P3112059523892470956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n ^ 2

end

end A335691.P3112059523892470956

noncomputable section

/-- A335691: A000166(n)^2.

Offset 0, canonical program `A335691.P3112059523892470956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335691 (n : ℕ) : ℤ :=
  A335691.P3112059523892470956.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A338226.P18042995807750677098

`A052245(n)-A014824(n)`
-/

namespace A338226.P18042995807750677098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052245 n - A014824 n

end

end A338226.P18042995807750677098

noncomputable section

/-- A338226: a(n) = Sum_{i=0..n-1} i*10^i - Sum_{i=0..n-1} (n-1-i)*10^i.

Offset 1, canonical program `A338226.P18042995807750677098`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338226 (n : ℕ) : ℤ :=
  A338226.P18042995807750677098.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A338489.P10710303634164486303

`A000142(n)-A000217(A129960(n))`
-/

namespace A338489.P10710303634164486303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000217 (A129960 n).toNat

end

end A338489.P10710303634164486303

noncomputable section

/-- A338489: Let t be the closest triangular number to n! (in case n=2, the only case where we have a tie, take the larger t); then a(n) = n! - t.

Offset 0, canonical program `A338489.P10710303634164486303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338489 (n : ℕ) : ℤ :=
  A338489.P10710303634164486303.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A338726.P9146754565899168288

`A000108(n)+A000295(n)`
-/

namespace A338726.P9146754565899168288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A000295 n

end

end A338726.P9146754565899168288

noncomputable section

/-- A338726: a(n) = Catalan(n) + 2^n - n - 1.

Offset 0, canonical program `A338726.P9146754565899168288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338726 (n : ℕ) : ℤ :=
  A338726.P9146754565899168288.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A338996.P17049853888023552023

`2*A004320(n)-A000332(n+3)`
-/

namespace A338996.P17049853888023552023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004320 n - A000332 (n + 3)

end

end A338996.P17049853888023552023

noncomputable section

/-- A338996: Numbers of squares and rectangles of all sizes in 3*n*(n+1)/2-ominoes in form of three-quarters of Aztec diamonds.

Offset 0, canonical program `A338996.P17049853888023552023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338996 (n : ℕ) : ℤ :=
  A338996.P17049853888023552023.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A338996.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A339052.P10319866431429922829

`A005206(2*n+1)-A005206(2*n)`
-/

namespace A339052.P10319866431429922829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n + 1) - A005206 (2 * n)

end

end A339052.P10319866431429922829

noncomputable section

/-- A339052: Odd bisection of the infinite Fibonacci word A096270.

Offset 0, canonical program `A339052.P10319866431429922829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A339052 (n : ℕ) : ℤ :=
  A339052.P10319866431429922829.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A339052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A340507.P13308749696070402216

`floor(sqrt(2*n))-A003056(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340507.P13308749696070402216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (2 * n) : ℤ) - A003056 n

end

end A340507.P13308749696070402216

noncomputable section

/-- A340507: a(n) = floor(sqrt(2*n)) - A003056(n).

Offset 0, canonical program `A340507.P13308749696070402216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A340507 (n : ℕ) : ℤ :=
  A340507.P13308749696070402216.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A340507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A340627.P14412352208586043736

`2^(n+2)-A078008(n)`
-/

namespace A340627.P14412352208586043736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A078008 n

end

end A340627.P14412352208586043736

noncomputable section

/-- A340627: a(n) = (11*2^n - 2*(-1)^n)/3 for n >= 0.

Offset 0, canonical program `A340627.P14412352208586043736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A340627 (n : ℕ) : ℤ :=
  A340627.P14412352208586043736.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A340627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A340849.P14711496973372682514

`A001045(n)+A052928(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340849.P14711496973372682514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + A052928 n

end

end A340849.P14711496973372682514

noncomputable section

/-- A340849: a(n) = A001045(n) + A052928(n).

Offset 0, canonical program `A340849.P14711496973372682514`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A340849 (n : ℕ) : ℤ :=
  A340849.P14711496973372682514.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A340849.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A341522.P9890293250577660605

`1+n+A086799(1+n)`
-/

namespace A341522.P9890293250577660605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((n : ℤ) + A086799 (1 + n))

end

end A341522.P9890293250577660605

noncomputable section

/-- A341522: a(n) = A156552(3*A005940(1+n)).

Offset 0, canonical program `A341522.P9890293250577660605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341522 (n : ℕ) : ℤ :=
  A341522.P9890293250577660605.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341522.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342397.P9157557447394268550

`(A342362(n)-(n+1))/4`
-/

namespace A342397.P9157557447394268550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342362 n - (n + 1 : ℤ) : ℚ) / 4

end

end A342397.P9157557447394268550

noncomputable section

/-- A342397: Expansion of the o.g.f. (2*x^2 + 3*x + 2)*x/((x + 1)^2*(x - 1)^4).

Offset 0, canonical program `A342397.P9157557447394268550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342397 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A342397.P9157557447394268550.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342709.P10944230336865583226

`9*A161582(n+1)+1`
-/

namespace A342709.P10944230336865583226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A161582 (n + 1) + 1

end

end A342709.P10944230336865583226

noncomputable section

/-- A342709: 12-gonal (dodecagonal) square numbers.

Offset 1, canonical program `A342709.P10944230336865583226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342709 (n : ℕ) : ℤ :=
  A342709.P10944230336865583226.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342709.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A342959.P3454453703110628561

`A005206(10^n)`
-/

namespace A342959.P3454453703110628561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (10 ^ n)

end

end A342959.P3454453703110628561

noncomputable section

/-- A342959: Number of 1's within a sample word of length 10^n of the infinite Fibonacci word A003842 where n is the sequence index.

Offset 0, canonical program `A342959.P3454453703110628561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342959 (n : ℕ) : ℤ :=
  A342959.P3454453703110628561.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A342959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343773.P13940850346087918743

`A100223(n+2)`
-/

namespace A343773.P13940850346087918743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100223 (n + 2)

end

end A343773.P13940850346087918743

noncomputable section

/-- A343773: Excess of the number of even Motzkin n-paths (A107587) over the odd ones (A343386).

Offset 0, canonical program `A343773.P13940850346087918743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343773 (n : ℕ) : ℤ :=
  A343773.P13940850346087918743.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A343773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344851.P15786609980723481136

`n²%(2^A070939(n))`
-/

namespace A344851.P15786609980723481136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A070939 n : ℤ)))

end

end A344851.P15786609980723481136

noncomputable section

/-- A344851: a(n) = (n^2) mod (2^A070939(n)).

Offset 0, canonical program `A344851.P15786609980723481136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344851 (n : ℕ) : ℤ :=
  A344851.P15786609980723481136.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344851.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A344853.P1953230496886263085

`2*A054861(n)`
-/

namespace A344853.P1953230496886263085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054861 n

end

end A344853.P1953230496886263085

noncomputable section

/-- A344853: a(n) = n minus (sum of digits of n in base 3).

Offset 0, canonical program `A344853.P1953230496886263085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344853 (n : ℕ) : ℤ :=
  A344853.P1953230496886263085.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344853.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A345458.P7423306774526323950

`A070782(n+1)/2`
-/

namespace A345458.P7423306774526323950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070782 (n + 1) : ℚ) / 2

end

end A345458.P7423306774526323950

noncomputable section

/-- A345458: a(n) = Sum_{k=0..n} binomial(5*n+4,5*k).

Offset 0, canonical program `A345458.P7423306774526323950`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345458 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345458.P7423306774526323950.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A345458.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346432.P9588719984739272964

`n!*A003480(n)`
-/

namespace A346432.P9588719984739272964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003480 n

end

end A346432.P9588719984739272964

noncomputable section

/-- A346432: a(0) = 1; a(n) = n! * Sum_{k=0..n-1} (n-k+1) * a(k) / k!.

Offset 0, canonical program `A346432.P9588719984739272964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346432 (n : ℕ) : ℤ :=
  A346432.P9588719984739272964.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346432.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346502.P9259212163329091167

`2*A004128(n)`
-/

namespace A346502.P9259212163329091167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004128 n

end

end A346502.P9259212163329091167

noncomputable section

/-- A346502: a(n) = 3n - (sum of digits of 3n in base 3).

Offset 0, canonical program `A346502.P9259212163329091167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346502 (n : ℕ) : ℤ :=
  A346502.P9259212163329091167.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346502.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347836.P12725687437174429203

`((3*A047529(n+1)+1)*4-1)/3`
-/

namespace A347836.P12725687437174429203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * A047529 (n + 1) + 1) * 4 - 1 : ℚ) / 3

end

end A347836.P12725687437174429203

noncomputable section

/-- A347836: a(n) = 8*(n + floor(n/3)) - 3; second column of A347834.

Offset 1, canonical program `A347836.P12725687437174429203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347836 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A347836.P12725687437174429203.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A347837.P17309697892349532678

`((3*A047529(n+1)+1)*16-1)/3`
-/

namespace A347837.P17309697892349532678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * A047529 (n + 1) + 1) * 16 - 1 : ℚ) / 3

end

end A347837.P17309697892349532678

noncomputable section

/-- A347837: a(n) = 32*(n + floor(n/3)) - 11; third column of A347834.

Offset 1, canonical program `A347837.P17309697892349532678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347837 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A347837.P17309697892349532678.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A347837.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348407.P17745707699217768331

`2^(n+2)+A113861(n+1)`
-/

namespace A348407.P17745707699217768331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) + A113861 (n + 1)

end

end A348407.P17745707699217768331

noncomputable section

/-- A348407: a(n) = ((n+1)*3*2^(n+1) + 29*2^n + (-1)^n)/9.

Offset 0, canonical program `A348407.P17745707699217768331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348407 (n : ℕ) : ℤ :=
  A348407.P17745707699217768331.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348596.P12357676089723283375

`A068527(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348596.P12357676089723283375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (2 * n + 1)

end

end A348596.P12357676089723283375

noncomputable section

/-- A348596: a(n) = A068527(2*n+1).

Offset 0, canonical program `A348596.P12357676089723283375`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348596 (n : ℕ) : ℤ :=
  A348596.P12357676089723283375.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348596.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348893.P3807632117592940655

`14*A007272(n)/(n+4)`
-/

namespace A348893.P3807632117592940655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 * A007272 n : ℚ) / (n + 4 : ℚ)

end

end A348893.P3807632117592940655

noncomputable section

/-- A348893: a(n) = 840*(2*n)!/((n + 4)!*n!).

Offset 0, canonical program `A348893.P3807632117592940655`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348893.P3807632117592940655.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A348893.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349682.P2633105582033685271

`A000292(6*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349682.P2633105582033685271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (6 * n + 1)

end

end A349682.P2633105582033685271

noncomputable section

/-- A349682: a(n) = A000292(6*n + 1) where A000292 are the tetrahedral numbers.

Offset 0, canonical program `A349682.P2633105582033685271`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349682 (n : ℕ) : ℤ :=
  A349682.P2633105582033685271.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349781.P13004075694395656551

`A000262(n)-n!`
-/

namespace A349781.P13004075694395656551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n - (Nat.factorial n : ℤ)

end

end A349781.P13004075694395656551

noncomputable section

/-- A349781: a(n) = n! * (hypergeom([1 - n], [2], -1) - 1) for n >= 1 and a(0) = 0.

Offset 0, canonical program `A349781.P13004075694395656551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349781 (n : ℕ) : ℤ :=
  A349781.P13004075694395656551.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A349803.P10627015043597352849

`a(n-3)+4*A004523(n-1)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A349803.P10627015043597352849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 3) + 4 * A004523 (n - 1)

end

end A349803.P10627015043597352849

noncomputable section

/-- A349803: a(3*n) = 1 + 4*n^2, a(1+3*n) = 2 + 4*n*(n+1), a(2+3*n) = 5 + 4*n*(n+1).

Offset 0, canonical program `A349803.P10627015043597352849`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349803 (n : ℕ) : ℤ :=
  A349803.P10627015043597352849.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A349803.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350309.P10497274520712298483

`(n+2)*a(n-1)+(n+1)*(A003422(n)-4)/6` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350309.P10497274520712298483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℚ) * a (n - 1) + (n + 1 : ℚ) * ((A003422 n - 4 : ℚ) / 6)

end

end A350309.P10497274520712298483

noncomputable section

/-- A350309: a(n) = (n+2)*a(n-1) + (n+1)*(A003422(n) - 4)/6 for n > 0 with a(0) = 1.

Offset 0, canonical program `A350309.P10497274520712298483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350309 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A350309.P10497274520712298483.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350309.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350666.P12227957440926608139

`1+3*n-A049347(n)`
-/

namespace A350666.P12227957440926608139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + 3 * n : ℤ) - A049347 n

end

end A350666.P12227957440926608139

noncomputable section

/-- A350666: Numbers congruent to 0, 5, and 7 modulo 9: positions of 0 in A159955.

Offset 0, canonical program `A350666.P12227957440926608139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350666 (n : ℕ) : ℤ :=
  A350666.P12227957440926608139.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350668.P17305556624061499628

`1+3*n+A057078(n)`
-/

namespace A350668.P17305556624061499628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + 3 * n : ℤ) + A057078 n

end

end A350668.P17305556624061499628

noncomputable section

/-- A350668: Numbers congruent to 2, 4, and 6 modulo 9: positions of 2 in A159955.

Offset 0, canonical program `A350668.P17305556624061499628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350668 (n : ℕ) : ℤ :=
  A350668.P17305556624061499628.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350717.P1731005143687178255

`a(n-1)+A007583(n-1)` with `a(0)=1`
-/

namespace A350717.P1731005143687178255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007583 (n - 1)

end

end A350717.P1731005143687178255

noncomputable section

/-- A350717: a(n) = 4*a(n-1) - n - 1, for n > 0, a(0) = 1.

Offset 0, canonical program `A350717.P1731005143687178255`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350717 (n : ℕ) : ℤ :=
  A350717.P1731005143687178255.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350962.P11725541393897597194

`A068527(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A350962.P11725541393897597194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (2 * n)

end

end A350962.P11725541393897597194

noncomputable section

/-- A350962: a(n) = A068527(2*n).

Offset 0, canonical program `A350962.P11725541393897597194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350962 (n : ℕ) : ℤ :=
  A350962.P11725541393897597194.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350962.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350967.P9758198226190832862

`9*A298677(n)`
-/

namespace A350967.P9758198226190832862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A298677 n

end

end A350967.P9758198226190832862

noncomputable section

/-- A350967: a(n) = sqrt(84*A144930(n)^2 - 3).

Offset 1, canonical program `A350967.P9758198226190832862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350967 (n : ℕ) : ℤ :=
  A350967.P9758198226190832862.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350994.P10020227689203350434

`2*A332167(n)+1`
-/

namespace A350994.P10020227689203350434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A332167 n + 1

end

end A350994.P10020227689203350434

noncomputable section

/-- A350994: a(n) = (40*100^n + 6*10^n - 1)/3.

Offset 0, canonical program `A350994.P10020227689203350434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350994 (n : ℕ) : ℤ :=
  A350994.P10020227689203350434.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351529.P4768600791599762228

`4^n-A125145(n)`
-/

namespace A351529.P4768600791599762228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A125145 n

end

end A351529.P4768600791599762228

noncomputable section

/-- A351529: The number of quaternary strings of length n containing 00.

Offset 0, canonical program `A351529.P4768600791599762228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351529 (n : ℕ) : ℤ :=
  A351529.P4768600791599762228.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351530.P1775743918637981263

`5^n-A086347(n)`
-/

namespace A351530.P1775743918637981263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - A086347 n

end

end A351530.P1775743918637981263

noncomputable section

/-- A351530: The number of quinary strings of length n containing 00.

Offset 0, canonical program `A351530.P1775743918637981263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351530 (n : ℕ) : ℤ :=
  A351530.P1775743918637981263.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A351683.P16005110043192433238

`A007655(n+1)²`
-/

namespace A351683.P16005110043192433238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007655 (n + 1) ^ 2

end

end A351683.P16005110043192433238

noncomputable section

/-- A351683: Squares that are also 4-dimensional pyramidal numbers.

Offset 1, canonical program `A351683.P16005110043192433238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351683 (n : ℕ) : ℤ :=
  A351683.P16005110043192433238.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A351683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A352692.P8551391395470935622

`A001045(n)+4*(-1)^n`
-/

namespace A352692.P8551391395470935622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + 4 * (-1) ^ n

end

end A352692.P8551391395470935622

noncomputable section

/-- A352692: a(n) + a(n+1) = 2^n for n >= 0 with a(0) = 4.

Offset 0, canonical program `A352692.P8551391395470935622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352692 (n : ℕ) : ℤ :=
  A352692.P8551391395470935622.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353295.P5807671858517643059

`A053187(A000330(n))`
-/

namespace A353295.P5807671858517643059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (A000330 n).toNat

end

end A353295.P5807671858517643059

noncomputable section

/-- A353295: Square nearest to the sum of the first n positive squares.

Offset 0, canonical program `A353295.P5807671858517643059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353295 (n : ℕ) : ℤ :=
  A353295.P5807671858517643059.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A353815.P2689922941255411122

`A011655(A000203(n+1))`
-/

namespace A353815.P2689922941255411122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A000203 (n + 1)).toNat

end

end A353815.P2689922941255411122

noncomputable section

/-- A353815: a(n) = 1 if sigma(n) is not a multiple of 3, otherwise 0.

Offset 1, canonical program `A353815.P2689922941255411122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353815 (n : ℕ) : ℤ :=
  A353815.P2689922941255411122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A353815.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A354210.P1499617899982813219

`floor(sqrt(A001654(n)))`
-/

namespace A354210.P1499617899982813219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001654 n)

end

end A354210.P1499617899982813219

noncomputable section

/-- A354210: a(n) = floor(sqrt(Fibonacci(n+1)*Fibonacci(n))).

Offset 0, canonical program `A354210.P1499617899982813219`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354210 (n : ℕ) : ℤ :=
  A354210.P1499617899982813219.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354210.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A354337.P8034457894308853883

`15*A092521(n+1)+A288913(n)`
-/

namespace A354337.P8034457894308853883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A092521 (n + 1) + A288913 n

end

end A354337.P8034457894308853883

noncomputable section

/-- A354337: a(n) is the integer w such that (L(2*n)^2, -L(2*n + 1)^2, w) is a primitive solution to the Diophantine equation 2*x^3 + 2*y^3 + z^3 = 125, where L(n) is the n-th Lucas number (A000032).

Offset 1, canonical program `A354337.P8034457894308853883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354337 (n : ℕ) : ℤ :=
  A354337.P8034457894308853883.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A354463.P2239529858229905820

`A027868(A000079(n))`
-/

namespace A354463.P2239529858229905820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A000079 n).toNat

end

end A354463.P2239529858229905820

noncomputable section

/-- A354463: a(n) is the number of trailing zeros in (2^n)!.

Offset 0, canonical program `A354463.P2239529858229905820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354463 (n : ℕ) : ℤ :=
  A354463.P2239529858229905820.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354463.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355021.P16287794224417540827

`(-1)^n*A000032(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355021.P16287794224417540827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000032 n - 1

end

end A355021.P16287794224417540827

noncomputable section

/-- A355021: a(n) = (-1)^n * A000032(n) - 1.

Offset 0, canonical program `A355021.P16287794224417540827`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355021 (n : ℕ) : ℤ :=
  A355021.P16287794224417540827.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355021.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356761.P11169387101489840448

`A000032(2*A000032(n))+A000032(2*A000032(n+1))`
-/

namespace A356761.P11169387101489840448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * A000032 n).toNat + A000032 (2 * A000032 (n + 1)).toNat

end

end A356761.P11169387101489840448

noncomputable section

/-- A356761: a(n) = L(2*L(n)) + L(2*L(n+1)), where L(n) is the n-th Lucas number (A000032).

Offset 0, canonical program `A356761.P11169387101489840448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356761 (n : ℕ) : ℤ :=
  A356761.P11169387101489840448.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A356880.P8649345660940387553

`A029744(n+2)²`
-/

namespace A356880.P8649345660940387553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2) ^ 2

end

end A356880.P8649345660940387553

noncomputable section

/-- A356880: Squares that can be expressed as the sum of two powers of two (2^x + 2^y).

Offset 1, canonical program `A356880.P8649345660940387553`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356880 (n : ℕ) : ℤ :=
  A356880.P8649345660940387553.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358012.P9704978248710709541

`A002266(n)+A010874(n)`
-/

namespace A358012.P9704978248710709541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + A010874 n

end

end A358012.P9704978248710709541

noncomputable section

/-- A358012: Minimal number of coins needed to pay n cents using coins of denominations 1 and 5 cents.

Offset 0, canonical program `A358012.P9704978248710709541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358012 (n : ℕ) : ℤ :=
  A358012.P9704978248710709541.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358012.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A358620.P11323679378711971224

`9*A081045(n)`
-/

namespace A358620.P11323679378711971224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A081045 n

end

end A358620.P11323679378711971224

noncomputable section

/-- A358620: Number of nonzero digits needed to write all nonnegative n-digit integers.

Offset 1, canonical program `A358620.P11323679378711971224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358620 (n : ℕ) : ℤ :=
  A358620.P11323679378711971224.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A358620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359039.P7169220960032041037

`A081123(n+1)*A016116(n)`
-/

namespace A359039.P7169220960032041037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (n + 1) * A016116 n

end

end A359039.P7169220960032041037

noncomputable section

/-- A359039: Number of Wachs permutations of size n.

Offset 0, canonical program `A359039.P7169220960032041037`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359039 (n : ℕ) : ℤ :=
  A359039.P7169220960032041037.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359379.P11651323146356252441

`A079979(3+n)+A121262(n)`
-/

namespace A359379.P11651323146356252441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (3 + n) + A121262 n

end

end A359379.P11651323146356252441

noncomputable section

/-- A359379: a(n) = 1 if n is either a multiple of 4, or an odd multiple of 3, otherwise 0.

Offset 0, canonical program `A359379.P11651323146356252441`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359379 (n : ℕ) : ℤ :=
  A359379.P11651323146356252441.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359379.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359453.P5849783982903546749

`20^n-A359452(n)`
-/

namespace A359453.P5849783982903546749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (20 ^ n : ℤ) - A359452 n

end

end A359453.P5849783982903546749

noncomputable section

/-- A359453: Number of vertices in the partite set of the n-Menger sponge graph that do not contain the corners.

Offset 0, canonical program `A359453.P5849783982903546749`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359453 (n : ℕ) : ℤ :=
  A359453.P5849783982903546749.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359453.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361147.P4691836893654200219

`A000578(A000203(n+1))`
-/

namespace A361147.P4691836893654200219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000203 (n + 1)).toNat

end

end A361147.P4691836893654200219

noncomputable section

/-- A361147: a(n) = sigma(n)^3.

Offset 1, canonical program `A361147.P4691836893654200219`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361147 (n : ℕ) : ℤ :=
  A361147.P4691836893654200219.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361147.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361179.P14434423264293055492

`A000583(A000203(n+1))`
-/

namespace A361179.P14434423264293055492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A000203 (n + 1)).toNat

end

end A361179.P14434423264293055492

noncomputable section

/-- A361179: a(n) = sigma(n)^4.

Offset 1, canonical program `A361179.P14434423264293055492`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361179 (n : ℕ) : ℤ :=
  A361179.P14434423264293055492.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361612.P6490670511747701562

`A017934(2*n+1)`
-/

namespace A361612.P6490670511747701562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (2 * n + 1)

end

end A361612.P6490670511747701562

noncomputable section

/-- A361612: Decimal expansion of sqrt(10) truncated to n places (after the decimal point).

Offset 0, canonical program `A361612.P6490670511747701562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361612 (n : ℕ) : ℤ :=
  A361612.P6490670511747701562.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361612.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361795.P2253438124639216480

`A049472(n)*A049473(n)`
-/

namespace A361795.P2253438124639216480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n * A049473 n

end

end A361795.P2253438124639216480

noncomputable section

/-- A361795: a(n) is the area of the largest rectangle with integer sides that can be drawn inside a circle of diameter n.

Offset 0, canonical program `A361795.P2253438124639216480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361795 (n : ℕ) : ℤ :=
  A361795.P2253438124639216480.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361795.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362067.P7535074229727964740

`2*A094292(n+1)`
-/

namespace A362067.P7535074229727964740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094292 (n + 1)

end

end A362067.P7535074229727964740

noncomputable section

/-- A362067: Sum of successive Fibonacci numbers F(n) : a(n) = Sum_{k = 0..n} F(n+k).

Offset 0, canonical program `A362067.P7535074229727964740`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362067 (n : ℕ) : ℤ :=
  A362067.P7535074229727964740.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362067.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362383.P16107489141346088252

`A000085(n)^n`
-/

namespace A362383.P16107489141346088252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n ^ n

end

end A362383.P16107489141346088252

noncomputable section

/-- A362383: Number of labeled right involutory magmas with n elements.

Offset 0, canonical program `A362383.P16107489141346088252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362383 (n : ℕ) : ℤ :=
  A362383.P16107489141346088252.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362383.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362545.P6428571546983445576

`2*A002315(n)-1`
-/

namespace A362545.P6428571546983445576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n - 1

end

end A362545.P6428571546983445576

noncomputable section

/-- A362545: Number of odd chordless cycles of length >4 in the (2n+1)-flower snark.

Offset 0, canonical program `A362545.P6428571546983445576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362545 (n : ℕ) : ℤ :=
  A362545.P6428571546983445576.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363031.P17719480416991960385

`A000203(6*n+1)`
-/

namespace A363031.P17719480416991960385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (6 * n + 1)

end

end A363031.P17719480416991960385

noncomputable section

/-- A363031: a(n) = sigma(6*n+1). Sum of the divisors of 6*n+1, n >= 0.

Offset 0, canonical program `A363031.P17719480416991960385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363031 (n : ℕ) : ℤ :=
  A363031.P17719480416991960385.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363070.P873385235688535805

`a(n-1)+a(n-2)+A003849(n)+A003849(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A363070.P873385235688535805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) + A003849 n + A003849 (n - 1)

end

end A363070.P873385235688535805

noncomputable section

/-- A363070: Take the terms 0..n of the infinite Fibonacci word A003849, regard them as a number in Fibonacci base.

Offset 0, canonical program `A363070.P873385235688535805`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363070 (n : ℕ) : ℤ :=
  A363070.P873385235688535805.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363070.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363773.P7965947977853477985

`1+A037481(n)`
-/

namespace A363773.P7965947977853477985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A037481 n

end

end A363773.P7965947977853477985

noncomputable section

/-- A363773: a(n) = (4^(n+1) + (-1)^n + 5)/10.

Offset 0, canonical program `A363773.P7965947977853477985`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363773 (n : ℕ) : ℤ :=
  A363773.P7965947977853477985.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364324.P2265542604978520711

`A000142(n)*A000073(n+2)`
-/

namespace A364324.P2265542604978520711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000073 (n + 2)

end

end A364324.P2265542604978520711

noncomputable section

/-- A364324: a(n) = n!*tribonacci(n+2).

Offset 0, canonical program `A364324.P2265542604978520711`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364324 (n : ℕ) : ℤ :=
  A364324.P2265542604978520711.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364352.P11929935299388530784

`A134238(n+2)+2`
-/

namespace A364352.P11929935299388530784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134238 (n + 2) + 2

end

end A364352.P11929935299388530784

noncomputable section

/-- A364352: a(n) is the number of regions into which the plane is divided by n lines parallel to each edge of an equilateral triangle with side n such that the lines extend the parallel edge and divide the other edges into unit segments.

Offset 1, canonical program `A364352.P11929935299388530784`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364352 (n : ℕ) : ℤ :=
  A364352.P11929935299388530784.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364422.P9207797810229963099

`A000142(n)*A001629(n)`
-/

namespace A364422.P9207797810229963099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001629 n

end

end A364422.P9207797810229963099

noncomputable section

/-- A364422: Expansion of e.g.f. x^2/(1-x-x^2)^2.

Offset 0, canonical program `A364422.P9207797810229963099`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364422 (n : ℕ) : ℤ :=
  A364422.P9207797810229963099.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364619.P3636460314008450474

`(n*(2*n-3)*A001333(n)+(2*n²-2*n+1)*A000129(n))/16`
-/

namespace A364619.P3636460314008450474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (((2 * n : ℤ) - 3) * A001333 n) + ((2 * n ^ 2 : ℤ) - (2 * n : ℤ) + 1) * A000129 n : ℚ) / 16

end

end A364619.P3636460314008450474

noncomputable section

/-- A364619: Number of 4-cycles in the n-Pell graph.

Offset 0, canonical program `A364619.P3636460314008450474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364619 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364619.P3636460314008450474.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364922.P17593704846871778946

`2*A179824(n+3)`
-/

namespace A364922.P17593704846871778946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179824 (n + 3)

end

end A364922.P17593704846871778946

noncomputable section

/-- A364922: a(n) is the square of the side length of a simplex whose n-dimensional inner hypervolume is equal to its (n-1)-dimensional surface hypervolume. As a result, the sequence starts at n=2.

Offset 2, canonical program `A364922.P17593704846871778946`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364922 (n : ℕ) : ℤ :=
  A364922.P17593704846871778946.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365293.P4783323181200865108

`A000142(n)*A000078(n+3)`
-/

namespace A365293.P4783323181200865108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000078 (n + 3)

end

end A365293.P4783323181200865108

noncomputable section

/-- A365293: a(n) = n!*tetranacci(n+3).

Offset 0, canonical program `A365293.P4783323181200865108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365293 (n : ℕ) : ℤ :=
  A365293.P4783323181200865108.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365412.P2623690394463438513

`A000203(6*n+2)`
-/

namespace A365412.P2623690394463438513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (6 * n + 2)

end

end A365412.P2623690394463438513

noncomputable section

/-- A365412: a(n) = sigma(6*n+2). Sum of the divisors of 6*n+2, n >= 0.

Offset 0, canonical program `A365412.P2623690394463438513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365412 (n : ℕ) : ℤ :=
  A365412.P2623690394463438513.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365414.P5972711009261170404

`A000203(6*n+4)`
-/

namespace A365414.P5972711009261170404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (6 * n + 4)

end

end A365414.P5972711009261170404

noncomputable section

/-- A365414: a(n) = sigma(6*n+4). Sum of the divisors of 6*n+4, n >= 0.

Offset 0, canonical program `A365414.P5972711009261170404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365414 (n : ℕ) : ℤ :=
  A365414.P5972711009261170404.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365544.P10985151635534295399

`2^n-A068911(n)`
-/

namespace A365544.P10985151635534295399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A068911 n

end

end A365544.P10985151635534295399

noncomputable section

/-- A365544: Number of subsets of {1..n} containing two distinct elements summing to n.

Offset 0, canonical program `A365544.P10985151635534295399`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365544 (n : ℕ) : ℤ :=
  A365544.P10985151635534295399.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366578.P16617700061976378906

`A000203(A034472(n))`
-/

namespace A366578.P16617700061976378906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A034472 n).toNat

end

end A366578.P16617700061976378906

noncomputable section

/-- A366578: Sum of the divisors of 3^n+1.

Offset 0, canonical program `A366578.P16617700061976378906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366578 (n : ℕ) : ℤ :=
  A366578.P16617700061976378906.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366578.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366607.P1860068673342325867

`A000203(A052539(n))`
-/

namespace A366607.P1860068673342325867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A052539 n).toNat

end

end A366607.P1860068673342325867

noncomputable section

/-- A366607: Sum of the divisors of 4^n+1.

Offset 0, canonical program `A366607.P1860068673342325867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366607 (n : ℕ) : ℤ :=
  A366607.P1860068673342325867.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366607.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366617.P11566951996595092433

`A000203(A034474(n))`
-/

namespace A366617.P11566951996595092433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A034474 n).toNat

end

end A366617.P11566951996595092433

noncomputable section

/-- A366617: Sum of the divisors of 5^n+1.

Offset 0, canonical program `A366617.P11566951996595092433`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366617 (n : ℕ) : ℤ :=
  A366617.P11566951996595092433.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366629.P4393599482427692148

`A000203(A062394(n))`
-/

namespace A366629.P4393599482427692148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062394 n).toNat

end

end A366629.P4393599482427692148

noncomputable section

/-- A366629: Sum of the divisors of 6^n+1.

Offset 0, canonical program `A366629.P4393599482427692148`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366629 (n : ℕ) : ℤ :=
  A366629.P4393599482427692148.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366638.P1387904705816823933

`A000203(A034491(n))`
-/

namespace A366638.P1387904705816823933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A034491 n).toNat

end

end A366638.P1387904705816823933

noncomputable section

/-- A366638: Sum of the divisors of 7^n+1.

Offset 0, canonical program `A366638.P1387904705816823933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366638 (n : ℕ) : ℤ :=
  A366638.P1387904705816823933.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366638.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366657.P7731269126698207783

`A000203(A062395(n))`
-/

namespace A366657.P7731269126698207783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062395 n).toNat

end

end A366657.P7731269126698207783

noncomputable section

/-- A366657: Sum of the divisors of 8^n+1.

Offset 0, canonical program `A366657.P7731269126698207783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366657 (n : ℕ) : ℤ :=
  A366657.P7731269126698207783.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366668.P5995148134161548215

`A000203(A062397(n))`
-/

namespace A366668.P5995148134161548215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062397 n).toNat

end

end A366668.P5995148134161548215

noncomputable section

/-- A366668: Sum of the divisors of 10^n+1.

Offset 0, canonical program `A366668.P5995148134161548215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366668 (n : ℕ) : ℤ :=
  A366668.P5995148134161548215.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366689.P2925135001322419960

`A000203(A034524(n))`
-/

namespace A366689.P2925135001322419960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A034524 n).toNat

end

end A366689.P2925135001322419960

noncomputable section

/-- A366689: Sum of the divisors of 11^n+1.

Offset 0, canonical program `A366689.P2925135001322419960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366689 (n : ℕ) : ℤ :=
  A366689.P2925135001322419960.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366715.P16321772633016929860

`A000203(A178248(n))`
-/

namespace A366715.P16321772633016929860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A178248 n).toNat

end

end A366715.P16321772633016929860

noncomputable section

/-- A366715: Sum of the divisors of 12^n+1.

Offset 0, canonical program `A366715.P16321772633016929860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366715 (n : ℕ) : ℤ :=
  A366715.P16321772633016929860.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366715.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366758.P16412360023761090223

`A000203(A038507(n))`
-/

namespace A366758.P16412360023761090223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A038507 n).toNat

end

end A366758.P16412360023761090223

noncomputable section

/-- A366758: a(n) is the sum of the divisors of n!+1.

Offset 0, canonical program `A366758.P16412360023761090223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366758 (n : ℕ) : ℤ :=
  A366758.P16412360023761090223.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366820.P12926968216191275056

`A000203(A014566(n))`
-/

namespace A366820.P12926968216191275056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A014566 n).toNat

end

end A366820.P12926968216191275056

noncomputable section

/-- A366820: a(n) is the sum of the divisors of n^n + 1.

Offset 0, canonical program `A366820.P12926968216191275056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366820 (n : ℕ) : ℤ :=
  A366820.P12926968216191275056.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367010.P7494381377663068735

`A000203(A002064(n))`
-/

namespace A367010.P7494381377663068735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002064 n).toNat

end

end A367010.P7494381377663068735

noncomputable section

/-- A367010: a(n) is the sum of the divisors of n*2^n + 1.

Offset 0, canonical program `A367010.P7494381377663068735`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367010 (n : ℕ) : ℤ :=
  A367010.P7494381377663068735.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367131.P12722315536028894090

`A000203(A000058(n))`
-/

namespace A367131.P12722315536028894090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000058 n).toNat

end

end A367131.P12722315536028894090

noncomputable section

/-- A367131: a(n) is the sum of the divisors of A000058(n) (Sylvester's sequence).

Offset 0, canonical program `A367131.P12722315536028894090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367131 (n : ℕ) : ℤ :=
  A367131.P12722315536028894090.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367131.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367776.P3027205742086758766

`n*A000108(n)*(2*n+1)!/n!`
-/

namespace A367776.P3027205742086758766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000108 n * (Nat.factorial (2 * n + 1) : ℤ) : ℚ) / (Nat.factorial n : ℚ)

end

end A367776.P3027205742086758766

noncomputable section

/-- A367776: a(n) = binomial(2*n, n - 1)*(2*n + 1)! / n!.

Offset 0, canonical program `A367776.P3027205742086758766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367776 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367776.P3027205742086758766.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367776.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368941.P450632481750621154

`A000194(n)+1`
-/

namespace A368941.P450632481750621154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n + 1

end

end A368941.P450632481750621154

noncomputable section

/-- A368941: a(n) = floor(3/2 + sqrt(n)).

Offset 0, canonical program `A368941.P450632481750621154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368941 (n : ℕ) : ℤ :=
  A368941.P450632481750621154.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369836.P541515226587760680

`A003520(5*n)`
-/

namespace A369836.P541515226587760680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (5 * n)

end

end A369836.P541515226587760680

noncomputable section

/-- A369836: Number of compositions of 5*n into parts 1 and 5.

Offset 0, canonical program `A369836.P541515226587760680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369836 (n : ℕ) : ℤ :=
  A369836.P541515226587760680.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369845.P17165904175182421461

`A052920(5*n)`
-/

namespace A369845.P17165904175182421461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (5 * n)

end

end A369845.P17165904175182421461

noncomputable section

/-- A369845: Number of compositions of 5*n into parts 3 and 5.

Offset 0, canonical program `A369845.P17165904175182421461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369845 (n : ℕ) : ℤ :=
  A369845.P17165904175182421461.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370055.P10063796133977021406

`A000142(n)*A001764(n+1)`
-/

namespace A370055.P10063796133977021406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001764 (n + 1)

end

end A370055.P10063796133977021406

noncomputable section

/-- A370055: a(n) = 3*(3*n+2)!/(2*n+3)!.

Offset 0, canonical program `A370055.P10063796133977021406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370055 (n : ℕ) : ℤ :=
  A370055.P10063796133977021406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370188.P15568161150400754513

`sqrt((A114052(n)²-1)/27)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370188.P15568161150400754513
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A114052 n ^ 2 - 1 : ℚ) / 27 : ℝ) / 5

end

end A370188.P15568161150400754513

noncomputable section

/-- A370188: a(n) = sqrt((A114052(n)^2 - 1)/27)/5.

Offset 0, canonical program `A370188.P15568161150400754513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370188 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370188.P15568161150400754513.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370188.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370238.P9180117166049315748

`A151542(n)+n`
-/

namespace A370238.P9180117166049315748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151542 n + (n : ℤ)

end

end A370238.P9180117166049315748

noncomputable section

/-- A370238: a(n) = n*(3*n + 23)/2.

Offset 0, canonical program `A370238.P9180117166049315748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370238 (n : ℕ) : ℤ :=
  A370238.P9180117166049315748.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370253.P12966461108388290693

`A001147(n)-A053871(n)`
-/

namespace A370253.P12966461108388290693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A053871 n

end

end A370253.P12966461108388290693

noncomputable section

/-- A370253: Number of deranged matchings of 2n people with partners (of either sex) such that at least one person is matched with their spouse.

Offset 0, canonical program `A370253.P12966461108388290693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370253 (n : ℕ) : ℤ :=
  A370253.P12966461108388290693.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370307.P1617785029507731027

`A002623(n)+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370307.P1617785029507731027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n + (n : ℤ)

end

end A370307.P1617785029507731027

noncomputable section

/-- A370307: a(n) = A002623(n) + n.

Offset 0, canonical program `A370307.P1617785029507731027`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370307 (n : ℕ) : ℤ :=
  A370307.P1617785029507731027.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370307.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370359.P3050715892632633690

`n^n*A009545(n)`
-/

namespace A370359.P3050715892632633690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A009545 n

end

end A370359.P3050715892632633690

noncomputable section

/-- A370359: Imaginary part of (n + n*i)^n where i = sqrt(-1).

Offset 0, canonical program `A370359.P3050715892632633690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370359 (n : ℕ) : ℤ :=
  A370359.P3050715892632633690.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371125.P14219781672238829575

`A005708(6*n)`
-/

namespace A371125.P14219781672238829575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (6 * n)

end

end A371125.P14219781672238829575

noncomputable section

/-- A371125: Number of compositions of 6*n into parts 1 and 6.

Offset 0, canonical program `A371125.P14219781672238829575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371125 (n : ℕ) : ℤ :=
  A371125.P14219781672238829575.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A323265.P13893778921393904343

`2*A323266(n+1)`
-/

namespace A323265.P13893778921393904343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A323266 (n + 1)

end

end A323265.P13893778921393904343

noncomputable section

/-- A323265: The sequence denoted by p_n used in the calculation of A323260.

Offset 1, canonical program `A323265.P13893778921393904343`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323265 (n : ℕ) : ℤ :=
  A323265.P13893778921393904343.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A352755.P16955159392249968499

`A352756(n+1)^3+(A352756(n+1)+1)^3`
-/

namespace A352755.P16955159392249968499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352756 (n + 1) ^ 3 + (A352756 (n + 1) + 1) ^ 3

end

end A352755.P16955159392249968499

noncomputable section

/-- A352755: Positive centered cube numbers that can be written as the difference of two positive cubes: a(n) = t*(3*t^2 + 4)*(t^2*(3*t^2 + 4)^2 + 3)/4 with t = 2*n-1 and n > 0.

Offset 1, canonical program `A352755.P16955159392249968499`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352755 (n : ℕ) : ℤ :=
  A352755.P16955159392249968499.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352755.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A352759.P2807270408411528565

`A355751(n+1)^3+(A355751(n+1)+1)^3`
-/

namespace A352759.P2807270408411528565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355751 (n + 1) ^ 3 + (A355751 (n + 1) + 1) ^ 3

end

end A352759.P2807270408411528565

noncomputable section

/-- A352759: Centered cube numbers that are the difference of two positive cubes; a(n) = 27*t^3*(27*t^6 + 1)/4 with t = 2*n-1.

Offset 1, canonical program `A352759.P2807270408411528565`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352759 (n : ℕ) : ℤ :=
  A352759.P2807270408411528565.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A352759.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316355.P6644184729398382473

`A161205(n+1)-1`
-/

namespace A316355.P6644184729398382473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (n + 1) - 1

end

end A316355.P6644184729398382473

noncomputable section

/-- A316355: 2k-1 appears 2k times after 2k-2 appears once.

Offset 0, canonical program `A316355.P6644184729398382473`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A316355 (n : ℕ) : ℤ :=
  A316355.P6644184729398382473.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161205, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A316355.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A316357.P9502573526371032130

`∑[A316316(n)]`
-/

namespace A316357.P9502573526371032130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316357.P9502573526371032130

noncomputable section

/-- A316357: Partial sums of A316316.

Offset 0, canonical program `A316357.P9502573526371032130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316357 (n : ℕ) : ℤ :=
  A316357.P9502573526371032130.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316505.P177317928473464300

`A273893(n+1)+(-1)^n`
-/

namespace A316505.P177317928473464300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273893 (n + 1) + (-1) ^ n

end

end A316505.P177317928473464300

noncomputable section

/-- A316505: a(n) is the smallest number k > 1 such that k^n - 1 is divisible by 3^n.

Offset 1, canonical program `A316505.P177317928473464300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A316505 (n : ℕ) : ℤ :=
  A316505.P177317928473464300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A316505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316828.P16128822760412873821

`(A071044(n)-1)%3`
-/

namespace A316828.P16128822760412873821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071044 n - 1) 3

end

end A316828.P16128822760412873821

noncomputable section

/-- A316828: Image of the Thue-Morse sequence A010060 under the morphism {1 -> 1,2; 0 -> 0,2}.

Offset 0, canonical program `A316828.P16128822760412873821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316828 (n : ℕ) : ℤ :=
  A316828.P16128822760412873821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317050.P12862040302435564271

`A053985(A003188(n))`
-/

namespace A317050.P12862040302435564271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A003188 n).toNat

end

end A317050.P12862040302435564271

noncomputable section

/-- A317050: a(0) = 0 and for any n >= 0, a(n+1) is obtained by changing the rightmost possible digit in the negabinary representation of a(n) so as to get a value not yet in the sequence.

Offset 0, canonical program `A317050.P12862040302435564271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317050 (n : ℕ) : ℤ :=
  A317050.P12862040302435564271.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317331.P15538595377731960009

`A014710(n)+4*n+2`
-/

namespace A317331.P15538595377731960009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 n + (4 * n + 2 : ℤ)

end

end A317331.P15538595377731960009

noncomputable section

/-- A317331: Indices m for which A058304(m) = 1.

Offset 1, canonical program `A317331.P15538595377731960009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317331 (n : ℕ) : ℤ :=
  A317331.P15538595377731960009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317335.P10618451602202570016

`2-A014709(n)²`
-/

namespace A317335.P10618451602202570016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014709 n ^ 2

end

end A317335.P10618451602202570016

noncomputable section

/-- A317335: a(n) = A317332(n) - 8*n.

Offset 1, canonical program `A317335.P10618451602202570016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317335 (n : ℕ) : ℤ :=
  A317335.P10618451602202570016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317648.P15112088407625146715

`A110654(A287155(2*(n+1)))`
-/

namespace A317648.P15112088407625146715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A287155 (2 * (n + 1))).toNat

end

end A317648.P15112088407625146715

noncomputable section

/-- A317648: a(1) = a(2) = 1; for n >= 3, a(n) = a(t(n)) + a(n-t(n)) where t = A004001.

Offset 1, canonical program `A317648.P15112088407625146715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A317648 (n : ℕ) : ℤ :=
  A317648.P15112088407625146715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A317648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317749.P15379956229493575883

`A032741(n)+A032741(a(n-1))+2` with `a(0)=1`
-/

namespace A317749.P15379956229493575883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032741 n + (A032741 (a (n - 1)).toNat + 2)

end

end A317749.P15379956229493575883

noncomputable section

/-- A317749: a(n+1) = d(n) + d(a(n)) with a(1)=1, where d(n) is the number of the divisors of n.

Offset 1, canonical program `A317749.P15379956229493575883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317749 (n : ℕ) : ℤ :=
  A317749.P15379956229493575883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318039.P7161067264386899341

`A317890(n+1)+1`
-/

namespace A318039.P7161067264386899341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317890 (n + 1) + 1

end

end A318039.P7161067264386899341

noncomputable section

/-- A318039: Number of nX2 0..1 arrays with every element unequal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

Offset 1, canonical program `A318039.P7161067264386899341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A318039 (n : ℕ) : ℤ :=
  A318039.P7161067264386899341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A318039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318059.P16582430127559491716

`lcm(n+1, A051027(n+1))/(n+1)`
-/

namespace A318059.P16582430127559491716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A051027 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A318059.P16582430127559491716

noncomputable section

/-- A318059: a(n) is the numerator of sigma(sigma(n))/n.

Offset 1, canonical program `A318059.P16582430127559491716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318059 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318059.P16582430127559491716.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318163.P4570111851606319831

`a(n-1)-a(A029578(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A318163.P4570111851606319831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (A029578 (n - 1)).toNat

end

end A318163.P4570111851606319831

noncomputable section

/-- A318163: a(0) = a(3) = 0, a(1) = a(2) = 1; for n >= 2, a(2*n) = -a(n-1) and a(2*n+1) = -a(n-1)-a(n).

Offset 0, canonical program `A318163.P4570111851606319831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318163 (n : ℕ) : ℤ :=
  A318163.P4570111851606319831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318199.P4643735546786839582

`floor((n+1)^(A000040(n+1)/(n+1)))`
-/

namespace A318199.P4643735546786839582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((A000040 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A318199.P4643735546786839582

noncomputable section

/-- A318199: a(n) is the largest integer m such that m^n <= n^prime(n).

Offset 1, canonical program `A318199.P4643735546786839582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318199 (n : ℕ) : ℤ :=
  A318199.P4643735546786839582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318368.P4332297916626157429

`∑{d}[n+1, #*A007179(#)]`
-/

namespace A318368.P4332297916626157429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007179 d

end

end A318368.P4332297916626157429

noncomputable section

/-- A318368: a(n) = Sum_{d|n} (-1)^(n/d+1)*d*2^(d-1).

Offset 1, canonical program `A318368.P4332297916626157429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A318368 (n : ℕ) : ℤ :=
  A318368.P4332297916626157429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A318368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318451.P1128071880896831267

`∑{e}[(n+1)/and(n+1, -(n+1)), A005187(#)]`
-/

namespace A318451.P1128071880896831267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A005187 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A318451.P1128071880896831267

noncomputable section

/-- A318451: The 2-adic valuation of A318450.

Offset 1, canonical program `A318451.P1128071880896831267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318451 (n : ℕ) : ℤ :=
  A318451.P1128071880896831267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318471.P10974853522261478504

`∑{e}[n+1, A000045(#)]`
-/

namespace A318471.P10974853522261478504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000045 (Nat.factorization (f1 n) p)

end

end A318471.P10974853522261478504

noncomputable section

/-- A318471: Additive with a(p^e) = A000045(e).

Offset 1, canonical program `A318471.P10974853522261478504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318471 (n : ℕ) : ℤ :=
  A318471.P10974853522261478504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318473.P15772119755711639273

`∑{e}[n+1, A000045(#+1)]`
-/

namespace A318473.P15772119755711639273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000045 (Nat.factorization (f1 n) p + 1)

end

end A318473.P15772119755711639273

noncomputable section

/-- A318473: Additive with a(p^e) = A000045(e+1).

Offset 1, canonical program `A318473.P15772119755711639273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318473 (n : ℕ) : ℤ :=
  A318473.P15772119755711639273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318475.P14929770320897648829

`∑{e}[n+1, A000108(#)]`
-/

namespace A318475.P14929770320897648829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000108 (Nat.factorization (f1 n) p)

end

end A318475.P14929770320897648829

noncomputable section

/-- A318475: Additive with a(p^e) = A000108(e).

Offset 1, canonical program `A318475.P14929770320897648829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318475 (n : ℕ) : ℤ :=
  A318475.P14929770320897648829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318734.P12849207879321018043

`∑[A033999(n)*A099774(n+1)]`
-/

namespace A318734.P12849207879321018043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A099774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318734.P12849207879321018043

noncomputable section

/-- A318734: a(n) = Sum_{k=1..n} (-1)^(k + 1) * d(2*k - 1), where d(k) is the number of divisors of k (A000005).

Offset 1, canonical program `A318734.P12849207879321018043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318734 (n : ℕ) : ℤ :=
  A318734.P12849207879321018043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318742.P17332260978066481608

`∑[∑{d}[n+1, A003215(#-1)]]`
-/

namespace A318742.P17332260978066481608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A003215 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318742.P17332260978066481608

noncomputable section

/-- A318742: a(n) = Sum_{k=1..n} floor(n/k)^3.

Offset 1, canonical program `A318742.P17332260978066481608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318742 (n : ℕ) : ℤ :=
  A318742.P17332260978066481608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318743.P15297176175404902628

`∑[∑{d}[n+1, A005917(#)]]`
-/

namespace A318743.P15297176175404902628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A005917 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318743.P15297176175404902628

noncomputable section

/-- A318743: a(n) = Sum_{k=1..n} floor(n/k)^4.

Offset 1, canonical program `A318743.P15297176175404902628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318743 (n : ℕ) : ℤ :=
  A318743.P15297176175404902628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318744.P6771827759272423719

`∑[∑{d}[n+1, A022521(#-1)]]`
-/

namespace A318744.P6771827759272423719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A022521 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318744.P6771827759272423719

noncomputable section

/-- A318744: a(n) = Sum_{k=1..n} floor(n/k)^5.

Offset 1, canonical program `A318744.P6771827759272423719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318744 (n : ℕ) : ℤ :=
  A318744.P6771827759272423719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318791.P10031734239820775619

`A060566(3*n+1)`
-/

namespace A318791.P10031734239820775619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (3 * n + 1)

end

end A318791.P10031734239820775619

noncomputable section

/-- A318791: Prime generating polynomial: a(n) = 9*n^2 - 249*n + 1763.

Offset 1, canonical program `A318791.P10031734239820775619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A318791 (n : ℕ) : ℤ :=
  A318791.P10031734239820775619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A318791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318828.P5506889447747921512

`1-A063994(n+1)+n`
-/

namespace A318828.P5506889447747921512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A063994 (n + 1) + (n : ℤ)

end

end A318828.P5506889447747921512

noncomputable section

/-- A318828: a(n) = n - A063994(n) = n - Product_{primes p dividing n} gcd(p-1, n-1).

Offset 1, canonical program `A318828.P5506889447747921512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318828 (n : ℕ) : ℤ :=
  A318828.P5506889447747921512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318934.P10002525055604418372

`A003817(n)+A042950(floor(log2(2*n+1)))+n+1`
-/

namespace A318934.P10002525055604418372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + (A042950 (Nat.log 2 (2 * n + 1)) + (n + 1 : ℤ))

end

end A318934.P10002525055604418372

noncomputable section

/-- A318934: Numbers whose binary expansion begins with exactly two 1's.

Offset 1, canonical program `A318934.P10002525055604418372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318934 (n : ℕ) : ℤ :=
  A318934.P10002525055604418372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318952.P11663603652040292718

`∑{d}[n+1, A000203(n+1)%A000203(#)]`
-/

namespace A318952.P11663603652040292718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000203 (n + 1)) (A000203 d)

end

end A318952.P11663603652040292718

noncomputable section

/-- A318952: a(n) = Sum_{d|n} (sigma(n) mod sigma(d)).

Offset 1, canonical program `A318952.P11663603652040292718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318952 (n : ℕ) : ℤ :=
  A318952.P11663603652040292718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318996.P2280365862416764505

`∑{d}[n+1, A001065(n+1)%#]`
-/

namespace A318996.P2280365862416764505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A001065 (n + 1)) (d : ℤ)

end

end A318996.P2280365862416764505

noncomputable section

/-- A318996: a(n) = Sum_{d|n} (sigma(n) mod d).

Offset 1, canonical program `A318996.P2280365862416764505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318996 (n : ℕ) : ℤ :=
  A318996.P2280365862416764505.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319132.P2708375044891269701

`∑{d}[n+1, A048250(#)]`
-/

namespace A319132.P2708375044891269701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d

end

end A319132.P2708375044891269701

noncomputable section

/-- A319132: a(n) = Sum_{d|n} Sum_{j|d} mu(j)^2*j, where mu = Möbius function (A008683).

Offset 1, canonical program `A319132.P2708375044891269701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319132 (n : ℕ) : ℤ :=
  A319132.P2708375044891269701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319373.P4266076748036600597

`∑[A009001(n)*A109613(n)]`
-/

namespace A319373.P4266076748036600597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319373.P4266076748036600597

noncomputable section

/-- A319373: a(n) = 1*2 - 3*4 + 5*6 - 7*8 + 9*10 - 11*12 + 13*14 - ... + (up to n).

Offset 1, canonical program `A319373.P4266076748036600597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319373 (n : ℕ) : ℤ :=
  A319373.P4266076748036600597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319431.P10212227212782014410

`A319430(lt[1, A319430(n)])`
-/

namespace A319431.P10212227212782014410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A319431.P10212227212782014410

noncomputable section

/-- A319431: The first differences (A319430) of the tribonacci representation numbers (A003726 or A278038) consists of runs of 1's separated by the terms of the present sequence.

Offset 1, canonical program `A319431.P10212227212782014410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8035 terms. -/
def A319431 (n : ℕ) : ℤ :=
  A319431.P10212227212782014410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8035 terms. -/
def A319431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319597.P15066160713591870138

`A028387(A000040(n+1)-1)`
-/

namespace A319597.P15066160713591870138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A000040 (n + 1) - 1).toNat

end

end A319597.P15066160713591870138

noncomputable section

/-- A319597: Number of conjugacy classes for a non-abelian group of order p^3, where p is prime: a(n) = p^2 + p - 1 where p = prime(n).

Offset 1, canonical program `A319597.P15066160713591870138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319597 (n : ℕ) : ℤ :=
  A319597.P15066160713591870138.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319597.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319866.P15824373507839325677

`a(n-2)+2*A128918(n)` with `a(0)=2, a(1)=2`
-/

namespace A319866.P15824373507839325677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + 2 * A128918 n

end

end A319866.P15824373507839325677

noncomputable section

/-- A319866: a(n) = 2*1 + 4*3 + 6*5 + 8*7 + 10*9 + 12*11 + ... + (up to the n-th term).

Offset 1, canonical program `A319866.P15824373507839325677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319866 (n : ℕ) : ℤ :=
  A319866.P15824373507839325677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319879.P677260879233120515

`A000027(A027709(n)+3*n+1)`
-/

namespace A319879.P677260879233120515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A027709 n + (3 * n + 1 : ℤ)).toNat

end

end A319879.P677260879233120515

noncomputable section

/-- A319879: a(n) = minimal number m of unit squares needed to make a figure formed from squares (joined edge to edge) which has n holes.

Offset 0, canonical program `A319879.P677260879233120515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319879 (n : ℕ) : ℤ :=
  A319879.P677260879233120515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319927.P17786843195982564548

`eq[1, A189996(2*A105570(n))]`
-/

namespace A319927.P17786843195982564548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189996 (2 * A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319927.P17786843195982564548

noncomputable section

/-- A319927: Numbers k such that the sum of the squares of the odd non-unitary divisors of k divides the sum of the squares of the non-unitary divisors of k.

Offset 1, canonical program `A319927.P17786843195982564548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. -/
def A319927 (n : ℕ) : ℤ :=
  (A319927.P17786843195982564548.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. -/
def A319927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319956.P2346561494383374932

`char[comp[2^n+n]]+gcd(2, A004273(n))`
-/

namespace A319956.P2346561494383374932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Int.gcd 2 (A004273 n)

end

end A319956.P2346561494383374932

noncomputable section

/-- A319956: Image of 3 under repeated application of the morphism 1 -> 1, 2 -> 22, 3 -> 312.

Offset 0, canonical program `A319956.P2346561494383374932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319956 (n : ℕ) : ℤ :=
  (A319956.P2346561494383374932.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319973.P96671686183417

`A008680(n)-A142150(A008611(n))`
-/

namespace A319973.P96671686183417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 n - A142150 (A008611 n).toNat

end

end A319973.P96671686183417

noncomputable section

/-- A319973: Expansion of (1-x^5+x^8+x^10)/((1-x^4)*(1-x^5)*(1-x^6)).

Offset 0, canonical program `A319973.P96671686183417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319973 (n : ℕ) : ℤ :=
  A319973.P96671686183417.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319974.P4036882474331244479

`∑[A008679(n)-A001057(n)]`
-/

namespace A319974.P4036882474331244479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319974.P4036882474331244479

noncomputable section

/-- A319974: Expansion of (1-x^3+x^4+x^6)/(b(2)*b(3)*b(4)) where b(n) = 1-x^n.

Offset 0, canonical program `A319974.P4036882474331244479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319974 (n : ℕ) : ℤ :=
  A319974.P4036882474331244479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320075.P14108991417829388174

`∑{d}[n+1, A007427(#)*A113999((n+1)/#)]`
-/

namespace A320075.P14108991417829388174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A113999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320075.P14108991417829388174

noncomputable section

/-- A320075: Number of length n primitive (=aperiodic or period n) 10-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320075.P14108991417829388174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A320075 (n : ℕ) : ℤ :=
  A320075.P14108991417829388174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A320075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320107.P14431239194402996355

`∑{d}[n+1, A320106(#)]`
-/

namespace A320107.P14431239194402996355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A320106 d

end

end A320107.P14431239194402996355

noncomputable section

/-- A320107: a(n) = A001227(A252463(n)).

Offset 1, canonical program `A320107.P14431239194402996355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320107 (n : ℕ) : ℤ :=
  A320107.P14431239194402996355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320278.P10936433761191186733

`A172471(A172471(n)+n)%A003059(n+1)`
-/

namespace A320278.P10936433761191186733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172471 (A172471 n + (n : ℤ)).toNat) (A003059 (n + 1))

end

end A320278.P10936433761191186733

noncomputable section

/-- A320278: a(n) is the number of positive integers 0 < i < n such that i + n is a square.

Offset 0, canonical program `A320278.P10936433761191186733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320278 (n : ℕ) : ℤ :=
  A320278.P10936433761191186733.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320427.P10459385134122372161

`A001651(n+8)+floor(n/6)`
-/

namespace A320427.P10459385134122372161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 8) + ⌊(n : ℚ) / 6⌋

end

end A320427.P10459385134122372161

noncomputable section

/-- A320427: a(n) = floor(3*n/2) + ceiling(n/6) + 9.

Offset 1, canonical program `A320427.P10459385134122372161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A320427 (n : ℕ) : ℤ :=
  A320427.P10459385134122372161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A320427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320431.P327921365060665001

`2*A070260(n+1)%A060890(n)+1`
-/

namespace A320431.P327921365060665001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A070260 (n + 1)) (A060890 n) + 1

end

end A320431.P327921365060665001

noncomputable section

/-- A320431: The number of tiles inside a regular n-gon created by lines that run from each of the vertices of the n edges orthogonal to these edges.

Offset 3, canonical program `A320431.P327921365060665001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320431 (n : ℕ) : ℤ :=
  A320431.P327921365060665001.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320471.P12898566965721676055

`A000196(n)*A049240(n+1)`
-/

namespace A320471.P12898566965721676055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n * A049240 (n + 1)

end

end A320471.P12898566965721676055

noncomputable section

/-- A320471: a(n) = floor(sqrt(n)) mod ceiling(sqrt(n)).

Offset 1, canonical program `A320471.P12898566965721676055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320471 (n : ℕ) : ℤ :=
  A320471.P12898566965721676055.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049240, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320486.P7452552774313601492

`A289207(A320485(n)+2)`
-/

namespace A320486.P7452552774313601492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A320485 n + 2).toNat

end

end A320486.P7452552774313601492

noncomputable section

/-- A320486: Keep just the digits of n that appear exactly once; write 0 if all digits disappear.

Offset 0, canonical program `A320486.P7452552774313601492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320486 (n : ℕ) : ℤ :=
  A320486.P7452552774313601492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320514.P1932751579605928193

`lt[∑{d}[∑{d}[n, #], #], A001969(n+1)]`
-/

namespace A320514.P1932751579605928193
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A320514.P1932751579605928193

noncomputable section

/-- A320514: Numbers k such that sigma(sigma(k)) < 2*k + 1.

Offset 1, canonical program `A320514.P1932751579605928193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A320514 (n : ℕ) : ℤ :=
  (A320514.P1932751579605928193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. -/
def A320514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320553.P17690576578618424991

`A129847(n+3)-A000045(n+4)`
-/

namespace A320553.P17690576578618424991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129847 (n + 3) - A000045 (n + 4)

end

end A320553.P17690576578618424991

noncomputable section

/-- A320553: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most three elements and for at least one block c the smallest integer interval containing c has exactly three elements.

Offset 3, canonical program `A320553.P17690576578618424991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A320553 (n : ℕ) : ℤ :=
  A320553.P17690576578618424991.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A320553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320592.P4882590432271682318

`A266769(n)-A026810(n)`
-/

namespace A320592.P4882590432271682318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - A026810 n

end

end A320592.P4882590432271682318

noncomputable section

/-- A320592: Number of partitions of n with four parts in which no part occurs more than twice.

Offset 6, canonical program `A320592.P4882590432271682318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320592 (n : ℕ) : ℤ :=
  A320592.P4882590432271682318.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320614.P3148838070888627648

`A008748(n)-A036405(n)`
-/

namespace A320614.P3148838070888627648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n - A036405 n

end

end A320614.P3148838070888627648

noncomputable section

/-- A320614: Expansion of (1 + x^5) / ((1 - x^2) * (1 - x^3) * (1 - x^7)) in powers of x.

Offset 0, canonical program `A320614.P3148838070888627648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320614 (n : ℕ) : ℤ :=
  A320614.P3148838070888627648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320667.P12312987098822007039

`A066194(n+2)-A066194(n+1)`
-/

namespace A320667.P12312987098822007039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (n + 2) - A066194 (n + 1)

end

end A320667.P12312987098822007039

noncomputable section

/-- A320667: First differences of A066194.

Offset 1, canonical program `A320667.P12312987098822007039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320667 (n : ℕ) : ℤ :=
  A320667.P12312987098822007039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320857.P17934183647824238584

`∑[A112448(A142150(n))]`
-/

namespace A320857.P17934183647824238584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112448 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320857.P17934183647824238584

noncomputable section

/-- A320857: a(n) = Pi(8,5)(n) + Pi(8,7)(n) - Pi(8,1)(n) - Pi(8,3)(n) where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

Offset 1, canonical program `A320857.P17934183647824238584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320857 (n : ℕ) : ℤ :=
  A320857.P17934183647824238584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320857.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A321129.P12956729988665629902

`floor(A165202(n)/A000034(A002264(n)))`
-/

namespace A321129.P12956729988665629902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165202 n : ℚ) / (A000034 (A002264 n).toNat : ℚ)⌋

end

end A321129.P12956729988665629902

noncomputable section

/-- A321129: Numerator of Sum_{k=1..n} (k*sin((Pi*k)/3))/sqrt(3).

Offset 1, canonical program `A321129.P12956729988665629902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321129 (n : ℕ) : ℤ :=
  A321129.P12956729988665629902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321140.P752392159174760789

`∑{d}[n+1, A001158(#)]`
-/

namespace A321140.P752392159174760789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d

end

end A321140.P752392159174760789

noncomputable section

/-- A321140: a(n) = Sum_{d|n} sigma_3(d).

Offset 1, canonical program `A321140.P752392159174760789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321140 (n : ℕ) : ℤ :=
  A321140.P752392159174760789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321173.P12653620965726217953

`Δ[A215112(n)+∑[A215112(n)]]`
-/

namespace A321173.P12653620965726217953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215112 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321173.P12653620965726217953

noncomputable section

/-- A321173: a(n) = -2*a(n-1) + a(n-2) + a(n-3), a(0) = -1, a(1) = 3, a(2) = -9.

Offset 0, canonical program `A321173.P12653620965726217953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A321173 (n : ℕ) : ℤ :=
  A321173.P12653620965726217953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A321173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321202.P14532592162250782064

`A117905(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A321202.P14532592162250782064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A117905 n + a (n - 2)

end

end A321202.P14532592162250782064

noncomputable section

/-- A321202: Row sums of the irregular triangle A321201.

Offset 2, canonical program `A321202.P14532592162250782064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321202 (n : ℕ) : ℤ :=
  A321202.P14532592162250782064.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321322.P14680156201706380527

`∑{d}[n+1, A000290(#)*A007427((n+1)/#)]`
-/

namespace A321322.P14680156201706380527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P14680156201706380527

noncomputable section

/-- A321322: a(n) = Sum_{d|n} mu(n/d)*J_2(d), where J_2() is the Jordan function (A007434).

Offset 1, canonical program `A321322.P14680156201706380527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321322 (n : ℕ) : ℤ :=
  A321322.P14680156201706380527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321324.P8873558422711522564

`abs(A082784(n)+Δ[A173721(abs(1-n))])`
-/

namespace A321324.P8873558422711522564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173721 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082784 n + (f1 (n + 1) - f1 n)|

end

end A321324.P8873558422711522564

noncomputable section

/-- A321324: a(n) = (n^2 - c(n)) / 7 + 1 where c(n) = c(-n) = c(n+7) for all n in Z and a(n) = 1 if 0 <= n <=3 except a(1) = 0.

Offset 0, canonical program `A321324.P8873558422711522564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321324 (n : ℕ) : ℤ :=
  A321324.P8873558422711522564.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321341.P17519375806666714139

`A008619(A293990(n)%A037915(n))`
-/

namespace A321341.P17519375806666714139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A293990 n) (A037915 n)).toNat

end

end A321341.P17519375806666714139

noncomputable section

/-- A321341: An unbounded sequence which is 1 infinitely often, with the property that for any four consecutive terms the maximum term is the sum of the two minimum terms.

Offset 0, canonical program `A321341.P17519375806666714139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321341 (n : ℕ) : ℤ :=
  A321341.P17519375806666714139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321461.P15176884998025768239

`∑[A321175(A004273(n)-n)]`
-/

namespace A321461.P15176884998025768239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321175 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321461.P15176884998025768239

noncomputable section

/-- A321461: a(n) = -a(n-1) + 2*a(n-2) + a(n-3), a(0) = -1, a(1) = -2, a(2) = -4.

Offset 0, canonical program `A321461.P15176884998025768239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A321461 (n : ℕ) : ℤ :=
  A321461.P15176884998025768239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A321461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321543.P5394241305421290770

`∑{d}[n+1, A162395(#)]`
-/

namespace A321543.P5394241305421290770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162395 d

end

end A321543.P5394241305421290770

noncomputable section

/-- A321543: a(n) = Sum_{d|n} (-1)^(d-1)*d^2.

Offset 1, canonical program `A321543.P5394241305421290770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321543 (n : ℕ) : ℤ :=
  A321543.P5394241305421290770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321545.P12467316956730240130

`∑{d}[n+1, #²²*A162395(#)]`
-/

namespace A321545.P12467316956730240130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2) ^ 2 : ℤ) * A162395 d

end

end A321545.P12467316956730240130

noncomputable section

/-- A321545: a(n) = Sum_{d|n} (-1)^(d-1)*d^6.

Offset 1, canonical program `A321545.P12467316956730240130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321545 (n : ℕ) : ℤ :=
  A321545.P12467316956730240130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321546.P12649713767068310389

`∑{d}[n+1, #*#²²*A162395(#)]`
-/

namespace A321546.P12649713767068310389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (((d ^ 2) ^ 2 : ℤ) * A162395 d)

end

end A321546.P12649713767068310389

noncomputable section

/-- A321546: a(n) = Sum_{d|n} (-1)^(d-1)*d^7.

Offset 1, canonical program `A321546.P12649713767068310389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321546 (n : ℕ) : ℤ :=
  A321546.P12649713767068310389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321582.P17979784188309132083

`p?[A107008(n+1)+6*A111174(n+1)]`
-/

namespace A321582.P17979784188309132083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1) + 6 * A111174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321582.P17979784188309132083

noncomputable section

/-- A321582: Primes p such that (4*p+1)/5 is prime.

Offset 1, canonical program `A321582.P17979784188309132083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2164 terms. -/
def A321582 (n : ℕ) : ℤ :=
  A321582.P17979784188309132083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2164 terms. -/
def A321582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321675.P11611611303101211705

`A143128(10^n)`
-/

namespace A321675.P11611611303101211705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143128 (10 ^ n)

end

end A321675.P11611611303101211705

noncomputable section

/-- A321675: a(n) = Sum_{k=1..10^n} k*sigma(k).

Offset 0, canonical program `A321675.P11611611303101211705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143128, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A321675 (n : ℕ) : ℤ :=
  A321675.P11611611303101211705.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143128, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A321675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321812.P13571476246550712720

`∑{d}[(n+1)/and(n+1, -(n+1)), A001016(#)]`
-/

namespace A321812.P13571476246550712720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001016 d

end

end A321812.P13571476246550712720

noncomputable section

/-- A321812: Sum of 8th powers of odd divisors of n.

Offset 1, canonical program `A321812.P13571476246550712720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321812 (n : ℕ) : ℤ :=
  A321812.P13571476246550712720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321817.P15016838120887643165

`∑{d}[n+1, ((n+1)%A005843(#))^6]`
-/

namespace A321817.P15016838120887643165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (n + 1 : ℤ) (A005843 d) ^ 6

end

end A321817.P15016838120887643165

noncomputable section

/-- A321817: a(n) = Sum_{d|n, n/d odd} d^6 for n > 0.

Offset 1, canonical program `A321817.P15016838120887643165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321817 (n : ℕ) : ℤ :=
  A321817.P15016838120887643165.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321857.P2619691618955025817

`∑[-A080891(∑{p}[n+1, C(#, n)])]`
-/

namespace A321857.P2619691618955025817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A080891 (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321857.P2619691618955025817

noncomputable section

/-- A321857: a(n) = Pi(5,2)(n) + Pi(5,3)(n) - Pi(5,1)(n) - Pi(5,4)(n) where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

Offset 1, canonical program `A321857.P2619691618955025817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321857 (n : ℕ) : ℤ :=
  A321857.P2619691618955025817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321859.P11466113994403305771

`∑[-A175629(∑{p}[n+1, C(#, n)])]`
-/

namespace A321859.P11466113994403305771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A175629 (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321859.P11466113994403305771

noncomputable section

/-- A321859: Number of primes congruent to 3, 5, 6 modulo 7 and <= n minus number of primes congruent to 1, 2, 4 modulo 7 and <= n.

Offset 1, canonical program `A321859.P11466113994403305771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321859 (n : ℕ) : ℤ :=
  A321859.P11466113994403305771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321860.P17563916367894010708

`∑[-A011582(∑{p}[n+1, C(#, n)])]`
-/

namespace A321860.P17563916367894010708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A011582 (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321860.P17563916367894010708

noncomputable section

/-- A321860: Number of primes congruent to 2, 6, 7, 8, 10 modulo 11 and <= n minus number of primes congruent to 1, 3, 4, 5, 9 modulo 11 and <= n.

Offset 1, canonical program `A321860.P17563916367894010708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321860 (n : ℕ) : ℤ :=
  A321860.P17563916367894010708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321862.P7303955421962956964

`∑[1-(A000040(n+1)²+1)%5]`
-/

namespace A321862.P7303955421962956964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A000040 (n + 1) ^ 2 + 1) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321862.P7303955421962956964

noncomputable section

/-- A321862: a(n) = A321857(prime(n)).

Offset 1, canonical program `A321862.P7303955421962956964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321862 (n : ℕ) : ℤ :=
  A321862.P7303955421962956964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321863.P1638923899209457201

`∑[round(A000040(n+1)/3)%4-1]`
-/

namespace A321863.P1638923899209457201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / 3)) 4 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321863.P1638923899209457201

noncomputable section

/-- A321863: a(n) = A321858(prime(n)).

Offset 1, canonical program `A321863.P1638923899209457201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321863 (n : ℕ) : ℤ :=
  A321863.P1638923899209457201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321865.P4320882648814004340

`∑[round(sin(((11*n-A000040(n+1))^5)%11))]`
-/

namespace A321865.P4320882648814004340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Int.tmod (((11 * n : ℤ) - A000040 (n + 1)) ^ 5) 11 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321865.P4320882648814004340

noncomputable section

/-- A321865: a(n) = A321860(prime(n)).

Offset 1, canonical program `A321865.P4320882648814004340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321865 (n : ℕ) : ℤ :=
  A321865.P4320882648814004340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321885.P14494806622824550803

`A212356(a(n-1))+n` with `a(0)=1, a(1)=3`
-/

namespace A321885.P14494806622824550803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A212356 (a (n - 1)).toNat + (n : ℤ)

end

end A321885.P14494806622824550803

noncomputable section

/-- A321885: a(1) = 1, a(n) = n + d(a(n-1)).

Offset 1, canonical program `A321885.P14494806622824550803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A321885 (n : ℕ) : ℤ :=
  A321885.P14494806622824550803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A321885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322015.P15707370486887507958

`(n+1)*A014707(n)`
-/

namespace A322015.P15707370486887507958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014707 n

end

end A322015.P15707370486887507958

noncomputable section

/-- A322015: If A003188(n+1) < A003188(n), then a(n) = n+1, otherwise a(n) = 0.

Offset 0, canonical program `A322015.P15707370486887507958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322015 (n : ℕ) : ℤ :=
  A322015.P15707370486887507958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322016.P2278703337151116336

`(n-1)*A082410(n+1)`
-/

namespace A322016.P2278703337151116336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A082410 (n + 1)

end

end A322016.P2278703337151116336

noncomputable section

/-- A322016: a(0) = 0; for n > 0, if A003188(n) > A003188(n-1) then a(n) = n-1, otherwise a(n) = 0.

Offset 0, canonical program `A322016.P2278703337151116336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322016 (n : ℕ) : ℤ :=
  A322016.P2278703337151116336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322043.P15774984562879347532

`A158644(2*n+1)+A152741(n)`
-/

namespace A322043.P15774984562879347532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158644 (2 * n + 1) + A152741 n

end

end A322043.P15774984562879347532

noncomputable section

/-- A322043: Numbers k such that the coefficient of x^k in the expansion of Product_{m >= 1} (1-x^m)^15 is zero.

Offset 1, canonical program `A322043.P15774984562879347532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A322043 (n : ℕ) : ℤ :=
  A322043.P15774984562879347532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A322043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322052.P17531621091388562642

`∑[A322628(n+1)]`
-/

namespace A322052.P17531621091388562642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322052.P17531621091388562642

noncomputable section

/-- A322052: Number of decimal strings of length n that contain a specific string xy where x and y are distinct digits.

Offset 1, canonical program `A322052.P17531621091388562642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A322052 (n : ℕ) : ℤ :=
  A322052.P17531621091388562642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A322052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322053.P18097774450433582618

`∑[A365137(n+1)]`
-/

namespace A322053.P18097774450433582618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322053.P18097774450433582618

noncomputable section

/-- A322053: Number of decimal strings of length n that contain a specific string xx (where x is a single digit).

Offset 1, canonical program `A322053.P18097774450433582618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A322053 (n : ℕ) : ℤ :=
  A322053.P18097774450433582618.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A322053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322175.P18275701556869106149

`a(n-1)*A007427(n)` with `a(0)=1`
-/

namespace A322175.P18275701556869106149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A007427 n

end

end A322175.P18275701556869106149

noncomputable section

/-- A322175: Determinant of the symmetric n X n matrix M defined by M(i,j) = mu(gcd(i,j)) for 1 <= i,j <= n where mu is the Moebius function.

Offset 0, canonical program `A322175.P18275701556869106149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322175 (n : ℕ) : ℤ :=
  A322175.P18275701556869106149.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322185.P8829666999664919020

`∑{d}[2*(n+1), #*A001405(2*n+1)]`
-/

namespace A322185.P8829666999664919020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001405 (2 * n + 1)

end

end A322185.P8829666999664919020

noncomputable section

/-- A322185: a(n) = sigma(2*n) * binomial(2*n,n)/2, for n >= 1.

Offset 1, canonical program `A322185.P8829666999664919020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A322185 (n : ℕ) : ℤ :=
  A322185.P8829666999664919020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A322185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322303.P6523526261375080362

`A000045(eq[2, ∑{e}[n, #]])`
-/

namespace A322303.P6523526261375080362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322303.P6523526261375080362

noncomputable section

/-- A322303: a(n) = Fibonacci(semiprime(n)).

Offset 1, canonical program `A322303.P6523526261375080362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A322303 (n : ℕ) : ℤ :=
  A322303.P6523526261375080362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A322303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322533.P7587936727415565415

`∑[A022921(n)+2]`
-/

namespace A322533.P7587936727415565415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322533.P7587936727415565415

noncomputable section

/-- A322533: Position of 1/3^n in the sequence of all numbers 1/2^m, 1/3^m, 2/3^m arranged in decreasing order.

Offset 1, canonical program `A322533.P7587936727415565415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322533 (n : ℕ) : ℤ :=
  A322533.P7587936727415565415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322664.P17586322298630474412

`∑{d}[n+1, A000290(#)*A069513((n+1)/#)]`
-/

namespace A322664.P17586322298630474412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A069513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322664.P17586322298630474412

noncomputable section

/-- A322664: a(n) = n^2 * Sum_{p^k|n} Sum_{j=1..k} 1/p^(2*j), where p are primes dividing n with multiplicity k.

Offset 1, canonical program `A322664.P17586322298630474412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322664 (n : ℕ) : ℤ :=
  A322664.P17586322298630474412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322829.P17064721799762698939

`A102283(n)*A175629(n)`
-/

namespace A322829.P17064721799762698939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A175629 n

end

end A322829.P17064721799762698939

noncomputable section

/-- A322829: a(n) = Jacobi (or Kronecker) symbol (n/21).

Offset 0, canonical program `A322829.P17064721799762698939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322829 (n : ℕ) : ℤ :=
  A322829.P17064721799762698939.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322829.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322885.P8921599766518576260

`∏{e}[n+1, A001399(#)]`
-/

namespace A322885.P8921599766518576260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001399 (Nat.factorization (f1 n) p)

end

end A322885.P8921599766518576260

noncomputable section

/-- A322885: Number of 3-generated Abelian groups of order n.

Offset 1, canonical program `A322885.P8921599766518576260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322885 (n : ℕ) : ℤ :=
  A322885.P8921599766518576260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322979.P6933631638193226101

`∑{d}[n+1, A009191(#)]`
-/

namespace A322979.P6933631638193226101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A009191 d

end

end A322979.P6933631638193226101

noncomputable section

/-- A322979: a(n) = Sum A009191(d) over the divisors d of n, where A009191(x) = gcd(x, A000005(x)), and A000005(x) gives the number of divisors of x.

Offset 1, canonical program `A322979.P6933631638193226101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322979 (n : ℕ) : ℤ :=
  A322979.P6933631638193226101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323011.P8265024053046190997

`A172103(n+1)-A172104(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323011.P8265024053046190997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172103 (n + 1) - A172104 (n + 1)

end

end A323011.P8265024053046190997

noncomputable section

/-- A323011: a(n) = A172103(n) - A172104(n).

Offset 1, canonical program `A323011.P8265024053046190997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A172103, A172104, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323011 (n : ℕ) : ℤ :=
  A323011.P8265024053046190997.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A172103, A172104, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323152.P11338555144213092166

`A000045(C(2, A054024(n+1)²))`
-/

namespace A323152.P11338555144213092166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A054024 (n + 1) ^ 2).toNat)

end

end A323152.P11338555144213092166

noncomputable section

/-- A323152: a(n) = 1 if sigma(n) is divisible by all proper divisors of n, 0 otherwise.

Offset 1, canonical program `A323152.P11338555144213092166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323152 (n : ℕ) : ℤ :=
  A323152.P11338555144213092166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323162.P4199434762193306250

`A066247(or(1, n))`
-/

namespace A323162.P4199434762193306250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (Nat.lor 1 n)

end

end A323162.P4199434762193306250

noncomputable section

/-- A323162: a(n) = 1 if both n and n-1 are composite, 0 otherwise.

Offset 1, canonical program `A323162.P4199434762193306250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323162 (n : ℕ) : ℤ :=
  A323162.P4199434762193306250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323191.P2183857835725111071

`(-1)^n*A257179(n)`
-/

namespace A323191.P2183857835725111071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A257179 n

end

end A323191.P2183857835725111071

noncomputable section

/-- A323191: Expansion of (1 - x^5) / ((1 + x) * (1 + x^4)) in powers of x.

Offset 0, canonical program `A323191.P2183857835725111071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257179, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323191 (n : ℕ) : ℤ :=
  A323191.P2183857835725111071.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257179, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A323191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323249.P5120099028923717865

`eq[A032741(n), A131185(A267027(n+1))]`
-/

namespace A323249.P5120099028923717865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131185 (A267027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323249.P5120099028923717865

noncomputable section

/-- A323249: Sequence lists numbers k > 1 such that k^2 == d(k) (mod sigma(k)), where d = A000005 and sigma = A000203.

Offset 1, canonical program `A323249.P5120099028923717865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A323249 (n : ℕ) : ℤ :=
  (A323249.P5120099028923717865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A323249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323262.P15495717463669417341

`Δ[A323261(n)]-∑[A323261(n)]`
-/

namespace A323262.P15495717463669417341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A323262.P15495717463669417341

noncomputable section

/-- A323262: The sequence denoted by a_n used in the calculation of A323260.

Offset 1, canonical program `A323262.P15495717463669417341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A323262 (n : ℕ) : ℤ :=
  A323262.P15495717463669417341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A323262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323269.P6039144852991048100

`A323261(n)+∑[A323261(n+1)]`
-/

namespace A323269.P6039144852991048100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323269.P6039144852991048100

noncomputable section

/-- A323269: The sequence denoted by h_n used in the calculation of A323260.

Offset 1, canonical program `A323269.P6039144852991048100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A323269 (n : ℕ) : ℤ :=
  A323269.P6039144852991048100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A323269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323519.P5612337136972433233

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*A010052(∑{e}[n+1, #])`
-/

namespace A323519.P5612337136972433233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (A010052 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) : ℚ)

end

end A323519.P5612337136972433233

noncomputable section

/-- A323519: a(n) is the number of ways to fill a square matrix with the multiset of prime factors of n, if the number of prime factors (counted with multiplicity) is a perfect square, and a(n) = 0 otherwise.

Offset 1, canonical program `A323519.P5612337136972433233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323519 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323519.P5612337136972433233.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323591.P5653808376836447824

`A092763(n+1)%3`
-/

namespace A323591.P5653808376836447824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092763 (n + 1)) 3

end

end A323591.P5653808376836447824

noncomputable section

/-- A323591: n-th digit after the radix point in the base-3 expansion of 1/n.

Offset 1, canonical program `A323591.P5653808376836447824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A323591 (n : ℕ) : ℤ :=
  A323591.P5653808376836447824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A323591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323592.P9327861496542200993

`A129794(n+1)%4`
-/

namespace A323592.P9327861496542200993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129794 (n + 1)) 4

end

end A323592.P9327861496542200993

noncomputable section

/-- A323592: n-th digit in the base-4 expansion of 1/n.

Offset 1, canonical program `A323592.P9327861496542200993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A323592 (n : ℕ) : ℤ :=
  A323592.P9327861496542200993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A323592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323599.P7337034044960425061

`∑{p}[n+1, A000203((n+1)/#)]`
-/

namespace A323599.P7337034044960425061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A323599.P7337034044960425061

noncomputable section

/-- A323599: Dirichlet convolution of the identity function with omega.

Offset 1, canonical program `A323599.P7337034044960425061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323599 (n : ℕ) : ℤ :=
  A323599.P7337034044960425061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323756.P17761962567917672659

`3-(A091830(n+2)+1)%3`
-/

namespace A323756.P17761962567917672659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.tmod (A091830 (n + 2) + 1) 3

end

end A323756.P17761962567917672659

noncomputable section

/-- A323756: a(1) = 2; for n >= 2, if a(n-1) has not yet been assigned, then a(n-1) = 1 and a(2*n-1) = 2, otherwise a(2*n) = 3.

Offset 1, canonical program `A323756.P17761962567917672659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A323756 (n : ℕ) : ℤ :=
  A323756.P17761962567917672659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A323756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323921.P5907428441679542175

`A052992(val(n+1, 2))`
-/

namespace A323921.P5907428441679542175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 (SequenceMachineLib.valuation (n + 1) 2)

end

end A323921.P5907428441679542175

noncomputable section

/-- A323921: a(n) = (4^(valuation(n, 4) + 1) - 1) / 3.

Offset 1, canonical program `A323921.P5907428441679542175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323921 (n : ℕ) : ℤ :=
  A323921.P5907428441679542175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323951.P8813911197345809289

`A001609(abs(1-n)+1)+char[2]-n`
-/

namespace A323951.P8813911197345809289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (|1 - (n : ℤ)| + 1).toNat + (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ))

end

end A323951.P8813911197345809289

noncomputable section

/-- A323951: Number of ways to split an n-cycle into connected subgraphs, all having at least three vertices.

Offset 0, canonical program `A323951.P8813911197345809289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A323951 (n : ℕ) : ℤ :=
  A323951.P8813911197345809289.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A323951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323989.P17465591494244090833

`∑[A000079(n+1-A156253(n+1))]%3`
-/

namespace A323989.P17465591494244090833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n + 1 : ℤ) - A156253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A323989.P17465591494244090833

noncomputable section

/-- A323989: Partial alternating sums modulo 3 of the Kolakoski sequence A000002.

Offset 1, canonical program `A323989.P17465591494244090833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A323989 (n : ℕ) : ℤ :=
  A323989.P17465591494244090833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A323989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324047.P16299384145559739800

`A000203(n+1)-A106315(n+1)%(n+1)`
-/

namespace A324047.P16299384145559739800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - Int.tmod (A106315 (n + 1)) (n + 1 : ℤ)

end

end A324047.P16299384145559739800

noncomputable section

/-- A324047: a(n) = A000203(n) - A106316(n).

Offset 1, canonical program `A324047.P16299384145559739800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324047 (n : ℕ) : ℤ :=
  A324047.P16299384145559739800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324129.P6185180708440290240

`A059841(n)+A045925(n)`
-/

namespace A324129.P6185180708440290240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A045925 n

end

end A324129.P6185180708440290240

noncomputable section

/-- A324129: a(n) = n*Fibonacci(n) + ((-1)^n + 1)/2.

Offset 0, canonical program `A324129.P6185180708440290240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A324129 (n : ℕ) : ℤ :=
  A324129.P6185180708440290240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A324129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324275.P309282359006458569

`A007590(A007494(n+2))-(n+2)`
-/

namespace A324275.P309282359006458569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A007494 (n + 2)).toNat - (n + 2 : ℤ)

end

end A324275.P309282359006458569

noncomputable section

/-- A324275: Numbers k for which A324274(k) is 0, i.e., starting squares in A324274 that yield a path of infinite length.

Offset 1, canonical program `A324275.P309282359006458569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A324275 (n : ℕ) : ℤ :=
  A324275.P309282359006458569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A324275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324377.P15215388195248965144

`gcd(A005187(n), A191871(A005187(n)))`
-/

namespace A324377.P15215388195248965144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005187 n) (A191871 (A005187 n).toNat)

end

end A324377.P15215388195248965144

noncomputable section

/-- A324377: a(0) = 0; for n > 0, a(n) = A000265(A005187(n)).

Offset 0, canonical program `A324377.P15215388195248965144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A324377 (n : ℕ) : ℤ :=
  (A324377.P15215388195248965144.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A324377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324631.P5598610693582606053

`A004306(n+4)-A000211(n+4)`
-/

namespace A324631.P5598610693582606053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004306 (n + 4) - A000211 (n + 4)

end

end A324631.P5598610693582606053

noncomputable section

/-- A324631: Number of permutations p of [n] such that four is the maximum of the number of elements in any integer interval [p(i)..i+n*[i

Offset 4, canonical program `A324631.P5598610693582606053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. -/
def A324631 (n : ℕ) : ℤ :=
  A324631.P5598610693582606053.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. -/
def A324631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324772.P18169006912300606666

`abs(1-A104521(n))`
-/

namespace A324772.P18169006912300606666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A104521 n|

end

end A324772.P18169006912300606666

noncomputable section

/-- A324772: The "Octanacci" sequence: Trajectory of 0 under the morphism 0->{0,1,0}, 1->{0}.

Offset 0, canonical program `A324772.P18169006912300606666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324772 (n : ℕ) : ℤ :=
  A324772.P18169006912300606666.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324848.P15119566397967557698

`∑{d}[n+1, val(n+1, A000040(#))]`
-/

namespace A324848.P15119566397967557698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (n + 1) (A000040 d).toNat

end

end A324848.P15119566397967557698

noncomputable section

/-- A324848: Number of prime indices of n (counted with multiplicity) that divide n.

Offset 1, canonical program `A324848.P15119566397967557698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324848 (n : ℕ) : ℤ :=
  (A324848.P15119566397967557698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324852.P9108547436775433016

`∑{d}[n+1, A019431(val((n+1)², A000040(#)))]`
-/

namespace A324852.P9108547436775433016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019431 (SequenceMachineLib.valuation ((n + 1) ^ 2) (A000040 d).toNat)

end

end A324852.P9108547436775433016

noncomputable section

/-- A324852: Number of distinct prime indices of n that divide n.

Offset 1, canonical program `A324852.P9108547436775433016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324852 (n : ℕ) : ℤ :=
  A324852.P9108547436775433016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324903.P14499500524068216409

`A059841(A017665(n+1))`
-/

namespace A324903.P14499500524068216409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A017665 (n + 1)).toNat

end

end A324903.P14499500524068216409

noncomputable section

/-- A324903: a(n) = 1 if A007814(sigma(n)) > A007814(n), 0 otherwise. Here A007814(n) gives the 2-adic valuation of n.

Offset 1, canonical program `A324903.P14499500524068216409`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324903 (n : ℕ) : ℤ :=
  A324903.P14499500524068216409.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324986.P12524945559188802949

`∑{d}[n+1, A064840(#)]`
-/

namespace A324986.P12524945559188802949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064840 d

end

end A324986.P12524945559188802949

noncomputable section

/-- A324986: a(n) = Sum_{d|n} (tau(d)*sigma(d)) where tau(k) = the number of divisors of k (A000005) and sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A324986.P12524945559188802949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324986 (n : ℕ) : ℤ :=
  A324986.P12524945559188802949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325029.P11066408375137913507

`∑{d}[n+1, A076722(#)]`
-/

namespace A325029.P11066408375137913507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076722 d

end

end A325029.P11066408375137913507

noncomputable section

/-- A325029: a(n) = Sum_{d|n} (sigma(d)*pod(d)) where sigma(k) = the sum of the divisors of k (A000203) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A325029.P11066408375137913507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A325029 (n : ℕ) : ℤ :=
  A325029.P11066408375137913507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A325029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325459.P11168469447053430677

`A070824(n)+a(n-1)` with `a(0)=0`
-/

namespace A325459.P11168469447053430677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A070824 n + a (n - 1)

end

end A325459.P11168469447053430677

noncomputable section

/-- A325459: Sum of numbers of nontrivial divisors (greater than 1 and less than k) of k for k = 1..n.

Offset 0, canonical program `A325459.P11168469447053430677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325459 (n : ℕ) : ℤ :=
  A325459.P11168469447053430677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325469.P15952648157714405911

`∑{d}[n+1, A000007(A000203(#)%#)]`
-/

namespace A325469.P15952648157714405911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (Int.tmod (A000203 d) (d : ℤ)).toNat

end

end A325469.P15952648157714405911

noncomputable section

/-- A325469: a(n) is the number of divisors d of n such that d divides sigma(d).

Offset 1, canonical program `A325469.P15952648157714405911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325469 (n : ℕ) : ℤ :=
  A325469.P15952648157714405911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325473.P15099245965244273231

`A192804(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A325473.P15099245965244273231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A192804 (n - 1) + a (n - 1)

end

end A325473.P15099245965244273231

noncomputable section

/-- A325473: Number of compositions of n with no part divisible by 3 and an even number of parts congruent to 4 or 5 modulo 6.

Offset 0, canonical program `A325473.P15099245965244273231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A325473 (n : ℕ) : ℤ :=
  A325473.P15099245965244273231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A325473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325482.P18230021522589642406

`∑[A238803(n+2)]`
-/

namespace A325482.P18230021522589642406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238803 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325482.P18230021522589642406

noncomputable section

/-- A325482: Number of colored set partitions of [n] where colors of the elements of subsets are distinct and in increasing order and exactly two colors are used.

Offset 2, canonical program `A325482.P18230021522589642406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A325482 (n : ℕ) : ℤ :=
  A325482.P18230021522589642406.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A325482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325913.P12663477463004610498

`A117630(n+1)-(n+1)`
-/

namespace A325913.P12663477463004610498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117630 (n + 1) - (n + 1 : ℤ)

end

end A325913.P12663477463004610498

noncomputable section

/-- A325913: Integers m such that there are exactly two powers of 2 between 3^m and 3^(m+1).

Offset 1, canonical program `A325913.P12663477463004610498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325913 (n : ℕ) : ℤ :=
  A325913.P12663477463004610498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325941.P10150501442216604624

`∑{d}[n+1, #*A181983((n+1)/#-1)]`
-/

namespace A325941.P10150501442216604624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A181983 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A325941.P10150501442216604624

noncomputable section

/-- A325941: Expansion of Sum_{k>=1} k * x^(2*k) / (1 + x^k)^2.

Offset 1, canonical program `A325941.P10150501442216604624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325941 (n : ℕ) : ℤ :=
  A325941.P10150501442216604624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326052.P13896815211870271033

`A082053(n+1)-A001065(n+1)`
-/

namespace A326052.P13896815211870271033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 (n + 1) - A001065 (n + 1)

end

end A326052.P13896815211870271033

noncomputable section

/-- A326052: a(n) = n - A050452(n), where A050452 is the sum of divisors of the form 4k+3.

Offset 1, canonical program `A326052.P13896815211870271033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326052 (n : ℕ) : ℤ :=
  A326052.P13896815211870271033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326133.P4300014578678543539

`lt[A005187(n+1), A000203(n+1)]+1`
-/

namespace A326133.P4300014578678543539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A326133.P4300014578678543539

noncomputable section

/-- A326133: Numbers n for which sigma(n) > A005187(n).

Offset 1, canonical program `A326133.P4300014578678543539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4960 terms. -/
def A326133 (n : ℕ) : ℤ :=
  (A326133.P4300014578678543539.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4960 terms. -/
def A326133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326142.P15415912859726343761

`A000203(n+1)-A007947(n+1)`
-/

namespace A326142.P15415912859726343761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A007947 (n + 1)

end

end A326142.P15415912859726343761

noncomputable section

/-- A326142: Sum of all other divisors of n except its largest squarefree divisor: a(n) = sigma(n) - A007947(n).

Offset 1, canonical program `A326142.P15415912859726343761`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326142 (n : ℕ) : ℤ :=
  A326142.P15415912859726343761.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326142.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326184.P15746824177980826123

`A000203(n+1)-A057521(n+1)`
-/

namespace A326184.P15746824177980826123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A057521 (n + 1)

end

end A326184.P15746824177980826123

noncomputable section

/-- A326184: a(n) = sigma(n) - A057521(n), where A057521 gives the powerful part of n, and sigma gives the sum of divisors of n.

Offset 1, canonical program `A326184.P15746824177980826123`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326184 (n : ℕ) : ℤ :=
  A326184.P15746824177980826123.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326185.P1365818805746988269

`A001065(n+1)-A057521(n+1)`
-/

namespace A326185.P1365818805746988269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A057521 (n + 1)

end

end A326185.P1365818805746988269

noncomputable section

/-- A326185: a(n) = sigma(n) - A057521(n) - n.

Offset 1, canonical program `A326185.P1365818805746988269`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326185 (n : ℕ) : ℤ :=
  A326185.P1365818805746988269.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A057521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A326185.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326195.P12952086503095790830

`a(A009195(n+1)-1)+1` with `a(0)=0`
-/

namespace A326195.P12952086503095790830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A009195 (n + 1) - 1).toNat + 1

end

end A326195.P12952086503095790830

noncomputable section

/-- A326195: Number of iterations of x -> A009195(x) needed to reach 1 when starting from x = n, where A009195(x) = gcd(x, phi(x)).

Offset 1, canonical program `A326195.P12952086503095790830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326195 (n : ℕ) : ℤ :=
  (A326195.P12952086503095790830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326238.P17398006079133463493

`∑{d}[n+1, #*A162395((n+1)/#)]`
-/

namespace A326238.P17398006079133463493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A162395 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326238.P17398006079133463493

noncomputable section

/-- A326238: Expansion of Sum_{k>=1} k * x^k * (1 - x^k) / (1 + x^k)^3.

Offset 1, canonical program `A326238.P17398006079133463493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326238 (n : ℕ) : ℤ :=
  A326238.P17398006079133463493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326300.P5632815680627957516

`2*A006520(n+1)`
-/

namespace A326300.P5632815680627957516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006520 (n + 1)

end

end A326300.P5632815680627957516

noncomputable section

/-- A326300: Steinhaus sums.

Offset 1, canonical program `A326300.P5632815680627957516`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326300 (n : ℕ) : ℤ :=
  A326300.P5632815680627957516.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326306.P9944441612055687665

`∑{d}[n+1, #*A276833((n+1)/#)]`
-/

namespace A326306.P9944441612055687665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A276833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326306.P9944441612055687665

noncomputable section

/-- A326306: Dirichlet g.f.: zeta(s) * zeta(s-1) * Product_{p prime} (1 - p^(1 - s) + p^(-s)).

Offset 1, canonical program `A326306.P9944441612055687665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326306 (n : ℕ) : ℤ :=
  A326306.P9944441612055687665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326347.P12003102253163969775

`(n+3)*Δ[A218034(n+2)]`
-/

namespace A326347.P12003102253163969775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218034 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (f1 (n + 1) - f1 n)

end

end A326347.P12003102253163969775

noncomputable section

/-- A326347: Number of unordered pairs of 4-colorings of an n-cycle that differ in the coloring of exactly one vertex.

Offset 3, canonical program `A326347.P12003102253163969775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A326347 (n : ℕ) : ℤ :=
  A326347.P12003102253163969775.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A326347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326399.P10632042506971658356

`∑{d}[n+1, #*A079978((n+1)/#-1)]`
-/

namespace A326399.P10632042506971658356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A079978 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A326399.P10632042506971658356

noncomputable section

/-- A326399: Expansion of Sum_{k>=1} k * x^k / (1 - x^(3*k)).

Offset 1, canonical program `A326399.P10632042506971658356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326399 (n : ℕ) : ℤ :=
  A326399.P10632042506971658356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326583.P3832413435923284178

`floor(A326581(n+1)/2)`
-/

namespace A326583.P3832413435923284178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326581 (n + 1) : ℚ) / 2⌋

end

end A326583.P3832413435923284178

noncomputable section

/-- A326583: Integers k >= 0 such that 2*k + 1 is prime or square.

Offset 1, canonical program `A326583.P3832413435923284178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326583 (n : ℕ) : ℤ :=
  A326583.P3832413435923284178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326663.P17721520339589115185

`7*n+6-A014578(n+1)`
-/

namespace A326663.P17721520339589115185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) + (6 - A014578 (n + 1))

end

end A326663.P17721520339589115185

noncomputable section

/-- A326663: Column 3 of the array at A309157; see Comments.

Offset 1, canonical program `A326663.P17721520339589115185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326663 (n : ℕ) : ℤ :=
  A326663.P17721520339589115185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326664.P7135180711450705937

`or(Δ[A054893(n)], 9*n+7)`
-/

namespace A326664.P7135180711450705937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (9 * n + 7 : ℤ)

end

end A326664.P7135180711450705937

noncomputable section

/-- A326664: Column 3 of the array at A326661 see Comments.

Offset 1, canonical program `A326664.P7135180711450705937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326664 (n : ℕ) : ℤ :=
  A326664.P7135180711450705937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326692.P17715033095032022352

`eq[1, A326691(n+1)]+1`
-/

namespace A326692.P17715033095032022352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326692.P17715033095032022352

noncomputable section

/-- A326692: Values of k for which the denominator of (Sum_{prime p | k} 1/p - 1/k) is k.

Offset 1, canonical program `A326692.P17715033095032022352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9933 terms. -/
def A326692 (n : ℕ) : ℤ :=
  (A326692.P17715033095032022352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9933 terms. -/
def A326692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326731.P9620470420384958029

`xor(n, floor(A267584(n)/2))`
-/

namespace A326731.P9620470420384958029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(A267584 n : ℚ) / 2⌋

end

end A326731.P9620470420384958029

noncomputable section

/-- A326731: a(0) = 0; for n >= 1, a(n) = result of inverting s-th bit (from left) in n, where s is the number of ones in the binary representation of n.

Offset 0, canonical program `A326731.P9620470420384958029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A326731 (n : ℕ) : ℤ :=
  A326731.P9620470420384958029.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A326731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326812.P1256161296840805026

`∑{d}[n+1, #*A036987(#)]`
-/

namespace A326812.P1256161296840805026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A036987 d

end

end A326812.P1256161296840805026

noncomputable section

/-- A326812: Expansion of Sum_{k>=1} (2^k - 1) * x^(2^k - 1) / (1 - x^(2^k - 1)).

Offset 1, canonical program `A326812.P1256161296840805026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326812 (n : ℕ) : ℤ :=
  A326812.P1256161296840805026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326822.P6252450043534262605

`A073424(abs(1-n))`
-/

namespace A326822.P6252450043534262605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 |1 - (n : ℤ)|.toNat

end

end A326822.P6252450043534262605

noncomputable section

/-- A326822: T(n, k) = k^0 if k = 1 else 0^n. Triangle read by rows, T(n, k) for 0 <= k <= n.

Offset 0, canonical program `A326822.P6252450043534262605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326822 (n : ℕ) : ℤ :=
  A326822.P6252450043534262605.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326828.P17376080552107712794

`∑{d}[n+1, A000217(#)*A007427((n+1)/#)]`
-/

namespace A326828.P17376080552107712794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326828.P17376080552107712794

noncomputable section

/-- A326828: a(n) = (1/2) * Sum_{d|n} mu(n/d) * phi(d) * (psi(d) + 1), where mu = A008683, phi = A000010 and psi = A001615.

Offset 1, canonical program `A326828.P17376080552107712794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326828 (n : ℕ) : ℤ :=
  A326828.P17376080552107712794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326933.P3000388639644636097

`∑{d}[n+1, A101825(#-1)]`
-/

namespace A326933.P3000388639644636097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101825 (d - 1)

end

end A326933.P3000388639644636097

noncomputable section

/-- A326933: Number of nonconstant irreducible polynomial divisors of the n-th polynomial given in A326926.

Offset 0, canonical program `A326933.P3000388639644636097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A326933 (n : ℕ) : ℤ :=
  A326933.P3000388639644636097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. -/
def A326933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327095.P17468697000068290047

`∑{d}[n+1, A316631(#)]`
-/

namespace A327095.P17468697000068290047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316631 d

end

end A327095.P17468697000068290047

noncomputable section

/-- A327095: Expansion of Sum_{k>=1} k * x^k * (1 - x^k + x^(2*k)) / (1 - x^(4*k)).

Offset 1, canonical program `A327095.P17468697000068290047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327095 (n : ℕ) : ℤ :=
  A327095.P17468697000068290047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327137.P6453991978606229300

`∩[A026316(n+1)-1, A026316(n+1)]`
-/

namespace A327137.P6453991978606229300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026316 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327137.P6453991978606229300

noncomputable section

/-- A327137: Numbers k such that sin(2k) > sin(2k+2) > sin(2k+4) < sin(2k+6).

Offset 1, canonical program `A327137.P6453991978606229300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3616 terms. -/
def A327137 (n : ℕ) : ℤ :=
  (A327137.P6453991978606229300.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3616 terms. -/
def A327137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327139.P3482459299308253757

`A246388(n)%A257984(n+1)`
-/

namespace A327139.P3482459299308253757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246388 n) (A257984 (n + 1))

end

end A327139.P3482459299308253757

noncomputable section

/-- A327139: Numbers k such that cos(2k) > cos(2k+2) < cos(2k+4).

Offset 1, canonical program `A327139.P3482459299308253757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327139 (n : ℕ) : ℤ :=
  A327139.P3482459299308253757.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327183.P5072092057238273237

`A022843(2*n+1)-(A022843(n+1)+A022843(n))`
-/

namespace A327183.P5072092057238273237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (2 * n + 1) - (A022843 (n + 1) + A022843 n)

end

end A327183.P5072092057238273237

noncomputable section

/-- A327183: a(n) = [(2n+1)e] - [(n+1)e] - [ne], where [ ] = floor.

Offset 0, canonical program `A327183.P5072092057238273237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327183 (n : ℕ) : ℤ :=
  A327183.P5072092057238273237.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A327183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327203.P9862003509779695925

`A319433(A190430(n+1))`
-/

namespace A327203.P9862003509779695925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 (A190430 (n + 1)).toNat

end

end A327203.P9862003509779695925

noncomputable section

/-- A327203: Positions of 0's in {A327202(n) : n > 0}.

Offset 1, canonical program `A327203.P9862003509779695925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7726 terms. -/
def A327203 (n : ℕ) : ℤ :=
  A327203.P9862003509779695925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7726 terms. -/
def A327203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327255.P10994982625670652327

`lt[0, A327253(n)]`
-/

namespace A327255.P10994982625670652327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327255.P10994982625670652327

noncomputable section

/-- A327255: Positions of 1's in {A327253(n) : n > 0}.

Offset 1, canonical program `A327255.P10994982625670652327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327255 (n : ℕ) : ℤ :=
  (A327255.P10994982625670652327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A327255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327276.P15454841437412890746

`∑{d}[n+1, A007427(#)*A209229((n+1)/#)]`
-/

namespace A327276.P15454841437412890746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327276.P15454841437412890746

noncomputable section

/-- A327276: a(n) = Sum_{d|n, d odd} mu(d) * mu(n/d).

Offset 1, canonical program `A327276.P15454841437412890746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327276 (n : ℕ) : ℤ :=
  A327276.P15454841437412890746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327299.P1872034155580248125

`lt[n*A327298(n), n]`
-/

namespace A327299.P1872034155580248125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327298 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327299.P1872034155580248125

noncomputable section

/-- A327299: Positions of 0's in {A327298(n) : n > 0}.

Offset 1, canonical program `A327299.P1872034155580248125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A327299 (n : ℕ) : ℤ :=
  (A327299.P1872034155580248125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A327299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327300.P17965462922652461988

`eq[n+1, A327298(n)+n]`
-/

namespace A327300.P17965462922652461988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327300.P17965462922652461988

noncomputable section

/-- A327300: Positions of 1's in {A327298(n) : n > 0}.

Offset 1, canonical program `A327300.P17965462922652461988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3363 terms. -/
def A327300 (n : ℕ) : ℤ :=
  (A327300.P17965462922652461988.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3363 terms. -/
def A327300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327311.P9940641066706563511

`lt[n*A327310(n), n]`
-/

namespace A327311.P9940641066706563511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327310 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327311.P9940641066706563511

noncomputable section

/-- A327311: Positions of 0's in {A327310(n) : n > 0}.

Offset 1, canonical program `A327311.P9940641066706563511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A327311 (n : ℕ) : ℤ :=
  (A327311.P9940641066706563511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A327311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327493.P9586062698418527337

`2^A327492(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327493.P9586062698418527337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A327492 n : ℤ)

end

end A327493.P9586062698418527337

noncomputable section

/-- A327493: a(n) = 2^A327492(n).

Offset 0, canonical program `A327493.P9586062698418527337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327492, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327493 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A327493.P9586062698418527337.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327492, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327496.P5933299371666514087

`4^A327492(n)`
-/

namespace A327496.P5933299371666514087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A327492 n : ℤ)

end

end A327496.P5933299371666514087

noncomputable section

/-- A327496: a(n) = a(n - 1) * 4^r where r = valuation(n, 2) if 4 divides n else r = (n mod 2) + 1; a(0) = 1. The denominators of A327495.

Offset 0, canonical program `A327496.P5933299371666514087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327492, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327496 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A327496.P5933299371666514087.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327492, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327496.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327573.P16422618072216358095

`∑[A000079(∑{e}[n+1, #-val(#!, 2)])]`
-/

namespace A327573.P16422618072216358095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f2 n) p)) 2 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327573.P16422618072216358095

noncomputable section

/-- A327573: Partial sums of the number of infinitary divisors function: a(n) = Sum_{k=1..n} id(k), where id is A037445.

Offset 1, canonical program `A327573.P16422618072216358095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327573 (n : ℕ) : ℤ :=
  A327573.P16422618072216358095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327626.P16918329962545563415

`∑{d}[n+1, #*A010057((n+1)/#)]`
-/

namespace A327626.P16918329962545563415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010057 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327626.P16918329962545563415

noncomputable section

/-- A327626: Expansion of Sum_{k>=1} x^(k^3) / (1 - x^(k^3))^2.

Offset 1, canonical program `A327626.P16918329962545563415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327626 (n : ℕ) : ℤ :=
  A327626.P16918329962545563415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327672.P1070731734318212640

`A028391(n)+A022554(n)`
-/

namespace A327672.P1070731734318212640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n + A022554 n

end

end A327672.P1070731734318212640

noncomputable section

/-- A327672: a(n) = Sum_{k=0..n} ceiling(sqrt(k)).

Offset 0, canonical program `A327672.P1070731734318212640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327672 (n : ℕ) : ℤ :=
  A327672.P1070731734318212640.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327715.P7624630360277358397

`1+a(n-A009191(n))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327715.P7624630360277358397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A009191 n).toNat

end

end A327715.P7624630360277358397

noncomputable section

/-- A327715: a(0) = 0; for n >= 1, a(n) = 1 + a(n-A009191(n)).

Offset 0, canonical program `A327715.P7624630360277358397`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009191, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327715 (n : ℕ) : ℤ :=
  (A327715.P7624630360277358397.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009191, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327715.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327802.P14680970415820451942

`A033270(A168183(n+1))-A033270(n+1)`
-/

namespace A327802.P14680970415820451942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A168183 (n + 1)).toNat - A033270 (n + 1)

end

end A327802.P14680970415820451942

noncomputable section

/-- A327802: Number of primes p such that n < p < (9/8) * n.

Offset 1, canonical program `A327802.P14680970415820451942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8889 terms. -/
def A327802 (n : ℕ) : ℤ :=
  A327802.P14680970415820451942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8889 terms. -/
def A327802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328002.P5813959575759474995

`A056040(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A328002.P5813959575759474995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056040 n + 2 * a (n - 1)

end

end A328002.P5813959575759474995

noncomputable section

/-- A328002: a(n) = 2^n * Sum_{k=0..n} Product_{j=1..k} (2/j)^((-1)^j).

Offset 0, canonical program `A328002.P5813959575759474995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A328002 (n : ℕ) : ℤ :=
  A328002.P5813959575759474995.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A328002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328012.P3457687053191730346

`record[C(A059010(n), 2*n)]`
-/

namespace A328012.P3457687053191730346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059010 n).toNat (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328012.P3457687053191730346

noncomputable section

/-- A328012: Numbers whose binary representations start and end with 1 and contain an even number of zeros between.

Offset 1, canonical program `A328012.P3457687053191730346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328012 (n : ℕ) : ℤ :=
  (A328012.P3457687053191730346.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328014.P12714233293390767781

`lt[n+1, A057521(n+1)²]+1`
-/

namespace A328014.P12714233293390767781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A328014.P12714233293390767781

noncomputable section

/-- A328014: Numbers whose powerful part (A057521) is larger than their powerfree part (A055231).

Offset 1, canonical program `A328014.P12714233293390767781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A328014 (n : ℕ) : ℤ :=
  (A328014.P12714233293390767781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. -/
def A328014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328184.P9274231318191450713

`lcm(6, A165998(n+2))/(1/2+1)`
-/

namespace A328184.P9274231318191450713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 6 (A165998 (n + 2)) : ℚ) / ((1 : ℚ) / 2 + 1)

end

end A328184.P9274231318191450713

noncomputable section

/-- A328184: Denominator of time taken for a vertex of a rolling regular n-sided polygon to reach the ground.

Offset 3, canonical program `A328184.P9274231318191450713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A328184 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A328184.P9274231318191450713.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A328184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328203.P15993149279988823828

`∑{d}[n+1, #*A027656((n+1)/#-1)]`
-/

namespace A328203.P15993149279988823828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A027656 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A328203.P15993149279988823828

noncomputable section

/-- A328203: Expansion of Sum_{k>=1} k * x^k / (1 - x^(2*k))^2.

Offset 1, canonical program `A328203.P15993149279988823828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328203 (n : ℕ) : ℤ :=
  A328203.P15993149279988823828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328485.P15693459629659054742

`∑{d}[n+1, A055615(#)*A064840((n+1)/#)]`
-/

namespace A328485.P15693459629659054742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A064840 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328485.P15693459629659054742

noncomputable section

/-- A328485: Dirichlet g.f.: zeta(s)^2 * zeta(s-1) / zeta(2*s-1).

Offset 1, canonical program `A328485.P15693459629659054742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328485 (n : ℕ) : ℤ :=
  A328485.P15693459629659054742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328485.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A328567.P8941545944545941635

`2*lcm(n+1, A062383(n+1))-(n+1)`
-/

namespace A328567.P8941545944545941635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Int.lcm (n + 1 : ℤ) (A062383 (n + 1)) : ℤ) - (n + 1 : ℤ)

end

end A328567.P8941545944545941635

noncomputable section

/-- A328567: a(n) is the smallest positive integer divisible by n such that it is possible to strike out a digit from its binary expansion (apart from trailing zeros) so that the resulting number is nonzero and divisible by n.

Offset 1, canonical program `A328567.P8941545944545941635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A328567 (n : ℕ) : ℤ :=
  A328567.P8941545944545941635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A328567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328727.P2478192651676945120

`eq[A006047(n)², A006047(4*n)]`
-/

namespace A328727.P2478192651676945120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328727.P2478192651676945120

noncomputable section

/-- A328727: Nonnegative numbers whose base-3 expansion has no two consecutive nonzero digits.

Offset 1, canonical program `A328727.P2478192651676945120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A328727 (n : ℕ) : ℤ :=
  (A328727.P2478192651676945120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A328727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328781.P14652408642436878872

`eq[A055641(n), A086008(n)]`
-/

namespace A328781.P14652408642436878872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328781.P14652408642436878872

noncomputable section

/-- A328781: Nonnegative integers k such that k and k^2 contain the same number of zero digits in their decimal expansion.

Offset 1, canonical program `A328781.P14652408642436878872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4678 terms. -/
def A328781 (n : ℕ) : ℤ :=
  (A328781.P14652408642436878872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4678 terms. -/
def A328781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328830.P16608043948693847264

`∏{e}[∏{e}[n+1, A000040(#)], A000040(#)]`
-/

namespace A328830.P16608043948693847264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000040 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A328830.P16608043948693847264

noncomputable section

/-- A328830: The second prime shadow of n: a(1) = 1; for n > 1, a(n) = a(A003557(n)) * prime(A056169(n)) when A056169(n) > 0, otherwise a(n) = a(A003557(n)).

Offset 1, canonical program `A328830.P16608043948693847264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328830 (n : ℕ) : ℤ :=
  A328830.P16608043948693847264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328854.P9644538985999004909

`∏{e}[n+1, A001787(#+1)]`
-/

namespace A328854.P9644538985999004909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001787 (Nat.factorization (f1 n) p + 1)

end

end A328854.P9644538985999004909

noncomputable section

/-- A328854: Dirichlet g.f.: Product_{p prime} 1 / (1 - 2 * p^(-s))^2.

Offset 1, canonical program `A328854.P9644538985999004909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328854 (n : ℕ) : ℤ :=
  A328854.P9644538985999004909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328878.P14038068358988386156

`∏{p}[n+1, A000040(#)]`
-/

namespace A328878.P14038068358988386156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000040 p

end

end A328878.P14038068358988386156

noncomputable section

/-- A328878: If n = Product (p_j^k_j) then a(n) = Product (prime(p_j)).

Offset 1, canonical program `A328878.P14038068358988386156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328878 (n : ℕ) : ℤ :=
  A328878.P14038068358988386156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A328878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329009.P3978027272768367501

`lcm(∑[A000244(n)], A056450(n))`
-/

namespace A329009.P3978027272768367501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A056450 n)

end

end A329009.P3978027272768367501

noncomputable section

/-- A329009: a(n) = p(1,n), where p(x,n) is the strong divisibility sequence of polynomials based on sqrt(3) as in A327321.

Offset 1, canonical program `A329009.P3978027272768367501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A329009 (n : ℕ) : ℤ :=
  (A329009.P3978027272768367501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A329009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329199.P13472642438074930869

`A329194(n+1)-A062153(n+1)`
-/

namespace A329199.P13472642438074930869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329194 (n + 1) - A062153 (n + 1)

end

end A329199.P13472642438074930869

noncomputable section

/-- A329199: a(n) = round(log_3(n)).

Offset 1, canonical program `A329199.P13472642438074930869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329199 (n : ℕ) : ℤ :=
  A329199.P13472642438074930869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329278.P202766685788889312

`A000217(A053644(n+1)+n+1)%A053644(n+1)`
-/

namespace A329278.P202766685788889312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A053644 (n + 1) + (n + 1 : ℤ)).toNat) (A053644 (n + 1))

end

end A329278.P202766685788889312

noncomputable section

/-- A329278: Irregular table read by rows. The n-th row is the permutation of {0, 1, 2, ..., 2^n-1} given by T(n,k) = k(k+1)/2 (mod 2^n).

Offset 0, canonical program `A329278.P202766685788889312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A329278 (n : ℕ) : ℤ :=
  A329278.P202766685788889312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A329278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329356.P5614816182224858814

`A156253(n)%2+2*a(n-1)` with `a(0)=0`
-/

namespace A329356.P5614816182224858814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A156253 n) 2 + 2 * a (n - 1)

end

end A329356.P5614816182224858814

noncomputable section

/-- A329356: The binary expansion of a(n) is the first n terms of 2 - A000002.

Offset 0, canonical program `A329356.P5614816182224858814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A329356 (n : ℕ) : ℤ :=
  A329356.P5614816182224858814.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A329356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329360.P251865556073859854

`gcd(2, A156253(n))+10*a(n-1)` with `a(0)=0`
-/

namespace A329360.P251865556073859854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd 2 (A156253 n) + 10 * a (n - 1)

end

end A329360.P251865556073859854

noncomputable section

/-- A329360: The decimal expansion of a(n) is the first n terms of A000002.

Offset 0, canonical program `A329360.P251865556073859854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A329360 (n : ℕ) : ℤ :=
  (A329360.P251865556073859854.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A329360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329421.P7628094420746158339

`A005013(A008619(A008619(6*n)))-A005013(A008619(n))`
-/

namespace A329421.P7628094420746158339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (A008619 (A008619 (6 * n)).toNat).toNat - A005013 (A008619 n).toNat

end

end A329421.P7628094420746158339

noncomputable section

/-- A329421: a(n) = gcd(A330050(n), A330051(n)).

Offset 0, canonical program `A329421.P7628094420746158339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A329421 (n : ℕ) : ℤ :=
  A329421.P7628094420746158339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A329421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329547.P3217439084756409380

`∑[1-A324908(n+1)]`
-/

namespace A329547.P3217439084756409380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A324908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329547.P3217439084756409380

noncomputable section

/-- A329547: Number of natural numbers k <= n such that k^k is a square.

Offset 1, canonical program `A329547.P3217439084756409380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329547 (n : ℕ) : ℤ :=
  A329547.P3217439084756409380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329598.P8348170538693521994

`A060432(n+1)+∑[n+1]`
-/

namespace A329598.P8348170538693521994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A329598.P8348170538693521994

noncomputable section

/-- A329598: Partial sums of the nontriangular numbers (A014132).

Offset 1, canonical program `A329598.P8348170538693521994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329598 (n : ℕ) : ℤ :=
  A329598.P8348170538693521994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329728.P16334695943169972259

`∑[∑{d}[(n+1)/A057521(n+1), #]]`
-/

namespace A329728.P16334695943169972259
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057521 (n + 1) : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329728.P16334695943169972259

noncomputable section

/-- A329728: Partial sums of A092261.

Offset 1, canonical program `A329728.P16334695943169972259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329728 (n : ℕ) : ℤ :=
  (A329728.P16334695943169972259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329780.P8175845754230340257

`comp[2*comp[A069909(n)]]`
-/

namespace A329780.P8175845754230340257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069909 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A329780.P8175845754230340257

noncomputable section

/-- A329780: Numbers that are either odd or are congruent to {+-2, +-8, +-12, +-14} (mod 32).

Offset 1, canonical program `A329780.P8175845754230340257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329780 (n : ℕ) : ℤ :=
  (A329780.P8175845754230340257.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329963.P10133551863400221226

`record[(n+1)*A000203(n+1)²%3]`
-/

namespace A329963.P10133551863400221226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A000203 (n + 1) ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329963.P10133551863400221226

noncomputable section

/-- A329963: Numbers k such that sigma(k) is not divisible by 3.

Offset 1, canonical program `A329963.P10133551863400221226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329963 (n : ℕ) : ℤ :=
  A329963.P10133551863400221226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330170.P12099083531148575419

`A074528(n+1)-1`
-/

namespace A330170.P12099083531148575419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074528 (n + 1) - 1

end

end A330170.P12099083531148575419

noncomputable section

/-- A330170: a(n) = 2^n + 3^n + 6^n - 1.

Offset 1, canonical program `A330170.P12099083531148575419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A330170 (n : ℕ) : ℤ :=
  A330170.P12099083531148575419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A330170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330173.P8899497798927483273

`∑[Δ[A091087(n)]+3]`
-/

namespace A330173.P8899497798927483273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330173.P8899497798927483273

noncomputable section

/-- A330173: a(n) = n + floor(ns/r) + floor(nt/r), where r = sqrt(2), s = sqrt(2) + 1, t = sqrt(2) + 2.

Offset 1, canonical program `A330173.P8899497798927483273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330173 (n : ℕ) : ℤ :=
  A330173.P8899497798927483273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330181.P12400418502170209775

`A054386(2*(n+1))+A054386(n+1)`
-/

namespace A330181.P12400418502170209775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (2 * (n + 1)) + A054386 (n + 1)

end

end A330181.P12400418502170209775

noncomputable section

/-- A330181: a(n) = n + floor(ns/r) + floor(nt/r), where r = Pi - 1, s = Pi, t = Pi + 1.

Offset 1, canonical program `A330181.P12400418502170209775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330181 (n : ℕ) : ℤ :=
  A330181.P12400418502170209775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330197.P10183918662086947325

`2*(n+3)*A069905(n)`
-/

namespace A330197.P10183918662086947325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 3 : ℤ) * A069905 n)

end

end A330197.P10183918662086947325

noncomputable section

/-- A330197: Number of scalene triangles whose vertices are the vertices of a regular n-gon.

Offset 3, canonical program `A330197.P10183918662086947325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330197 (n : ℕ) : ℤ :=
  A330197.P10183918662086947325.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330300.P6216916394113474434

`∑[C(A004526(n), 3)]*A004526(n)`
-/

namespace A330300.P6216916394113474434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 n).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004526 n

end

end A330300.P6216916394113474434

noncomputable section

/-- A330300: a(n) is the number of subsets of {1..n} that contain exactly 2 odd and 3 even numbers.

Offset 0, canonical program `A330300.P6216916394113474434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330300 (n : ℕ) : ℤ :=
  A330300.P6216916394113474434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330320.P16120986544821140952

`∑[A229949(2*(n+1))]`
-/

namespace A330320.P16120986544821140952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229949 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330320.P16120986544821140952

noncomputable section

/-- A330320: a(n) = Sum_{i=1..n} tau(i)*tau(i+1), where tau(n) = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A330320.P16120986544821140952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330320 (n : ℕ) : ℤ :=
  A330320.P16120986544821140952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A330320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330322.P9206465895295157789

`∑[A083539(n+1)]`
-/

namespace A330322.P9206465895295157789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330322.P9206465895295157789

noncomputable section

/-- A330322: a(n) = Sum_{i=1..n} sigma(i)*sigma(i+1), where sigma(n) = A000203(n) is the sum of the divisors of n.

Offset 1, canonical program `A330322.P9206465895295157789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330322 (n : ℕ) : ℤ :=
  A330322.P9206465895295157789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A330322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330323.P18037437684932255668

`Δ[A002321(n+1)]*∏{e}[n+1, -floor(1/#)]`
-/

namespace A330323.P18037437684932255668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (∏ p ∈ Nat.primeFactors (f2 n), (-⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋))

end

end A330323.P18037437684932255668

noncomputable section

/-- A330323: a(n) = Moebius(n)*Moebius(n+1).

Offset 1, canonical program `A330323.P18037437684932255668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A330323 (n : ℕ) : ℤ :=
  A330323.P18037437684932255668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A330323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330410.P15775889869853581800

`A016969(A000040(n+1)-1)`
-/

namespace A330410.P15775889869853581800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A000040 (n + 1) - 1).toNat

end

end A330410.P15775889869853581800

noncomputable section

/-- A330410: a(n) = 6*prime(n) - 1.

Offset 1, canonical program `A330410.P15775889869853581800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330410 (n : ℕ) : ℤ :=
  A330410.P15775889869853581800.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A330410.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A330796.P18057890760178704825

`3^n-A005773(n+1)`
-/

namespace A330796.P18057890760178704825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A005773 (n + 1)

end

end A330796.P18057890760178704825

noncomputable section

/-- A330796: a(n) = Sum_{k=0..n} binomial(n, k)*(2^k - binomial(k, floor(k/2))).

Offset 0, canonical program `A330796.P18057890760178704825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A330796 (n : ℕ) : ℤ :=
  A330796.P18057890760178704825.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A330796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331131.P16311086492705837412

`∑[(A032741(n+1)+1)*A007425(n+2)]`
-/

namespace A331131.P16311086492705837412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * A007425 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331131.P16311086492705837412

noncomputable section

/-- A331131: a(n) = Sum_{i=1..n} d(i)*d_3(i+1), where d(n) = A000005(n) and d_3(n) = A007425(n).

Offset 1, canonical program `A331131.P16311086492705837412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331131 (n : ℕ) : ℤ :=
  A331131.P16311086492705837412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331176.P4521409389125986584

`n-floor(n/A009195(n+1))`
-/

namespace A331176.P4521409389125986584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A009195 (n + 1) : ℚ)⌋

end

end A331176.P4521409389125986584

noncomputable section

/-- A331176: a(n) = n - n/gcd(n, phi(n)), where phi is Euler totient function.

Offset 1, canonical program `A331176.P4521409389125986584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331176 (n : ℕ) : ℤ :=
  A331176.P4521409389125986584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331261.P13496405217085940053

`∪[A111766(n+1), Δ[A084158(n)]]`
-/

namespace A331261.P13496405217085940053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111766 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084158 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331261.P13496405217085940053

noncomputable section

/-- A331261: List of pairs of consecutive integers such that one of them is a square and their sum is also a square.

Offset 1, canonical program `A331261.P13496405217085940053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A331261 (n : ℕ) : ℤ :=
  (A331261.P13496405217085940053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A331261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331390.P8161212891020364815

`A070893(n+1)+A006503(n)`
-/

namespace A331390.P8161212891020364815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070893 (n + 1) + A006503 n

end

end A331390.P8161212891020364815

noncomputable section

/-- A331390: Number of binary matrices with 3 distinct columns and any number of nonzero rows with n ones in every column and rows in nonincreasing lexicographic order.

Offset 1, canonical program `A331390.P8161212891020364815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331390 (n : ℕ) : ℤ :=
  A331390.P8161212891020364815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331443.P9809106895310363921

`A026810(n)-A005044(A326178(n))`
-/

namespace A331443.P9809106895310363921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A005044 (A326178 n).toNat

end

end A331443.P9809106895310363921

noncomputable section

/-- A331443: Number of 1-complete partitions of n with largest part 4.

Offset 0, canonical program `A331443.P9809106895310363921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331443 (n : ℕ) : ℤ :=
  A331443.P9809106895310363921.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331515.P16149986033331317930

`∑[n+1]*A007564(n+1)`
-/

namespace A331515.P16149986033331317930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A007564 (n + 1)

end

end A331515.P16149986033331317930

noncomputable section

/-- A331515: Expansion of 1/(1 - 8*x + 4*x^2)^(3/2).

Offset 0, canonical program `A331515.P16149986033331317930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A331515 (n : ℕ) : ℤ :=
  A331515.P16149986033331317930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A331515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331516.P12371243776701887000

`∑[n+1]*A059231(n+1)`
-/

namespace A331516.P12371243776701887000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A059231 (n + 1)

end

end A331516.P12371243776701887000

noncomputable section

/-- A331516: Expansion of 1/(1 - 10*x + 9*x^2)^(3/2).

Offset 0, canonical program `A331516.P12371243776701887000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A331516 (n : ℕ) : ℤ :=
  A331516.P12371243776701887000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A331516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331552.P3785117520877040863

`A063886(n)*A127630(n)`
-/

namespace A331552.P3785117520877040863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n * A127630 n

end

end A331552.P3785117520877040863

noncomputable section

/-- A331552: Expansion of (1 + 2*x)/(1 + 4*x^2)^(3/2).

Offset 0, canonical program `A331552.P3785117520877040863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A331552 (n : ℕ) : ℤ :=
  A331552.P3785117520877040863.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A331552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331574.P14794275585014647613

`A007531(floor((n+1)/2))/6*A007531(floor(n/2))/6`
-/

namespace A331574.P14794275585014647613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 ⌊(n + 1 : ℚ) / 2⌋.toNat : ℚ) / 6 * ((A007531 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / 6)

end

end A331574.P14794275585014647613

noncomputable section

/-- A331574: a(n) is the number of subsets of {1..n} that contain 3 even and 3 odd numbers.

Offset 0, canonical program `A331574.P14794275585014647613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331574 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331574.P14794275585014647613.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331575.P9808497871265616019

`A000332(A004526(n))*A000332(A065033(n))`
-/

namespace A331575.P9808497871265616019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A004526 n).toNat * A000332 (A065033 n).toNat

end

end A331575.P9808497871265616019

noncomputable section

/-- A331575: a(n) is the number of subsets of {1..n} that contain 4 even and 4 odd numbers.

Offset 0, canonical program `A331575.P9808497871265616019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331575 (n : ℕ) : ℤ :=
  A331575.P9808497871265616019.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331576.P7474989431527191840

`A000389(floor(n/2))*A000389(A065033(n))`
-/

namespace A331576.P7474989431527191840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 ⌊(n : ℚ) / 2⌋.toNat * A000389 (A065033 n).toNat

end

end A331576.P7474989431527191840

noncomputable section

/-- A331576: a(n) is the number of subsets of {1..n} that contain 5 even and 5 odd numbers.

Offset 0, canonical program `A331576.P7474989431527191840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331576 (n : ℕ) : ℤ :=
  A331576.P7474989431527191840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332101.P15267802862689855331

`abs(xor(-1, A072633(n)))`
-/

namespace A332101.P15267802862689855331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A072633 n)|

end

end A332101.P15267802862689855331

noncomputable section

/-- A332101: Least m such that m^n <= Sum_{k

Offset 0, canonical program `A332101.P15267802862689855331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A332101 (n : ℕ) : ℤ :=
  A332101.P15267802862689855331.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A332101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332217.P1686272763571355941

`eq[3, gcd(18, A000203(n+1))]+1`
-/

namespace A332217.P1686272763571355941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 18 (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332217.P1686272763571355941

noncomputable section

/-- A332217: Numbers k for which the 2-adic valuation of sigma(k) is zero and its 3-adic valuation is 1 (so that sigma(k) is an odd multiple of 3, but not of 9).

Offset 1, canonical program `A332217.P1686272763571355941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A332217 (n : ℕ) : ℤ :=
  (A332217.P1686272763571355941.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A332217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332226.P12587947398497614058

`eq[2, A000203(n+2)%8]+2`
-/

namespace A332226.P12587947398497614058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A332226.P12587947398497614058

noncomputable section

/-- A332226: Numbers k such that sigma(k) is congruent to 2 modulo 8.

Offset 1, canonical program `A332226.P12587947398497614058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3754 terms. -/
def A332226 (n : ℕ) : ℤ :=
  (A332226.P12587947398497614058.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3754 terms. -/
def A332226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332382.P10140371250986470604

`A000040(floor(log2(n))+2)*a(n-2^floor(log2(n)))` with `a(0)=1`
-/

namespace A332382.P10140371250986470604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (Nat.log 2 n + 2) * a (n - 2 ^ Nat.log 2 n)

end

end A332382.P10140371250986470604

noncomputable section

/-- A332382: If n = Sum (2^e_k) then a(n) = Product (prime(e_k + 2)).

Offset 0, canonical program `A332382.P10140371250986470604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332382 (n : ℕ) : ℤ :=
  A332382.P10140371250986470604.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332409.P7874765349355173867

`A006882(n+1)%∑[A212804(n)]`
-/

namespace A332409.P7874765349355173867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006882 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332409.P7874765349355173867

noncomputable section

/-- A332409: a(n) = n!! mod Fibonacci(n).

Offset 1, canonical program `A332409.P7874765349355173867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A332409 (n : ℕ) : ℤ :=
  A332409.P7874765349355173867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A332409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332411.P16015717421830138400

`∑{p}[n+1, (n+1)^A033270(#)]`
-/

namespace A332411.P16015717421830138400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) ^ (A033270 p : ℤ)

end

end A332411.P16015717421830138400

noncomputable section

/-- A332411: If n = Product (p_j^k_j) then a(n) = Sum (n^(pi(p_j) - 1)), where pi = A000720.

Offset 1, canonical program `A332411.P16015717421830138400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A332411 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332411.P16015717421830138400.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A332411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332447.P2823227897657881247

`val(Δ[A086845(n+1)], 2)`
-/

namespace A332447.P2823227897657881247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086845 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A332447.P2823227897657881247

noncomputable section

/-- A332447: a(n) = A007814(A087808(n)).

Offset 1, canonical program `A332447.P2823227897657881247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A332447 (n : ℕ) : ℤ :=
  (A332447.P2823227897657881247.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A332447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332456.P1538561616137213604

`eq[6, A105827(A000203(n+1))]+1`
-/

namespace A332456.P1538561616137213604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105827 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332456.P1538561616137213604

noncomputable section

/-- A332456: Numbers k such that sigma(sigma(k)) is congruent to 6 modulo 8.

Offset 1, canonical program `A332456.P1538561616137213604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A332456 (n : ℕ) : ℤ :=
  (A332456.P1538561616137213604.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A332456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332476.P8708252217111257633

`2^A086275(n+1)`
-/

namespace A332476.P8708252217111257633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A086275 (n + 1) : ℤ)

end

end A332476.P8708252217111257633

noncomputable section

/-- A332476: The number of unitary divisors of n in Gaussian integers.

Offset 1, canonical program `A332476.P8708252217111257633`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332476 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332476.P8708252217111257633.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A332476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A332635.P10474287959970127323

`and(abs(1-n)-n, A006882(n+1))%A000040(n+1)`
-/

namespace A332635.P10474287959970127323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (|1 - (n : ℤ)| - (n : ℤ)) (A006882 (n + 1))) (A000040 (n + 1))

end

end A332635.P10474287959970127323

noncomputable section

/-- A332635: a(n) = n!! mod prime(n).

Offset 1, canonical program `A332635.P10474287959970127323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A332635 (n : ℕ) : ℤ :=
  A332635.P10474287959970127323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A332635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332712.P7227450806952922240

`∏{e}[n+1, A028242(#)]`
-/

namespace A332712.P7227450806952922240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A028242 (Nat.factorization (f1 n) p)

end

end A332712.P7227450806952922240

noncomputable section

/-- A332712: a(n) = Sum_{d|n} mu(d/gcd(d, n/d)).

Offset 1, canonical program `A332712.P7227450806952922240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332712 (n : ℕ) : ℤ :=
  A332712.P7227450806952922240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332730.P8572861949830629075

`∑{d}[n+1, A322483(#)]`
-/

namespace A332730.P8572861949830629075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322483 d

end

end A332730.P8572861949830629075

noncomputable section

/-- A332730: a(n) = Sum_{d|n} tau(d/gcd(d, n/d)), where tau = A000005.

Offset 1, canonical program `A332730.P8572861949830629075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332730 (n : ℕ) : ℤ :=
  A332730.P8572861949830629075.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332732.P2456103261483867088

`∏{e}[n+1, A000484(#+2)]`
-/

namespace A332732.P2456103261483867088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000484 (Nat.factorization (f1 n) p + 2)

end

end A332732.P2456103261483867088

noncomputable section

/-- A332732: Dirichlet g.f.: zeta(6*s) / (zeta(s) * zeta(2*s) * zeta(3*s)).

Offset 1, canonical program `A332732.P2456103261483867088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332732 (n : ℕ) : ℤ :=
  A332732.P2456103261483867088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332732.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A332931.P2216089643728563492

`A004526(∑{d}[n+1, A001670(#)])`
-/

namespace A332931.P2216089643728563492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ d ∈ Nat.divisors (f1 n), A001670 d).toNat

end

end A332931.P2216089643728563492

noncomputable section

/-- A332931: Sum of round(sqrt(d)) where d runs through the divisors of n.

Offset 1, canonical program `A332931.P2216089643728563492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332931 (n : ℕ) : ℤ :=
  A332931.P2216089643728563492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332935.P3294456926550879312

`abs(∑{d}[n+1, A185549(#)]-1)+1`
-/

namespace A332935.P3294456926550879312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A185549 d - 1| + 1

end

end A332935.P3294456926550879312

noncomputable section

/-- A332935: Sum of ceiling(n^(3/2)) where d runs through the divisors of n.

Offset 1, canonical program `A332935.P3294456926550879312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332935 (n : ℕ) : ℤ :=
  A332935.P3294456926550879312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332937.P611220943154796213

`ceil(gcd(2*A000201(n+1), 2*n)/2)`
-/

namespace A332937.P611220943154796213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.gcd (2 * A000201 (n + 1)) (2 * n : ℤ) : ℚ) / 2⌉

end

end A332937.P611220943154796213

noncomputable section

/-- A332937: a(n) is the greatest common divisor of the first two terms of row n of the Wythoff array (A035513).

Offset 1, canonical program `A332937.P611220943154796213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332937 (n : ℕ) : ℤ :=
  A332937.P611220943154796213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333186.P1988053523329754177

`floor(A000079(n+1)/sin(1/(n+1)))`
-/

namespace A333186.P1988053523329754177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (n + 1) : ℝ) / Real.sin (1 / (n + 1 : ℚ) : ℝ)⌋

end

end A333186.P1988053523329754177

noncomputable section

/-- A333186: a(n) = floor(2^n csc(1/n)).

Offset 1, canonical program `A333186.P1988053523329754177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A333186 (n : ℕ) : ℤ :=
  A333186.P1988053523329754177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A333186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333251.P2614754143735819101

`A011867(2*(n+2))-∑[A008619(n)]`
-/

namespace A333251.P2614754143735819101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (2 * (n + 2)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333251.P2614754143735819101

noncomputable section

/-- A333251: Tropical version of Somos-5 sequence A006721.

Offset 0, canonical program `A333251.P2614754143735819101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A333251 (n : ℕ) : ℤ :=
  A333251.P2614754143735819101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A333251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333297.P14741337176026979620

`3*∑[A023896(n+1)]-2`
-/

namespace A333297.P14741337176026979620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A333297.P14741337176026979620

noncomputable section

/-- A333297: a(n) = Sum_{i=1..n, j=1..n, gcd(i,j)=1} i.

Offset 1, canonical program `A333297.P14741337176026979620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333297 (n : ℕ) : ℤ :=
  A333297.P14741337176026979620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333319.P7113117256401628378

`C(A065033(n), 3)*A004526(n)`
-/

namespace A333319.P7113117256401628378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A065033 n).toNat 3 : ℤ) * A004526 n

end

end A333319.P7113117256401628378

noncomputable section

/-- A333319: a(n) is the number of subsets of {1..n} that contain exactly 3 odd and 1 even numbers.

Offset 0, canonical program `A333319.P7113117256401628378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333319 (n : ℕ) : ℤ :=
  A333319.P7113117256401628378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333320.P6787680048393939661

`A000332(∑[n%2])*A004526(n)`
-/

namespace A333320.P6787680048393939661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (∑ j ∈ Finset.range (n + 1), f1 j) * A004526 n

end

end A333320.P6787680048393939661

noncomputable section

/-- A333320: a(n) is the number of subsets of {1..n} that contain exactly 4 odd and 1 even numbers.

Offset 0, canonical program `A333320.P6787680048393939661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333320 (n : ℕ) : ℤ :=
  A333320.P6787680048393939661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333321.P15592733864057619485

`ceil(n/2)*A000332(abs(ceil(n/2-n)))`
-/

namespace A333321.P15592733864057619485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A000332 |⌈(n : ℚ) / 2 - (n : ℚ)⌉|.toNat

end

end A333321.P15592733864057619485

noncomputable section

/-- A333321: a(n) is the number of subsets of {1..n} that contain exactly 1 odd and 4 even numbers.

Offset 0, canonical program `A333321.P15592733864057619485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333321 (n : ℕ) : ℤ :=
  A333321.P15592733864057619485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333441.P17876403174661833078

`∩[A039004(n+1), A053754(n+1)]`
-/

namespace A333441.P17876403174661833078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333441.P17876403174661833078

noncomputable section

/-- A333441: Numbers where each binary digit can be paired with a digit of the same value at another position so that two pairs can be nested but cannot otherwise overlap.

Offset 1, canonical program `A333441.P17876403174661833078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2129 terms. -/
def A333441 (n : ℕ) : ℤ :=
  (A333441.P17876403174661833078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2129 terms. -/
def A333441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333505.P16945487546006960901

`A001057(n+1)+∑[∑{d}[n, A181983(#)]]`
-/

namespace A333505.P16945487546006960901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A181983 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333505.P16945487546006960901

noncomputable section

/-- A333505: a(n) = Sum_{k=1..n} (-1)^(k+1) * k * ceiling(n/k).

Offset 1, canonical program `A333505.P16945487546006960901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A333505 (n : ℕ) : ℤ :=
  A333505.P16945487546006960901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A333505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333510.P3762203350232599511

`∑[A308579(n+1)-n]-(2*C(n, 3)-n)`
-/

namespace A333510.P3762203350232599511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308579 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((2 * Nat.choose n 3 : ℤ) - (n : ℤ))

end

end A333510.P3762203350232599511

noncomputable section

/-- A333510: Number of self-avoiding walks in the n X 2 grid graph which start at any of the n vertices on left side of the graph and terminate at any of the n vertices on the right side.

Offset 1, canonical program `A333510.P3762203350232599511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A333510 (n : ℕ) : ℤ :=
  A333510.P3762203350232599511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A333510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333599.P11106424800562042394

`abs(1-A147600(n))`
-/

namespace A333599.P11106424800562042394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A147600 n|

end

end A333599.P11106424800562042394

noncomputable section

/-- A333599: a(n) = Fibonacci(n) * Fibonacci(n+1) mod Fibonacci(n+2).

Offset 0, canonical program `A333599.P11106424800562042394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A333599 (n : ℕ) : ℤ :=
  A333599.P11106424800562042394.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A333599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333824.P16951238813383919002

`∑{d}[n+1, A193356((n+1)/#)^#]`
-/

namespace A333824.P16951238813383919002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ d

end

end A333824.P16951238813383919002

noncomputable section

/-- A333824: a(n) = Sum_{d|n, n/d odd} (n/d)^d.

Offset 1, canonical program `A333824.P16951238813383919002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A333824 (n : ℕ) : ℤ :=
  A333824.P16951238813383919002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A333824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333885.P8277892629072537770

`∑[∑{d}[n+1, A070824(#)]]`
-/

namespace A333885.P8277892629072537770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A070824 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333885.P8277892629072537770

noncomputable section

/-- A333885: Number of triples (i,j,k) with 1 <= i < j < k <= n such that i divides j divides k.

Offset 1, canonical program `A333885.P8277892629072537770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333885 (n : ℕ) : ℤ :=
  A333885.P8277892629072537770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333996.P18309204266803155261

`A256885(n+1)-1`
-/

namespace A333996.P18309204266803155261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256885 (n + 1) - 1

end

end A333996.P18309204266803155261

noncomputable section

/-- A333996: Number of composite numbers in the triangular n X n multiplication table.

Offset 1, canonical program `A333996.P18309204266803155261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333996 (n : ℕ) : ℤ :=
  A333996.P18309204266803155261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256885, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A333996.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334042.P8126490693138970786

`A035327(A000290(n))`
-/

namespace A334042.P8126490693138970786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A000290 n).toNat

end

end A334042.P8126490693138970786

noncomputable section

/-- A334042: Write n^2 in binary, interchange 0's and 1's, convert back to decimal.

Offset 0, canonical program `A334042.P8126490693138970786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334042 (n : ℕ) : ℤ :=
  A334042.P8126490693138970786.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334076.P9113614915420094535

`or(n, A261693(n))-n`
-/

namespace A334076.P9113614915420094535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A261693 n) - (n : ℤ)

end

end A334076.P9113614915420094535

noncomputable section

/-- A334076: a(n) = bitwise NOR of n and 2n.

Offset 0, canonical program `A334076.P9113614915420094535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334076 (n : ℕ) : ℤ :=
  A334076.P9113614915420094535.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334117.P7213088979993363911

`eq[2, A082898(A093178(n))]`
-/

namespace A334117.P7213088979993363911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082898 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334117.P7213088979993363911

noncomputable section

/-- A334117: Odd numbers with abundancy >= 3/2; that is, numbers m such that sigma(m) >= 3m/2.

Offset 1, canonical program `A334117.P7213088979993363911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1444 terms. -/
def A334117 (n : ℕ) : ℤ :=
  (A334117.P7213088979993363911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1444 terms. -/
def A334117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334122.P15893402239212662447

`(∑[A171511(n+1)]+n)%(n+1)`
-/

namespace A334122.P15893402239212662447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) (n + 1 : ℤ)

end

end A334122.P15893402239212662447

noncomputable section

/-- A334122: a(n) is the sum of all primes <= n, mod n.

Offset 1, canonical program `A334122.P15893402239212662447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334122 (n : ℕ) : ℤ :=
  A334122.P15893402239212662447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334143.P15608283684406534922

`A035327(A175329(n+1))`
-/

namespace A334143.P15608283684406534922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A175329 (n + 1)).toNat

end

end A334143.P15608283684406534922

noncomputable section

/-- A334143: a(n) = bitwise NOR of prime(n) and prime(n+1).

Offset 1, canonical program `A334143.P15608283684406534922`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035327, A175329, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334143 (n : ℕ) : ℤ :=
  A334143.P15608283684406534922.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035327, A175329, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A334143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334320.P8008925581640220930

`A319701(n+2)+∑[n-2]`
-/

namespace A334320.P8008925581640220930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334320.P8008925581640220930

noncomputable section

/-- A334320: Number of even integers in base n with exactly two distinct digits.

Offset 0, canonical program `A334320.P8008925581640220930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334320 (n : ℕ) : ℤ :=
  A334320.P8008925581640220930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334490.P3091106705763769539

`∑{d}[n+1, A009194(#)]`
-/

namespace A334490.P3091106705763769539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A009194 d

end

end A334490.P3091106705763769539

noncomputable section

/-- A334490: a(n) = Sum_{d|n} gcd(d, sigma(d)).

Offset 1, canonical program `A334490.P3091106705763769539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334490 (n : ℕ) : ℤ :=
  A334490.P3091106705763769539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334491.P9359923496953105000

`∏{d}[n+1, A009194(#)]`
-/

namespace A334491.P9359923496953105000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009194 d

end

end A334491.P9359923496953105000

noncomputable section

/-- A334491: a(n) = Product_{d|n} gcd(d, sigma(d)).

Offset 1, canonical program `A334491.P9359923496953105000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334491 (n : ℕ) : ℤ :=
  A334491.P9359923496953105000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334660.P1743725835122029455

`(n+1)*A334659(n+1)`
-/

namespace A334660.P1743725835122029455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A334659 (n + 1)

end

end A334660.P1743725835122029455

noncomputable section

/-- A334660: Dirichlet g.f.: 1 / zeta(s-4).

Offset 1, canonical program `A334660.P1743725835122029455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334660 (n : ℕ) : ℤ :=
  A334660.P1743725835122029455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334664.P3656540446261014513

`∏{d}[n+1, A009191(#)]`
-/

namespace A334664.P3656540446261014513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009191 d

end

end A334664.P3656540446261014513

noncomputable section

/-- A334664: a(n) = Product_{d|n} gcd(d, tau(d)).

Offset 1, canonical program `A334664.P3656540446261014513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334664 (n : ℕ) : ℤ :=
  A334664.P3656540446261014513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334680.P17110386577092033244

`Δ[A001764(n)]`
-/

namespace A334680.P17110386577092033244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334680.P17110386577092033244

noncomputable section

/-- A334680: a(n) is the total number of down-steps after the final up-step in all 2-Dyck paths of length 3*n (n up-steps and 2*n down-steps).

Offset 0, canonical program `A334680.P17110386577092033244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A334680 (n : ℕ) : ℤ :=
  A334680.P17110386577092033244.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A334680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334697.P14521157446262977201

`A212560(2*n+1)+A036464(n+1)`
-/

namespace A334697.P14521157446262977201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212560 (2 * n + 1) + A036464 (n + 1)

end

end A334697.P14521157446262977201

noncomputable section

/-- A334697: a(n) is the number of interior points in the n-th figure shown in A255011 (meaning the figure with 4n points on the perimeter), counted with multiplicity.

Offset 1, canonical program `A334697.P14521157446262977201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A334697 (n : ℕ) : ℤ :=
  A334697.P14521157446262977201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A334697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334782.P6541908692521483420

`∑{d}[n+1, A009230(#)]`
-/

namespace A334782.P6541908692521483420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A009230 d

end

end A334782.P6541908692521483420

noncomputable section

/-- A334782: a(n) = Sum_{d|n} lcm(d, tau(d)).

Offset 1, canonical program `A334782.P6541908692521483420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334782 (n : ℕ) : ℤ :=
  A334782.P6541908692521483420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334783.P14356093041569867515

`∑{d}[n+1, lcm(#, A000203(#))]`
-/

namespace A334783.P14356093041569867515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.lcm (d : ℤ) (A000203 d)

end

end A334783.P14356093041569867515

noncomputable section

/-- A334783: a(n) = Sum_{d|n} lcm(d, sigma(d)).

Offset 1, canonical program `A334783.P14356093041569867515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334783 (n : ℕ) : ℤ :=
  (A334783.P14356093041569867515.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334794.P3653736457854949232

`∑{d}[n+1, A324529(#)]`
-/

namespace A334794.P3653736457854949232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A324529 d

end

end A334794.P3653736457854949232

noncomputable section

/-- A334794: a(n) = Sum_{d|n} lcm(sigma(d), pod(d)) where sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334794.P3653736457854949232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A334794 (n : ℕ) : ℤ :=
  A334794.P3653736457854949232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A334794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334795.P3191709436635477433

`∏{d}[n+1, A009230(#)]`
-/

namespace A334795.P3191709436635477433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009230 d

end

end A334795.P3191709436635477433

noncomputable section

/-- A334795: a(n) = Product_{d|n} lcm(d, tau(d)) where tau(k) is the number of divisors of k (A000005).

Offset 1, canonical program `A334795.P3191709436635477433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A334795 (n : ℕ) : ℤ :=
  A334795.P3191709436635477433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3359 terms. -/
def A334795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334805.P16057716402093217901

`∏{d}[n+1, lcm(#, A000203(#))]`
-/

namespace A334805.P16057716402093217901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.lcm (d : ℤ) (A000203 d)

end

end A334805.P16057716402093217901

noncomputable section

/-- A334805: a(n) = Product_{d|n} lcm(d, sigma(d)) where sigma(k) is the sum of divisors of k (A000203).

Offset 1, canonical program `A334805.P16057716402093217901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A334805 (n : ℕ) : ℤ :=
  (A334805.P16057716402093217901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A334805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334809.P2350864058122881923

`∏{d}[n+1, A324529(#)]`
-/

namespace A334809.P2350864058122881923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A324529 d

end

end A334809.P2350864058122881923

noncomputable section

/-- A334809: a(n) = Product_{d|n} lcm(sigma(d), pod(d)) where sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A334809.P2350864058122881923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A334809 (n : ℕ) : ℤ :=
  A334809.P2350864058122881923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A334809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334926.P1752397318478902184

`∑{d}[n+1, A256432(#)]`
-/

namespace A334926.P1752397318478902184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A256432 d

end

end A334926.P1752397318478902184

noncomputable section

/-- A334926: G.f.: Sum_{k>=1} x^(k*(2*k^2 + 1)/3) / (1 - x^(k*(2*k^2 + 1)/3)).

Offset 1, canonical program `A334926.P1752397318478902184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A334926 (n : ℕ) : ℤ :=
  A334926.P1752397318478902184.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A334926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334930.P9798247893821391853

`2*A273050(n+1)+1`
-/

namespace A334930.P9798247893821391853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A273050 (n + 1) + 1

end

end A334930.P9798247893821391853

noncomputable section

/-- A334930: Numbers that generate rotationally symmetrical XOR-triangles featuring singleton zero bits in a hexagonal arrangement.

Offset 1, canonical program `A334930.P9798247893821391853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A334930 (n : ℕ) : ℤ :=
  A334930.P9798247893821391853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A334930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335073.P13973839824108093383

`∑[abs(A162512(n+1))]`
-/

namespace A335073.P13973839824108093383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162512 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335073.P13973839824108093383

noncomputable section

/-- A335073: a(n) = Sum_{k=1..n} 2^(bigomega(k) - omega(k)).

Offset 1, canonical program `A335073.P13973839824108093383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335073 (n : ℕ) : ℤ :=
  A335073.P13973839824108093383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335153.P11890562424750733531

`n*A000203(n+1)-(n+1)*∑{d}[n, #]`
-/

namespace A335153.P11890562424750733531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000203 (n + 1) - (((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ)

end

end A335153.P11890562424750733531

noncomputable section

/-- A335153: a(1)=0; thereafter a(n) = (n-1)*sigma(n)-n*sigma(n-1) where sigma is the sum-of-divisors function A000203.

Offset 1, canonical program `A335153.P11890562424750733531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335153 (n : ℕ) : ℤ :=
  A335153.P11890562424750733531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335184.P12685914524627014550

`record[A017900(n)]-(n+1)`
-/

namespace A335184.P12685914524627014550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A335184.P12685914524627014550

noncomputable section

/-- A335184: a(n) is the number of subsets of {1,2,...,n} with at least two elements and the difference between successive elements at least 6.

Offset 0, canonical program `A335184.P12685914524627014550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 916 terms. -/
def A335184 (n : ℕ) : ℤ :=
  A335184.P12685914524627014550.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 916 terms. -/
def A335184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335331.P15046392971874812568

`record[A000040(n+1)*A086299(n+1)]`
-/

namespace A335331.P15046392971874812568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A086299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335331.P15046392971874812568

noncomputable section

/-- A335331: a(n) = prime(k) where k is the n-th 7-smooth number.

Offset 1, canonical program `A335331.P15046392971874812568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A335331 (n : ℕ) : ℤ :=
  A335331.P15046392971874812568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A335331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335403.P11540456487582481370

`∑{p}[n+1, val(n+1, #)*A000040(#)]`
-/

namespace A335403.P11540456487582481370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p : ℤ) * A000040 p

end

end A335403.P11540456487582481370

noncomputable section

/-- A335403: If n = Product_{i=1..k} p_i^e_i then a(n) = Sum_{i=1..k} e_i * prime(p_i).

Offset 1, canonical program `A335403.P11540456487582481370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335403 (n : ℕ) : ℤ :=
  A335403.P11540456487582481370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335534.P5058888597107012890

`∑[A001590(n)]%∑[A212804(n)]`
-/

namespace A335534.P5058888597107012890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A335534.P5058888597107012890

noncomputable section

/-- A335534: a(n) = tribonacci(n) modulo Fibonacci(n).

Offset 1, canonical program `A335534.P5058888597107012890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A335534 (n : ℕ) : ℤ :=
  A335534.P5058888597107012890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A335534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335551.P6727732207429983157

`∑[A122367(n)-A052921(n)]`
-/

namespace A335551.P6727732207429983157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335551.P6727732207429983157

noncomputable section

/-- A335551: Number of words of length n over the alphabet {0,1,2} that contain the substring 12 but not the substring 01.

Offset 0, canonical program `A335551.P6727732207429983157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A335551 (n : ℕ) : ℤ :=
  A335551.P6727732207429983157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A335551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335612.P7576757791378491064

`A335608(n+2)+Δ[A058482(n+1)]`
-/

namespace A335612.P7576757791378491064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335608 (n + 2) + (f1 (n + 1) - f1 n)

end

end A335612.P7576757791378491064

noncomputable section

/-- A335612: Number of sets (in the Hausdorff metric geometry) at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 3) missing two edges, where the removed edges are incident to the same vertex in the three point part.

Offset 3, canonical program `A335612.P7576757791378491064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A335612 (n : ℕ) : ℤ :=
  A335612.P7576757791378491064.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A335612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335741.P3669595014707314813

`a(A189574(n))+1` with `a(0)=1`
-/

namespace A335741.P3669595014707314813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A189574 n).toNat + 1

end

end A335741.P3669595014707314813

noncomputable section

/-- A335741: Number of Pell numbers (A000129) <= n.

Offset 0, canonical program `A335741.P3669595014707314813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335741 (n : ℕ) : ℤ :=
  (A335741.P3669595014707314813.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A335741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335979.P10674382385544783785

`ceil(1/2*A089898(n))-1`
-/

namespace A335979.P10674382385544783785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 : ℚ) / 2 * (A089898 n : ℚ)⌉ - 1

end

end A335979.P10674382385544783785

noncomputable section

/-- A335979: Number of partitions of n into exactly two parts with no decimal carries.

Offset 0, canonical program `A335979.P10674382385544783785`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089898, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335979 (n : ℕ) : ℤ :=
  A335979.P10674382385544783785.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089898, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A335979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336030.P17066475471649328389

`A212804(n)+A103609(n)`
-/

namespace A336030.P17066475471649328389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A103609 n

end

end A336030.P17066475471649328389

noncomputable section

/-- A336030: a(n) = Fibonacci(n-1) + Fibonacci(floor(n/2)).

Offset 0, canonical program `A336030.P17066475471649328389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A336030 (n : ℕ) : ℤ :=
  A336030.P17066475471649328389.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A336030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336040.P10759286012738272429

`C(n+1, A009230(n+1))`
-/

namespace A336040.P10759286012738272429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A009230 (n + 1)).toNat

end

end A336040.P10759286012738272429

noncomputable section

/-- A336040: Characteristic function of refactorable numbers (A033950).

Offset 1, canonical program `A336040.P10759286012738272429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336040 (n : ℕ) : ℤ :=
  (A336040.P10759286012738272429.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336064.P590029213044749374

`eq[n+1, lcm(n+1, A051903(n+1))]+1`
-/

namespace A336064.P590029213044749374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A051903 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336064.P590029213044749374

noncomputable section

/-- A336064: Numbers divisible by the maximal exponent in their prime factorization (A051903).

Offset 1, canonical program `A336064.P590029213044749374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336064 (n : ℕ) : ℤ :=
  (A336064.P590029213044749374.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336103.P3575335748039605049

`A011782(n)-A336102(n)`
-/

namespace A336103.P3575335748039605049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A336102 n

end

end A336103.P3575335748039605049

noncomputable section

/-- A336103: Number of separable multisets of size n covering an initial interval of positive integers.

Offset 0, canonical program `A336103.P3575335748039605049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A336103 (n : ℕ) : ℤ :=
  A336103.P3575335748039605049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A336103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336146.P6531384978018049425

`A103391(A047237(n+3))-1`
-/

namespace A336146.P6531384978018049425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A047237 (n + 3)).toNat - 1

end

end A336146.P6531384978018049425

noncomputable section

/-- A336146: Lexicographically earliest infinite sequence such that a(i) = a(j) => A000035(i) = A000035(j) and A000265(i) = A000265(j), for all i, j >= 1.

Offset 1, canonical program `A336146.P6531384978018049425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336146 (n : ℕ) : ℤ :=
  A336146.P6531384978018049425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336222.P11154110656235782542

`lt[∏{e}[9*n, A280222(#)], 0]`
-/

namespace A336222.P11154110656235782542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A280222 (Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A336222.P11154110656235782542

noncomputable section

/-- A336222: Numbers k such that the square root of the largest square dividing k has an even number of prime divisors (counted with multiplicity).

Offset 1, canonical program `A336222.P11154110656235782542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A336222 (n : ℕ) : ℤ :=
  (A336222.P11154110656235782542.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. -/
def A336222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336257.P16337499063271916566

`A000108(n)%Δ[n²]`
-/

namespace A336257.P16337499063271916566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A336257.P16337499063271916566

noncomputable section

/-- A336257: a(n) = Catalan(n) mod (2*n+1).

Offset 0, canonical program `A336257.P16337499063271916566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A336257 (n : ℕ) : ℤ :=
  A336257.P16337499063271916566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A336257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336279.P1082395451436490023

`∑[A055615(n+1)^5]`
-/

namespace A336279.P1082395451436490023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336279.P1082395451436490023

noncomputable section

/-- A336279: a(n) = Sum_{k=1..n} mu(k)*k^5.

Offset 1, canonical program `A336279.P1082395451436490023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336279 (n : ℕ) : ℤ :=
  A336279.P1082395451436490023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336302.P10402866181726329229

`abs(A162395(n+1)%A003059(n+1))`
-/

namespace A336302.P10402866181726329229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A162395 (n + 1)) (A003059 (n + 1))|

end

end A336302.P10402866181726329229

noncomputable section

/-- A336302: a(n) = n^2 mod ceiling(sqrt(n)).

Offset 1, canonical program `A336302.P10402866181726329229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336302 (n : ℕ) : ℤ :=
  A336302.P10402866181726329229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336339.P14265531034149347687

`filter[A020739(n), A131378(#)]`
-/

namespace A336339.P14265531034149347687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131378 (f1 j).toNat = 1) n)

end

end A336339.P14265531034149347687

noncomputable section

/-- A336339: Numbers composite(n) such that gcd(n,composite(n)) is even.

Offset 1, canonical program `A336339.P14265531034149347687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A336339 (n : ℕ) : ℤ :=
  A336339.P14265531034149347687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A336339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336387.P1320886943050929748

`∑{p}[n+1, gcd(#, A000203(n+1))%#]`
-/

namespace A336387.P1320886943050929748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.gcd (p : ℤ) (A000203 (n + 1)) % p

end

end A336387.P1320886943050929748

noncomputable section

/-- A336387: Number of prime divisors of n that do not divide sigma(n); a(1) = 0.

Offset 1, canonical program `A336387.P1320886943050929748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336387 (n : ℕ) : ℤ :=
  (A336387.P1320886943050929748.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336388.P8538346120847863118

`∑{p}[A009194(n+1), A009194(#)]`
-/

namespace A336388.P8538346120847863118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A009194 p

end

end A336388.P8538346120847863118

noncomputable section

/-- A336388: Number of prime divisors of sigma(n) that divide n; a(1) = 0.

Offset 1, canonical program `A336388.P8538346120847863118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336388 (n : ℕ) : ℤ :=
  A336388.P8538346120847863118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336403.P6809300331611743770

`filter[A057762(n+1), A162289(#)]`
-/

namespace A336403.P6809300331611743770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A336403.P6809300331611743770

noncomputable section

/-- A336403: Multiplicative closure of A045468: numbers which are the product of zero or more primes which are 1 or 4 mod 5.

Offset 1, canonical program `A336403.P6809300331611743770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4615 terms. -/
def A336403 (n : ℕ) : ℤ :=
  A336403.P6809300331611743770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4615 terms. -/
def A336403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336612.P16379185797943986426

`eq[0, (n+1)%A062069(n+1)]+1`
-/

namespace A336612.P16379185797943986426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A062069 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336612.P16379185797943986426

noncomputable section

/-- A336612: Numbers m such that sigma(tau(m)) divides m, where tau(m) is the number of divisors function (A000005) and sigma(m) is the sum of divisors function (A000203).

Offset 1, canonical program `A336612.P16379185797943986426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A336612 (n : ℕ) : ℤ :=
  (A336612.P16379185797943986426.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A336612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336678.P4383231659580529622

`A087944(A110654(n))/A000034(n)`
-/

namespace A336678.P4383231659580529622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087944 (A110654 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A336678.P4383231659580529622

noncomputable section

/-- A336678: Number of paths of length n starting at initial node of the path graph P_11.

Offset 0, canonical program `A336678.P4383231659580529622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. -/
def A336678 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336678.P4383231659580529622.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. -/
def A336678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336723.P17108432050027795908

`lcm(∏{e}[n+1, #+1], A324529(n+1))`
-/

namespace A336723.P17108432050027795908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A324529 (n + 1))

end

end A336723.P17108432050027795908

noncomputable section

/-- A336723: a(n) = lcm(tau(n), sigma(n), pod(n)) where tau(k) is the number of divisors of k (A000005), sigma(k) is the sum of divisors of k (A000203) and pod(k) is the product of divisors of k (A007955).

Offset 1, canonical program `A336723.P17108432050027795908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A336723 (n : ℕ) : ℤ :=
  (A336723.P17108432050027795908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A336723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336937.P4577035631224528791

`A286357(n+1)-1`
-/

namespace A336937.P4577035631224528791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1) - 1

end

end A336937.P4577035631224528791

noncomputable section

/-- A336937: The 2-adic valuation of sigma(n), the sum of divisors of n.

Offset 1, canonical program `A336937.P4577035631224528791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286357, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336937 (n : ℕ) : ℤ :=
  A336937.P4577035631224528791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286357, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337101.P14807229277713174019

`A064727(A022998(n+1))`
-/

namespace A337101.P14807229277713174019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A022998 (n + 1)).toNat

end

end A337101.P14807229277713174019

noncomputable section

/-- A337101: Number of partitions of n into two positive parts (s,t), s <= t, such that the harmonic mean of s and t is an integer.

Offset 1, canonical program `A337101.P14807229277713174019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A337101 (n : ℕ) : ℤ :=
  A337101.P14807229277713174019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A337101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337142.P4860253720312348756

`(n-3)*((n+1)*(n+2)*A000045(n)+3*(n-3)*n*A000045(n+1))/50`
-/

namespace A337142.P4860253720312348756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) * ((((n + 1) * (n + 2) : ℤ) * A000045 n + 3 * (((n : ℤ) - 3) * ((n : ℤ) * A000045 (n + 1))) : ℚ) / 50)

end

end A337142.P4860253720312348756

noncomputable section

/-- A337142: a(n) is the number of words of length n over the alphabet {0,1,2} with at least two 1's and exactly one occurrence of the subword 22.

Offset 0, canonical program `A337142.P4860253720312348756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A337142 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337142.P4860253720312348756.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A337142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337250.P13413340909850311773

`lt[0, and(n, A057300(n))]`
-/

namespace A337250.P13413340909850311773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A057300 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A337250.P13413340909850311773

noncomputable section

/-- A337250: Numbers having at least one 3 in their representation in base 4.

Offset 1, canonical program `A337250.P13413340909850311773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337250 (n : ℕ) : ℤ :=
  (A337250.P13413340909850311773.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337282.P5900707175496343606

`∑[A337281(n)]`
-/

namespace A337282.P5900707175496343606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337282.P5900707175496343606

noncomputable section

/-- A337282: Partial sums of A337281.

Offset 0, canonical program `A337282.P5900707175496343606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. -/
def A337282 (n : ℕ) : ℤ :=
  A337282.P5900707175496343606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 370 terms. -/
def A337282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337283.P12415011583511904637

`∑[n*A085697(n)]`
-/

namespace A337283.P12415011583511904637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A085697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337283.P12415011583511904637

noncomputable section

/-- A337283: a(n) = Sum_{i=0..n} i*T(i)^2, where T(i) = A000073(i) is the i-th tribonacci number.

Offset 0, canonical program `A337283.P12415011583511904637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A337283 (n : ℕ) : ℤ :=
  A337283.P12415011583511904637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A337283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337284.P18225355480766506381

`∑[n*Δ[A107239(n)]]`
-/

namespace A337284.P18225355480766506381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107239 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337284.P18225355480766506381

noncomputable section

/-- A337284: a(n) = Sum_{i=1..n} (i-1)*T(i)^2, where T(i) = A000073(i) is the i-th tribonacci number.

Offset 1, canonical program `A337284.P18225355480766506381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A337284 (n : ℕ) : ℤ :=
  A337284.P18225355480766506381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A337284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337285.P4554645156759227127

`∑[(n*∑[A001590(n)])²]`
-/

namespace A337285.P4554645156759227127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337285.P4554645156759227127

noncomputable section

/-- A337285: a(n) = Sum_{i=1..n} (i-1)^2*T(i)^2, where T(i) = A000073(i) is the i-th tribonacci number.

Offset 1, canonical program `A337285.P4554645156759227127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A337285 (n : ℕ) : ℤ :=
  A337285.P4554645156759227127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A337285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337286.P611714569690157856

`∑[A337281(n)²]`
-/

namespace A337286.P611714569690157856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337281 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A337286.P611714569690157856

noncomputable section

/-- A337286: a(n) = Sum_{i=0..n} i^2*T(i)^2, where T(i) = A000073(i) is the i-th tribonacci number.

Offset 0, canonical program `A337286.P611714569690157856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A337286 (n : ℕ) : ℤ :=
  A337286.P611714569690157856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A337286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337297.P5442692916388250038

`A064840(n+1)-A000203(n+1)`
-/

namespace A337297.P5442692916388250038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064840 (n + 1) - A000203 (n + 1)

end

end A337297.P5442692916388250038

noncomputable section

/-- A337297: a(n) = sigma(n)*(tau(n) - 1).

Offset 1, canonical program `A337297.P5442692916388250038`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064840, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337297 (n : ℕ) : ℤ :=
  A337297.P5442692916388250038.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064840, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337297.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337314.P15876092371328565607

`7*27*A000919(n+1)`
-/

namespace A337314.P15876092371328565607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (27 * A000919 (n + 1))

end

end A337314.P15876092371328565607

noncomputable section

/-- A337314: a(n) is the number of n-digit positive integers with exactly four distinct base 10 digits.

Offset 1, canonical program `A337314.P15876092371328565607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A337314 (n : ℕ) : ℤ :=
  A337314.P15876092371328565607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A337314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337360.P8070623483969716760

`A000203(n+1)+A064840(n+1)`
-/

namespace A337360.P8070623483969716760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A064840 (n + 1)

end

end A337360.P8070623483969716760

noncomputable section

/-- A337360: a(n) = sigma(n) * (tau(n) + 1).

Offset 1, canonical program `A337360.P8070623483969716760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064840, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337360 (n : ℕ) : ℤ :=
  A337360.P8070623483969716760.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064840, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337393.P13570208051684224720

`(-1)^n*A098331(2*n)`
-/

namespace A337393.P13570208051684224720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A098331 (2 * n)

end

end A337393.P13570208051684224720

noncomputable section

/-- A337393: Expansion of sqrt((1-5*x+sqrt(1-6*x+25*x^2)) / (2 * (1-6*x+25*x^2))).

Offset 0, canonical program `A337393.P13570208051684224720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A337393 (n : ℕ) : ℤ :=
  A337393.P13570208051684224720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A337393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337394.P11515339027893137145

`A033999(n)*A098331(Δ[n²])`
-/

namespace A337394.P11515339027893137145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A098331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A337394.P11515339027893137145

noncomputable section

/-- A337394: Expansion of sqrt(2 / ( (1-6*x+25*x^2) * (1-5*x+sqrt(1-6*x+25*x^2)) )).

Offset 0, canonical program `A337394.P11515339027893137145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A337394 (n : ℕ) : ℤ :=
  A337394.P11515339027893137145.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A337394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337418.P16208620280411171990

`Δ[A095152(n+2)]+1`
-/

namespace A337418.P16208620280411171990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095152 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A337418.P16208620280411171990

noncomputable section

/-- A337418: Number of sets (in the Hausdorff metric geometry) at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 3) missing two edges, where the removed edges are not incident to the same vertex in the 3 point part but are incident to the same vertex in the other part.

Offset 3, canonical program `A337418.P16208620280411171990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A337418 (n : ℕ) : ℤ :=
  A337418.P16208620280411171990.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A337418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337718.P12016035691923694678

`comp[A230104(n+1)]`
-/

namespace A337718.P12016035691923694678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A337718.P12016035691923694678

noncomputable section

/-- A337718: Numbers that can be written as (m + product of digits of m) for some m.

Offset 1, canonical program `A337718.P12016035691923694678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337718 (n : ℕ) : ℤ :=
  (A337718.P12016035691923694678.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337723.P15036552311661844858

`floor(A000040(n-1)-a(n-2)/2)` with `a(0)=0, a(1)=1`
-/

namespace A337723.P15036552311661844858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(A000040 (n - 1) : ℚ) - (a (n - 2) : ℚ) / 2⌋

end

end A337723.P15036552311661844858

noncomputable section

/-- A337723: a(n) = prime(n-2) - ceiling(a(n-2)/2); a(1)=0, a(2)=1.

Offset 1, canonical program `A337723.P15036552311661844858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337723 (n : ℕ) : ℤ :=
  A337723.P15036552311661844858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337724.P1814891094158089915

`A000040(n-1)-floor(a(n-2)/2)` with `a(0)=0, a(1)=1`
-/

namespace A337724.P1814891094158089915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000040 (n - 1) - ⌊(a (n - 2) : ℚ) / 2⌋

end

end A337724.P1814891094158089915

noncomputable section

/-- A337724: a(n) = prime(n-2) - floor(a(n-2)/2); a(1)=0, a(2)=1.

Offset 1, canonical program `A337724.P1814891094158089915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337724 (n : ℕ) : ℤ :=
  A337724.P1814891094158089915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337759.P3966808247695577426

`A161992(n+1)²`
-/

namespace A337759.P3966808247695577426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1) ^ 2

end

end A337759.P3966808247695577426

noncomputable section

/-- A337759: Squares that are the sum of 3 distinct nonzero squares.

Offset 1, canonical program `A337759.P3966808247695577426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337759 (n : ℕ) : ℤ :=
  A337759.P3966808247695577426.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337759.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337823.P15416864557459601287

`A000040(n)-floor(a(n-1)/2)` with `a(0)=1`
-/

namespace A337823.P15416864557459601287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 n - ⌊(a (n - 1) : ℚ) / 2⌋

end

end A337823.P15416864557459601287

noncomputable section

/-- A337823: a(n) = prime(n-1) - floor(a(n-1)/2); a(1)=1.

Offset 1, canonical program `A337823.P15416864557459601287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337823 (n : ℕ) : ℤ :=
  A337823.P15416864557459601287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337843.P8962796639510321882

`n+A055642(n)`
-/

namespace A337843.P8962796639510321882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A055642 n

end

end A337843.P8962796639510321882

noncomputable section

/-- A337843: a(n) is n + the number of digits in the decimal expansion of n.

Offset 0, canonical program `A337843.P8962796639510321882`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337843 (n : ℕ) : ℤ :=
  A337843.P8962796639510321882.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337896.P8754615183862050880

`A002415(n+1)+A033488(n)*A050534(n+1)`
-/

namespace A337896.P8754615183862050880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + A033488 n * A050534 (n + 1)

end

end A337896.P8754615183862050880

noncomputable section

/-- A337896: Number of chiral pairs of colorings of the 8 triangular faces of a regular octahedron or the 8 vertices of a cube using n or fewer colors.

Offset 1, canonical program `A337896.P8754615183862050880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A337896 (n : ℕ) : ℤ :=
  A337896.P8754615183862050880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A337896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338130.P9338611160572617900

`∑[3*a(A004524(A004396(n)))]` with `a(0)=1`
-/

namespace A338130.P9338611160572617900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (A004524 (A004396 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338130.P9338611160572617900

noncomputable section

/-- A338130: Positive numbers k such that the ternary representation of k^k ends with that of k.

Offset 1, canonical program `A338130.P9338611160572617900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338130 (n : ℕ) : ℤ :=
  (A338130.P9338611160572617900.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338130.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A338225.P10005761275730893558

`Δ[A226205(n+3)]`
-/

namespace A338225.P10005761275730893558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338225.P10005761275730893558

noncomputable section

/-- A338225: a(n) = F(n+3) * F(n+1) + (-1)^n where F(n) = A000045(n) are the Fibonacci numbers.

Offset 1, canonical program `A338225.P10005761275730893558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A338225 (n : ℕ) : ℤ :=
  A338225.P10005761275730893558.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A338225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338227.P1454774000320878795

`A007590(n+2)%A049472(n+2)`
-/

namespace A338227.P1454774000320878795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007590 (n + 2)) (A049472 (n + 2))

end

end A338227.P1454774000320878795

noncomputable section

/-- A338227: a(n) = x(n) mod floor(sqrt(x(n))), where x(n) = floor((n^2)/2).

Offset 2, canonical program `A338227.P1454774000320878795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A338227 (n : ℕ) : ℤ :=
  A338227.P1454774000320878795.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A338227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338229.P13917878747455925273

`A072863(n)-(∑[n]+1)`
-/

namespace A338229.P13917878747455925273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A338229.P13917878747455925273

noncomputable section

/-- A338229: Number of ternary strings of length n that contain at least one 0 and at most two 1's.

Offset 0, canonical program `A338229.P13917878747455925273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A338229 (n : ℕ) : ℤ :=
  A338229.P13917878747455925273.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A338229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338233.P6493359358101702297

`n-∏{e}[n+1, A008619(#)]%(n+1)`
-/

namespace A338233.P6493359358101702297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), A008619 (Nat.factorization (f1 n) p)) (n + 1 : ℤ)

end

end A338233.P6493359358101702297

noncomputable section

/-- A338233: Number of numbers less than n whose square does not divide n.

Offset 1, canonical program `A338233.P6493359358101702297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338233 (n : ℕ) : ℤ :=
  A338233.P6493359358101702297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338249.P16543191693134358480

`-A053985(A053754(n+1))`
-/

namespace A338249.P16543191693134358480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053985 (A053754 (n + 1)).toNat

end

end A338249.P16543191693134358480

noncomputable section

/-- A338249: Nonpositive values in A053985, in order of appearance and negated.

Offset 0, canonical program `A338249.P16543191693134358480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053754, A053985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338249 (n : ℕ) : ℤ :=
  A338249.P16543191693134358480.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053754, A053985, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338651.P3584200837895763524

`∑{d}[n+1, A185118(#)]`
-/

namespace A338651.P3584200837895763524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A185118 d

end

end A338651.P3584200837895763524

noncomputable section

/-- A338651: Number of divisors of n which are greater than 7.

Offset 1, canonical program `A338651.P3584200837895763524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A338651 (n : ℕ) : ℤ :=
  A338651.P3584200837895763524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A338651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338760.P4021642056561910690

`∑[abs(2-∑[n])]-A267537(n)`
-/

namespace A338760.P4021642056561910690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A267537 n

end

end A338760.P4021642056561910690

noncomputable section

/-- A338760: Subword complexity of the infinite word Product_{i>=1} Product_{j=1..i} a^(i-j+1) b^j.

Offset 0, canonical program `A338760.P4021642056561910690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338760 (n : ℕ) : ℤ :=
  A338760.P4021642056561910690.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338790.P7424118884664099733

`A078615(n+1)-A000203(n+1)`
-/

namespace A338790.P7424118884664099733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1) - A000203 (n + 1)

end

end A338790.P7424118884664099733

noncomputable section

/-- A338790: a(n) = rad(n)^2 - sigma(n), where rad(n) is the squarefree kernel of n (A007947) and sigma(n) is the sum of divisors of n (A000203).

Offset 1, canonical program `A338790.P7424118884664099733`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338790 (n : ℕ) : ℤ :=
  A338790.P7424118884664099733.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078615, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338790.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338795.P14357475889887153604

`A003215(n)*A003154(n+1)`
-/

namespace A338795.P14357475889887153604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n * A003154 (n + 1)

end

end A338795.P14357475889887153604

noncomputable section

/-- A338795: Each term of A003215 (centered hexagonal numbers) is multiplied by the corresponding term of A003154 (centered dodecagonal numbers).

Offset 1, canonical program `A338795.P14357475889887153604`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338795 (n : ℕ) : ℤ :=
  A338795.P14357475889887153604.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A338795.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338848.P11347776117698515883

`∑{digits}[a(floor(n/3))+n%3, #!]*A039966(n)` with `a(0)=0`
-/

namespace A338848.P11347776117698515883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat + n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℤ) * A039966 n

end

end A338848.P11347776117698515883

noncomputable section

/-- A338848: Number of compositions (ordered partitions) of n into distinct powers of 3.

Offset 0, canonical program `A338848.P11347776117698515883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338848 (n : ℕ) : ℤ :=
  A338848.P11347776117698515883.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338936.P13875376072067169359

`p?[A338935(n+1)]`
-/

namespace A338936.P13875376072067169359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338936.P13875376072067169359

noncomputable section

/-- A338936: Primes in A338935.

Offset 1, canonical program `A338936.P13875376072067169359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 540 terms. -/
def A338936 (n : ℕ) : ℤ :=
  A338936.P13875376072067169359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 540 terms. -/
def A338936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338937.P7076279255961328838

`A001414(a(n-1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A338937.P7076279255961328838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001414 (a (n - 1) * a (n - 2)).toNat

end

end A338937.P7076279255961328838

noncomputable section

/-- A338937: a(n+1) = A001414(a(n)) + A001414(a(n-1)) with a(0)=1, a(1)=2.

Offset 0, canonical program `A338937.P7076279255961328838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338937 (n : ℕ) : ℤ :=
  A338937.P7076279255961328838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A338937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339010.P4443742894969204147

`∑{d}[n+1, A091954(A214682(#))]`
-/

namespace A339010.P4443742894969204147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091954 (A214682 d).toNat

end

end A339010.P4443742894969204147

noncomputable section

/-- A339010: a(n) is the number of ways to write n as the difference of two centered k-gonal numbers for k >= 3.

Offset 1, canonical program `A339010.P4443742894969204147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339010 (n : ℕ) : ℤ :=
  A339010.P4443742894969204147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339051.P302812047121566327

`A096270(2*n)`
-/

namespace A339051.P302812047121566327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n)

end

end A339051.P302812047121566327

noncomputable section

/-- A339051: Even bisection of the infinite Fibonacci word A096270.

Offset 0, canonical program `A339051.P302812047121566327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339051 (n : ℕ) : ℤ :=
  A339051.P302812047121566327.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339216.P9172300973887636102

`A010061(eq[2, A010061(n+2)-A010061(n+1)]+1)`
-/

namespace A339216.P9172300973887636102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 2) - A010061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A339216.P9172300973887636102

noncomputable section

/-- A339216: Numbers k such that k and k+2 are both binary self numbers (A010061).

Offset 1, canonical program `A339216.P9172300973887636102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4022 terms. -/
def A339216 (n : ℕ) : ℤ :=
  A339216.P9172300973887636102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4022 terms. -/
def A339216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339247.P7181091707471005680

`p?[(2*n+1)*A032741(n-A006257(n))]`
-/

namespace A339247.P7181091707471005680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A032741 ((n : ℤ) - A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A339247.P7181091707471005680

noncomputable section

/-- A339247: The primes that yield twice a prime when each bit of their binary expansion is inverted.

Offset 1, canonical program `A339247.P7181091707471005680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A339247 (n : ℕ) : ℤ :=
  A339247.P7181091707471005680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A339247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339355.P11064836581817046298

`∑[A072819(floor(n/2)+2)]`
-/

namespace A339355.P11064836581817046298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072819 (⌊(n : ℚ) / 2⌋ + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A339355.P11064836581817046298

noncomputable section

/-- A339355: Maximum number of copies of a 12345 permutation pattern in an alternating (or zig-zag) permutation of length n + 7.

Offset 1, canonical program `A339355.P11064836581817046298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339355 (n : ℕ) : ℤ :=
  A339355.P11064836581817046298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339744.P17340039082296367057

`lt[A007947(n+1)², A000203(n+1)]+1`
-/

namespace A339744.P17340039082296367057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A339744.P17340039082296367057

noncomputable section

/-- A339744: Numbers k such that rad(k)^2 < sigma(k), where rad(k) is the squarefree kernel of k (A007947) and sigma(k) is the sum of divisors of k (A000203).

Offset 1, canonical program `A339744.P17340039082296367057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1192 terms. -/
def A339744 (n : ℕ) : ℤ :=
  (A339744.P17340039082296367057.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1192 terms. -/
def A339744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339760.P4038209715128270755

`2^n*A177282(n+1)`
-/

namespace A339760.P4038209715128270755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A177282 (n + 1)

end

end A339760.P4038209715128270755

noncomputable section

/-- A339760: Number of (undirected) Hamiltonian paths in the 2 X n king graph.

Offset 1, canonical program `A339760.P4038209715128270755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A339760 (n : ℕ) : ℤ :=
  A339760.P4038209715128270755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A339760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339765.P5404348048210971806

`2*A005206(n)-(n+1)`
-/

namespace A339765.P5404348048210971806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005206 n - (n + 1 : ℤ)

end

end A339765.P5404348048210971806

noncomputable section

/-- A339765: a(n) = 2*floor(n*phi) - 3*n, where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A339765.P5404348048210971806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339765 (n : ℕ) : ℤ :=
  A339765.P5404348048210971806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339828.P13533936186353310781

`∑[A341240(n+1)]-n`
-/

namespace A339828.P13533936186353310781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A339828.P13533936186353310781

noncomputable section

/-- A339828: a(n) = 4*a(n-1) - 2*a(n-2) + a(n-3) - 4*a(n-4) + a(n-5) for n >= 6, where a(1) = 1, a(2) = 3, a(3) = 5, a(4) = 16, a(5) = 53.

Offset 1, canonical program `A339828.P13533936186353310781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A339828 (n : ℕ) : ℤ :=
  A339828.P13533936186353310781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. -/
def A339828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339965.P9828748357291040484

`A000203(n+1)/A339964(n+1)`
-/

namespace A339965.P9828748357291040484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A339964 (n + 1) : ℚ)

end

end A339965.P9828748357291040484

noncomputable section

/-- A339965: a(n) = sigma(n) / gcd(sigma(n),n+1).

Offset 1, canonical program `A339965.P9828748357291040484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339964, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339965 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A339965.P9828748357291040484.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339964, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339968.P8749021637407557380

`eq[1, A339967(n+1)]+1`
-/

namespace A339968.P8749021637407557380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339967 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339968.P8749021637407557380

noncomputable section

/-- A339968: Numbers k such that sigma(k) and k+2 are relatively prime, where sigma gives the sum of divisors of k.

Offset 1, canonical program `A339968.P8749021637407557380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339968 (n : ℕ) : ℤ :=
  (A339968.P8749021637407557380.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340171.P3916832094635592034

`∑[A056594(A172471(abs(1-n)))]`
-/

namespace A340171.P3916832094635592034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A172471 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340171.P3916832094635592034

noncomputable section

/-- A340171: List of X-coordinates of point moving along one of the arms of a counterclockwise double square spiral; A340172 gives Y-coordinates.

Offset 0, canonical program `A340171.P3916832094635592034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340171 (n : ℕ) : ℤ :=
  A340171.P3916832094635592034.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340192.P16363621436527466059

`∑{d}[n+1, A063994(#)]`
-/

namespace A340192.P16363621436527466059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063994 d

end

end A340192.P16363621436527466059

noncomputable section

/-- A340192: a(n) = Sum_{d|n} A063994(d), where A063994(x) = Product_{primes p dividing x} gcd(p-1, x-1).

Offset 1, canonical program `A340192.P16363621436527466059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340192 (n : ℕ) : ℤ :=
  A340192.P16363621436527466059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340317.P9589096557539198155

`A186944(n+1)%A005451(n+1)`
-/

namespace A340317.P9589096557539198155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186944 (n + 1)) (A005451 (n + 1))

end

end A340317.P9589096557539198155

noncomputable section

/-- A340317: (Product of primes <= n) read modulo n.

Offset 1, canonical program `A340317.P9589096557539198155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A340317 (n : ℕ) : ℤ :=
  A340317.P9589096557539198155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A340317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340327.P11441270140592184642

`abs(∑[A056594(A284393(n+1))])`
-/

namespace A340327.P11441270140592184642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A284393 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A340327.P11441270140592184642

noncomputable section

/-- A340327: a(n) is the X-coordinate of the n-th point of a variant of the quadratic Koch curve. Sequence A340328 gives Y-coordinates.

Offset 0, canonical program `A340327.P11441270140592184642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A340327 (n : ℕ) : ℤ :=
  A340327.P11441270140592184642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A340327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340571.P7943958464689563817

`A026810(n)-A026810(∑[n]%(n+2))`
-/

namespace A340571.P7943958464689563817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A026810 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2))

end

end A340571.P7943958464689563817

noncomputable section

/-- A340571: Number of partitions of n into 4 parts with at least one even part.

Offset 0, canonical program `A340571.P7943958464689563817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340571 (n : ℕ) : ℤ :=
  A340571.P7943958464689563817.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340589.P9076716019865579084

`A026810(n)-A026810(n-gcd(n, ∑[n]))`
-/

namespace A340589.P9076716019865579084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A026810 (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A340589.P9076716019865579084

noncomputable section

/-- A340589: Number of partitions of n into 4 parts with at least one odd part.

Offset 0, canonical program `A340589.P9076716019865579084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340589 (n : ℕ) : ℤ :=
  A340589.P9076716019865579084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340714.P5712239063157682719

`∑{d}[n+1, A002620(#-1)*A055615((n+1)/#)]`
-/

namespace A340714.P5712239063157682719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002620 (d - 1) * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340714.P5712239063157682719

noncomputable section

/-- A340714: a(n) is the sum of (n-2*j) for j < n/2 coprime to n.

Offset 1, canonical program `A340714.P5712239063157682719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340714 (n : ℕ) : ℤ :=
  A340714.P5712239063157682719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340761.P12690093205737544502

`A026810(n)-a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A340761.P12690093205737544502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A026810 n - a (n - 2)

end

end A340761.P12690093205737544502

noncomputable section

/-- A340761: Number of partitions of n into 4 parts whose 'middle' two parts have the same parity.

Offset 0, canonical program `A340761.P12690093205737544502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1482 terms. -/
def A340761 (n : ℕ) : ℤ :=
  A340761.P12690093205737544502.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1482 terms. -/
def A340761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340764.P6242509030891960440

`∑[(∑[n]*A061007(n+1))%3]`
-/

namespace A340764.P6242509030891960440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A061007 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340764.P6242509030891960440

noncomputable section

/-- A340764: Number of primes p <= n that are congruent to 2 modulo 3.

Offset 1, canonical program `A340764.P6242509030891960440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340764 (n : ℕ) : ℤ :=
  A340764.P6242509030891960440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340774.P8127324298675915138

`∑{d}[n+1, A057670(#)*A061019((n+1)/#)]`
-/

namespace A340774.P8127324298675915138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057670 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340774.P8127324298675915138

noncomputable section

/-- A340774: Dirichlet g.f.: Sum_{n>0} a(n)/n^s = zeta(s-1) * zeta(2*s-1).

Offset 1, canonical program `A340774.P8127324298675915138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340774 (n : ℕ) : ℤ :=
  A340774.P8127324298675915138.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340944.P1226746754582128393

`∑[A056594(A000194(abs(1-n)))]`
-/

namespace A340944.P1226746754582128393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A000194 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340944.P1226746754582128393

noncomputable section

/-- A340944: List of X-coordinates of point moving along one of the arms of a counterclockwise square spiral with four arms; A340945 gives Y-coordinates.

Offset 0, canonical program `A340944.P1226746754582128393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340944 (n : ℕ) : ℤ :=
  A340944.P1226746754582128393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341016.P15767692979643003200

`A004271(A004272(n)+2)`
-/

namespace A341016.P15767692979643003200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A004272 n + 2).toNat

end

end A341016.P15767692979643003200

noncomputable section

/-- A341016: Numbers k such that A124440(k) is a multiple of A066840(k).

Offset 1, canonical program `A341016.P15767692979643003200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A341016 (n : ℕ) : ℤ :=
  A341016.P15767692979643003200.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A341016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341062.P3183873538758159850

`Δ[(A032741(n)+1)%(n+1)]`
-/

namespace A341062.P3183873538758159850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032741 n + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341062.P3183873538758159850

noncomputable section

/-- A341062: Sequence whose partial sums give A000005.

Offset 1, canonical program `A341062.P3183873538758159850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341062 (n : ℕ) : ℤ :=
  A341062.P3183873538758159850.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341169.P9820711191636819910

`eq[2, A070635(n+1)]+1`
-/

namespace A341169.P9820711191636819910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341169.P9820711191636819910

noncomputable section

/-- A341169: Numbers that divided by the sum of their digits leave 2 as remainder.

Offset 1, canonical program `A341169.P9820711191636819910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A341169 (n : ℕ) : ℤ :=
  (A341169.P9820711191636819910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A341169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341170.P14350183940788908955

`eq[3, A070635(n+1)]+1`
-/

namespace A341170.P14350183940788908955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341170.P14350183940788908955

noncomputable section

/-- A341170: Numbers that when divided by the sum of their digits leave 3 as remainder.

Offset 1, canonical program `A341170.P14350183940788908955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A341170 (n : ℕ) : ℤ :=
  (A341170.P14350183940788908955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A341170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341171.P9321090049766622072

`eq[4, A070635(n+1)]+1`
-/

namespace A341171.P9321090049766622072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341171.P9321090049766622072

noncomputable section

/-- A341171: Numbers that when divided by the sum of their digits leave 4 as remainder.

Offset 1, canonical program `A341171.P9321090049766622072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A341171 (n : ℕ) : ℤ :=
  (A341171.P9321090049766622072.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A341171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341172.P14823139474695467631

`eq[5, A070635(n+1)]+1`
-/

namespace A341172.P14823139474695467631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341172.P14823139474695467631

noncomputable section

/-- A341172: Numbers that when divided by the sum of their digits leave 5 as remainder.

Offset 1, canonical program `A341172.P14823139474695467631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A341172 (n : ℕ) : ℤ :=
  (A341172.P14823139474695467631.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A341172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341173.P9765761011939025355

`eq[6, A070635(n+1)]+1`
-/

namespace A341173.P9765761011939025355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341173.P9765761011939025355

noncomputable section

/-- A341173: Numbers that when divided by the sum of their digits leave 6 as remainder.

Offset 1, canonical program `A341173.P9765761011939025355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A341173 (n : ℕ) : ℤ :=
  (A341173.P9765761011939025355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A341173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341174.P17689288530692813440

`eq[7, A070635(n+1)]+1`
-/

namespace A341174.P17689288530692813440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341174.P17689288530692813440

noncomputable section

/-- A341174: Numbers that when divided by the sum of their digits leave 7 as remainder.

Offset 1, canonical program `A341174.P17689288530692813440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A341174 (n : ℕ) : ℤ :=
  (A341174.P17689288530692813440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A341174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341175.P10433863649474303649

`eq[8, A070635(n+1)]+1`
-/

namespace A341175.P10433863649474303649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341175.P10433863649474303649

noncomputable section

/-- A341175: Numbers that when divided by the sum of their digits leave 8 as remainder.

Offset 1, canonical program `A341175.P10433863649474303649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A341175 (n : ℕ) : ℤ :=
  (A341175.P10433863649474303649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A341175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341176.P15006660648989176220

`eq[9, A070635(n+1)]+1`
-/

namespace A341176.P15006660648989176220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341176.P15006660648989176220

noncomputable section

/-- A341176: Numbers that when divided by the sum of their digits leave 9 as remainder.

Offset 1, canonical program `A341176.P15006660648989176220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1116 terms. -/
def A341176 (n : ℕ) : ℤ :=
  (A341176.P15006660648989176220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1116 terms. -/
def A341176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341177.P18272480648267130091

`eq[10, A070635(n+1)]+1`
-/

namespace A341177.P18272480648267130091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341177.P18272480648267130091

noncomputable section

/-- A341177: Numbers that when divided by the sum of their digits leave 10 as remainder.

Offset 1, canonical program `A341177.P18272480648267130091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A341177 (n : ℕ) : ℤ :=
  (A341177.P18272480648267130091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. -/
def A341177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341208.P4083067955649427684

`A001906(n+3)-a(n-1)` with `a(0)=9`
-/

namespace A341208.P4083067955649427684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A001906 (n + 3) - a (n - 1)

end

end A341208.P4083067955649427684

noncomputable section

/-- A341208: a(n) = F(n+4) * F(n+1) - 4 * (-1)^n where F(n) = A000045(n) are the Fibonacci numbers.

Offset 1, canonical program `A341208.P4083067955649427684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A341208 (n : ℕ) : ℤ :=
  A341208.P4083067955649427684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A341208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341316.P8105046505251376767

`3*∑{d}[n, A023896(#)]`
-/

namespace A341316.P8105046505251376767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ d ∈ Nat.divisors (f1 n), A023896 d)

end

end A341316.P8105046505251376767

noncomputable section

/-- A341316: Row sums in A341315.

Offset 0, canonical program `A341316.P8105046505251376767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341316 (n : ℕ) : ℤ :=
  A341316.P8105046505251376767.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341361.P14042391054428653239

`p?[2*n+1]*A053644(p?[2*n+1]+1)`
-/

namespace A341361.P14042391054428653239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A053644 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1)

end

end A341361.P14042391054428653239

noncomputable section

/-- A341361: a(n) is the smallest abundant number of the form 2^e * prime(n).

Offset 2, canonical program `A341361.P14042391054428653239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A341361 (n : ℕ) : ℤ :=
  A341361.P14042391054428653239.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A341361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341410.P3390611556042934909

`A001551(n+1)%(n+1)`
-/

namespace A341410.P3390611556042934909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001551 (n + 1)) (n + 1 : ℤ)

end

end A341410.P3390611556042934909

noncomputable section

/-- A341410: a(n) = (Sum_{k=1..4} k^n) mod n.

Offset 1, canonical program `A341410.P3390611556042934909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A341410 (n : ℕ) : ℤ :=
  A341410.P3390611556042934909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A341410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341411.P4872283021762007525

`A001552(n+1)%(n+1)`
-/

namespace A341411.P4872283021762007525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001552 (n + 1)) (n + 1 : ℤ)

end

end A341411.P4872283021762007525

noncomputable section

/-- A341411: a(n) = (Sum_{k=1..5} k^n) mod n.

Offset 1, canonical program `A341411.P4872283021762007525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A341411 (n : ℕ) : ℤ :=
  A341411.P4872283021762007525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A341411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341412.P2078653138376470389

`A001553(n+1)%(n+1)`
-/

namespace A341412.P2078653138376470389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001553 (n + 1)) (n + 1 : ℤ)

end

end A341412.P2078653138376470389

noncomputable section

/-- A341412: a(n) = (Sum_{k=1..6} k^n) mod n.

Offset 1, canonical program `A341412.P2078653138376470389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A341412 (n : ℕ) : ℤ :=
  A341412.P2078653138376470389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A341412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341413.P16648535749904419886

`A001554(n+1)%(n+1)`
-/

namespace A341413.P16648535749904419886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001554 (n + 1)) (n + 1 : ℤ)

end

end A341413.P16648535749904419886

noncomputable section

/-- A341413: a(n) = (Sum_{k=1..7} k^n) mod n.

Offset 1, canonical program `A341413.P16648535749904419886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A341413 (n : ℕ) : ℤ :=
  A341413.P16648535749904419886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A341413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341441.P14857881591071919357

`A005732(2*n+3)`
-/

namespace A341441.P14857881591071919357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005732 (2 * n + 3)

end

end A341441.P14857881591071919357

noncomputable section

/-- A341441: Total number of triangles visible in a regular (2n+1)-gon with all diagonals drawn.

Offset 1, canonical program `A341441.P14857881591071919357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A341441 (n : ℕ) : ℤ :=
  A341441.P14857881591071919357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A341441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341549.P3519388886816363203

`A099431(n+3)-A135351(n+3)`
-/

namespace A341549.P3519388886816363203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099431 (n + 3) - A135351 (n + 3)

end

end A341549.P3519388886816363203

noncomputable section

/-- A341549: a(n) = Sum_{k=1..n} (-1)^(n+k)*A087322(n,k).

Offset 1, canonical program `A341549.P3519388886816363203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A341549 (n : ℕ) : ℤ :=
  A341549.P3519388886816363203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A341549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341552.P8426429187290951405

`A198647(n+2)-A048473(n+2)`
-/

namespace A341552.P8426429187290951405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198647 (n + 2) - A048473 (n + 2)

end

end A341552.P8426429187290951405

noncomputable section

/-- A341552: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 4) missing three edges, where all three removed edges are incident to different vertices in the 3 point set but exactly two removed edges are incident to the same vertex in the other set.

Offset 4, canonical program `A341552.P8426429187290951405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A341552 (n : ℕ) : ℤ :=
  A341552.P8426429187290951405.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A341552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341597.P2854536876713895795

`(A341209(2*n)+A000217(2*n))*A000292(n+1)`
-/

namespace A341597.P2854536876713895795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A341209 (2 * n) + A000217 (2 * n)) * A000292 (n + 1)

end

end A341597.P2854536876713895795

noncomputable section

/-- A341597: a(n) = A144066(n+3,3).

Offset 0, canonical program `A341597.P2854536876713895795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A341597 (n : ℕ) : ℤ :=
  A341597.P2854536876713895795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A341597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341635.P11073504300629112393

`∑{d}[n+1, A007427(#)*A276833((n+1)/#)]`
-/

namespace A341635.P11073504300629112393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A276833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341635.P11073504300629112393

noncomputable section

/-- A341635: a(n) = Sum_{d|n} phi(d) * mu(d) * mu(n/d).

Offset 1, canonical program `A341635.P11073504300629112393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341635 (n : ℕ) : ℤ :=
  A341635.P11073504300629112393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341706.P8453003018031914151

`A000326(round(sqrt(2*n)))+n`
-/

namespace A341706.P8453003018031914151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat + (n : ℤ)

end

end A341706.P8453003018031914151

noncomputable section

/-- A341706: Row 2 of semigroup multiplication table shown in A341317 and A341318.

Offset 0, canonical program `A341706.P8453003018031914151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341706 (n : ℕ) : ℤ :=
  A341706.P8453003018031914151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341783.P13358980128243009545

`∪[A003631(n+1)², A038872(n+1)]`
-/

namespace A341783.P13358980128243009545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341783.P13358980128243009545

noncomputable section

/-- A341783: Absolute values of norms of prime elements in Z[(1+sqrt(5))/2], the ring of integers of Q(sqrt(5)).

Offset 1, canonical program `A341783.P13358980128243009545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341783 (n : ℕ) : ℤ :=
  (A341783.P13358980128243009545.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341784.P7806599191344346021

`∪[p?[or(5, 6*n)]², A033203(n+1)]`
-/

namespace A341784.P7806599191344346021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (6 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A341784.P7806599191344346021

noncomputable section

/-- A341784: Norms of prime elements in Z[sqrt(-2)], the ring of integers of Q(sqrt(-2)).

Offset 1, canonical program `A341784.P7806599191344346021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341784 (n : ℕ) : ℤ :=
  (A341784.P7806599191344346021.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341885.P6226405287911743613

`∑{p}[n+1, val(n+1, #)*A000217(#)]`
-/

namespace A341885.P6226405287911743613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p : ℤ) * A000217 p

end

end A341885.P6226405287911743613

noncomputable section

/-- A341885: a(n) is the sum of A000217(p) over the prime factors p of n, counted with multiplicity.

Offset 1, canonical program `A341885.P6226405287911743613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341885 (n : ℕ) : ℤ :=
  A341885.P6226405287911743613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341933.P4720309909486337756

`A023896(n+1)%A000203(n+1)`
-/

namespace A341933.P4720309909486337756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023896 (n + 1)) (A000203 (n + 1))

end

end A341933.P4720309909486337756

noncomputable section

/-- A341933: a(n) = A023896(n) mod A000203(n).

Offset 1, canonical program `A341933.P4720309909486337756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341933 (n : ℕ) : ℤ :=
  A341933.P4720309909486337756.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342089.P14921014669089711411

`abs(A035337(n)+2-n)`
-/

namespace A342089.P14921014669089711411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035337 n + (2 - (n : ℤ))|

end

end A342089.P14921014669089711411

noncomputable section

/-- A342089: Numbers that have two representations as the sum of distinct non-consecutive Lucas numbers (A000032).

Offset 1, canonical program `A342089.P14921014669089711411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342089 (n : ℕ) : ℤ :=
  A342089.P14921014669089711411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342101.P740003586747439283

`A070402(eq[1, A014709(n)])`
-/

namespace A342101.P740003586747439283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342101.P740003586747439283

noncomputable section

/-- A342101: Remove middle term and append, starting with [1, 2, 3].

Offset 1, canonical program `A342101.P740003586747439283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A342101 (n : ℕ) : ℤ :=
  A342101.P740003586747439283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A342101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342184.P10340909780046926633

`p?[ceil(A289353(n+1)/10)]`
-/

namespace A342184.P10340909780046926633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289353 (n + 1) : ℚ) / 10⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342184.P10340909780046926633

noncomputable section

/-- A342184: Primes q such that 10*q-3 and 10*q+1 are cousin primes.

Offset 1, canonical program `A342184.P10340909780046926633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A342184 (n : ℕ) : ℤ :=
  A342184.P10340909780046926633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A342184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342235.P6074913570153502342

`A288699(n)+3*n²`
-/

namespace A342235.P6074913570153502342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288699 n + (3 * n ^ 2 : ℤ)

end

end A342235.P6074913570153502342

noncomputable section

/-- A342235: Coordination sequence of David Eppstein's "Tetrastix" graph.

Offset 0, canonical program `A342235.P6074913570153502342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A342235 (n : ℕ) : ℤ :=
  A342235.P6074913570153502342.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A342235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342279.P4434841639031500385

`A000201(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342279.P4434841639031500385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * n + 1)

end

end A342279.P4434841639031500385

noncomputable section

/-- A342279: A bisection of A000201: a(n) = A000201(2*n+1).

Offset 0, canonical program `A342279.P4434841639031500385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342279 (n : ℕ) : ℤ :=
  A342279.P4434841639031500385.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342352.P10878956096041233773

`A296965(n)-A186783(n+1)`
-/

namespace A342352.P10878956096041233773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296965 n - A186783 (n + 1)

end

end A342352.P10878956096041233773

noncomputable section

/-- A342352: Expansion of e.g.f. (exp(x)-1)*(exp(x) - x^2/2 - x - 1).

Offset 0, canonical program `A342352.P10878956096041233773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A342352 (n : ℕ) : ℤ :=
  A342352.P10878956096041233773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A342352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342404.P7003255690784973239

`(A166444(n)+A024000(n))*(∑[n]-n)`
-/

namespace A342404.P7003255690784973239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166444 n + A024000 n) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A342404.P7003255690784973239

noncomputable section

/-- A342404: a(n) = binomial(n,2)*(2^(n-2) - n + 1).

Offset 0, canonical program `A342404.P7003255690784973239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A342404 (n : ℕ) : ℤ :=
  A342404.P7003255690784973239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A342404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342469.P18019370537787846838

`∪[A005214(n+1), ∑[a(n-1)+3]]` with `a(0)=1`
-/

namespace A342469.P18019370537787846838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A342469.P18019370537787846838

noncomputable section

/-- A342469: Positive numbers that are triangular, square or pentagonal.

Offset 1, canonical program `A342469.P18019370537787846838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342469 (n : ℕ) : ℤ :=
  (A342469.P18019370537787846838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342831.P12803060676768052576

`A078608(n+1)+1`
-/

namespace A342831.P12803060676768052576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078608 (n + 1) + 1

end

end A342831.P12803060676768052576

noncomputable section

/-- A342831: a(n) is the smallest positive integer k such that the n-dimensional cube [0,k]^n contains at least as many internal lattice points as external lattice points.

Offset 1, canonical program `A342831.P12803060676768052576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342831 (n : ℕ) : ℤ :=
  A342831.P12803060676768052576.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078608, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A342831.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A342850.P11868217381544955676

`Δ[18*A016138(n)]`
-/

namespace A342850.P11868217381544955676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A016138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342850.P11868217381544955676

noncomputable section

/-- A342850: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 4) missing three edges, where all three removed edges are incident to different vertices in the 3-point set and none of the removed edges are incident to the same vertex in the other set.

Offset 4, canonical program `A342850.P11868217381544955676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A342850 (n : ℕ) : ℤ :=
  A342850.P11868217381544955676.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A342850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342872.P241975970429368378

`A074989(comp[A081435(n)])`
-/

namespace A342872.P241975970429368378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081435 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A342872.P241975970429368378

noncomputable section

/-- A342872: Distance to nearest product of 3 consecutive numbers (three-dimensional promic number, A007531).

Offset 0, canonical program `A342872.P241975970429368378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9979 terms. -/
def A342872 (n : ℕ) : ℤ :=
  A342872.P241975970429368378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9979 terms. -/
def A342872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342892.P15545724852766789726

`1-A086483(n)`
-/

namespace A342892.P15545724852766789726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A086483 n

end

end A342892.P15545724852766789726

noncomputable section

/-- A342892: a(n) is the complement of the bit two places to the left of the least significant "1" in the binary expansion of n.

Offset 0, canonical program `A342892.P15545724852766789726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342892 (n : ℕ) : ℤ :=
  A342892.P15545724852766789726.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343010.P18443827266205599969

`ceil(A077259(n)/sqrt(5))`
-/

namespace A343010.P18443827266205599969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077259 n : ℝ) / Real.sqrt (5 : ℝ)⌉

end

end A343010.P18443827266205599969

noncomputable section

/-- A343010: Integers k for which there exist three consecutive Fibonacci numbers a, b, and c such that a*b*c = k*(a+b+c).

Offset 1, canonical program `A343010.P18443827266205599969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A343010 (n : ℕ) : ℤ :=
  A343010.P18443827266205599969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A343010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343118.P17169934153863060718

`A110592(a(n-1)+1)+A110592(A198270(n))` with `a(0)=2`
-/

namespace A343118.P17169934153863060718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A110592 (a (n - 1) + 1).toNat + A110592 (A198270 n).toNat

end

end A343118.P17169934153863060718

noncomputable section

/-- A343118: Length of the longest sequence of equidistant primes among the first n primes.

Offset 2, canonical program `A343118.P17169934153863060718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A343118 (n : ℕ) : ℤ :=
  A343118.P17169934153863060718.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A343118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343299.P2760849761388230679

`1-A011371(a(n-1))+n` with `a(0)=1`
-/

namespace A343299.P2760849761388230679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A011371 (a (n - 1)).toNat + (n : ℤ)

end

end A343299.P2760849761388230679

noncomputable section

/-- A343299: a(n) = n + A000120(a(n-1)) - a(n-1), with n > 1, a(1) = 1, where A000120(x) is the binary weight of x.

Offset 1, canonical program `A343299.P2760849761388230679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343299 (n : ℕ) : ℤ :=
  A343299.P2760849761388230679.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343407.P12989164857061377449

`∑{d}[n+1, A073424(#%(n+1))]`
-/

namespace A343407.P12989164857061377449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073424 (d % (n + 1))

end

end A343407.P12989164857061377449

noncomputable section

/-- A343407: Number of proper divisors of n that are triangular numbers.

Offset 1, canonical program `A343407.P12989164857061377449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343407 (n : ℕ) : ℤ :=
  A343407.P12989164857061377449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343585.P14449006963565787706

`A081411(n+1)%p?[A005408(n)]`
-/

namespace A343585.P14449006963565787706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081411 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A343585.P14449006963565787706

noncomputable section

/-- A343585: a(n) = A081411(n) mod prime(n+1).

Offset 1, canonical program `A343585.P14449006963565787706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A343585 (n : ℕ) : ℤ :=
  A343585.P14449006963565787706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A343585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344042.P858665758975236922

`∑{d}[n+1, #*A072861((n+1)/#)]`
-/

namespace A344042.P858665758975236922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A072861 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344042.P858665758975236922

noncomputable section

/-- A344042: a(n) = n * Sum_{d|n} sigma(d)^2 / d.

Offset 1, canonical program `A344042.P858665758975236922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344042 (n : ℕ) : ℤ :=
  A344042.P858665758975236922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344044.P15182068437121095928

`∑{d}[n+1, A000203(#)^3]`
-/

namespace A344044.P15182068437121095928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d ^ 3

end

end A344044.P15182068437121095928

noncomputable section

/-- A344044: a(n) = Sum_{d|n} sigma(d)^3.

Offset 1, canonical program `A344044.P15182068437121095928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344044 (n : ℕ) : ℤ :=
  A344044.P15182068437121095928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344061.P11348002501753100675

`∑{d}[n+1, A000203(#)^ceil(n/#)]`
-/

namespace A344061.P11348002501753100675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000203 d : ℚ) ^ (⌈(n : ℚ) / (d : ℚ)⌉ : ℤ)

end

end A344061.P11348002501753100675

noncomputable section

/-- A344061: a(n) = Sum_{d|n} sigma(d)^(n/d).

Offset 1, canonical program `A344061.P11348002501753100675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A344061 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344061.P11348002501753100675.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A344061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344082.P10735938395115113938

`∑{d}[n+1, #*A319089((n+1)/#)]`
-/

namespace A344082.P10735938395115113938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A319089 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344082.P10735938395115113938

noncomputable section

/-- A344082: a(n) = n * Sum_{d|n} tau(d)^3 / d, where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344082.P10735938395115113938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344082 (n : ℕ) : ℤ :=
  A344082.P10735938395115113938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344121.P6184258589641421674

`∑[(Δ[A042948(n)]+3)*7^n]+1`
-/

namespace A344121.P6184258589641421674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n + 3) * (7 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A344121.P6184258589641421674

noncomputable section

/-- A344121: a(n) is the multiplicative inverse of 24 (mod 7^n).

Offset 1, canonical program `A344121.P6184258589641421674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A344121 (n : ℕ) : ℤ :=
  A344121.P6184258589641421674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A344121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344128.P7684206442371176252

`∑[A000203(n+1)-∑{d}[n+1, #%((n+1)%#²+1)]]`
-/

namespace A344128.P7684206442371176252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ((∑ d ∈ Nat.divisors (f2 n), d % ((n + 1) % d ^ 2 + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344128.P7684206442371176252

noncomputable section

/-- A344128: a(n) = Sum_{k=1..n} k * floor(n/k^2).

Offset 1, canonical program `A344128.P7684206442371176252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344128 (n : ℕ) : ℤ :=
  A344128.P7684206442371176252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344313.P8586429644628599476

`eq[0, Δ[A286324(n+1)]]+1`
-/

namespace A344313.P8586429644628599476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344313.P8586429644628599476

noncomputable section

/-- A344313: Number k such that k and k+1 have the same number of bi-unitary divisors (A286324).

Offset 1, canonical program `A344313.P8586429644628599476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A344313 (n : ℕ) : ℤ :=
  (A344313.P8586429644628599476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2108 terms. -/
def A344313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344346.P16964101836230254873

`A081706(n+1)+1`
-/

namespace A344346.P16964101836230254873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1) + 1

end

end A344346.P16964101836230254873

noncomputable section

/-- A344346: Numbers k which have an odd number of trailing zeros in their binary reflected Gray code A014550(k).

Offset 1, canonical program `A344346.P16964101836230254873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344346 (n : ℕ) : ℤ :=
  A344346.P16964101836230254873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344389.P579981487796978420

`A073531(n)+a(n-1)` with `a(0)=1`
-/

namespace A344389.P579981487796978420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073531 n + a (n - 1)

end

end A344389.P579981487796978420

noncomputable section

/-- A344389: a(n) is the number of nonnegative numbers < 10^n with all digits distinct.

Offset 0, canonical program `A344389.P579981487796978420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344389 (n : ℕ) : ℤ :=
  A344389.P579981487796978420.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073531, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A344389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A344458.P1195650620663336302

`∑{d}[n+1, A062509(#)]`
-/

namespace A344458.P1195650620663336302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062509 d

end

end A344458.P1195650620663336302

noncomputable section

/-- A344458: a(n) = Sum_{d|n} d^omega(d).

Offset 1, canonical program `A344458.P1195650620663336302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344458 (n : ℕ) : ℤ :=
  A344458.P1195650620663336302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344459.P14730306849284895143

`∑{d}[n+1, A176029(#)]`
-/

namespace A344459.P14730306849284895143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A176029 d

end

end A344459.P14730306849284895143

noncomputable section

/-- A344459: a(n) = Sum_{d|n} d^Omega(d).

Offset 1, canonical program `A344459.P14730306849284895143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344459 (n : ℕ) : ℤ :=
  A344459.P14730306849284895143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344503.P18144269787827029836

`(1-n%3)*A051033(n)`
-/

namespace A344503.P18144269787827029836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n % 3 : ℕ) : ℤ)) * A051033 n

end

end A344503.P18144269787827029836

noncomputable section

/-- A344503: a(n) = Sum_{k=0..n} (-1)^(n-k)*binomial(n, k)^2*hypergeom([(k-n)/2, (k-n+1)/2], [k+2], 4).

Offset 0, canonical program `A344503.P18144269787827029836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A344503 (n : ℕ) : ℤ :=
  A344503.P18144269787827029836.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A344503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344504.P10024715158106452626

`Δ[A005773(n)]+3*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A344504.P10024715158106452626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  f1 (n + 1) - f1 n + 3 * a (n - 1)

end

end A344504.P10024715158106452626

noncomputable section

/-- A344504: a(n) = [x^n] ((x - 1)/sqrt(4/(x + 1) - 3) + x + 1)/(2*x*(3*x - 1)).

Offset 0, canonical program `A344504.P10024715158106452626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A344504 (n : ℕ) : ℤ :=
  A344504.P10024715158106452626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A344504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344510.P10545853262985207391

`∑{d}[n+1, A000290(#)*A023896((n+1)/#)]`
-/

namespace A344510.P10545853262985207391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A023896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344510.P10545853262985207391

noncomputable section

/-- A344510: a(n) = Sum_{k=1..n} k * gcd(k,n).

Offset 1, canonical program `A344510.P10545853262985207391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344510 (n : ℕ) : ℤ :=
  A344510.P10545853262985207391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344572.P2534658262608735268

`∑{d}[n+1, A210241(#)-#]`
-/

namespace A344572.P2534658262608735268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A210241 d - (d : ℤ))

end

end A344572.P2534658262608735268

noncomputable section

/-- A344572: a(n) = Sum_{d|n} Omega(d!).

Offset 1, canonical program `A344572.P2534658262608735268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344572 (n : ℕ) : ℤ :=
  A344572.P2534658262608735268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344574.P13987926843258273889

`∑{d}[n+1, A157658(#)*A161680((n+1)/#-1)]`
-/

namespace A344574.P13987926843258273889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A161680 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A344574.P13987926843258273889

noncomputable section

/-- A344574: Number of ordered pairs (i,j) with 0 < i < j < n such that gcd(i,j,n) > 1.

Offset 1, canonical program `A344574.P13987926843258273889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344574 (n : ℕ) : ℤ :=
  A344574.P13987926843258273889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344578.P9984211468648796667

`∑{d}[n+1, #*A005063((n+1)/#)]`
-/

namespace A344578.P9984211468648796667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A005063 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344578.P9984211468648796667

noncomputable section

/-- A344578: a(n) = Sum_{d|n} d * sopf(d).

Offset 1, canonical program `A344578.P9984211468648796667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344578 (n : ℕ) : ℤ :=
  A344578.P9984211468648796667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344714.P9250157481973261528

`lt[n+1, A008477(n+1)]+1`
-/

namespace A344714.P9250157481973261528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A344714.P9250157481973261528

noncomputable section

/-- A344714: Numbers k such that A008477(k) > k.

Offset 1, canonical program `A344714.P9250157481973261528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A344714 (n : ℕ) : ℤ :=
  (A344714.P9250157481973261528.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A344714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344720.P5143817129039334171

`∑[∑{d}[n+1, A266072(#)]]`
-/

namespace A344720.P5143817129039334171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A266072 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344720.P5143817129039334171

noncomputable section

/-- A344720: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor(n/k)^2.

Offset 1, canonical program `A344720.P5143817129039334171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A344720 (n : ℕ) : ℤ :=
  A344720.P5143817129039334171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A344720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344814.P1384823878643924912

`∑[A034730(n+1)]`
-/

namespace A344814.P1384823878643924912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344814.P1384823878643924912

noncomputable section

/-- A344814: a(n) = Sum_{k=1..n} floor(n/k) * 3^(k-1).

Offset 1, canonical program `A344814.P1384823878643924912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A344814 (n : ℕ) : ℤ :=
  A344814.P1384823878643924912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A344814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344815.P322017115133410734

`∑[A339684(n+1)]`
-/

namespace A344815.P322017115133410734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344815.P322017115133410734

noncomputable section

/-- A344815: a(n) = Sum_{k=1..n} floor(n/k) * 4^(k-1).

Offset 1, canonical program `A344815.P322017115133410734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A344815 (n : ℕ) : ℤ :=
  A344815.P322017115133410734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A344815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344816.P16042371263441308375

`∑[A339685(n+1)]`
-/

namespace A344816.P16042371263441308375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344816.P16042371263441308375

noncomputable section

/-- A344816: a(n) = Sum_{k=1..n} floor(n/k) * 5^(k-1).

Offset 1, canonical program `A344816.P16042371263441308375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A344816 (n : ℕ) : ℤ :=
  A344816.P16042371263441308375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A344816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344817.P3238812888044311668

`∑[or(1, ∑{d}[n+1, A123344(#)])]`
-/

namespace A344817.P3238812888044311668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ d ∈ Nat.divisors (f2 n), A123344 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344817.P3238812888044311668

noncomputable section

/-- A344817: a(n) = Sum_{k=1..n} floor(n/k) * (-2)^(k-1).

Offset 1, canonical program `A344817.P3238812888044311668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A344817 (n : ℕ) : ℤ :=
  A344817.P3238812888044311668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A344817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344819.P1923381151925912591

`∑[(-1)^n*A101562(n)]`
-/

namespace A344819.P1923381151925912591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A101562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344819.P1923381151925912591

noncomputable section

/-- A344819: a(n) = Sum_{k=1..n} floor(n/k) * (-4)^(k-1).

Offset 1, canonical program `A344819.P1923381151925912591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A344819 (n : ℕ) : ℤ :=
  A344819.P1923381151925912591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A344819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344852.P14663846341276911988

`A001147(n-∑[val(n+1, 2)])`
-/

namespace A344852.P14663846341276911988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344852.P14663846341276911988

noncomputable section

/-- A344852: Number of rooted binary trees with n leaves with minimal Symmetry Nodes Index (SNI) or, equivalently, with the maximal number of symmetry nodes.

Offset 1, canonical program `A344852.P14663846341276911988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344852 (n : ℕ) : ℤ :=
  A344852.P14663846341276911988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344856.P15428263594761140791

`xor((n+1)², A000040(n+1))`
-/

namespace A344856.P15428263594761140791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1) ^ 2 : ℤ) (A000040 (n + 1))

end

end A344856.P15428263594761140791

noncomputable section

/-- A344856: Bitwise XOR of prime(n) and n^2.

Offset 1, canonical program `A344856.P15428263594761140791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344856 (n : ℕ) : ℤ :=
  A344856.P15428263594761140791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345018.P322366405058277997

`A023443(A074279(n+1))+n+1-A000330(A074279(n+1)-1)`
-/

namespace A345018.P322366405058277997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074279 (n + 1)).toNat + ((n + 1 : ℤ) - A000330 (A074279 (n + 1) - 1).toNat)

end

end A345018.P322366405058277997

noncomputable section

/-- A345018: For each n, append to the sequence n^2 consecutive integers, starting from n.

Offset 1, canonical program `A345018.P322366405058277997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345018 (n : ℕ) : ℤ :=
  A345018.P322366405058277997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345022.P15260461067715733175

`A003418(n+1)*A010055(n+2)*A020500(n+3)`
-/

namespace A345022.P15260461067715733175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) * A010055 (n + 2) * A020500 (n + 3)

end

end A345022.P15260461067715733175

noncomputable section

/-- A345022: Smallest number divisible by all numbers 1 through n+1 except n, or 0 if impossible.

Offset 2, canonical program `A345022.P15260461067715733175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A345022 (n : ℕ) : ℤ :=
  A345022.P15260461067715733175.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A345022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345029.P10052612625783975616

`∑[∑{d}[n+1, A025192(#-1)]]`
-/

namespace A345029.P10052612625783975616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A025192 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345029.P10052612625783975616

noncomputable section

/-- A345029: a(n) = Sum_{k=1..n} 3^(floor(n/k) - 1).

Offset 1, canonical program `A345029.P10052612625783975616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A345029 (n : ℕ) : ℤ :=
  A345029.P10052612625783975616.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A345029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345100.P9674031221641543024

`∑[A055225(n+1)+1-A087909(n+1)]`
-/

namespace A345100.P9674031221641543024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055225 (n + 1) + (1 - A087909 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345100.P9674031221641543024

noncomputable section

/-- A345100: a(n) = Sum_{k=1..n} k^floor(n/k).

Offset 1, canonical program `A345100.P9674031221641543024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A345100 (n : ℕ) : ℤ :=
  A345100.P9674031221641543024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A345100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345135.P893770826323321466

`C(A053644(n), n-A053644(n))`
-/

namespace A345135.P893770826323321466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053644 n).toNat ((n : ℤ) - A053644 n).toNat

end

end A345135.P893770826323321466

noncomputable section

/-- A345135: Number of ordered rooted binary trees with n leaves and with minimal Sackin tree balance index.

Offset 0, canonical program `A345135.P893770826323321466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A345135 (n : ℕ) : ℤ :=
  (A345135.P893770826323321466.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A345135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345222.P1944739227301177000

`∑{e}[n+1, A230980(#+1)]`
-/

namespace A345222.P1944739227301177000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A230980 (Nat.factorization (f1 n) p + 1)

end

end A345222.P1944739227301177000

noncomputable section

/-- A345222: Number of divisors of n with a prime number of divisors.

Offset 1, canonical program `A345222.P1944739227301177000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345222 (n : ℕ) : ℤ :=
  A345222.P1944739227301177000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345271.P11961948070932994318

`∑{d}[n+1, (n+1)^(A032741(#)+1)]`
-/

namespace A345271.P11961948070932994318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A032741 d + 1 : ℤ)

end

end A345271.P11961948070932994318

noncomputable section

/-- A345271: a(n) = Sum_{d|n} n^tau(d).

Offset 1, canonical program `A345271.P11961948070932994318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A345271 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345271.P11961948070932994318.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A345271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345299.P5260125749584572629

`∑{p}[n+1, #^A230980(#)]`
-/

namespace A345299.P5260125749584572629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A230980 p : ℤ)

end

end A345299.P5260125749584572629

noncomputable section

/-- A345299: a(n) = Sum_{p|n, p prime} p^pi(p).

Offset 1, canonical program `A345299.P5260125749584572629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A345299 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345299.P5260125749584572629.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A345299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345301.P8370085524223564322

`∑{p}[n+1, #^A230980((n+1)/#)]`
-/

namespace A345301.P8370085524223564322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A230980 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat : ℤ)

end

end A345301.P8370085524223564322

noncomputable section

/-- A345301: a(n) = Sum_{p|n, p prime} p^pi(n/p).

Offset 1, canonical program `A345301.P8370085524223564322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3872 terms. -/
def A345301 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345301.P8370085524223564322.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3872 terms. -/
def A345301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345376.P12458556879961159611

`comp[A002203(n)+n]-n`
-/

namespace A345376.P12458556879961159611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A345376.P12458556879961159611

noncomputable section

/-- A345376: Number of Companion Pell numbers m <= n.

Offset 0, canonical program `A345376.P12458556879961159611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345376 (n : ℕ) : ℤ :=
  A345376.P12458556879961159611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345494.P11227063016350519281

`A345483(n+1)+1`
-/

namespace A345494.P11227063016350519281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345483 (n + 1) + 1

end

end A345494.P11227063016350519281

noncomputable section

/-- A345494: Numbers that are the sum of eight squares in seven or more ways.

Offset 1, canonical program `A345494.P11227063016350519281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1163 terms. -/
def A345494 (n : ℕ) : ℤ :=
  A345494.P11227063016350519281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1163 terms. -/
def A345494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345499.P13652165666880009120

`A345509(n+1)-1`
-/

namespace A345499.P13652165666880009120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345509 (n + 1) - 1

end

end A345499.P13652165666880009120

noncomputable section

/-- A345499: Numbers that are the sum of nine squares in two or more ways.

Offset 1, canonical program `A345499.P13652165666880009120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A345499 (n : ℕ) : ℤ :=
  A345499.P13652165666880009120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A345499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345745.P14862035308275847777

`n*∑[A087049(n+1)]+1`
-/

namespace A345745.P14862035308275847777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A345745.P14862035308275847777

noncomputable section

/-- A345745: a(n) = Sum_{k=1..n} n^(1 - mu(k)^2).

Offset 1, canonical program `A345745.P14862035308275847777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345745 (n : ℕ) : ℤ :=
  A345745.P14862035308275847777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345892.P10925224002818855017

`A005408(n)+n*A016035(n+1)`
-/

namespace A345892.P10925224002818855017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (n : ℤ) * A016035 (n + 1)

end

end A345892.P10925224002818855017

noncomputable section

/-- A345892: a(n) = n + (n - 1) * (n - phi(n)).

Offset 1, canonical program `A345892.P10925224002818855017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345892 (n : ℕ) : ℤ :=
  A345892.P10925224002818855017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346302.P10648476138040848442

`2*n+5-A079882(n)`
-/

namespace A346302.P10648476138040848442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (5 - A079882 n)

end

end A346302.P10648476138040848442

noncomputable section

/-- A346302: Positions of words in A076478 such that first digit != last digit.

Offset 1, canonical program `A346302.P10648476138040848442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346302 (n : ℕ) : ℤ :=
  A346302.P10648476138040848442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346306.P6319894371181344972

`A004756(n+2)-2*(n+3)`
-/

namespace A346306.P6319894371181344972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 2) - (2 * (n + 3) : ℤ)

end

end A346306.P6319894371181344972

noncomputable section

/-- A346306: Position in A076478 of the binary complement of the n-th word in A076478.

Offset 1, canonical program `A346306.P6319894371181344972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A346306 (n : ℕ) : ℤ :=
  A346306.P6319894371181344972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A346306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346370.P10444630668891650526

`A093907(n+1)+A008733(n)`
-/

namespace A346370.P10444630668891650526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (n + 1) + A008733 n

end

end A346370.P10444630668891650526

noncomputable section

/-- A346370: Upper bound for the number of solutions of the TRINTUM cube puzzle n X 1 X 1 (cuboid formed by 4n + 2 parts) different by the set of parts, which are distinguished by the amount of surface area they contribute to the assembled cuboid.

Offset 1, canonical program `A346370.P10444630668891650526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346370 (n : ℕ) : ℤ :=
  A346370.P10444630668891650526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346494.P7045344198634205373

`A000566(A000040(n+1))`
-/

namespace A346494.P7045344198634205373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A000040 (n + 1)).toNat

end

end A346494.P7045344198634205373

noncomputable section

/-- A346494: Heptagonal numbers (A000566) with prime indices (A000040).

Offset 1, canonical program `A346494.P7045344198634205373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346494 (n : ℕ) : ℤ :=
  A346494.P7045344198634205373.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346494.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346877.P16742217085109088791

`A001065(2*n+1)`
-/

namespace A346877.P16742217085109088791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * n + 1)

end

end A346877.P16742217085109088791

noncomputable section

/-- A346877: Sum of the divisors, except for the largest, of the n-th odd number.

Offset 1, canonical program `A346877.P16742217085109088791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346877 (n : ℕ) : ℤ :=
  A346877.P16742217085109088791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347017.P189426420623758785

`A011782(n)-C(abs(1-n), 3)`
-/

namespace A347017.P189426420623758785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (Nat.choose |1 - (n : ℤ)|.toNat 3 : ℤ)

end

end A347017.P189426420623758785

noncomputable section

/-- A347017: a(n) = floor(2^(n-1)) - binomial(n,3) + binomial(n,2) - n + 1.

Offset 0, canonical program `A347017.P189426420623758785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A347017 (n : ℕ) : ℤ :=
  A347017.P189426420623758785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. -/
def A347017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347302.P12145525369688810272

`3^n-A003418(n)`
-/

namespace A347302.P12145525369688810272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A003418 n

end

end A347302.P12145525369688810272

noncomputable section

/-- A347302: a(n) = 3^n - lcm{1..n}, with a(0) = 0.

Offset 0, canonical program `A347302.P12145525369688810272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A347302 (n : ℕ) : ℤ :=
  A347302.P12145525369688810272.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A347302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347325.P7035894124129078734

`2*(A065033(n)-a(A004524(n))+1)` with `a(0)=1`
-/

namespace A347325.P7035894124129078734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A065033 n - a (A004524 n).toNat + 1)

end

end A347325.P7035894124129078734

noncomputable section

/-- A347325: Solution to the spectator-first Tantalizer problem.

Offset 1, canonical program `A347325.P7035894124129078734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347325 (n : ℕ) : ℤ :=
  A347325.P7035894124129078734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347405.P7591125680275529693

`∑{d}[n+1, 2^A032741(#)]`
-/

namespace A347405.P7591125680275529693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A032741 d : ℤ)

end

end A347405.P7591125680275529693

noncomputable section

/-- A347405: a(n) = Sum_{d|n} 2^(tau(d) - 1).

Offset 1, canonical program `A347405.P7591125680275529693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347405 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A347405.P7591125680275529693.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347502.P8839209823903613974

`A000079(n)-A005408(n-char[4])`
-/

namespace A347502.P8839209823903613974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A005408 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A347502.P8839209823903613974

noncomputable section

/-- A347502: Number of dominating sets in the n-cycle complement graph.

Offset 0, canonical program `A347502.P8839209823903613974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A347502 (n : ℕ) : ℤ :=
  A347502.P8839209823903613974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A347502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347513.P16074626172542130452

`A130779(A018838(n))+A000096(n)`
-/

namespace A347513.P16074626172542130452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (A018838 n).toNat + A000096 n

end

end A347513.P16074626172542130452

noncomputable section

/-- A347513: Number of minimal dominating sets in the n-cycle complement graph.

Offset 3, canonical program `A347513.P16074626172542130452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347513 (n : ℕ) : ℤ :=
  A347513.P16074626172542130452.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347523.P15966424635658228568

`1-A209229(n)`
-/

namespace A347523.P15966424635658228568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A209229 n

end

end A347523.P15966424635658228568

noncomputable section

/-- A347523: Characteristic function of nonpowers of 2.

Offset 0, canonical program `A347523.P15966424635658228568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347523 (n : ℕ) : ℤ :=
  A347523.P15966424635658228568.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A347523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347677.P654563737045806307

`abs(A074764(n+1)+n*(6*n-2))`
-/

namespace A347677.P654563737045806307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074764 (n + 1) + (n : ℤ) * ((6 * n : ℤ) - 2)|

end

end A347677.P654563737045806307

noncomputable section

/-- A347677: Number of Baxter matrices of size 3 X n that contain n+2 1's.

Offset 1, canonical program `A347677.P654563737045806307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347677 (n : ℕ) : ℤ :=
  A347677.P654563737045806307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347922.P7757561087139527600

`A163274(n)-A331528(n)`
-/

namespace A347922.P7757561087139527600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163274 n - A331528 n

end

end A347922.P7757561087139527600

noncomputable section

/-- A347922: Number of minimal total dominating sets in the n X n rook complement graph.

Offset 1, canonical program `A347922.P7757561087139527600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347922 (n : ℕ) : ℤ :=
  A347922.P7757561087139527600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347991.P9259833225864137048

`∑{d}[n+1, A000079(A039653(#))]`
-/

namespace A347991.P9259833225864137048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (A039653 d).toNat

end

end A347991.P9259833225864137048

noncomputable section

/-- A347991: a(n) = Sum_{d|n} 2^(sigma(d) - 1).

Offset 1, canonical program `A347991.P9259833225864137048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A347991 (n : ℕ) : ℤ :=
  A347991.P9259833225864137048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A347991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347992.P11088332882146008864

`∑{d}[n+1, A000122(#)-1]`
-/

namespace A347992.P11088332882146008864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000122 d - 1)

end

end A347992.P11088332882146008864

noncomputable section

/-- A347992: a(n) = Sum_{d|n} (-1)^(tau(d) - 1).

Offset 1, canonical program `A347992.P11088332882146008864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347992 (n : ℕ) : ℤ :=
  A347992.P11088332882146008864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348161.P8282954228235957637

`A002265(2*(∏{e}[n+1, #+1]-1)²)+1`
-/

namespace A348161.P8282954228235957637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1) ^ 2).toNat + 1

end

end A348161.P8282954228235957637

noncomputable section

/-- A348161: Number of factorizations of (n,n) into one or two pairs (i,j) with i > 0, j > 0 (and if i=1 then j=1).

Offset 1, canonical program `A348161.P8282954228235957637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348161 (n : ℕ) : ℤ :=
  A348161.P8282954228235957637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348192.P7098657248156570778

`1+a(n-A066750(n))` with `a(0)=0, a(1)=1`
-/

namespace A348192.P7098657248156570778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A066750 n).toNat

end

end A348192.P7098657248156570778

noncomputable section

/-- A348192: a(0) = 0; for n >= 1, a(n) = 1 + a(n - GCD(n, digital sum(n))).

Offset 0, canonical program `A348192.P7098657248156570778`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348192 (n : ℕ) : ℤ :=
  (A348192.P7098657248156570778.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066750, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348223.P7000006909435948484

`∑{d}[n+1, -(-1)^A000203(#)]`
-/

namespace A348223.P7000006909435948484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-((-1 : ℚ) ^ (A000203 d : ℤ)))

end

end A348223.P7000006909435948484

noncomputable section

/-- A348223: a(n) = Sum_{d|n} (-1)^(sigma(d) - 1).

Offset 1, canonical program `A348223.P7000006909435948484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348223 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348223.P7000006909435948484.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348229.P9507779732379867744

`A266073(n)+A004275(A336705(n))`
-/

namespace A348229.P9507779732379867744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 n + A004275 (A336705 n).toNat

end

end A348229.P9507779732379867744

noncomputable section

/-- A348229: Coordination sequence for Wilkinson's 123-circle packing with respect to a circle of radius 2.

Offset 0, canonical program `A348229.P9507779732379867744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A348229 (n : ℕ) : ℤ :=
  A348229.P9507779732379867744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A348229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348231.P3163075773884361873

`A008458(n)+lcm(2, A042948(n))`
-/

namespace A348231.P3163075773884361873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (Int.lcm 2 (A042948 n) : ℤ)

end

end A348231.P3163075773884361873

noncomputable section

/-- A348231: Coordination sequence for Wilkinson's 123-circle packing with respect to a circle of radius 3.

Offset 0, canonical program `A348231.P3163075773884361873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348231 (n : ℕ) : ℤ :=
  A348231.P3163075773884361873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348236.P6960757931950138701

`A265227(n+1)+∑[A143432(n)]`
-/

namespace A348236.P6960757931950138701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348236.P6960757931950138701

noncomputable section

/-- A348236: Coordination sequence for the cpq net with respect to a node where a square, hexagon, and octagon meet.

Offset 0, canonical program `A348236.P6960757931950138701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348236 (n : ℕ) : ℤ :=
  A348236.P6960757931950138701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348257.P15552577477380916611

`A000554(n+4)/2`
-/

namespace A348257.P15552577477380916611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000554 (n + 4) : ℚ) / 2

end

end A348257.P15552577477380916611

noncomputable section

/-- A348257: Number of ways we can write [n] as the union of 2 sets of sizes i, j which intersect in exactly 2 elements (2 < i,j < n; i = j allowed).

Offset 4, canonical program `A348257.P15552577477380916611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348257.P15552577477380916611.a (n - 4))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348259.P10362202789070795068

`A063994(n+1)-1`
-/

namespace A348259.P10362202789070795068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1) - 1

end

end A348259.P10362202789070795068

noncomputable section

/-- A348259: Number of bases 1

Offset 1, canonical program `A348259.P10362202789070795068`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348259 (n : ℕ) : ℤ :=
  A348259.P10362202789070795068.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348349.P12517223108730079146

`∑{d}[n+1, #^A032741(#)]`
-/

namespace A348349.P12517223108730079146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A032741 d : ℤ)

end

end A348349.P12517223108730079146

noncomputable section

/-- A348349: a(n) = Sum_{d|n} d^(tau(d) - 1).

Offset 1, canonical program `A348349.P12517223108730079146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A348349 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348349.P12517223108730079146.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A348349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348363.P17555852829905755091

`or(a(floor(n/2)), A093178(n))` with `a(0)=0, a(1)=1`
-/

namespace A348363.P17555852829905755091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor (a ⌊(n : ℚ) / 2⌋.toNat) (A093178 n)

end

end A348363.P17555852829905755091

noncomputable section

/-- A348363: The 1's in the binary expansion of a(n) encode the distances between the 1's in the binary expansion of n.

Offset 0, canonical program `A348363.P17555852829905755091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A348363 (n : ℕ) : ℤ :=
  A348363.P17555852829905755091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A348363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348398.P4128592750755971602

`∑{d}[n+1, A055225(#)]`
-/

namespace A348398.P4128592750755971602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055225 d

end

end A348398.P4128592750755971602

noncomputable section

/-- A348398: a(n) = Sum_{d|n} sigma_[n/d](d), where sigma_[k](n) is the sum of the k-th powers of the divisors of n.

Offset 1, canonical program `A348398.P4128592750755971602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A348398 (n : ℕ) : ℤ :=
  A348398.P4128592750755971602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A348398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348540.P1296944890108127661

`∑[A023645(n+1)-∑{d}[n, (#%#²)%2]]`
-/

namespace A348540.P1296944890108127661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) - ((∑ d ∈ Nat.divisors (f2 n), d % d ^ 2 % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348540.P1296944890108127661

noncomputable section

/-- A348540: Number of partitions of n into 3 parts whose smallest part divides the largest part.

Offset 1, canonical program `A348540.P1296944890108127661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1903 terms. -/
def A348540 (n : ℕ) : ℤ :=
  A348540.P1296944890108127661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1903 terms. -/
def A348540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348542.P1268332564017095622

`∑[A008615(n)]-A005044(A141310(n))`
-/

namespace A348542.P1268332564017095622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005044 (A141310 n).toNat

end

end A348542.P1268332564017095622

noncomputable section

/-- A348542: Number of partitions of n into 3 parts where at least one part is even.

Offset 1, canonical program `A348542.P1268332564017095622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5664 terms. -/
def A348542 (n : ℕ) : ℤ :=
  A348542.P1268332564017095622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5664 terms. -/
def A348542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348543.P15095564787934928745

`round(A308422(n+1)/12)`
-/

namespace A348543.P15095564787934928745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A308422 (n + 1) : ℚ) / 12)

end

end A348543.P15095564787934928745

noncomputable section

/-- A348543: Number of partitions of n into 3 parts with at least 1 odd part.

Offset 1, canonical program `A348543.P15095564787934928745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5540 terms. -/
def A348543 (n : ℕ) : ℤ :=
  A348543.P15095564787934928745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5540 terms. -/
def A348543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348591.P3402861072940696725

`A000045(2*n)%A000045(n+2)`
-/

namespace A348591.P3402861072940696725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (2 * n)) (A000045 (n + 2))

end

end A348591.P3402861072940696725

noncomputable section

/-- A348591: a(n) = L(n)*L(n+1) mod F(n+2) where F=A000045 is the Fibonacci numbers and L = A000032 is the Lucas numbers.

Offset 0, canonical program `A348591.P3402861072940696725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A348591 (n : ℕ) : ℤ :=
  A348591.P3402861072940696725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A348591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348592.P14213497984520142954

`A001654(n)%A288219(n)`
-/

namespace A348592.P14213497984520142954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001654 n) (A288219 n)

end

end A348592.P14213497984520142954

noncomputable section

/-- A348592: a(n) = F(n)*F(n+1) mod L(n+2) where F=A000045 is the Fibonacci numbers and L = A000032 is the Lucas numbers.

Offset 0, canonical program `A348592.P14213497984520142954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A348592 (n : ℕ) : ℤ :=
  A348592.P14213497984520142954.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A348592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348718.P13129507020992002109

`lt[A000122(2*n), A291379(A032741(n))]`
-/

namespace A348718.P13129507020992002109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291379 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348718.P13129507020992002109

noncomputable section

/-- A348718: Numbers whose divisors can be partitioned into two disjoint sets without singletons whose arithmetic means are both integers.

Offset 1, canonical program `A348718.P13129507020992002109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A348718 (n : ℕ) : ℤ :=
  (A348718.P13129507020992002109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A348718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348864.P738975861915086032

`2*(A130783(n)+∑[n])`
-/

namespace A348864.P738975861915086032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A130783 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A348864.P738975861915086032

noncomputable section

/-- A348864: a(n) is the number of multiplications required to compute the permanent of general n X n matrices using trellis method with normalization.

Offset 1, canonical program `A348864.P738975861915086032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A348864 (n : ℕ) : ℤ :=
  A348864.P738975861915086032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A348864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348899.P2250712943153160686

`A020923(n+6)/2`
-/

namespace A348899.P2250712943153160686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020923 (n + 6) : ℚ) / 2

end

end A348899.P2250712943153160686

noncomputable section

/-- A348899: a(n) = 332640*4^n*Gamma(n + 1/2)/(sqrt(Pi)*Gamma(n + 7)); super ballot numbers, row 5 of A135573.

Offset 0, canonical program `A348899.P2250712943153160686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A348899 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348899.P2250712943153160686.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A348899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349055.P1187177284476940018

`A011782(n)-A349050(n)`
-/

namespace A349055.P1187177284476940018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A349050 n

end

end A349055.P1187177284476940018

noncomputable section

/-- A349055: Number of multisets of size n that have an alternating permutation and cover an initial interval of positive integers.

Offset 0, canonical program `A349055.P1187177284476940018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349055 (n : ℕ) : ℤ :=
  A349055.P1187177284476940018.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349050, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349055.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349118.P3928268946122988538

`A261327(n)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A349118.P3928268946122988538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A261327 n + a (n - 2)

end

end A349118.P3928268946122988538

noncomputable section

/-- A349118: Row sums of a triangle based on A261327.

Offset 2, canonical program `A349118.P3928268946122988538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349118 (n : ℕ) : ℤ :=
  A349118.P3928268946122988538.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349201.P17480398757070551637

`(A140106(n+1)²+n)*A008619(n)`
-/

namespace A349201.P17480398757070551637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140106 (n + 1) ^ 2 + (n : ℤ)) * A008619 n

end

end A349201.P17480398757070551637

noncomputable section

/-- A349201: a(n) = [x^n] ((x^2*(1 + 3*x + x^2 - 2*x^3 + 3*x^4 + x^5 - x^6))/((-1 + x)^4 *(1 + x)^3)).

Offset 1, canonical program `A349201.P17480398757070551637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349201 (n : ℕ) : ℤ :=
  A349201.P17480398757070551637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349281.P3498708002694954202

`∑{e}[n+1, A032741(#)+1]`
-/

namespace A349281.P3498708002694954202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A032741 (Nat.factorization (f1 n) p) + 1)

end

end A349281.P3498708002694954202

noncomputable section

/-- A349281: a(n) is the number of prime powers (not including 1) that are (1+e)-divisors of n.

Offset 1, canonical program `A349281.P3498708002694954202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349281 (n : ℕ) : ℤ :=
  A349281.P3498708002694954202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349371.P16064680490200094377

`∑{d}[n+1, A088705(#)*A140472((n+1)/#)]`
-/

namespace A349371.P16064680490200094377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088705 d * A140472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349371.P16064680490200094377

noncomputable section

/-- A349371: Inverse Möbius transform of Kimberling's paraphrase, A003602.

Offset 1, canonical program `A349371.P16064680490200094377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349371 (n : ℕ) : ℤ :=
  A349371.P16064680490200094377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349407.P7998382282558528925

`A005408(A014682(∑[n²-n]%(n+2)))`
-/

namespace A349407.P7998382282558528925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A014682 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)).toNat).toNat

end

end A349407.P7998382282558528925

noncomputable section

/-- A349407: The Farkas map: a(n) = x/3 if x mod 3 = 0; a(n) = (3x+1)/2 if x mod 3 <> 0 and x mod 4 = 3; a(n) = (x+1)/2 if x mod 3 <> 0 and x mod 4 = 1, where x = 2*n-1.

Offset 1, canonical program `A349407.P7998382282558528925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6669 terms. -/
def A349407 (n : ℕ) : ℤ :=
  A349407.P7998382282558528925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6669 terms. -/
def A349407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349431.P2521683173006061280

`-A297381(n+1)`
-/

namespace A349431.P2521683173006061280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A297381 (n + 1)

end

end A349431.P2521683173006061280

noncomputable section

/-- A349431: Dirichlet convolution of A003602 (a Kimberling paraphrase) with A055615 (Dirichlet inverse of n).

Offset 1, canonical program `A349431.P2521683173006061280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297381, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349431 (n : ℕ) : ℤ :=
  A349431.P2521683173006061280.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297381, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A349431.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349441.P5214992969954165573

`∑{d}[n+1, A055615(#)*A057521((n+1)/#)]`
-/

namespace A349441.P5214992969954165573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A057521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349441.P5214992969954165573

noncomputable section

/-- A349441: Dirichlet convolution of A057521 (powerful part of n) with A055615 (Dirichlet inverse of n).

Offset 1, canonical program `A349441.P5214992969954165573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349441 (n : ℕ) : ℤ :=
  A349441.P5214992969954165573.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349447.P12875644134240434181

`(n+1)%2*A297381(2*(n+1))`
-/

namespace A349447.P12875644134240434181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A297381 (2 * (n + 1))

end

end A349447.P12875644134240434181

noncomputable section

/-- A349447: Dirichlet convolution of A003602 (a Kimberling paraphrase) with A326937 (Dirichlet inverse of A000265).

Offset 1, canonical program `A349447.P12875644134240434181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349447 (n : ℕ) : ℤ :=
  A349447.P12875644134240434181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349481.P15962565931806030689

`floor(log2((n+1)*A062383(n)))`
-/

namespace A349481.P15962565931806030689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ((n + 1 : ℤ) * A062383 n).toNat

end

end A349481.P15962565931806030689

noncomputable section

/-- A349481: a(n) is the number of Boolean factors of the contranominal scale of size n by the GreConD algorithm for Boolean matrix factorization.

Offset 1, canonical program `A349481.P15962565931806030689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349481 (n : ℕ) : ℤ :=
  (A349481.P15962565931806030689.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349594.P4257607475680426906

`a(n-1)+A018903(n)+a(n-1)` with `a(0)=1`
-/

namespace A349594.P4257607475680426906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A018903 n + a (n - 1))

end

end A349594.P4257607475680426906

noncomputable section

/-- A349594: Number of 2 X n mazes that can be navigated from the top left corner to the bottom right corner.

Offset 1, canonical program `A349594.P4257607475680426906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A349594 (n : ℕ) : ℤ :=
  A349594.P4257607475680426906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A349594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349662.P6895351482226976908

`(n²-n)%(A084535(n)+1)`
-/

namespace A349662.P6895351482226976908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - (n : ℤ)) (A084535 n + 1)

end

end A349662.P6895351482226976908

noncomputable section

/-- A349662: a(n) is the number of squares strictly between n^2 and n^3.

Offset 0, canonical program `A349662.P6895351482226976908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349662 (n : ℕ) : ℤ :=
  A349662.P6895351482226976908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349666.P14459113287289377070

`∩[A001132(n+1), A034934(n+1)]`
-/

namespace A349666.P14459113287289377070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349666.P14459113287289377070

noncomputable section

/-- A349666: Primes of the form 4*k+3 that are still a prime of the form 4*k+3 after 2 Collatz steps.

Offset 1, canonical program `A349666.P14459113287289377070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 826 terms. -/
def A349666 (n : ℕ) : ℤ :=
  (A349666.P14459113287289377070.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 826 terms. -/
def A349666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349711.P16256368162303358446

`∑{d}[n+1, A001414(#)*A001414((n+1)/#)]`
-/

namespace A349711.P16256368162303358446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001414 d * A001414 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349711.P16256368162303358446

noncomputable section

/-- A349711: a(n) = Sum_{d|n} sopfr(d) * sopfr(n/d).

Offset 1, canonical program `A349711.P16256368162303358446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349711 (n : ℕ) : ℤ :=
  A349711.P16256368162303358446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349824.P1865946658813482912

`∑{e}[n, #*A001414(n)]`
-/

namespace A349824.P1865946658813482912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℤ) * A001414 n

end

end A349824.P1865946658813482912

noncomputable section

/-- A349824: a(0) = 0; for n >= 1, a(n) = (number of prime factors, counted with repetition) * (sum of prime factors, counted with repetition).

Offset 0, canonical program `A349824.P1865946658813482912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349824 (n : ℕ) : ℤ :=
  A349824.P1865946658813482912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349993.P9722615795151588761

`abs(A000093(n)+1-n)`
-/

namespace A349993.P9722615795151588761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000093 n + (1 - (n : ℤ))|

end

end A349993.P9722615795151588761

noncomputable section

/-- A349993: a(n) is the number of squares k^2 with n^2 <= k^2 <= n^3.

Offset 0, canonical program `A349993.P9722615795151588761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349993 (n : ℕ) : ℤ :=
  A349993.P9722615795151588761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350044.P9518103623702551074

`A181762(a(n-1))` with `a(0)=187`
-/

namespace A350044.P9518103623702551074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [187] fun n a =>
  A181762 (a (n - 1)).toNat

end

end A350044.P9518103623702551074

noncomputable section

/-- A350044: Loop starting at 187 in the Collatz-like map {x -> 3x+5 if x is odd, x/2 otherwise}.

Offset 1, canonical program `A350044.P9518103623702551074`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350044 (n : ℕ) : ℤ :=
  A350044.P9518103623702551074.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350044.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350050.P15057317119390519320

`A002415(n)-A030179(n)`
-/

namespace A350050.P15057317119390519320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n - A030179 n

end

end A350050.P15057317119390519320

noncomputable section

/-- A350050: a(n) = (2*n^4 - 6*(-1)^n*n^2 - 2*n^2 + 3*(-1)^n - 3)/96.

Offset 0, canonical program `A350050.P15057317119390519320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350050 (n : ℕ) : ℤ :=
  A350050.P15057317119390519320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350105.P14782711713728949417

`2^n-A350102(n)`
-/

namespace A350105.P14782711713728949417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A350102 n

end

end A350105.P14782711713728949417

noncomputable section

/-- A350105: Number of subsets of the initial segment of the natural numbers strictly below n which are not self-measuring. Number of subsets S of [n] with S != distset(S).

Offset 0, canonical program `A350105.P14782711713728949417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350105 (n : ℕ) : ℤ :=
  A350105.P14782711713728949417.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350102, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350123.P1025017910805116333

`2*A143128(n+1)-A064602(n+1)`
-/

namespace A350123.P1025017910805116333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143128 (n + 1) - A064602 (n + 1)

end

end A350123.P1025017910805116333

noncomputable section

/-- A350123: a(n) = Sum_{k=1..n} k^2 * floor(n/k)^2.

Offset 1, canonical program `A350123.P1025017910805116333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A143128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350123 (n : ℕ) : ℤ :=
  A350123.P1025017910805116333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A143128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350123.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350124.P3463729421972566049

`A064602(n+1)-3*A143128(n+1)+3*A319085(n+1)`
-/

namespace A350124.P3463729421972566049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (n + 1) - 3 * A143128 (n + 1) + 3 * A319085 (n + 1)

end

end A350124.P3463729421972566049

noncomputable section

/-- A350124: a(n) = Sum_{k=1..n} k^2 * floor(n/k)^3.

Offset 1, canonical program `A350124.P3463729421972566049`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A143128, A319085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350124 (n : ℕ) : ℤ :=
  A350124.P3463729421972566049.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A143128, A319085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350156.P11009244864672196317

`∑{d}[n+1, A001158(#)*A055615((n+1)/#)]`
-/

namespace A350156.P11009244864672196317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A350156.P11009244864672196317

noncomputable section

/-- A350156: Inverse Moebius transform of A000056.

Offset 1, canonical program `A350156.P11009244864672196317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350156 (n : ℕ) : ℤ :=
  A350156.P11009244864672196317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350168.P5756815979313615881

`(a(n-1)+1)*A093521(n+2)` with `a(0)=0`
-/

namespace A350168.P5756815979313615881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) * A093521 (n + 2)

end

end A350168.P5756815979313615881

noncomputable section

/-- A350168: Count from 0 to 1st prime 2, then from 0 to 2nd prime 3, then from 0 to 3rd prime 5, etc ...

Offset 1, canonical program `A350168.P5756815979313615881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350168 (n : ℕ) : ℤ :=
  A350168.P5756815979313615881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350171.P4046012062415380572

`A107623(n+1)-2`
-/

namespace A350171.P4046012062415380572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107623 (n + 1) - 2

end

end A350171.P4046012062415380572

noncomputable section

/-- A350171: Add 1 to the 1st prime, then write the 2nd prime, then add 1 to the 3rd prime, then write the 4th prime, etc., alternately adding a 1 or not.

Offset 1, canonical program `A350171.P4046012062415380572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350171 (n : ℕ) : ℤ :=
  A350171.P4046012062415380572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350174.P7572847409487358877

`A083375(n+1)-1`
-/

namespace A350174.P7572847409487358877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (n + 1) - 1

end

end A350174.P7572847409487358877

noncomputable section

/-- A350174: For k = 0, 1, 2, 3, ... write k prime(k+1) times.

Offset 0, canonical program `A350174.P7572847409487358877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350174 (n : ℕ) : ℤ :=
  A350174.P7572847409487358877.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350174.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350178.P11864612683570022047

`A053186(n)+a(A053186(n))` with `a(0)=0`
-/

namespace A350178.P11864612683570022047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053186 n + a (A053186 n).toNat

end

end A350178.P11864612683570022047

noncomputable section

/-- A350178: Take n and subtract the greatest square less than or equal to n. Repeat this process until 0 is reached. a(n) is the sum of all residues after subtractions.

Offset 0, canonical program `A350178.P11864612683570022047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A350178 (n : ℕ) : ℤ :=
  A350178.P11864612683570022047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A350178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350180.P8556333983247556014

`eq[A031346(n+1), A086299(n+1)]+1`
-/

namespace A350180.P8556333983247556014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A350180.P8556333983247556014

noncomputable section

/-- A350180: Numbers of multiplicative persistence 1 which are themselves the product of digits of a number.

Offset 1, canonical program `A350180.P8556333983247556014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A350180 (n : ℕ) : ℤ :=
  (A350180.P8556333983247556014.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A350180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350498.P13190707949906447438

`∑[∑[A052544(n)-1]]`
-/

namespace A350498.P13190707949906447438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052544 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A350498.P13190707949906447438

noncomputable section

/-- A350498: Convolution of triangular numbers with every third number of Narayana's Cows sequence.

Offset 1, canonical program `A350498.P13190707949906447438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A350498 (n : ℕ) : ℤ :=
  A350498.P13190707949906447438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A350498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350526.P13658088115678277765

`A022344(n)+n²`
-/

namespace A350526.P13658088115678277765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022344 n + (n ^ 2 : ℤ)

end

end A350526.P13658088115678277765

noncomputable section

/-- A350526: a(n) = f(n*r)*c(n/r), where f = floor, c = ceiling, and r = golden ratio (A001622).

Offset 1, canonical program `A350526.P13658088115678277765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350526 (n : ℕ) : ℤ :=
  A350526.P13658088115678277765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350716.P2280599244012614968

`A289207(Δ[A011858(n)])+4`
-/

namespace A350716.P2280599244012614968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (f1 (n + 1) - f1 n).toNat + 4

end

end A350716.P2280599244012614968

noncomputable section

/-- A350716: a(n) is the minimum number of vertices of degree 3 over all 3-collapsible graphs with n vertices.

Offset 4, canonical program `A350716.P2280599244012614968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350716 (n : ℕ) : ℤ :=
  A350716.P2280599244012614968.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350744.P11447582772980610095

`lt[1, n*A055641(2*n)]`
-/

namespace A350744.P11447582772980610095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055641 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A350744.P11447582772980610095

noncomputable section

/-- A350744: Numbers m such that A061078(m)/A061077(m) = 4/5.

Offset 1, canonical program `A350744.P11447582772980610095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A350744 (n : ℕ) : ℤ :=
  (A350744.P11447582772980610095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A350744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350757.P4246092907226777426

`A000194(A080352(n))+n+1`
-/

namespace A350757.P4246092907226777426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A080352 n).toNat + (n + 1 : ℤ)

end

end A350757.P4246092907226777426

noncomputable section

/-- A350757: a(1)=1; for n>1, a(n) is the smallest number k > a(n-1) such that a(n-1) + k is not a square.

Offset 1, canonical program `A350757.P4246092907226777426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350757 (n : ℕ) : ℤ :=
  A350757.P4246092907226777426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351219.P13138103287685954575

`∏{e}[n+1, A000045(#+1)]`
-/

namespace A351219.P13138103287685954575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000045 (Nat.factorization (f1 n) p + 1)

end

end A351219.P13138103287685954575

noncomputable section

/-- A351219: Multiplicative with a(p^e) = Fibonacci(e+1).

Offset 1, canonical program `A351219.P13138103287685954575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351219 (n : ℕ) : ℤ :=
  A351219.P13138103287685954575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351301.P9303873280763895543

`∑{d}[n+1, A013954(#)*A271102((n+1)/#)]`
-/

namespace A351301.P9303873280763895543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013954 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351301.P9303873280763895543

noncomputable section

/-- A351301: a(n) = n^6 * Product_{p|n, p prime} (1 + 1/p^6).

Offset 1, canonical program `A351301.P9303873280763895543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351301 (n : ℕ) : ℤ :=
  A351301.P9303873280763895543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351302.P18255514828067393302

`∑{d}[n+1, A013955(#)*A271102((n+1)/#)]`
-/

namespace A351302.P18255514828067393302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013955 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351302.P18255514828067393302

noncomputable section

/-- A351302: a(n) = n^7 * Product_{p|n, p prime} (1 + 1/p^7).

Offset 1, canonical program `A351302.P18255514828067393302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351302 (n : ℕ) : ℤ :=
  A351302.P18255514828067393302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351303.P2033963506772646915

`∑{d}[n+1, A013956(#)*A271102((n+1)/#)]`
-/

namespace A351303.P2033963506772646915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013956 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351303.P2033963506772646915

noncomputable section

/-- A351303: a(n) = n^8 * Product_{p|n, p prime} (1 + 1/p^8).

Offset 1, canonical program `A351303.P2033963506772646915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351303 (n : ℕ) : ℤ :=
  A351303.P2033963506772646915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351304.P9525013816830147739

`∑{d}[n+1, A013957(#)*A271102((n+1)/#)]`
-/

namespace A351304.P9525013816830147739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013957 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351304.P9525013816830147739

noncomputable section

/-- A351304: a(n) = n^9 * Product_{p|n, p prime} (1 + 1/p^9).

Offset 1, canonical program `A351304.P9525013816830147739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351304 (n : ℕ) : ℤ :=
  A351304.P9525013816830147739.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351305.P16853981285898326094

`∑{d}[n+1, A013958(#)*A271102((n+1)/#)]`
-/

namespace A351305.P16853981285898326094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013958 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351305.P16853981285898326094

noncomputable section

/-- A351305: a(n) = n^10 * Product_{p|n, p prime} (1 + 1/p^10).

Offset 1, canonical program `A351305.P16853981285898326094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351305 (n : ℕ) : ℤ :=
  A351305.P16853981285898326094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351346.P16581531357157592439

`∏{e}[n+1, A135153(#+2+#)]`
-/

namespace A351346.P16581531357157592439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A135153 (Nat.factorization (f1 n) p + 2 + Nat.factorization (f1 n) p)

end

end A351346.P16581531357157592439

noncomputable section

/-- A351346: Dirichlet g.f.: Product_{p prime} 1 / (1 - 2*p^(-s) - p^(-2*s)).

Offset 1, canonical program `A351346.P16581531357157592439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351346 (n : ℕ) : ℤ :=
  A351346.P16581531357157592439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351347.P9055905562085997896

`∏{e}[n+1, A004396(A000079(#))]`
-/

namespace A351347.P9055905562085997896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A004396 (A000079 (Nat.factorization (f1 n) p)).toNat

end

end A351347.P9055905562085997896

noncomputable section

/-- A351347: Dirichlet g.f.: Product_{p prime} 1 / (1 - p^(-s) - 2*p^(-2*s)).

Offset 1, canonical program `A351347.P9055905562085997896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351347 (n : ℕ) : ℤ :=
  A351347.P9055905562085997896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351368.P4651679990209319746

`∑{p}[n+1, A000040(#)]`
-/

namespace A351368.P4651679990209319746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000040 p

end

end A351368.P4651679990209319746

noncomputable section

/-- A351368: a(n) = Sum_{p|n, p prime} prime(p).

Offset 1, canonical program `A351368.P4651679990209319746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351368 (n : ℕ) : ℤ :=
  A351368.P4651679990209319746.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351608.P2991250227882417481

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], A000584((n+1)/#)²]`
-/

namespace A351608.P2991250227882417481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000584 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2

end

end A351608.P2991250227882417481

noncomputable section

/-- A351608: a(n) = n^10 * Sum_{d^2|n} 1 / d^10.

Offset 1, canonical program `A351608.P2991250227882417481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351608 (n : ℕ) : ℤ :=
  A351608.P2991250227882417481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A351608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351632.P12691158943923754710

`∑[2*n]*A290031(n)`
-/

namespace A351632.P12691158943923754710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A290031 n

end

end A351632.P12691158943923754710

noncomputable section

/-- A351632: Number of copies of the star graph S(2,1,1,1) contained in the n-dimensional hypercube graph.

Offset 1, canonical program `A351632.P12691158943923754710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A351632 (n : ℕ) : ℤ :=
  A351632.P12691158943923754710.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 293 terms. -/
def A351632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351655.P9261021295990022912

`∏{e}[n+1, A000073(#+2)]`
-/

namespace A351655.P9261021295990022912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000073 (Nat.factorization (f1 n) p + 2)

end

end A351655.P9261021295990022912

noncomputable section

/-- A351655: Dirichlet g.f.: Product_{p prime} 1 / (1 - p^(-s) - p^(-2*s) - p^(-3*s)).

Offset 1, canonical program `A351655.P9261021295990022912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351655 (n : ℕ) : ℤ :=
  A351655.P9261021295990022912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351656.P7142552291936618535

`∏{e}[n+1, A000078(#+3)]`
-/

namespace A351656.P7142552291936618535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000078 (Nat.factorization (f1 n) p + 3)

end

end A351656.P7142552291936618535

noncomputable section

/-- A351656: Dirichlet g.f.: Product_{p prime} 1 / (1 - p^(-s) - p^(-2*s) - p^(-3*s) - p^(-4*s)).

Offset 1, canonical program `A351656.P7142552291936618535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351656 (n : ℕ) : ℤ :=
  A351656.P7142552291936618535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351704.P17094281031323990313

`a(n-2)+(n+1)*∑[(n+1)%2]-A008851(n+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A351704.P17094281031323990313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 2) + (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A008851 (n + 1)

end

end A351704.P17094281031323990313

noncomputable section

/-- A351704: Sums of the ascending diagonals of the triangle A162609.

Offset 0, canonical program `A351704.P17094281031323990313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351704 (n : ℕ) : ℤ :=
  A351704.P17094281031323990313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351860.P9154549776942829999

`C(n+1-C(n, A000045(n)), 3)`
-/

namespace A351860.P9154549776942829999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) - (Nat.choose n (A000045 n).toNat : ℤ)).toNat 3

end

end A351860.P9154549776942829999

noncomputable section

/-- A351860: Number of minimum cyclic edge cuts in the complete graph K_n.

Offset 1, canonical program `A351860.P9154549776942829999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A351860 (n : ℕ) : ℤ :=
  (A351860.P9154549776942829999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A351860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351911.P11870818524774398122

`A201052(n+3)+1`
-/

namespace A351911.P11870818524774398122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201052 (n + 3) + 1

end

end A351911.P11870818524774398122

noncomputable section

/-- A351911: a(n) is the least integer m such that every m-element subset of {1,2,3,...,n} contains two nonempty and disjoint subsets whose sums are equal.

Offset 3, canonical program `A351911.P11870818524774398122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A351911 (n : ℕ) : ℤ :=
  A351911.P11870818524774398122.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A351911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351990.P2498827943485649658

`∏[A093178(n+1)]*A057979(n+1)`
-/

namespace A351990.P2498827943485649658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A057979 (n + 1)

end

end A351990.P2498827943485649658

noncomputable section

/-- A351990: Number of minimum edge covers of the complete graph K_n.

Offset 1, canonical program `A351990.P2498827943485649658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A351990 (n : ℕ) : ℤ :=
  A351990.P2498827943485649658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A351990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352025.P5236377188026105770

`A000196(A138636(n+1))`
-/

namespace A352025.P5236377188026105770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A138636 (n + 1)).toNat

end

end A352025.P5236377188026105770

noncomputable section

/-- A352025: a(n) = floor(sqrt(6*prime(n))).

Offset 1, canonical program `A352025.P5236377188026105770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352025 (n : ℕ) : ℤ :=
  A352025.P5236377188026105770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352025.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352027.P1864772858444310282

`abs((n+1)²-A001405(2*n+1)-n)`
-/

namespace A352027.P1864772858444310282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) - A001405 (2 * n + 1) - (n : ℤ)|

end

end A352027.P1864772858444310282

noncomputable section

/-- A352027: a(n) = binomial(2*n-1,n) - n*(n-1) - 1.

Offset 1, canonical program `A352027.P1864772858444310282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A352027 (n : ℕ) : ℤ :=
  A352027.P1864772858444310282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A352027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352038.P7036957073090346210

`A321814(n+1)%((n+1)^10)`
-/

namespace A352038.P7036957073090346210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321814 (n + 1)) ((n + 1) ^ 10 : ℤ)

end

end A352038.P7036957073090346210

noncomputable section

/-- A352038: Sum of the 10th powers of the odd proper divisors of n.

Offset 1, canonical program `A352038.P7036957073090346210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352038 (n : ℕ) : ℤ :=
  A352038.P7036957073090346210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352048.P3191364398666331331

`∑{d}[2*(n+1), ((n+1)%#)²]-A059841(n)`
-/

namespace A352048.P3191364398666331331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) % d) ^ 2 : ℕ) : ℤ) - A059841 n

end

end A352048.P3191364398666331331

noncomputable section

/-- A352048: Sum of the squares of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352048.P3191364398666331331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352048 (n : ℕ) : ℤ :=
  A352048.P3191364398666331331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352050.P15015319135469987884

`A285989(n+1)-A059841(n)`
-/

namespace A352050.P15015319135469987884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285989 (n + 1) - A059841 n

end

end A352050.P15015319135469987884

noncomputable section

/-- A352050: Sum of the 4th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352050.P15015319135469987884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352050 (n : ℕ) : ℤ :=
  A352050.P15015319135469987884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352053.P6078953008853898522

`∑{d}[2*(n+1), ((n+1)%#)^7]-∑[A033999(n)]`
-/

namespace A352053.P6078953008853898522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) % d) ^ 7 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A352053.P6078953008853898522

noncomputable section

/-- A352053: Sum of the 7th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352053.P6078953008853898522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352053 (n : ℕ) : ℤ :=
  A352053.P6078953008853898522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352055.P12489183540481430139

`∑{d}[2*(n+1), ((n+1)%#)^9]-A059841(n)`
-/

namespace A352055.P12489183540481430139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((n + 1) % d) ^ 9 : ℕ) : ℤ) - A059841 n

end

end A352055.P12489183540481430139

noncomputable section

/-- A352055: Sum of the 9th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352055.P12489183540481430139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352055 (n : ℕ) : ℤ :=
  A352055.P12489183540481430139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352056.P3608796847223978157

`A321819(n+1)-A059841(n)`
-/

namespace A352056.P3608796847223978157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321819 (n + 1) - A059841 n

end

end A352056.P3608796847223978157

noncomputable section

/-- A352056: Sum of the 10th powers of the divisor complements of the odd proper divisors of n.

Offset 1, canonical program `A352056.P3608796847223978157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352056 (n : ℕ) : ℤ :=
  A352056.P3608796847223978157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352172.P16430294877662207818

`A051801(n+1)^3`
-/

namespace A352172.P16430294877662207818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (n + 1) ^ 3

end

end A352172.P16430294877662207818

noncomputable section

/-- A352172: a(n) is the product of the cubes of the nonzero digits of n.

Offset 1, canonical program `A352172.P16430294877662207818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352172 (n : ℕ) : ℤ :=
  A352172.P16430294877662207818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352718.P13280100042369097914

`A000093(n)-floor(sqrt(n))^3`
-/

namespace A352718.P13280100042369097914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n - (Nat.sqrt n ^ 3 : ℤ)

end

end A352718.P13280100042369097914

noncomputable section

/-- A352718: a(n) = floor(n^(3/2)) - floor(n^(1/2))^3.

Offset 0, canonical program `A352718.P13280100042369097914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352718 (n : ℕ) : ℤ :=
  A352718.P13280100042369097914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352758.P13521253672130129508

`A352757(n+1)-2*n-1`
-/

namespace A352758.P13521253672130129508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352757 (n + 1) - (2 * n : ℤ) - 1

end

end A352758.P13521253672130129508

noncomputable section

/-- A352758: a(n) = (3*(2*n - 1)^2*((2*n - 1)^2 + 2) - 2*n + 3)/2 for n > 0.

Offset 1, canonical program `A352758.P13521253672130129508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352757, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352758 (n : ℕ) : ℤ :=
  A352758.P13521253672130129508.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A352757, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A352758.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A352996.P6063555587499060284

`C(n+3, 2)%A001414(n+2)`
-/

namespace A352996.P6063555587499060284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (n + 3) 2 : ℤ) (A001414 (n + 2))

end

end A352996.P6063555587499060284

noncomputable section

/-- A352996: a(n) = n*(n+1)/2 mod (sum (with multiplicity) of prime factors of n).

Offset 2, canonical program `A352996.P6063555587499060284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352996 (n : ℕ) : ℤ :=
  A352996.P6063555587499060284.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A352996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353157.P4330905322786453850

`A060973(3*n+1)-n`
-/

namespace A353157.P4330905322786453850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (3 * n + 1) - (n : ℤ)

end

end A353157.P4330905322786453850

noncomputable section

/-- A353157: a(n) is the distance from n to the nearest integer whose binary expansion has no common 1-bits with that of n.

Offset 0, canonical program `A353157.P4330905322786453850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A353157 (n : ℕ) : ℤ :=
  A353157.P4330905322786453850.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A353157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353313.P6782100894332009569

`A353327(n)+A051176(n)`
-/

namespace A353313.P6782100894332009569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353327 n + A051176 n

end

end A353313.P6782100894332009569

noncomputable section

/-- A353313: If n is of the form 3k, then a(n) = k, and if n is of the form 3k+r, with r = 1 or 2, then a(n) = 5*k + 3 + r.

Offset 0, canonical program `A353313.P6782100894332009569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353313 (n : ℕ) : ℤ :=
  A353313.P6782100894332009569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353670.P17045062251713275178

`C(C(2, A069283(n+1)), 2)`
-/

namespace A353670.P17045062251713275178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A069283 (n + 1)).toNat) 2

end

end A353670.P17045062251713275178

noncomputable section

/-- A353670: a(n) = 1 if the odd part of n is a prime, otherwise 0.

Offset 1, canonical program `A353670.P17045062251713275178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353670 (n : ℕ) : ℤ :=
  (A353670.P17045062251713275178.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353688.P4343176064690707847

`gcd(n, ∑{d}[n, A193356(#)])`
-/

namespace A353688.P4343176064690707847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (∑ d ∈ Nat.divisors (f1 n), A193356 d)

end

end A353688.P4343176064690707847

noncomputable section

/-- A353688: a(n) = n / A098988(n).

Offset 0, canonical program `A353688.P4343176064690707847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353688 (n : ℕ) : ℤ :=
  (A353688.P4343176064690707847.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353810.P10357715078653884361

`A000035(A058063(n+1))`
-/

namespace A353810.P10357715078653884361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A058063 (n + 1)).toNat

end

end A353810.P10357715078653884361

noncomputable section

/-- A353810: a(n) = 1 if sigma(n) has an odd number of prime factors (with multiplicity), and 0 otherwise. Here sigma is the sum of divisors function.

Offset 1, canonical program `A353810.P10357715078653884361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353810 (n : ℕ) : ℤ :=
  A353810.P10357715078653884361.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354030.P11955667333585020957

`A010055(n+1)*A121262(n)`
-/

namespace A354030.P11955667333585020957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A121262 n

end

end A354030.P11955667333585020957

noncomputable section

/-- A354030: a(n) = 1 if n is either 1 or a prime power of the form 4m+1, otherwise 0.

Offset 1, canonical program `A354030.P11955667333585020957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354030 (n : ℕ) : ℤ :=
  A354030.P11955667333585020957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354044.P16638237724689839295

`a(n-1)+a(n-2)+A000032(n)` with `a(0)=0, a(1)=2`
-/

namespace A354044.P16638237724689839295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + a (n - 2) + A000032 n

end

end A354044.P16638237724689839295

noncomputable section

/-- A354044: a(n) = 2*(-i)^n*(n*sin(c*(n+1)) - i*sin(-c*n))/sqrt(5) where c = arccos(i/2).

Offset 0, canonical program `A354044.P16638237724689839295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A354044 (n : ℕ) : ℤ :=
  A354044.P16638237724689839295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A354044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354097.P8074580162745031331

`A000007(and(3, 1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n))`
-/

namespace A354097.P8074580162745031331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land 3 (SequenceMachineLib.roundAway (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)))).toNat

end

end A354097.P8074580162745031331

noncomputable section

/-- A354097: a(n) = 1 if n-phi(n) is a multiple of 4, otherwise 0.

Offset 1, canonical program `A354097.P8074580162745031331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354097 (n : ℕ) : ℤ :=
  A354097.P8074580162745031331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354182.P4183270851239720983

`2*n-and(3*n, A003817(n))`
-/

namespace A354182.P4183270851239720983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.land (3 * n : ℤ) (A003817 n)

end

end A354182.P4183270851239720983

noncomputable section

/-- A354182: Lexicographically earliest sequence of distinct nonnegative integers such that for any n >= 0, the binary expansions of n and n + a(n) have no 1's in common.

Offset 0, canonical program `A354182.P4183270851239720983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354182 (n : ℕ) : ℤ :=
  A354182.P4183270851239720983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354184.P10815399711426922392

`(A007947(31*a(n-1))+A007947(31*a(n-2)))/31` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354184.P10815399711426922392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A007947 (SequenceMachineLib.roundAway (31 * a (n - 1))).toNat + A007947 (SequenceMachineLib.roundAway (31 * a (n - 2))).toNat : ℚ) / 31

end

end A354184.P10815399711426922392

noncomputable section

/-- A354184: a(1) = a(2) = 1, a(n) = (A007947(31*a(n-1)) + A007947(31*a(n-2)))/31 for n >= 3, i.e., 31*a(n) is the largest squarefree divisor of 31*a(n-1) plus the largest squarefree divisor of 31*a(n-2).

Offset 1, canonical program `A354184.P10815399711426922392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354184 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A354184.P10815399711426922392.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354356.P6972406899638248837

`record[(n+1)*A354355(n+1)]`
-/

namespace A354356.P6972406899638248837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354356.P6972406899638248837

noncomputable section

/-- A354356: Numbers k such that sigma(k) is 3-smooth (has no larger prime factors than 3).

Offset 1, canonical program `A354356.P6972406899638248837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1213 terms. -/
def A354356 (n : ℕ) : ℤ :=
  A354356.P6972406899638248837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1213 terms. -/
def A354356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354384.P17452812884453466185

`A036580(n)+2`
-/

namespace A354384.P17452812884453466185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 n + 2

end

end A354384.P17452812884453466185

noncomputable section

/-- A354384: Difference sequence of A356133.

Offset 1, canonical program `A354384.P17452812884453466185`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354384 (n : ℕ) : ℤ :=
  A354384.P17452812884453466185.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354384.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A354529.P3833932243557362193

`A016777(A074148(n+1))-char[1]+n-1`
-/

namespace A354529.P3833932243557362193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A074148 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((n : ℤ) - 1)

end

end A354529.P3833932243557362193

noncomputable section

/-- A354529: a(1) = 3, a(2) = 12 and a(n) = (3n^2+8n-2)/2 if n is even or = (3n^2+8n-5)/2, if n is odd, for n >= 3.

Offset 1, canonical program `A354529.P3833932243557362193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A354529 (n : ℕ) : ℤ :=
  A354529.P3833932243557362193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A354529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354927.P9536107206795731212

`val(A140482(n+1), n+3)`
-/

namespace A354927.P9536107206795731212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A140482 (n + 1)).toNat (n + 3)

end

end A354927.P9536107206795731212

noncomputable section

/-- A354927: a(n) = 1 if the product of divisors of n is n^2, otherwise 0.

Offset 1, canonical program `A354927.P9536107206795731212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354927 (n : ℕ) : ℤ :=
  (A354927.P9536107206795731212.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354982.P1033425350819671687

`A069513(n+1)*A079978(n)`
-/

namespace A354982.P1033425350819671687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A079978 n

end

end A354982.P1033425350819671687

noncomputable section

/-- A354982: a(n) = 1 if n is a prime power congruent to 1 (mod 3), otherwise 0.

Offset 1, canonical program `A354982.P1033425350819671687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354982 (n : ℕ) : ℤ :=
  A354982.P1033425350819671687.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A354982.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355058.P17814861015086141742

`filter[(n+1)², A353470(#)]`
-/

namespace A355058.P17814861015086141742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j) = 1) n)

end

end A355058.P17814861015086141742

noncomputable section

/-- A355058: Numbers m such that d(m) mod 6 = 3, where d(m) is the number of divisors of m.

Offset 1, canonical program `A355058.P17814861015086141742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A355058 (n : ℕ) : ℤ :=
  (A355058.P17814861015086141742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. -/
def A355058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355067.P6989031738138831130

`A354779(n)+A059169(n+1)`
-/

namespace A355067.P6989031738138831130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354779 n + A059169 (n + 1)

end

end A355067.P6989031738138831130

noncomputable section

/-- A355067: a(n) is the failed skew zero forcing number of P^3_n.

Offset 3, canonical program `A355067.P6989031738138831130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355067 (n : ℕ) : ℤ :=
  A355067.P6989031738138831130.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355331.P12013593539177747913

`record[gcd(n+1, A020696(n+1))]`
-/

namespace A355331.P12013593539177747913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A020696 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355331.P12013593539177747913

noncomputable section

/-- A355331: Numbers k that divide A020696(k).

Offset 1, canonical program `A355331.P12013593539177747913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A355331 (n : ℕ) : ℤ :=
  (A355331.P12013593539177747913.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A355331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355538.P14887925225814743849

`A013939(n+1)-n`
-/

namespace A355538.P14887925225814743849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) - (n : ℤ)

end

end A355538.P14887925225814743849

noncomputable section

/-- A355538: Partial sum of A001221 (number of distinct prime factors) minus 1, ranging from 2 to n.

Offset 1, canonical program `A355538.P14887925225814743849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355538 (n : ℕ) : ℤ :=
  A355538.P14887925225814743849.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A355538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A355551.P7415999335689845226

`A047520(n)+A008619(n)`
-/

namespace A355551.P7415999335689845226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047520 n + A008619 n

end

end A355551.P7415999335689845226

noncomputable section

/-- A355551: Number of ways to select 3 or more collinear points from a 3 X n grid.

Offset 1, canonical program `A355551.P7415999335689845226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A355551 (n : ℕ) : ℤ :=
  A355551.P7415999335689845226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A355551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355552.P2723832558211808872

`∑[A366619(n+1)+A125128(n+1)]`
-/

namespace A355552.P2723832558211808872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366619 (n + 1) + A125128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355552.P2723832558211808872

noncomputable section

/-- A355552: Number of ways to select 3 or more collinear points from a 4 X n grid.

Offset 1, canonical program `A355552.P2723832558211808872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A355552 (n : ℕ) : ℤ :=
  A355552.P2723832558211808872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A355552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355645.P14752526678216540598

`A094618(n)-A103517(n)`
-/

namespace A355645.P14752526678216540598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094618 n - A103517 n

end

end A355645.P14752526678216540598

noncomputable section

/-- A355645: The number of regions in the G-Shi arrangement when G is the cycle graph C_n.

Offset 1, canonical program `A355645.P14752526678216540598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A355645 (n : ℕ) : ℤ :=
  A355645.P14752526678216540598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A355645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355688.P3554588544041009988

`-A156277(2*(n+1))`
-/

namespace A355688.P3554588544041009988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A156277 (2 * (n + 1))

end

end A355688.P3554588544041009988

noncomputable section

/-- A355688: Dirichlet inverse of A354354, characteristic function of numbers that are neither multiples of 2 nor 3.

Offset 1, canonical program `A355688.P3554588544041009988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355688 (n : ℕ) : ℤ :=
  A355688.P3554588544041009988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355752.P3252340123097160179

`A016945(n)+(2*n+1)*(A355751(n+1)-1)`
-/

namespace A355752.P3252340123097160179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n + (2 * n + 1 : ℤ) * (A355751 (n + 1) - 1)

end

end A355752.P3252340123097160179

noncomputable section

/-- A355752: a(n) = 3*(2*n - 1)*(3*(2*n - 1)^3 + 1) / 2.

Offset 1, canonical program `A355752.P3252340123097160179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355752 (n : ℕ) : ℤ :=
  A355752.P3252340123097160179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355753.P17766286743161752562

`(2*n+1)*(A355751(n+1)-1)`
-/

namespace A355753.P17766286743161752562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (A355751 (n + 1) - 1)

end

end A355753.P17766286743161752562

noncomputable section

/-- A355753: a(n) = 3*(2*n - 1)*(3*(2*n - 1)^3 - 1) / 2 for n > 0.

Offset 1, canonical program `A355753.P17766286743161752562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355753 (n : ℕ) : ℤ :=
  A355753.P17766286743161752562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355759.P6668375112368553834

`A008619(n+1)+∑[A007590(A008619(n+1))]`
-/

namespace A355759.P6668375112368553834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A008619 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355759.P6668375112368553834

noncomputable section

/-- A355759: Sums of the first ceiling((n+1)/2) entries on the diagonals of a square spiral with a starting value of 1 in the center, where the diagonal and the antidiagonal are used alternately.

Offset 1, canonical program `A355759.P6668375112368553834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355759 (n : ℕ) : ℤ :=
  A355759.P6668375112368553834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355823.P14712113044676311275

`A209229(∏{e}[n+1, #])`
-/

namespace A355823.P14712113044676311275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A355823.P14712113044676311275

noncomputable section

/-- A355823: a(n) = 1 if all exponents in prime factorization of n are powers of 2, otherwise 0.

Offset 1, canonical program `A355823.P14712113044676311275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355823 (n : ℕ) : ℤ :=
  A355823.P14712113044676311275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355837.P12297603814747181440

`∏{e}[n+1, A084099(#+2)]`
-/

namespace A355837.P12297603814747181440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A084099 (Nat.factorization (f1 n) p + 2)

end

end A355837.P12297603814747181440

noncomputable section

/-- A355837: Dirichlet inverse of A322327.

Offset 1, canonical program `A355837.P12297603814747181440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355837 (n : ℕ) : ℤ :=
  A355837.P12297603814747181440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355931.P5998373918094123502

`gcd((n+1)/xor(n, or(n, n+1)), A001065(n+1))`
-/

namespace A355931.P5998373918094123502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))) (A001065 (n + 1))

end

end A355931.P5998373918094123502

noncomputable section

/-- A355931: Greatest common divisor of the odd part of n and sigma(n), where sigma is the sum of divisors function.

Offset 1, canonical program `A355931.P5998373918094123502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355931 (n : ℕ) : ℤ :=
  (A355931.P5998373918094123502.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355937.P2880473829388001643

`round(1/A010553(n+1))`
-/

namespace A355937.P2880473829388001643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A010553 (n + 1) : ℚ))

end

end A355937.P2880473829388001643

noncomputable section

/-- A355937: a(n) = 1 if the number of divisors of n is a noncomposite, otherwise 0.

Offset 1, canonical program `A355937.P2880473829388001643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355937 (n : ℕ) : ℤ :=
  A355937.P2880473829388001643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356163.P17031963498667529361

`A059841(A001414(n+1))`
-/

namespace A356163.P17031963498667529361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A001414 (n + 1)).toNat

end

end A356163.P17031963498667529361

noncomputable section

/-- A356163: a(n) = 1 if sum of prime factors of n (taken with multiplicity) is even, otherwise 0.

Offset 1, canonical program `A356163.P17031963498667529361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356163 (n : ℕ) : ℤ :=
  A356163.P17031963498667529361.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A356170.P16524579588849066302

`char[A123667(2*n+1)-1]`
-/

namespace A356170.P16524579588849066302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123667 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A356170.P16524579588849066302

noncomputable section

/-- A356170: a(n) = 1 if A001222(n) == 2*A007814(n), and otherwise 0, where A001222 is bigomega (number of prime factors with multiplicity) and A007814 is the 2-adic valuation of n.

Offset 1, canonical program `A356170.P16524579588849066302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356170 (n : ℕ) : ℤ :=
  (A356170.P16524579588849066302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356217.P14398232808931277812

`A140979(n+1)-A000201(n+1)`
-/

namespace A356217.P14398232808931277812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140979 (n + 1) - A000201 (n + 1)

end

end A356217.P14398232808931277812

noncomputable section

/-- A356217: a(n) = A022839(A000201(n)).

Offset 1, canonical program `A356217.P14398232808931277812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356217 (n : ℕ) : ℤ :=
  A356217.P14398232808931277812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356218.P10855869393860558408

`floor((A035337(n)-n)/2)`
-/

namespace A356218.P10855869393860558408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035337 n - (n : ℤ) : ℚ) / 2⌋

end

end A356218.P10855869393860558408

noncomputable section

/-- A356218: a(n) = A108598(A000201(n)).

Offset 1, canonical program `A356218.P10855869393860558408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356218 (n : ℕ) : ℤ :=
  A356218.P10855869393860558408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356249.P5630374803264959714

`A064603(n+1)-3*A356125(n+1)+3*A319086(n+1)`
-/

namespace A356249.P5630374803264959714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064603 (n + 1) - 3 * A356125 (n + 1) + 3 * A319086 (n + 1)

end

end A356249.P5630374803264959714

noncomputable section

/-- A356249: a(n) = Sum_{k=1..n} (k * floor(n/k))^3.

Offset 1, canonical program `A356249.P5630374803264959714`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064603, A319086, A356125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356249 (n : ℕ) : ℤ :=
  A356249.P5630374803264959714.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064603, A319086, A356125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A356249.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A356549.P5941019978963454808

`∑[A034887(n+1)+A034887(n)-1]`
-/

namespace A356549.P5941019978963454808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (n + 1) + A034887 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356549.P5941019978963454808

noncomputable section

/-- A356549: a(n) is the number of divisors of 10^n whose first digit is 1.

Offset 0, canonical program `A356549.P5941019978963454808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A356549 (n : ℕ) : ℤ :=
  A356549.P5941019978963454808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A356549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356574.P7099550415851902923

`∑{d}[n+1, A344327(#)]`
-/

namespace A356574.P7099550415851902923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344327 d

end

end A356574.P7099550415851902923

noncomputable section

/-- A356574: a(n) = Sum_{d|n} tau(d^4), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A356574.P7099550415851902923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356574 (n : ℕ) : ℤ :=
  A356574.P7099550415851902923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356644.P1384942154943774071

`A126646(A005408(n))-(Δ[(2*n+1)*A000045(2*n+1)]-2*(n+1))`
-/

namespace A356644.P1384942154943774071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000045 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A005408 n).toNat - (f1 (n + 1) - f1 n - (2 * (n + 1) : ℤ))

end

end A356644.P1384942154943774071

noncomputable section

/-- A356644: Number of vertex cuts in the n-antiprism graph.

Offset 1, canonical program `A356644.P1384942154943774071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A356644 (n : ℕ) : ℤ :=
  A356644.P1384942154943774071.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A356644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356888.P15858996324665993549

`A052481(n)+A001787(n)`
-/

namespace A356888.P15858996324665993549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052481 n + A001787 n

end

end A356888.P15858996324665993549

noncomputable section

/-- A356888: a(n) = ((n-1)^2 + 2)*2^(n-2).

Offset 1, canonical program `A356888.P15858996324665993549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A356888 (n : ℕ) : ℤ :=
  A356888.P15858996324665993549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A356888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356929.P9029674034270489886

`lt[0, tan(A308005(n))]`
-/

namespace A356929.P9029674034270489886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A308005 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A356929.P9029674034270489886

noncomputable section

/-- A356929: Integers with an even number of even digits.

Offset 1, canonical program `A356929.P9029674034270489886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A356929 (n : ℕ) : ℤ :=
  (A356929.P9029674034270489886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A356929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357238.P1681123937721153411

`∑{d}[n+1, A000073(#)]`
-/

namespace A357238.P1681123937721153411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000073 d

end

end A357238.P1681123937721153411

noncomputable section

/-- A357238: Inverse Moebius transform of tribonacci numbers (A000073).

Offset 1, canonical program `A357238.P1681123937721153411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A357238 (n : ℕ) : ℤ :=
  A357238.P1681123937721153411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A357238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357239.P6265313027198735255

`∑{d}[n+1, A000078(#)]`
-/

namespace A357239.P6265313027198735255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000078 d

end

end A357239.P6265313027198735255

noncomputable section

/-- A357239: Inverse Moebius transform of tetranacci number (A000078).

Offset 1, canonical program `A357239.P6265313027198735255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A357239 (n : ℕ) : ℤ :=
  A357239.P6265313027198735255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A357239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357291.P12469756725940001131

`A211540(A289207(n+1))+2*a(n-1)` with `a(0)=0`
-/

namespace A357291.P12469756725940001131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A211540 (A289207 (n + 1)).toNat + 2 * a (n - 1)

end

end A357291.P12469756725940001131

noncomputable section

/-- A357291: a(n) = number of subsets S of {1,2,...,n} having more than 2 elements such that (sum of least two elements of S) < difference between greatest two elements of S.

Offset 0, canonical program `A357291.P12469756725940001131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A357291 (n : ℕ) : ℤ :=
  A357291.P12469756725940001131.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A357291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357448.P9984939825109866771

`A244040(n)%2`
-/

namespace A357448.P9984939825109866771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244040 n) 2

end

end A357448.P9984939825109866771

noncomputable section

/-- A357448: Fixed point starting with 0 of the two-block substitution 00->010, 01->010, 10->101, 11->101.

Offset 0, canonical program `A357448.P9984939825109866771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357448 (n : ℕ) : ℤ :=
  A357448.P9984939825109866771.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357476.P18270851588785334001

`A018819(n)-∏{p}[n, val(#, 2)]`
-/

namespace A357476.P18270851588785334001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n - ((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

end

end A357476.P18270851588785334001

noncomputable section

/-- A357476: Number of partitions of n into two or more powers of 2.

Offset 0, canonical program `A357476.P18270851588785334001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357476 (n : ℕ) : ℤ :=
  A357476.P18270851588785334001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357553.P4325355766417780923

`A001654(n)%-A000032(n)`
-/

namespace A357553.P4325355766417780923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001654 n) (-A000032 n)

end

end A357553.P4325355766417780923

noncomputable section

/-- A357553: a(n) = A000045(n)*A000045(n+1) mod A000032(n).

Offset 0, canonical program `A357553.P4325355766417780923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A357553 (n : ℕ) : ℤ :=
  A357553.P4325355766417780923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A357553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357605.P12774301018770567425

`lt[2*n+5, A162296(n+1)]+1`
-/

namespace A357605.P12774301018770567425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A357605.P12774301018770567425

noncomputable section

/-- A357605: Numbers k such that A162296(k) > 2*k.

Offset 1, canonical program `A357605.P12774301018770567425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. -/
def A357605 (n : ℕ) : ℤ :=
  (A357605.P12774301018770567425.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1668 terms. -/
def A357605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357698.P3234576714406399455

`∑{d}[n+1, A073185(#)*A157658((n+1)/#)]`
-/

namespace A357698.P3234576714406399455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073185 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357698.P3234576714406399455

noncomputable section

/-- A357698: a(n) is the sum of the aliquot divisors of n that are cubefree.

Offset 1, canonical program `A357698.P3234576714406399455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357698 (n : ℕ) : ℤ :=
  A357698.P3234576714406399455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357740.P411081642526273223

`(A047241(n+1)+A002522(n+1))*C(n, 2)`
-/

namespace A357740.P411081642526273223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047241 (n + 1) + A002522 (n + 1)) * (Nat.choose n 2 : ℤ)

end

end A357740.P411081642526273223

noncomputable section

/-- A357740: Number of non-equivalent ways under symmetry in one axis that 2 non-attacking kings of different colors can be placed on an n X n board.

Offset 1, canonical program `A357740.P411081642526273223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A357740 (n : ℕ) : ℤ :=
  A357740.P411081642526273223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A357740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357753.P1993327159076856128

`A017912(n+2)^2`
-/

namespace A357753.P1993327159076856128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (n + 2) ^ 2

end

end A357753.P1993327159076856128

noncomputable section

/-- A357753: a(n) is the least square with n binary digits.

Offset 3, canonical program `A357753.P1993327159076856128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A357753 (n : ℕ) : ℤ :=
  A357753.P1993327159076856128.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A357753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357774.P7410309054543883889

`A099821(eq[3, A008687(n)])`
-/

namespace A357774.P7410309054543883889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357774.P7410309054543883889

noncomputable section

/-- A357774: Binary expansions of odd numbers with two zeros in their binary expansion.

Offset 1, canonical program `A357774.P7410309054543883889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A357774 (n : ℕ) : ℤ :=
  A357774.P7410309054543883889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A357774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357812.P13525390406441646513

`C(n, A029837(n+1))`
-/

namespace A357812.P13525390406441646513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A029837 (n + 1)).toNat

end

end A357812.P13525390406441646513

noncomputable section

/-- A357812: Number of subsets of [n] in which exactly half of the elements are powers of 2.

Offset 0, canonical program `A357812.P13525390406441646513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357812 (n : ℕ) : ℤ :=
  (A357812.P13525390406441646513.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357938.P33426511589451347

`∑{d}[n+1, #*A048250((n+1)/#)]`
-/

namespace A357938.P33426511589451347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357938.P33426511589451347

noncomputable section

/-- A357938: Inverse Moebius transform of n * 2^omega(n).

Offset 1, canonical program `A357938.P33426511589451347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357938 (n : ℕ) : ℤ :=
  A357938.P33426511589451347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358348.P4471490983168396238

`∪[A056991(n+1), A239129(n+1)]`
-/

namespace A358348.P4471490983168396238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A358348.P4471490983168396238

noncomputable section

/-- A358348: Numbers k such that k == k^k (mod 9).

Offset 1, canonical program `A358348.P4471490983168396238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358348 (n : ℕ) : ℤ :=
  (A358348.P4471490983168396238.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358380.P3103493124036931773

`∑{d}[n+1, A344328(#)]`
-/

namespace A358380.P3103493124036931773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344328 d

end

end A358380.P3103493124036931773

noncomputable section

/-- A358380: a(n) = Sum_{d|n} tau(d^5), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A358380.P3103493124036931773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358380 (n : ℕ) : ℤ :=
  A358380.P3103493124036931773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358548.P10666046655170957929

`A003627(n+2)-A003627(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A358548.P10666046655170957929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2) - A003627 (n + 1)

end

end A358548.P10666046655170957929

noncomputable section

/-- A358548: a(n) = A003627(n+1) - A003627(n).

Offset 1, canonical program `A358548.P10666046655170957929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358548 (n : ℕ) : ℤ :=
  A358548.P10666046655170957929.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358700.P15587326783897008239

`floor(log2(A058331(n)))`
-/

namespace A358700.P15587326783897008239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A058331 n).toNat

end

end A358700.P15587326783897008239

noncomputable section

/-- A358700: a(n) is the number of binary digits of n^2.

Offset 0, canonical program `A358700.P15587326783897008239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358700 (n : ℕ) : ℤ :=
  (A358700.P15587326783897008239.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358766.P6506097886501819477

`(-1)^A058063(n+1)`
-/

namespace A358766.P6506097886501819477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A058063 (n + 1) : ℤ)

end

end A358766.P6506097886501819477

noncomputable section

/-- A358766: a(n) = lambda(sigma(n)), where lambda is Liouville's lambda, and sigma is the sum of divisors function.

Offset 1, canonical program `A358766.P6506097886501819477`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358766 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A358766.P6506097886501819477.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358780.P16925951259113054868

`∏{e}[n+1, A001400(#)]`
-/

namespace A358780.P16925951259113054868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001400 (Nat.factorization (f1 n) p)

end

end A358780.P16925951259113054868

noncomputable section

/-- A358780: Dirichlet g.f.: zeta(s) * zeta(2*s) * zeta(3*s) * zeta(4*s).

Offset 1, canonical program `A358780.P16925951259113054868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358780 (n : ℕ) : ℤ :=
  A358780.P16925951259113054868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358994.P2295260338950539006

`∑[A002411(3*(n+1))+n+3]`
-/

namespace A358994.P2295260338950539006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (3 * (n + 1)) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358994.P2295260338950539006

noncomputable section

/-- A358994: The sum of the numbers that are inside the contour of an n-story Christmas tree drawn at the top of the numerical pyramid containing the positive integers in natural order.

Offset 1, canonical program `A358994.P2295260338950539006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A358994 (n : ℕ) : ℤ :=
  A358994.P2295260338950539006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A358994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359018.P11139965952818550112

`∑{d}[n+1, A027471(#+1)]`
-/

namespace A359018.P11139965952818550112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027471 (d + 1)

end

end A359018.P11139965952818550112

noncomputable section

/-- A359018: a(n) = Sum_{d|n} d * 3^(d-1).

Offset 1, canonical program `A359018.P11139965952818550112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A359018 (n : ℕ) : ℤ :=
  A359018.P11139965952818550112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A359018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359037.P11843993523253148775

`∑{d}[n+1, A344329(#)]`
-/

namespace A359037.P11843993523253148775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344329 d

end

end A359037.P11843993523253148775

noncomputable section

/-- A359037: a(n) = Sum_{d|n} tau(d^6), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A359037.P11843993523253148775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359037 (n : ℕ) : ℤ :=
  A359037.P11843993523253148775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359038.P10658046964525266141

`∑{d}[n+1, A343526(#)]`
-/

namespace A359038.P10658046964525266141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A343526 d

end

end A359038.P10658046964525266141

noncomputable section

/-- A359038: a(n) = Sum_{d|n} tau(d^7), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A359038.P10658046964525266141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359038 (n : ℕ) : ℤ :=
  A359038.P10658046964525266141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359096.P10254011093531424028

`∑[A008527(n)+2-C(2, C(n, n²))]`
-/

namespace A359096.P10254011093531424028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n + 2 - (Nat.choose 2 (Nat.choose n (n ^ 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359096.P10254011093531424028

noncomputable section

/-- A359096: The sum of the numbers on the perimeter of the n X n diamond frame, located at the top of the numerical pyramid containing the positive integers in natural order.

Offset 1, canonical program `A359096.P10254011093531424028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359096 (n : ℕ) : ℤ :=
  A359096.P10254011093531424028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359099.P11950995209618868671

`A088842(n+1)*A242603(n+1)`
-/

namespace A359099.P11950995209618868671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088842 (n + 1) * A242603 (n + 1)

end

end A359099.P11950995209618868671

noncomputable section

/-- A359099: a(n) = (1/6) * Sum_{d|n} phi(7 * d).

Offset 1, canonical program `A359099.P11950995209618868671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359099 (n : ℕ) : ℤ :=
  A359099.P11950995209618868671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359154.P14645597383295465287

`(-1)^A001414(n+1)`
-/

namespace A359154.P14645597383295465287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001414 (n + 1) : ℤ)

end

end A359154.P14645597383295465287

noncomputable section

/-- A359154: a(n) = (-1)^sopfr(n), where sopfr is the sum of prime factors with repetition.

Offset 1, canonical program `A359154.P14645597383295465287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359154 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A359154.P14645597383295465287.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359154.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359172.P3609007424072362558

`A008476(n+1)%A143098(n+1)`
-/

namespace A359172.P3609007424072362558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008476 (n + 1)) (A143098 (n + 1))

end

end A359172.P3609007424072362558

noncomputable section

/-- A359172: a(n) = 1 if n is not a multiple of 3 and has an odd number of prime factors (with multiplicity), otherwise a(n) = 0.

Offset 1, canonical program `A359172.P3609007424072362558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359172 (n : ℕ) : ℤ :=
  A359172.P3609007424072362558.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359189.P3684326257580875479

`∑{d}[n+1, #*A133494((n+1)/#)]`
-/

namespace A359189.P3684326257580875479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A133494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359189.P3684326257580875479

noncomputable section

/-- A359189: a(n) = Sum_{d|n} d * 3^(n/d-1).

Offset 1, canonical program `A359189.P3684326257580875479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A359189 (n : ℕ) : ℤ :=
  A359189.P3684326257580875479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A359189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359190.P4483724869610692179

`∑{d}[n+1, #*A000302((n+1)/#-1)]`
-/

namespace A359190.P4483724869610692179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A359190.P4483724869610692179

noncomputable section

/-- A359190: a(n) = Sum_{d|n} d * 4^(n/d-1).

Offset 1, canonical program `A359190.P4483724869610692179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A359190 (n : ℕ) : ℤ :=
  A359190.P4483724869610692179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A359190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359194.P7714065540488624570

`A035327(3*n)`
-/

namespace A359194.P7714065540488624570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (3 * n)

end

end A359194.P7714065540488624570

noncomputable section

/-- A359194: Binary complement of 3*n.

Offset 0, canonical program `A359194.P7714065540488624570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359194 (n : ℕ) : ℤ :=
  A359194.P7714065540488624570.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359194.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359305.P16525463863888130987

`A279060(6*n+5)`
-/

namespace A359305.P16525463863888130987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (6 * n + 5)

end

end A359305.P16525463863888130987

noncomputable section

/-- A359305: Number of divisors of 6*n-1 of form 6*k+1.

Offset 1, canonical program `A359305.P16525463863888130987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359305 (n : ℕ) : ℤ :=
  A359305.P16525463863888130987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359306.P11362085385412546253

`A279060(3*n+2)`
-/

namespace A359306.P11362085385412546253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (3 * n + 2)

end

end A359306.P11362085385412546253

noncomputable section

/-- A359306: Number of divisors of 6*n-2 of form 6*k+1.

Offset 1, canonical program `A359306.P11362085385412546253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359306 (n : ℕ) : ℤ :=
  A359306.P11362085385412546253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359308.P7405387969436382236

`A279060(3*n+1)`
-/

namespace A359308.P7405387969436382236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (3 * n + 1)

end

end A359308.P7405387969436382236

noncomputable section

/-- A359308: Number of divisors of 6*n-4 of form 6*k+1.

Offset 1, canonical program `A359308.P7405387969436382236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359308 (n : ℕ) : ℤ :=
  A359308.P7405387969436382236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359309.P240445430605668913

`A279060(6*n+1)`
-/

namespace A359309.P240445430605668913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (6 * n + 1)

end

end A359309.P240445430605668913

noncomputable section

/-- A359309: Number of divisors of 6*n-5 of form 6*k+1.

Offset 1, canonical program `A359309.P240445430605668913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359309 (n : ℕ) : ℤ :=
  A359309.P240445430605668913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359311.P5103143140979981528

`A000108(n)-A080937(n)`
-/

namespace A359311.P5103143140979981528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A080937 n

end

end A359311.P5103143140979981528

noncomputable section

/-- A359311: Number of Catalan paths (nonnegative, starting and ending at 0, step +/ -1) of 2*n steps which reach at least 6 at some point.

Offset 0, canonical program `A359311.P5103143140979981528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A359311 (n : ℕ) : ℤ :=
  A359311.P5103143140979981528.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A359311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359312.P14098866276447558073

`A002024(a(floor((n-1)/2))+(-1)^n+1)` with `a(0)=1`
-/

namespace A359312.P14098866276447558073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002024 (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + (-1) ^ n + 1).toNat

end

end A359312.P14098866276447558073

noncomputable section

/-- A359312: a(1) = 1; for n >= 1, a(2*n) = A000005(a(n)), a(2*n + 1) = A000005(a(n)) + 1.

Offset 1, canonical program `A359312.P14098866276447558073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359312 (n : ℕ) : ℤ :=
  A359312.P14098866276447558073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359324.P7822342355099151172

`A319995(3*n+2)`
-/

namespace A359324.P7822342355099151172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (3 * n + 2)

end

end A359324.P7822342355099151172

noncomputable section

/-- A359324: Number of divisors of 6*n-2 of form 6*k+5.

Offset 1, canonical program `A359324.P7822342355099151172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359324 (n : ℕ) : ℤ :=
  A359324.P7822342355099151172.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359326.P3646399161673822689

`A319995(3*n+1)`
-/

namespace A359326.P3646399161673822689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (3 * n + 1)

end

end A359326.P3646399161673822689

noncomputable section

/-- A359326: Number of divisors of 6*n-4 of form 6*k+5.

Offset 1, canonical program `A359326.P3646399161673822689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359326 (n : ℕ) : ℤ :=
  A359326.P3646399161673822689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359327.P16853457965875715644

`A319995(6*n+1)`
-/

namespace A359327.P16853457965875715644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (6 * n + 1)

end

end A359327.P16853457965875715644

noncomputable section

/-- A359327: Number of divisors of 6*n-5 of form 6*k+5.

Offset 1, canonical program `A359327.P16853457965875715644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359327 (n : ℕ) : ℤ :=
  A359327.P16853457965875715644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319995, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359377.P17304344709579879016

`abs(A156277(n+1))`
-/

namespace A359377.P17304344709579879016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156277 (n + 1)|

end

end A359377.P17304344709579879016

noncomputable section

/-- A359377: a(n) = 1 if 3*n is squarefree, otherwise 0.

Offset 1, canonical program `A359377.P17304344709579879016`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359377 (n : ℕ) : ℤ :=
  A359377.P17304344709579879016.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359377.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359456.P14812899688263349338

`char[∏[A000045(n+1)]-1]`
-/

namespace A359456.P14812899688263349338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359456.P14812899688263349338

noncomputable section

/-- A359456: Characteristic function of Fibonorial numbers.

Offset 1, canonical program `A359456.P14812899688263349338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359456 (n : ℕ) : ℤ :=
  (A359456.P14812899688263349338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359507.P5582106978947893081

`A359506(n)-n`
-/

namespace A359507.P5582106978947893081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359506 n - (n : ℤ)

end

end A359507.P5582106978947893081

noncomputable section

/-- A359507: a(n) is the least integer k such that there exists a strictly increasing integer sequence n = b_1 < b_2 < ... < b_t = n + k with the property that b_1 XOR b_2 XOR ... XOR b_t = 0.

Offset 0, canonical program `A359507.P5582106978947893081`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359507 (n : ℕ) : ℤ :=
  A359507.P5582106978947893081.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359506, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359507.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359768.P14447887237205191764

`A000035(A075255(n+1))`
-/

namespace A359768.P14447887237205191764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A075255 (n + 1)).toNat

end

end A359768.P14447887237205191764

noncomputable section

/-- A359768: a(n) = 1 if the parity of n and that of sopfr(n) differ, otherwise 0. Here sopfr is the sum of prime factors (with repetition).

Offset 1, canonical program `A359768.P14447887237205191764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359768 (n : ℕ) : ℤ :=
  A359768.P14447887237205191764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075255, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359768.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359770.P5016811316029471813

`A000035(A069345(n+1))`
-/

namespace A359770.P5016811316029471813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A069345 (n + 1)).toNat

end

end A359770.P5016811316029471813

noncomputable section

/-- A359770: a(n) = 1 if n and bigomega(n) are of different parity, otherwise 0. Here bigomega (A001222) gives the number of prime factors of n with multiplicity.

Offset 1, canonical program `A359770.P5016811316029471813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359770 (n : ℕ) : ℤ :=
  A359770.P5016811316029471813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359770.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359794.P10986045244091442219

`lt[A191254(n+1), 2]+1`
-/

namespace A359794.P10986045244091442219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A359794.P10986045244091442219

noncomputable section

/-- A359794: Union of odd numbers and numbers with an odd 2-adic valuation.

Offset 1, canonical program `A359794.P10986045244091442219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359794 (n : ℕ) : ℤ :=
  (A359794.P10986045244091442219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359802.P11949633173020920184

`∏{digits}[n, A000040(#+1)]`
-/

namespace A359802.P11949633173020920184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000040 (x + 1)).prod

end

end A359802.P11949633173020920184

noncomputable section

/-- A359802: a(n) = product prime(d + 1), where d ranges over all the decimal digits of n.

Offset 0, canonical program `A359802.P11949633173020920184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359802 (n : ℕ) : ℤ :=
  A359802.P11949633173020920184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359925.P12258298689355997822

`xor(10*a(floor((n-1)/2)), A010684(n))` with `a(0)=1`
-/

namespace A359925.P12258298689355997822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat) (A010684 n)

end

end A359925.P12258298689355997822

noncomputable section

/-- A359925: Numbers with easy multiplication table - the first 9 multiples of these numbers can be derived by either incrementing or decrementing the corresponding digits from the previous multiple.

Offset 1, canonical program `A359925.P12258298689355997822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359925 (n : ℕ) : ℤ :=
  A359925.P12258298689355997822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359937.P598369541804672827

`∑{d}[n+1, #*A010052(#-1)]`
-/

namespace A359937.P598369541804672827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010052 (d - 1)

end

end A359937.P598369541804672827

noncomputable section

/-- A359937: a(n) = Sum_{d|n, d-1 is square} d.

Offset 1, canonical program `A359937.P598369541804672827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359937 (n : ℕ) : ℤ :=
  A359937.P598369541804672827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359938.P2187253484977344488

`∑{d}[n+1, A010052(#-1)]`
-/

namespace A359938.P2187253484977344488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 (d - 1)

end

end A359938.P2187253484977344488

noncomputable section

/-- A359938: Number of divisors d of n such that d-1 is square.

Offset 1, canonical program `A359938.P2187253484977344488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359938 (n : ℕ) : ℤ :=
  A359938.P2187253484977344488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359943.P9077713032475342239

`∑{d}[n+1, #*A010057(#-1)]`
-/

namespace A359943.P9077713032475342239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010057 (d - 1)

end

end A359943.P9077713032475342239

noncomputable section

/-- A359943: a(n) = Sum_{d|n, d-1 is cube} d.

Offset 1, canonical program `A359943.P9077713032475342239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359943 (n : ℕ) : ℤ :=
  A359943.P9077713032475342239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360087.P10277069332505734205

`(-1)^n*A099530(3*n)`
-/

namespace A360087.P10277069332505734205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A099530 (3 * n)

end

end A360087.P10277069332505734205

noncomputable section

/-- A360087: a(n) = Sum_{k=0..n} (-1)^k * binomial(3*k,n-k).

Offset 0, canonical program `A360087.P10277069332505734205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A360087 (n : ℕ) : ℤ :=
  A360087.P10277069332505734205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A360087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360090.P12755551519393560906

`A005708(5*n)`
-/

namespace A360090.P12755551519393560906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (5 * n)

end

end A360090.P12755551519393560906

noncomputable section

/-- A360090: a(n) = Sum_{k=0..n} binomial(5*k,n-k).

Offset 0, canonical program `A360090.P12755551519393560906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A360090 (n : ℕ) : ℤ :=
  A360090.P12755551519393560906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A360090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360168.P9179285589559651985

`4*a(n-1)-A000108(n-1)-1` with `a(0)=1`
-/

namespace A360168.P9179285589559651985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - A000108 (n - 1) - 1

end

end A360168.P9179285589559651985

noncomputable section

/-- A360168: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n,n-3*k).

Offset 0, canonical program `A360168.P9179285589559651985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A360168 (n : ℕ) : ℤ :=
  A360168.P9179285589559651985.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A360168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360222.P18120498328665182943

`A010023(n)%A110907(n)`
-/

namespace A360222.P18120498328665182943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010023 n) (A110907 n)

end

end A360222.P18120498328665182943

noncomputable section

/-- A360222: a(n) is the number of permutable pieces in a standard n X n X n Rubik's cube.

Offset 1, canonical program `A360222.P18120498328665182943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360222 (n : ℕ) : ℤ :=
  A360222.P18120498328665182943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360274.P13329374777487393845

`A000108(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A360274.P13329374777487393845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000108 n + a (n - 3)

end

end A360274.P13329374777487393845

noncomputable section

/-- A360274: a(n) = Sum_{k=0..floor(n/3)} Catalan(n-3*k).

Offset 0, canonical program `A360274.P13329374777487393845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A360274 (n : ℕ) : ℤ :=
  A360274.P13329374777487393845.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A360274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360396.P1664411454202365035

`∩[A356133(n+1), A360392(n+1)]`
-/

namespace A360396.P1664411454202365035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360396.P1664411454202365035

noncomputable section

/-- A360396: Intersection of A356133 and A360392.

Offset 1, canonical program `A360396.P1664411454202365035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A360396 (n : ℕ) : ℤ :=
  (A360396.P1664411454202365035.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A360396.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A360541.P12373004355754066143

`A356193(n+1)/(n+1)`
-/

namespace A360541.P12373004355754066143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356193 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A360541.P12373004355754066143

noncomputable section

/-- A360541: a(n) is the least number k such that k*n is a cubefull number (A036966).

Offset 1, canonical program `A360541.P12373004355754066143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360541 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360541.P12373004355754066143.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360569.P16248846761509437217

`floor(∏[log(A000040(n+1))])`
-/

namespace A360569.P16248846761509437217
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A360569.P16248846761509437217

noncomputable section

/-- A360569: a(n) = floor(Product_{k=1..n} log(prime(k))).

Offset 1, canonical program `A360569.P16248846761509437217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360569 (n : ℕ) : ℤ :=
  A360569.P16248846761509437217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A360569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360705.P13607079470250682271

`A005252(n)-A106511(n+2)`
-/

namespace A360705.P13607079470250682271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 n - A106511 (n + 2)

end

end A360705.P13607079470250682271

noncomputable section

/-- A360705: Expansion of Sum_{k>=0} (x * (1 + (-1)^k * x))^k.

Offset 0, canonical program `A360705.P13607079470250682271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A360705 (n : ℕ) : ℤ :=
  A360705.P13607079470250682271.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A360705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360715.P17860944936235086601

`∑[A392266(n)+1]`
-/

namespace A360715.P17860944936235086601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392266 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360715.P17860944936235086601

noncomputable section

/-- A360715: Number of self-avoiding paths with nodes chosen among n given points on a circle; one-node paths are allowed.

Offset 1, canonical program `A360715.P17860944936235086601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A360715 (n : ℕ) : ℤ :=
  A360715.P17860944936235086601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A360715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360724.P5922808255912750807

`∑[A060973(n+1)-A053646(n+1)]`
-/

namespace A360724.P5922808255912750807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (n + 1) - A053646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360724.P5922808255912750807

noncomputable section

/-- A360724: Hajnal's recurrence: a(2n) = a(n) + 3*a(n-1); a(2n+1) = 3*a(n) + a(n-1), with initial values a(0) = 0, a(1) = 1.

Offset 0, canonical program `A360724.P5922808255912750807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360724 (n : ℕ) : ℤ :=
  A360724.P5922808255912750807.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360786.P10295209354762560827

`C(A001787(n+1)-n, 2)-∑[n]`
-/

namespace A360786.P10295209354762560827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A001787 (n + 1) - (n : ℤ)).toNat 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A360786.P10295209354762560827

noncomputable section

/-- A360786: Number of ways to place two dimers on an n-cube.

Offset 1, canonical program `A360786.P10295209354762560827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A360786 (n : ℕ) : ℤ :=
  A360786.P10295209354762560827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A360786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360951.P11060254111176722639

`A045623(n)-A323227(n)`
-/

namespace A360951.P11060254111176722639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A323227 n

end

end A360951.P11060254111176722639

noncomputable section

/-- A360951: Expansion of e.g.f. (cosh(x) - 1)*(1 + x)*exp(x).

Offset 0, canonical program `A360951.P11060254111176722639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A360951 (n : ℕ) : ℤ :=
  A360951.P11060254111176722639.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A360951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360969.P9537499425783326170

`A005361(n+1)²`
-/

namespace A360969.P9537499425783326170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) ^ 2

end

end A360969.P9537499425783326170

noncomputable section

/-- A360969: Multiplicative with a(p^e) = e^2, p prime and e > 0.

Offset 1, canonical program `A360969.P9537499425783326170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360969 (n : ℕ) : ℤ :=
  A360969.P9537499425783326170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360970.P1568768849045067679

`A005361(n+1)^3`
-/

namespace A360970.P1568768849045067679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) ^ 3

end

end A360970.P1568768849045067679

noncomputable section

/-- A360970: Multiplicative with a(p^e) = e^3, p prime and e > 0.

Offset 1, canonical program `A360970.P1568768849045067679`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360970 (n : ℕ) : ℤ :=
  A360970.P1568768849045067679.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360996.P18226206419198246505

`A005361(n+1)*A082476(n+1)`
-/

namespace A360996.P18226206419198246505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A082476 (n + 1)

end

end A360996.P18226206419198246505

noncomputable section

/-- A360996: Multiplicative with a(p^e) = 5*e, p prime and e > 0.

Offset 1, canonical program `A360996.P18226206419198246505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A082476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360996 (n : ℕ) : ℤ :=
  A360996.P18226206419198246505.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A082476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A360996.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360999.P16342541274025162897

`A000007(n)+∑{d}[n+1, (2%#)!]`
-/

namespace A360999.P16342541274025162897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((∑ d ∈ Nat.divisors (f1 n), Nat.factorial (2 % d) : ℕ) : ℤ)

end

end A360999.P16342541274025162897

noncomputable section

/-- A360999: Number of tilings of an n X 2 rectangle by integer-sided rectangular pieces that cannot be rearranged to produce a different tiling of the rectangle (including rotations and reflections of the original tiling).

Offset 1, canonical program `A360999.P16342541274025162897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360999 (n : ℕ) : ℤ :=
  A360999.P16342541274025162897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361012.P4834344683092660490

`∏{e}[n+1, A097012(#)]`
-/

namespace A361012.P4834344683092660490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A097012 (Nat.factorization (f1 n) p)

end

end A361012.P4834344683092660490

noncomputable section

/-- A361012: Multiplicative with a(p^e) = sigma(e), where sigma = A000203.

Offset 1, canonical program `A361012.P4834344683092660490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361012 (n : ℕ) : ℤ :=
  A361012.P4834344683092660490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361041.P11492204058538399731

`A361040(n)/(n/2+1)`
-/

namespace A361041.P11492204058538399731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361040 n : ℚ) / ((n : ℚ) / 2 + 1)

end

end A361041.P11492204058538399731

noncomputable section

/-- A361041: a(n) = 1680*(3*n)!/(n!*(2*n + 4)!).

Offset 0, canonical program `A361041.P11492204058538399731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A361041 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A361041.P11492204058538399731.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A361041.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A361064.P12223583230008359581

`∏{e}[n+1, A001158(#)]`
-/

namespace A361064.P12223583230008359581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001158 (Nat.factorization (f1 n) p)

end

end A361064.P12223583230008359581

noncomputable section

/-- A361064: Multiplicative with a(p^e) = sigma_3(e), where sigma_3 = A001158.

Offset 1, canonical program `A361064.P12223583230008359581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361064 (n : ℕ) : ℤ :=
  A361064.P12223583230008359581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361102.P11083175850878873480

`eq[0, A069513(n+1)]+1`
-/

namespace A361102.P11083175850878873480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361102.P11083175850878873480

noncomputable section

/-- A361102: 1 together with numbers having at least two distinct prime factors.

Offset 1, canonical program `A361102.P11083175850878873480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361102 (n : ℕ) : ℤ :=
  (A361102.P11083175850878873480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361113.P13888999247641361748

`eq[0, A069513(n+1)]%2`
-/

namespace A361113.P13888999247641361748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2

end

end A361113.P13888999247641361748

noncomputable section

/-- A361113: a(n)=1 if A361102(n) is even, otherwise 0.

Offset 1, canonical program `A361113.P13888999247641361748`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361113 (n : ℕ) : ℤ :=
  (A361113.P13888999247641361748.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361132.P13495344161125318511

`A005361(n+1)^4`
-/

namespace A361132.P13495344161125318511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) ^ 4

end

end A361132.P13495344161125318511

noncomputable section

/-- A361132: Multiplicative with a(p^e) = e^4, p prime and e > 0.

Offset 1, canonical program `A361132.P13495344161125318511`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361132 (n : ℕ) : ℤ :=
  A361132.P13495344161125318511.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361160.P6338473833215483561

`filter[A047462(n+2), A049240(#)]`
-/

namespace A361160.P6338473833215483561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047462 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A361160.P6338473833215483561

noncomputable section

/-- A361160: Discriminants of Weierstrass curves in moduli space M_3 of compact Riemann surfaces of genus 3.

Offset 1, canonical program `A361160.P6338473833215483561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9836 terms. -/
def A361160 (n : ℕ) : ℤ :=
  A361160.P6338473833215483561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9836 terms. -/
def A361160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361263.P2080480864368372243

`A168122(A008619(n))-A008795(n)`
-/

namespace A361263.P2080480864368372243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168122 (A008619 n).toNat - A008795 n

end

end A361263.P2080480864368372243

noncomputable section

/-- A361263: Numbers of the form k*(k^5 +- 1)/2.

Offset 1, canonical program `A361263.P2080480864368372243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361263 (n : ℕ) : ℤ :=
  A361263.P2080480864368372243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361458.P16228617510367498706

`∑[A132951(∑[A130151(n)])]`
-/

namespace A361458.P16228617510367498706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132951 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361458.P16228617510367498706

noncomputable section

/-- A361458: Size of the symmetric difference of {1,2,3}, {2,4,6}, ..., {n,2n,3n}.

Offset 1, canonical program `A361458.P16228617510367498706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361458 (n : ℕ) : ℤ :=
  A361458.P16228617510367498706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361465.P9074267151544804796

`A209229(A017665(n+1))`
-/

namespace A361465.P9074267151544804796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A017665 (n + 1)).toNat

end

end A361465.P9074267151544804796

noncomputable section

/-- A361465: a(n) = 1 if A017665(n) [the numerator of the sum of the reciprocals of the divisors of n] is a power of 2, otherwise 0.

Offset 1, canonical program `A361465.P9074267151544804796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361465 (n : ℕ) : ℤ :=
  A361465.P9074267151544804796.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361465.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361471.P10946116269126917643

`∑[4*A320106(n+1)]`
-/

namespace A361471.P10946116269126917643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A320106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361471.P10946116269126917643

noncomputable section

/-- A361471: Size of the symmetric difference of {1,2,3,4}, {2,4,6,8}, ..., {n,2n,3n,4n}.

Offset 1, canonical program `A361471.P10946116269126917643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361471 (n : ℕ) : ℤ :=
  A361471.P10946116269126917643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361483.P5152490190389925684

`p?[A000040(n+1)-256]`
-/

namespace A361483.P5152490190389925684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 256

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A361483.P5152490190389925684

noncomputable section

/-- A361483: Primes p such that p + 256 is also prime.

Offset 1, canonical program `A361483.P5152490190389925684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A361483 (n : ℕ) : ℤ :=
  A361483.P5152490190389925684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A361483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361707.P15539805990408773328

`∑{d}[n+1, A000040(#)*A007427((n+1)/#)]`
-/

namespace A361707.P15539805990408773328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361707.P15539805990408773328

noncomputable section

/-- A361707: Moebius transform applied twice to primes.

Offset 1, canonical program `A361707.P15539805990408773328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361707 (n : ℕ) : ℤ :=
  A361707.P15539805990408773328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361758.P16608428032083257517

`∑[A361732(n)]`
-/

namespace A361758.P16608428032083257517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361758.P16608428032083257517

noncomputable section

/-- A361758: a(n) = [x^n] (x^5 + 5*x^4 + 4*x^3 - 3*x + 1)/((1 - x)*(x^2 + 2*x - 1)^2).

Offset 0, canonical program `A361758.P16608428032083257517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A361758 (n : ℕ) : ℤ :=
  A361758.P16608428032083257517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. -/
def A361758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362021.P6297100833742267610

`A055615(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A362021.P6297100833742267610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055615 (n + 1) - a (n - 1)

end

end A362021.P6297100833742267610

noncomputable section

/-- A362021: a(n) = Sum_{k=1..n} (-1)^(n-k) * k * mu(k), where mu(k) is the Moebius function.

Offset 1, canonical program `A362021.P6297100833742267610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362021 (n : ℕ) : ℤ :=
  A362021.P6297100833742267610.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362375.P18320752346947795211

`A007947(A000407(n))`
-/

namespace A362375.P18320752346947795211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000407 n).toNat

end

end A362375.P18320752346947795211

noncomputable section

/-- A362375: a(n) = rad((2n-1)!/(n-1)!).

Offset 1, canonical program `A362375.P18320752346947795211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362375 (n : ℕ) : ℤ :=
  A362375.P18320752346947795211.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362375.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362404.P3194940381080596052

`∩[A362401(n+1)-1, A362401(n+1)]`
-/

namespace A362404.P3194940381080596052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362401 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362404.P3194940381080596052

noncomputable section

/-- A362404: Numbers k such that k and k+1 are both in A362401.

Offset 1, canonical program `A362404.P3194940381080596052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A362404 (n : ℕ) : ℤ :=
  (A362404.P3194940381080596052.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A362404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362501.P5687943136051182437

`A013731(n+1)-A390403(n+1)`
-/

namespace A362501.P5687943136051182437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013731 (n + 1) - A390403 (n + 1)

end

end A362501.P5687943136051182437

noncomputable section

/-- A362501: Number of vertex cuts in the n-alkane graph.

Offset 1, canonical program `A362501.P5687943136051182437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A362501 (n : ℕ) : ℤ :=
  A362501.P5687943136051182437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A362501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362556.P3254619726889973930

`Δ[A001840(n)+A000351(n)]`
-/

namespace A362556.P3254619726889973930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362556.P3254619726889973930

noncomputable section

/-- A362556: Number of distinct n-digit suffixes generated by iteratively multiplying an integer by 8, where the initial integer is 1.

Offset 1, canonical program `A362556.P3254619726889973930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A362556 (n : ℕ) : ℤ :=
  A362556.P3254619726889973930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A362556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362570.P15557334788396659153

`2*A247485(n+1)-1`
-/

namespace A362570.P15557334788396659153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247485 (n + 1) - 1

end

end A362570.P15557334788396659153

noncomputable section

/-- A362570: a(n) is the number of isogeny classes of elliptic curves over the finite field of order prime(n).

Offset 1, canonical program `A362570.P15557334788396659153`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362570 (n : ℕ) : ℤ :=
  A362570.P15557334788396659153.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247485, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362570.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362683.P14326268890355957891

`A055225(n+1)+A359103(n+1)`
-/

namespace A362683.P14326268890355957891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055225 (n + 1) + A359103 (n + 1)

end

end A362683.P14326268890355957891

noncomputable section

/-- A362683: Expansion of Sum_{k>0} (1/(1 - k*x^k)^2 - 1).

Offset 1, canonical program `A362683.P14326268890355957891`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055225, A359103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362683 (n : ℕ) : ℤ :=
  A362683.P14326268890355957891.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055225, A359103, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A362683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362692.P10750454726631979169

`∑[char[A062724(n)]]+1`
-/

namespace A362692.P10750454726631979169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A362692.P10750454726631979169

noncomputable section

/-- A362692: Length of the "integer part" of the phi-expansion of n.

Offset 0, canonical program `A362692.P10750454726631979169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362692 (n : ℕ) : ℤ :=
  (A362692.P10750454726631979169.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362718.P6767903697936617572

`(-1)^n*A001464(2*n)`
-/

namespace A362718.P6767903697936617572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001464 (2 * n)

end

end A362718.P6767903697936617572

noncomputable section

/-- A362718: Expansion of e.g.f. cos(x)*exp(x^2/2) = Sum_{n>=0} a(n)*x^(2*n)/(2*n)!.

Offset 0, canonical program `A362718.P6767903697936617572`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362718 (n : ℕ) : ℤ :=
  A362718.P6767903697936617572.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362750.P18087491302716967332

`A000225(2*(n+1))+A001638(n+1)²`
-/

namespace A362750.P18087491302716967332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * (n + 1)) + A001638 (n + 1) ^ 2

end

end A362750.P18087491302716967332

noncomputable section

/-- A362750: Number of total dominating sets in the n-double cone graph.

Offset 1, canonical program `A362750.P18087491302716967332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A362750 (n : ℕ) : ℤ :=
  A362750.P18087491302716967332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A362750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362751.P8131981370189381545

`(1-A088859(n+1))²`
-/

namespace A362751.P8131981370189381545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A088859 (n + 1)) ^ 2

end

end A362751.P8131981370189381545

noncomputable section

/-- A362751: Number of total dominating sets in the n-trapezohedral graph.

Offset 1, canonical program `A362751.P8131981370189381545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A362751 (n : ℕ) : ℤ :=
  A362751.P8131981370189381545.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A362751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362869.P8462852470761902271

`A008795(n)+A001859(n)`
-/

namespace A362869.P8462852470761902271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n + A001859 n

end

end A362869.P8462852470761902271

noncomputable section

/-- A362869: a(n) is equal to the number of cells in one octant of the octagon of unit squares with side equal n.

Offset 1, canonical program `A362869.P8462852470761902271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362869 (n : ℕ) : ℤ :=
  A362869.P8462852470761902271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363057.P493503618799946074

`A001468(A142150(n))`
-/

namespace A363057.P493503618799946074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A142150 n).toNat

end

end A363057.P493503618799946074

noncomputable section

/-- A363057: Run lengths of the Fibonacci word (A003849).

Offset 1, canonical program `A363057.P493503618799946074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363057 (n : ℕ) : ℤ :=
  A363057.P493503618799946074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363121.P4116322896546047244

`A062383(n)*A133653(n+1)`
-/

namespace A363121.P4116322896546047244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A133653 (n + 1)

end

end A363121.P4116322896546047244

noncomputable section

/-- A363121: Primitive terms of A116882: terms k of A116882 such that k/2 is not a term of A116882.

Offset 1, canonical program `A363121.P4116322896546047244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363121 (n : ℕ) : ℤ :=
  A363121.P4116322896546047244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363249.P17797656397001054454

`A060956(2*n)`
-/

namespace A363249.P17797656397001054454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060956 (2 * n)

end

end A363249.P17797656397001054454

noncomputable section

/-- A363249: Leading digit of 9^n.

Offset 0, canonical program `A363249.P17797656397001054454`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363249 (n : ℕ) : ℤ :=
  A363249.P17797656397001054454.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363319.P13538446356055515187

`ceil(A096033(n+1)/2)`
-/

namespace A363319.P13538446356055515187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A096033 (n + 1) : ℚ) / 2⌉

end

end A363319.P13538446356055515187

noncomputable section

/-- A363319: Squares (A000290) and centered squares (A001844) sorted, including duplicates.

Offset 1, canonical program `A363319.P13538446356055515187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363319 (n : ℕ) : ℤ :=
  A363319.P13538446356055515187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363524.P12689076876959330093

`A016116(n)*A046978(n+1)`
-/

namespace A363524.P12689076876959330093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A046978 (n + 1)

end

end A363524.P12689076876959330093

noncomputable section

/-- A363524: a(n) = 0 if 4 divides n + 1, otherwise (-1)^floor((n + 1) / 4) * 2^floor(n / 2).

Offset 0, canonical program `A363524.P12689076876959330093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363524 (n : ℕ) : ℤ :=
  A363524.P12689076876959330093.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046978, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363524.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363591.P14476527547067194756

`A094033(n+3)-∑[n+3]+n`
-/

namespace A363591.P14476527547067194756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094033 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A363591.P14476527547067194756

noncomputable section

/-- A363591: a(n) = 3*(3^(n-1) - 2^n + 1)/2 - binomial(n,2), n >= 3.

Offset 3, canonical program `A363591.P14476527547067194756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A363591 (n : ℕ) : ℤ :=
  A363591.P14476527547067194756.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A363591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363604.P1742819399348317644

`A092348(n+1)/6`
-/

namespace A363604.P1742819399348317644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092348 (n + 1) : ℚ) / 6

end

end A363604.P1742819399348317644

noncomputable section

/-- A363604: Expansion of Sum_{k>0} x^(2*k)/(1-x^k)^4.

Offset 1, canonical program `A363604.P1742819399348317644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092348, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363604 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363604.P1742819399348317644.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092348, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363604.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363660.P14935907042977675298

`A343549(n+1)+A343548(n+1)`
-/

namespace A363660.P14935907042977675298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343549 (n + 1) + A343548 (n + 1)

end

end A363660.P14935907042977675298

noncomputable section

/-- A363660: a(n) = Sum_{d|n} binomial(d+n,n).

Offset 1, canonical program `A363660.P14935907042977675298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A363660 (n : ℕ) : ℤ :=
  A363660.P14935907042977675298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A363660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363690.P7555013278972641171

`eq[2, A246600(n+1)]+1`
-/

namespace A363690.P7555013278972641171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363690.P7555013278972641171

noncomputable section

/-- A363690: Numbers k such that A246600(k) = 2.

Offset 1, canonical program `A363690.P7555013278972641171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6268 terms. -/
def A363690 (n : ℕ) : ℤ :=
  (A363690.P7555013278972641171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6268 terms. -/
def A363690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363735.P14979785734509614972

`(n+1)²-A363734(n)`
-/

namespace A363735.P14979785734509614972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A363734 n

end

end A363735.P14979785734509614972

noncomputable section

/-- A363735: a(n) = Sum_{k=0..n} n^notdivides(k, n), where notdivides(k, n) = 0 if k divides n, otherwise 1.

Offset 0, canonical program `A363735.P14979785734509614972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363735 (n : ℕ) : ℤ :=
  A363735.P14979785734509614972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363805.P6055793300366355232

`∑{d}[n+1, A082784(#+4)]`
-/

namespace A363805.P6055793300366355232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A082784 (d + 4)

end

end A363805.P6055793300366355232

noncomputable section

/-- A363805: Number of divisors of n of the form 7*k + 3.

Offset 1, canonical program `A363805.P6055793300366355232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A363805 (n : ℕ) : ℤ :=
  A363805.P6055793300366355232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A363805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363858.P18348092328397908733

`A363808(7*n+1)`
-/

namespace A363858.P18348092328397908733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (7 * n + 1)

end

end A363858.P18348092328397908733

noncomputable section

/-- A363858: Number of divisors of 7*n-6 of form 7*k+6.

Offset 1, canonical program `A363858.P18348092328397908733`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363858 (n : ℕ) : ℤ :=
  A363858.P18348092328397908733.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363858.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363897.P12998349045789475142

`∑{d}[n+1, #*A079998((n+1)/#-1)]`
-/

namespace A363897.P12998349045789475142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A079998 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A363897.P12998349045789475142

noncomputable section

/-- A363897: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k)).

Offset 1, canonical program `A363897.P12998349045789475142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363897 (n : ℕ) : ℤ :=
  A363897.P12998349045789475142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363971.P14020667537958355418

`∑{d}[n+1, A175676(#+1)²]`
-/

namespace A363971.P14020667537958355418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A175676 (d + 1) ^ 2

end

end A363971.P14020667537958355418

noncomputable section

/-- A363971: Expansion of Sum_{k>0} k^2 * x^(3*k-1) / (1 - x^(3*k-1)).

Offset 1, canonical program `A363971.P14020667537958355418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A363971 (n : ℕ) : ℤ :=
  A363971.P14020667537958355418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A363971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364031.P18063798174580174727

`∑{d}[n+1, #*A014017((n+1)/#-1)]`
-/

namespace A364031.P18063798174580174727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A014017 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A364031.P18063798174580174727

noncomputable section

/-- A364031: Expansion of Sum_{k>0} k * x^k / (1 + x^(4*k)).

Offset 1, canonical program `A364031.P18063798174580174727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364031 (n : ℕ) : ℤ :=
  A364031.P18063798174580174727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364066.P8597521373423272142

`∑{d}[A023443(3*(n+1)), A103627(#)]`
-/

namespace A364066.P8597521373423272142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A103627 d

end

end A364066.P8597521373423272142

noncomputable section

/-- A364066: Expansion of Sum_{k>0} k * x^k / (1 - x^(3*k-1)).

Offset 1, canonical program `A364066.P8597521373423272142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A364066 (n : ℕ) : ℤ :=
  A364066.P8597521373423272142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A364066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364145.P258558499146190556

`A081294(n)-A097067(n)`
-/

namespace A364145.P258558499146190556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A097067 n

end

end A364145.P258558499146190556

noncomputable section

/-- A364145: a(n) is the sum of the first 2*n nonzero n-bonacci numbers.

Offset 0, canonical program `A364145.P258558499146190556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A364145 (n : ℕ) : ℤ :=
  A364145.P258558499146190556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A364145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364252.P12037896346580128472

`∏{p}[n+1, A340375(#)]`
-/

namespace A364252.P12037896346580128472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A340375 p

end

end A364252.P12037896346580128472

noncomputable section

/-- A364252: a(n) = 1 if n has no other prime factors than 2 and/or Mersenne primes, otherwise 0.

Offset 1, canonical program `A364252.P12037896346580128472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364252 (n : ℕ) : ℤ :=
  A364252.P12037896346580128472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364269.P1640320168653487938

`∑[(n+1)²*A328259(n+1)]`
-/

namespace A364269.P1640320168653487938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A328259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364269.P1640320168653487938

noncomputable section

/-- A364269: a(n) = Sum_{k=1..n} k^3*sigma_2(k), where sigma_2 is A001157.

Offset 1, canonical program `A364269.P1640320168653487938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364269 (n : ℕ) : ℤ :=
  A364269.P1640320168653487938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364334.P7053385915572530638

`A333870(n+2)-1`
-/

namespace A364334.P7053385915572530638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (n + 2) - 1

end

end A364334.P7053385915572530638

noncomputable section

/-- A364334: a(2) = 0; a(n) = a(n-1) + 1 if n is an odd prime; otherwise a(n) = max{a(k) : k is divisor of n, 1 < k < n}.

Offset 2, canonical program `A364334.P7053385915572530638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A364334 (n : ℕ) : ℤ :=
  A364334.P7053385915572530638.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A364334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365082.P13561048953192746811

`filter[A047471(n+1), A069513(#)]`
-/

namespace A365082.P13561048953192746811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A365082.P13561048953192746811

noncomputable section

/-- A365082: Prime powers (A246655) q such that -2 is a nonzero square in the finite field F_q.

Offset 1, canonical program `A365082.P13561048953192746811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2145 terms. -/
def A365082 (n : ℕ) : ℤ :=
  A365082.P13561048953192746811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2145 terms. -/
def A365082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365083.P431960974116738104

`A099530(A131098(n+1))`
-/

namespace A365083.P431960974116738104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099530 (A131098 (n + 1)).toNat

end

end A365083.P431960974116738104

noncomputable section

/-- A365083: G.f. satisfies A(x) = 1 + x*A(x) / (1 + x)^4.

Offset 0, canonical program `A365083.P431960974116738104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A365083 (n : ℕ) : ℤ :=
  A365083.P431960974116738104.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A365083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365205.P11524436414577157564

`2*A222408(n)-1`
-/

namespace A365205.P11524436414577157564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222408 n - 1

end

end A365205.P11524436414577157564

noncomputable section

/-- A365205: Centered pentachoral numbers.

Offset 1, canonical program `A365205.P11524436414577157564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365205 (n : ℕ) : ℤ :=
  A365205.P11524436414577157564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365313.P10204782068029342441

`filter[A091998(n+1), A069513(#)]`
-/

namespace A365313.P10204782068029342441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A365313.P10204782068029342441

noncomputable section

/-- A365313: Prime powers (A246655) q such that 3 is a nonzero square in the finite field F_q.

Offset 1, canonical program `A365313.P10204782068029342441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3085 terms. -/
def A365313 (n : ℕ) : ℤ :=
  A365313.P10204782068029342441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3085 terms. -/
def A365313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365333.P12108443979319907114

`∏{e}[A355264(n+1)/(n+1), #]`
-/

namespace A365333.P12108443979319907114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355264 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A365333.P12108443979319907114

noncomputable section

/-- A365333: The number of exponentially odd coreful divisors of the largest square dividing n.

Offset 1, canonical program `A365333.P12108443979319907114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365333 (n : ℕ) : ℤ :=
  (A365333.P12108443979319907114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365428.P6742084900381256507

`A049347(n)*A156277(n+1)`
-/

namespace A365428.P6742084900381256507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A156277 (n + 1)

end

end A365428.P6742084900381256507

noncomputable section

/-- A365428: Dirichlet inverse of A102283.

Offset 1, canonical program `A365428.P6742084900381256507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365428 (n : ℕ) : ℤ :=
  A365428.P6742084900381256507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365487.P8105429988380542903

`∏{e}[n+1, A016777(floor(#/3))]`
-/

namespace A365487.P8105429988380542903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A016777 ⌊(Nat.factorization (f1 n) p : ℚ) / 3⌋.toNat

end

end A365487.P8105429988380542903

noncomputable section

/-- A365487: The number of divisors of the largest cube dividing n.

Offset 1, canonical program `A365487.P8105429988380542903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365487 (n : ℕ) : ℤ :=
  A365487.P8105429988380542903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365549.P14243705816271026712

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], A295316(#)]`
-/

namespace A365549.P14243705816271026712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295316 d

end

end A365549.P14243705816271026712

noncomputable section

/-- A365549: The number of exponentially odd divisors of the square root of the largest square dividing n.

Offset 1, canonical program `A365549.P14243705816271026712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365549 (n : ℕ) : ℤ :=
  A365549.P14243705816271026712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365624.P4263340535415398689

`A004762(n+2)+A053644(n)+A004762(n+2)`
-/

namespace A365624.P4263340535415398689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (n + 2) + (A053644 n + A004762 (n + 2))

end

end A365624.P4263340535415398689

noncomputable section

/-- A365624: a(n) is the length of the longest word w in the Thue-Morse sequence (A010060) in which every length-n factor of w is unique.

Offset 1, canonical program `A365624.P4263340535415398689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A365624 (n : ℕ) : ℤ :=
  A365624.P4263340535415398689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A365624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365689.P10317205115109716846

`gcd(A010676(n), A010879(n))`
-/

namespace A365689.P10317205115109716846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010676 n) (A010879 n)

end

end A365689.P10317205115109716846

noncomputable section

/-- A365689: Final decimal digit of n^((n+1)^(n+2)) = A030198(n).

Offset 0, canonical program `A365689.P10317205115109716846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365689 (n : ℕ) : ℤ :=
  (A365689.P10317205115109716846.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366074.P15334897605484074236

`∑{e}[n+1, A209229(#)]`
-/

namespace A366074.P15334897605484074236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A209229 (Nat.factorization (f1 n) p)

end

end A366074.P15334897605484074236

noncomputable section

/-- A366074: The number of "Fermi-Dirac primes" (A050376) that are unitary divisors of n.

Offset 1, canonical program `A366074.P15334897605484074236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366074 (n : ℕ) : ℤ :=
  A366074.P15334897605484074236.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366108.P13156216161246593229

`2*A001405(n)-A028304(n)`
-/

namespace A366108.P13156216161246593229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001405 n - A028304 n

end

end A366108.P13156216161246593229

noncomputable section

/-- A366108: a(n) = floor(binomial(n-1, floor((n-1)/2))/2).

Offset 3, canonical program `A366108.P13156216161246593229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A366108 (n : ℕ) : ℤ :=
  A366108.P13156216161246593229.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A366108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366125.P4631598459402495062

`∑{e}[n+1, A175676(#)]`
-/

namespace A366125.P4631598459402495062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A175676 (Nat.factorization (f1 n) p)

end

end A366125.P4631598459402495062

noncomputable section

/-- A366125: The number of prime factors of the cube root of the largest unitary divisor of n that is a cube (A366126), counted with multiplicity.

Offset 1, canonical program `A366125.P4631598459402495062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366125 (n : ℕ) : ℤ :=
  A366125.P4631598459402495062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366135.P1891639476594349074

`∑{d}[n+1, A023896(#)*A328259((n+1)/#)]`
-/

namespace A366135.P1891639476594349074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A328259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366135.P1891639476594349074

noncomputable section

/-- A366135: Expansion of Sum_{k>=1} k^3 * x^k/(1 - x^k)^3.

Offset 1, canonical program `A366135.P1891639476594349074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366135 (n : ℕ) : ℤ :=
  A366135.P1891639476594349074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366202.P3672782071348663471

`lt[A000122(and(n, n²)), 1]`
-/

namespace A366202.P3672782071348663471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Nat.land n (n ^ 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366202.P3672782071348663471

noncomputable section

/-- A366202: Numbers x such that (x^2 AND x) is not a square, where AND is the bitwise logical-and operation.

Offset 1, canonical program `A366202.P3672782071348663471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A366202 (n : ℕ) : ℤ :=
  (A366202.P3672782071348663471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A366202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366288.P11447118264876121034

`lt[1, A051903(3*(n+1))]+1`
-/

namespace A366288.P11447118264876121034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366288.P11447118264876121034

noncomputable section

/-- A366288: Numbers k such that 3*k is not squarefree.

Offset 1, canonical program `A366288.P11447118264876121034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366288 (n : ℕ) : ℤ :=
  (A366288.P11447118264876121034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366451.P6303124233249025672

`A060644(n+2)-(n+2)`
-/

namespace A366451.P6303124233249025672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060644 (n + 2) - (n + 2 : ℤ)

end

end A366451.P6303124233249025672

noncomputable section

/-- A366451: The sum s > n which has the greatest probability of occurring when summing rolls of an n-sided die.

Offset 2, canonical program `A366451.P6303124233249025672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366451 (n : ℕ) : ℤ :=
  A366451.P6303124233249025672.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366462.P1666175288754453737

`A004762(n+3)+n`
-/

namespace A366462.P1666175288754453737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (n + 3) + (n : ℤ)

end

end A366462.P1666175288754453737

noncomputable section

/-- A366462: a(n) is the length of the longest word w in the Period-doubling sequence (A096268) in which every length-n factor of w is unique.

Offset 1, canonical program `A366462.P1666175288754453737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A366462 (n : ℕ) : ℤ :=
  A366462.P1666175288754453737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A366462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366526.P7303414302420691645

`filter[A047522(n+1), A069513(#)]`
-/

namespace A366526.P7303414302420691645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A366526.P7303414302420691645

noncomputable section

/-- A366526: Prime powers (A246655) q such that 2 is a nonzero square in the finite field F_q.

Offset 1, canonical program `A366526.P7303414302420691645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2148 terms. -/
def A366526 (n : ℕ) : ℤ :=
  A366526.P7303414302420691645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2148 terms. -/
def A366526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366542.P7434176657176198421

`2*(A116713(n+1)+n)`
-/

namespace A366542.P7434176657176198421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A116713 (n + 1) + (n : ℤ))

end

end A366542.P7434176657176198421

noncomputable section

/-- A366542: Number of discrete uninorms defined on the finite chain L_n={0,1,...n}, U:L_n^2->L_n, whose underlying operators are smooth and idempotent, or smooth and idempotent-free.

Offset 1, canonical program `A366542.P7434176657176198421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A366542 (n : ℕ) : ℤ :=
  A366542.P7434176657176198421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A366542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366563.P7702288216470137659

`∑{d}[n+1, A059841(#*C(n, 3)%2)]`
-/

namespace A366563.P7702288216470137659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d * (Nat.choose n 3 % 2))

end

end A366563.P7702288216470137659

noncomputable section

/-- A366563: Number of nonzero terms in row n of A366561(n,k).

Offset 1, canonical program `A366563.P7702288216470137659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A366563 (n : ℕ) : ℤ :=
  A366563.P7702288216470137659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A366563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366626.P3641504166637669905

`A366619(A113778(n+1))`
-/

namespace A366626.P3641504166637669905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366619 (A113778 (n + 1)).toNat

end

end A366626.P3641504166637669905

noncomputable section

/-- A366626: Group the natural numbers into blocks of size 2: [1,2], [3,4], ... and then reverse the order of the numbers within each block. Then group and reverse for each block size up to 4.

Offset 1, canonical program `A366626.P3641504166637669905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366626 (n : ℕ) : ℤ :=
  A366626.P3641504166637669905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366917.P14252635894861452401

`∑[-∑{d}[n+1, #*A162395(#)]]`
-/

namespace A366917.P14252635894861452401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A162395 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366917.P14252635894861452401

noncomputable section

/-- A366917: a(n) = Sum_{k=1..n} (-1)^k*k^3*floor(n/k).

Offset 1, canonical program `A366917.P14252635894861452401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366917 (n : ℕ) : ℤ :=
  A366917.P14252635894861452401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366918.P12560606387716374749

`A065475(A281188(n+1)+1)-2`
-/

namespace A366918.P12560606387716374749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A281188 (n + 1) + 1).toNat - 2

end

end A366918.P12560606387716374749

noncomputable section

/-- A366918: a(n) is the number of multiples of n that have exactly n divisors, or -1 if there are infinitely many such numbers.

Offset 1, canonical program `A366918.P12560606387716374749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366918 (n : ℕ) : ℤ :=
  A366918.P12560606387716374749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366937.P17470323213603104180

`∑[∑{d}[n+1, -A089594(#)]]`
-/

namespace A366937.P17470323213603104180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-A089594 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366937.P17470323213603104180

noncomputable section

/-- A366937: a(n) = Sum_{k=1..n} (-1)^(k-1) * binomial(k+1,2) * floor(n/k).

Offset 1, canonical program `A366937.P17470323213603104180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366937 (n : ℕ) : ℤ :=
  A366937.P17470323213603104180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367184.P1691830542074880587

`∑[A099892(n)+1]+2-A233583(A004765(2*n+5))`
-/

namespace A367184.P1691830542074880587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099892 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 - A233583 (A004765 (2 * n + 5)).toNat

end

end A367184.P1691830542074880587

noncomputable section

/-- A367184: Starting index in the Period doubling sequence (A096268) of the first maximum length word in which every subword of length n is distinct.

Offset 1, canonical program `A367184.P1691830542074880587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A367184 (n : ℕ) : ℤ :=
  A367184.P1691830542074880587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A367184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367362.P4347257855293322710

`10*A010879(n)+A000030(n+1)`
-/

namespace A367362.P4347257855293322710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A010879 n + A000030 (n + 1)

end

end A367362.P4347257855293322710

noncomputable section

/-- A367362: Comma transform of the nonnegative integers.

Offset 0, canonical program `A367362.P4347257855293322710`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367362 (n : ℕ) : ℤ :=
  A367362.P4347257855293322710.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367396.P3258263714388146902

`2^n-A367400(n)`
-/

namespace A367396.P3258263714388146902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A367400 n

end

end A367396.P3258263714388146902

noncomputable section

/-- A367396: Number of subsets of {1..n} whose cardinality is the sum of two distinct elements.

Offset 0, canonical program `A367396.P3258263714388146902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A367396 (n : ℕ) : ℤ :=
  A367396.P3258263714388146902.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A367396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367503.P16510109716886163119

`A367466(∏{p}[n+1, #])`
-/

namespace A367503.P16510109716886163119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367466 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367503.P16510109716886163119

noncomputable section

/-- A367503: Sum of the final digits of the squarefree divisors of n.

Offset 1, canonical program `A367503.P16510109716886163119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367503 (n : ℕ) : ℤ :=
  A367503.P16510109716886163119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367623.P16011491054001822898

`Δ[A122586(n+5)]+1`
-/

namespace A367623.P16011491054001822898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122586 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A367623.P16011491054001822898

noncomputable section

/-- A367623: Number of comma-children of n in base 3.

Offset 1, canonical program `A367623.P16011491054001822898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A367623 (n : ℕ) : ℤ :=
  A367623.P16011491054001822898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A367623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367864.P6188327315449160689

`(n+1)*A271654(n+1)`
-/

namespace A367864.P6188327315449160689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A271654 (n + 1)

end

end A367864.P6188327315449160689

noncomputable section

/-- A367864: a(n) = Sum_{d|n} d * binomial(n,d).

Offset 1, canonical program `A367864.P6188327315449160689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A367864 (n : ℕ) : ℤ :=
  A367864.P6188327315449160689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A367864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367987.P710473013152680471

`∑{d}[n+1, A303915(#)*A365488((n+1)/#)]`
-/

namespace A367987.P710473013152680471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A303915 d * A365488 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A367987.P710473013152680471

noncomputable section

/-- A367987: The number of square divisors of the largest unitary divisor of n that is a square.

Offset 1, canonical program `A367987.P710473013152680471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367987 (n : ℕ) : ℤ :=
  A367987.P710473013152680471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367993.P10617034212575595

`A294286(n+1)+A002415(n)`
-/

namespace A367993.P10617034212575595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294286 (n + 1) + A002415 n

end

end A367993.P10617034212575595

noncomputable section

/-- A367993: Number of 4-cycles in the n X n white bishop graph.

Offset 2, canonical program `A367993.P10617034212575595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367993 (n : ℕ) : ℤ :=
  A367993.P10617034212575595.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368047.P648204659700128719

`A000330(A237420(n))+A000292(n)`
-/

namespace A368047.P648204659700128719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A237420 n).toNat + A000292 n

end

end A368047.P648204659700128719

noncomputable section

/-- A368047: a(n) = (-1)^n * n*(n + 1)*(2*n + (-1)^n * (4*n + 5) + 1) / 12.

Offset 0, canonical program `A368047.P648204659700128719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368047 (n : ℕ) : ℤ :=
  A368047.P648204659700128719.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368052.P11723954498773587361

`A002620(n)-A004524(A032766(n))`
-/

namespace A368052.P11723954498773587361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A004524 (A032766 n).toNat

end

end A368052.P11723954498773587361

noncomputable section

/-- A368052: The degree of polynomials related to Somos-4 sequences. Also for n > 2 the degree of the (n-3)-th involution in a family of involutions in the Cremona group of rank 3 defined by a Somos-4 sequence.

Offset 0, canonical program `A368052.P11723954498773587361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A368052 (n : ℕ) : ℤ :=
  A368052.P11723954498773587361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A368052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368104.P14835760200498903158

`A286324(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))`
-/

namespace A368104.P14835760200498903158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)))

end

end A368104.P14835760200498903158

noncomputable section

/-- A368104: The number of bi-unitary divisors of the powerful part of n.

Offset 1, canonical program `A368104.P14835760200498903158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368104 (n : ℕ) : ℤ :=
  A368104.P14835760200498903158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368104.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368482.P6402120966291890

`A054925(n)-A249013(n+1)`
-/

namespace A368482.P6402120966291890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n - A249013 (n + 1)

end

end A368482.P6402120966291890

noncomputable section

/-- A368482: The degree of polynomials related to Somos-6 sequences. Also for n > 4 the degree of the (n-5)-th involution in a family of involutions in the Cremona group of rank 5 defined by a Somos-6 sequence.

Offset 0, canonical program `A368482.P6402120966291890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368482 (n : ℕ) : ℤ :=
  A368482.P6402120966291890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368647.P6890929061440035933

`A005090(n+1)-A005088(n+1)`
-/

namespace A368647.P6890929061440035933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1) - A005088 (n + 1)

end

end A368647.P6890929061440035933

noncomputable section

/-- A368647: The number of distinct primes of the form 3*k+2 dividing n minus the number of distinct primes of the form 3*k+1 dividing n.

Offset 1, canonical program `A368647.P6890929061440035933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, A005090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368647 (n : ℕ) : ℤ :=
  A368647.P6890929061440035933.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, A005090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368744.P350541003398981716

`A129343(n+1)-n`
-/

namespace A368744.P350541003398981716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129343 (n + 1) - (n : ℤ)

end

end A368744.P350541003398981716

noncomputable section

/-- A368744: a(n) = Sum_{d|n} (-1)^(d+1)*phi(d), where phi(n) = A000010(n).

Offset 1, canonical program `A368744.P350541003398981716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368744 (n : ℕ) : ℤ :=
  A368744.P350541003398981716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368781.P2809207346067971306

`A053644(A051903(n+1))`
-/

namespace A368781.P2809207346067971306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A051903 (n + 1)).toNat

end

end A368781.P2809207346067971306

noncomputable section

/-- A368781: The maximal exponent in the unique factorization of n in terms of distinct "Fermi-Dirac primes".

Offset 1, canonical program `A368781.P2809207346067971306`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368781 (n : ℕ) : ℤ :=
  A368781.P2809207346067971306.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368781.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369020.P13526593118632980904

`eq[A051903(n+1), A051903(n+2)]+1`
-/

namespace A369020.P13526593118632980904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A369020.P13526593118632980904

noncomputable section

/-- A369020: Numbers k such that k and k+1 have the same maximal exponent in their prime factorization.

Offset 1, canonical program `A369020.P13526593118632980904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369020 (n : ℕ) : ℤ :=
  (A369020.P13526593118632980904.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369058.P7184331783383274919

`and(n+1, A101605(n+1))`
-/

namespace A369058.P7184331783383274919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A101605 (n + 1))

end

end A369058.P7184331783383274919

noncomputable section

/-- A369058: a(n) = 1 if n is a product of three (not necessarily distinct) odd primes, otherwise 0.

Offset 1, canonical program `A369058.P7184331783383274919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369058 (n : ℕ) : ℤ :=
  A369058.P7184331783383274919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369113.P14032080905167550968

`A001971(n)-A008616(n²)`
-/

namespace A369113.P14032080905167550968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n - A008616 (n ^ 2)

end

end A369113.P14032080905167550968

noncomputable section

/-- A369113: Tropical version of Somos-6 sequence A006722.

Offset 0, canonical program `A369113.P14032080905167550968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A369113 (n : ℕ) : ℤ :=
  A369113.P14032080905167550968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A369113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369307.P4586267227378045470

`∑{d}[n+1, A295316(#)*A295316((n+1)/#)]`
-/

namespace A369307.P4586267227378045470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295316 d * A295316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369307.P4586267227378045470

noncomputable section

/-- A369307: The number of exponentially odd divisors d of n such that n/d is also exponentially odd.

Offset 1, canonical program `A369307.P4586267227378045470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369307 (n : ℕ) : ℤ :=
  A369307.P4586267227378045470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369309.P724435184133037791

`A190867(n+1)*A197881(n+1)`
-/

namespace A369309.P724435184133037791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 (n + 1) * A197881 (n + 1)

end

end A369309.P724435184133037791

noncomputable section

/-- A369309: The number of powerful divisors d of n such that n/d is also powerful.

Offset 1, canonical program `A369309.P724435184133037791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369309 (n : ℕ) : ℤ :=
  A369309.P724435184133037791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369428.P15870185605642581641

`∑{e}[n+1, A010052(#)]`
-/

namespace A369428.P15870185605642581641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A010052 (Nat.factorization (f1 n) p)

end

end A369428.P15870185605642581641

noncomputable section

/-- A369428: The number of exponents in the prime factorization of n that are squares.

Offset 1, canonical program `A369428.P15870185605642581641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369428 (n : ℕ) : ℤ :=
  A369428.P15870185605642581641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369568.P670268573883120058

`floor(A258087(n+4)/2)`
-/

namespace A369568.P670268573883120058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258087 (n + 4) : ℚ) / 2⌋

end

end A369568.P670268573883120058

noncomputable section

/-- A369568: Minimum number of edges that force an n-vertex graph to be Hamiltonian according to Chvátal's condition on the degree sequence.

Offset 3, canonical program `A369568.P670268573883120058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A369568 (n : ℕ) : ℤ :=
  A369568.P670268573883120058.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A369568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369611.P6460849240629551993

`A025795(n)-(A008676(n)+A008616(n))`
-/

namespace A369611.P6460849240629551993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 n - (A008676 n + A008616 n)

end

end A369611.P6460849240629551993

noncomputable section

/-- A369611: Tropical version of Somos-7 sequence A006723.

Offset 0, canonical program `A369611.P6460849240629551993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369611 (n : ℕ) : ℤ :=
  A369611.P6460849240629551993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369743.P5377607149347298905

`A105221(n+1)*A252736(n+1)`
-/

namespace A369743.P5377607149347298905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105221 (n + 1) * A252736 (n + 1)

end

end A369743.P5377607149347298905

noncomputable section

/-- A369743: a(n) = Sum_{p|n, p prime} p * Omega(n/p).

Offset 1, canonical program `A369743.P5377607149347298905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369743 (n : ℕ) : ℤ :=
  A369743.P5377607149347298905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369748.P2504085863916396421

`∑{p}[n+1, A000040((n+1)/#)]`
-/

namespace A369748.P2504085863916396421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A369748.P2504085863916396421

noncomputable section

/-- A369748: a(n) = Sum_{p|n, p prime} prime(n/p).

Offset 1, canonical program `A369748.P2504085863916396421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369748 (n : ℕ) : ℤ :=
  A369748.P2504085863916396421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369779.P12147843016961809865

`∑{d}[n+1, A055615(#)*A322078((n+1)/#)]`
-/

namespace A369779.P12147843016961809865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A322078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369779.P12147843016961809865

noncomputable section

/-- A369779: a(n) = n * Sum_{p|n, p prime} phi(n/p) / p.

Offset 1, canonical program `A369779.P12147843016961809865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369779 (n : ℕ) : ℤ :=
  A369779.P12147843016961809865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369794.P14158762246026196336

`A017837(record[A019426(n)])`
-/

namespace A369794.P14158762246026196336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A369794.P14158762246026196336

noncomputable section

/-- A369794: Expansion of 1/(1 - x^5/(1-x)^6).

Offset 0, canonical program `A369794.P14158762246026196336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A369794 (n : ℕ) : ℤ :=
  A369794.P14158762246026196336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A369794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369805.P14252818368733521426

`A369813(A116728(n+2))`
-/

namespace A369805.P14252818368733521426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369813 (A116728 (n + 2)).toNat

end

end A369805.P14252818368733521426

noncomputable section

/-- A369805: Expansion of 1/(1 - x^2/(1-x)^7).

Offset 0, canonical program `A369805.P14252818368733521426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A369805 (n : ℕ) : ℤ :=
  A369805.P14252818368733521426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A369805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369854.P4226813083870044623

`A037031(n)-1`
-/

namespace A369854.P4226813083870044623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 n - 1

end

end A369854.P4226813083870044623

noncomputable section

/-- A369854: a(n) = number of nonempty subsets S of {1,2,...,n} such that (number of nonprimes in S) = (number of primes in S).

Offset 0, canonical program `A369854.P4226813083870044623`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369854 (n : ℕ) : ℤ :=
  A369854.P4226813083870044623.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369904.P7842773644825472258

`∑{d}[n+1, #*A322078((n+1)/#)]`
-/

namespace A369904.P7842773644825472258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A322078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369904.P7842773644825472258

noncomputable section

/-- A369904: a(n) = n * Sum_{p|n, p prime} sigma(n/p) / p.

Offset 1, canonical program `A369904.P7842773644825472258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369904 (n : ℕ) : ℤ :=
  A369904.P7842773644825472258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369937.P6430263138363579003

`eq[1, A010052(A051903(n+1))]+1`
-/

namespace A369937.P6430263138363579003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A051903 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369937.P6430263138363579003

noncomputable section

/-- A369937: Numbers whose maximal exponent in their prime factorization is square.

Offset 1, canonical program `A369937.P6430263138363579003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369937 (n : ℕ) : ℤ :=
  (A369937.P6430263138363579003.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370180.P11085315799731063641

`gcd(n+1, A259364(n))`
-/

namespace A370180.P11085315799731063641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A259364 n)

end

end A370180.P11085315799731063641

noncomputable section

/-- A370180: Size of the group Z_3*/(Z_3*)^n, where Z_3 is the ring of 3-adic integers.

Offset 1, canonical program `A370180.P11085315799731063641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370180 (n : ℕ) : ℤ :=
  (A370180.P11085315799731063641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370180.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A370297.P5303154117409437181

`∏{e}[n+1, A001844(#)]`
-/

namespace A370297.P5303154117409437181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001844 (Nat.factorization (f1 n) p)

end

end A370297.P5303154117409437181

noncomputable section

/-- A370297: Inverse Moebius transform of A322328.

Offset 1, canonical program `A370297.P5303154117409437181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370297 (n : ℕ) : ℤ :=
  A370297.P5303154117409437181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370299.P15785426155661098065

`C(∑[(2*3^n)%A001653(n+1)], 2)`
-/

namespace A370299.P15785426155661098065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * 3 ^ n : ℤ) (A001653 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A370299.P15785426155661098065

noncomputable section

/-- A370299: Number of chordless cycles in the complement of the n-Sierpinski gasket graph.

Offset 1, canonical program `A370299.P15785426155661098065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A370299 (n : ℕ) : ℤ :=
  (A370299.P15785426155661098065.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A370299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370377.P18217661859686456735

`A038196(A103889(n+2))`
-/

namespace A370377.P18217661859686456735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (A103889 (n + 2)).toNat

end

end A370377.P18217661859686456735

noncomputable section

/-- A370377: a(n) is the number of symmetrical linear hydrocarbon chains with n C-C bonds.

Offset 0, canonical program `A370377.P18217661859686456735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 569 terms. -/
def A370377 (n : ℕ) : ℤ :=
  A370377.P18217661859686456735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 569 terms. -/
def A370377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370482.P9499058320465952393

`A059841(n)+∑{p}[n, val(#, n)]`
-/

namespace A370482.P9499058320465952393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p n : ℕ) : ℤ)

end

end A370482.P9499058320465952393

noncomputable section

/-- A370482: Characteristic function of primes plus characteristic function of even numbers.

Offset 0, canonical program `A370482.P9499058320465952393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370482 (n : ℕ) : ℤ :=
  A370482.P9499058320465952393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370634.P2494409983904551626

`ratio[A135507(A004273(n)-(n-1))]`
-/

namespace A370634.P2494409983904551626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135507 (A004273 n - ((n : ℤ) - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A370634.P2494409983904551626

noncomputable section

/-- A370634: A135507(n) is the product of the first n terms of this sequence.

Offset 1, canonical program `A370634.P2494409983904551626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A370634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370634.P2494409983904551626.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A370634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370754.P14602704902298931094

`A369817(n+1)+1`
-/

namespace A370754.P14602704902298931094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369817 (n + 1) + 1

end

end A370754.P14602704902298931094

noncomputable section

/-- A370754: a(n) = 2 + n^2*floor((n+3)/2) + floor(3*n/2).

Offset 1, canonical program `A370754.P14602704902298931094`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370754 (n : ℕ) : ℤ :=
  A370754.P14602704902298931094.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317934.P10452850100069077886

`2^A317946(n+1)`
-/

namespace A317934.P10452850100069077886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A317946 (n + 1) : ℤ)

end

end A317934.P10452850100069077886

noncomputable section

/-- A317934: Multiplicative with a(p^n) = 2^A011371(n); denominators for certain "Dirichlet Square Roots" sequences.

Offset 1, canonical program `A317934.P10452850100069077886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317934.P10452850100069077886.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318454.P11038260069128850637

`2^A318455(n+1)`
-/

namespace A318454.P11038260069128850637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318455 (n + 1) : ℤ)

end

end A318454.P11038260069128850637

noncomputable section

/-- A318454: Denominators of the sequence whose Dirichlet convolution with itself yields A001227, number of odd divisors of n.

Offset 1, canonical program `A318454.P11038260069128850637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318455, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318454 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318454.P11038260069128850637.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318455, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318608.P7923253369301000760

`(1-and(2, n))*A323239(n+1)`
-/

namespace A318608.P7923253369301000760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A323239 (n + 1)

end

end A318608.P7923253369301000760

noncomputable section

/-- A318608: Moebius function mu(n) defined for the Gaussian integers.

Offset 1, canonical program `A318608.P7923253369301000760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318608 (n : ℕ) : ℤ :=
  A318608.P7923253369301000760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318874.P6528447508863848521

`∑{d}[n+1, A374134(#)]`
-/

namespace A318874.P6528447508863848521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A374134 d

end

end A318874.P6528447508863848521

noncomputable section

/-- A318874: Number of divisors d of n for which 2*phi(d) > d.

Offset 1, canonical program `A318874.P6528447508863848521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318874 (n : ℕ) : ℤ :=
  A318874.P6528447508863848521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318875.P8998156499210049195

`∑{d}[n+1, A323170(#)]`
-/

namespace A318875.P8998156499210049195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323170 d

end

end A318875.P8998156499210049195

noncomputable section

/-- A318875: Number of divisors d of n for which 2*phi(d) < d.

Offset 1, canonical program `A318875.P8998156499210049195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318875 (n : ℕ) : ℤ :=
  A318875.P8998156499210049195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318876.P9287769333122657800

`∑{d}[n+1, #*A374134(#)]`
-/

namespace A318876.P9287769333122657800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A374134 d

end

end A318876.P9287769333122657800

noncomputable section

/-- A318876: Sum of divisors d of n for which 2*phi(d) > d.

Offset 1, canonical program `A318876.P9287769333122657800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318876 (n : ℕ) : ℤ :=
  A318876.P9287769333122657800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318877.P9970862317618563708

`∑{d}[n+1, #*A323170(#)]`
-/

namespace A318877.P9970862317618563708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A323170 d

end

end A318877.P9970862317618563708

noncomputable section

/-- A318877: Sum of divisors d of n for which 2*phi(d) < d.

Offset 1, canonical program `A318877.P9970862317618563708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318877 (n : ℕ) : ℤ :=
  A318877.P9970862317618563708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319258.P16680523646916634004

`∑[gcd(n, A335129(n+4))*A335129(n+4)]`
-/

namespace A319258.P16680523646916634004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A335129 (n + 4)) : ℤ) * A335129 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319258.P16680523646916634004

noncomputable section

/-- A319258: a(n) = 1 + 2*3 + 4 + 5*6 + 7 + 8*9 + 10 + 11*12 + ... + (up to n).

Offset 1, canonical program `A319258.P16680523646916634004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A319258 (n : ℕ) : ℤ :=
  A319258.P16680523646916634004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A319258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319776.P4984269611817693773

`A320111(A008574(n))+∑[A032741(n)]`
-/

namespace A319776.P4984269611817693773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A008574 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319776.P4984269611817693773

noncomputable section

/-- A319776: Number of partitions of 2n in which any two distinct parts differ by at least n.

Offset 0, canonical program `A319776.P4984269611817693773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A319776 (n : ℕ) : ℤ :=
  A319776.P4984269611817693773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A319776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320071.P2683966818165125701

`∑{d}[n+1, A007427(#)*A339686((n+1)/#)]`
-/

namespace A320071.P2683966818165125701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A339686 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320071.P2683966818165125701

noncomputable section

/-- A320071: Number of length n primitive (=aperiodic or period n) 6-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320071.P2683966818165125701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A320071 (n : ℕ) : ℤ :=
  A320071.P2683966818165125701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A320071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320072.P6136818762582118294

`∑{d}[n+1, A007427(#)*A339687((n+1)/#)]`
-/

namespace A320072.P6136818762582118294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A339687 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320072.P6136818762582118294

noncomputable section

/-- A320072: Number of length n primitive (=aperiodic or period n) 7-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320072.P6136818762582118294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A320072 (n : ℕ) : ℤ :=
  A320072.P6136818762582118294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A320072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320073.P573126222224900176

`∑{d}[n+1, A007427(#)*A339688((n+1)/#)]`
-/

namespace A320073.P573126222224900176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A339688 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320073.P573126222224900176

noncomputable section

/-- A320073: Number of length n primitive (=aperiodic or period n) 8-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320073.P573126222224900176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A320073 (n : ℕ) : ℤ :=
  A320073.P573126222224900176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A320073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320074.P12082803860178623221

`∑{d}[n+1, A007427(#)*A339689((n+1)/#)]`
-/

namespace A320074.P12082803860178623221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A339689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320074.P12082803860178623221

noncomputable section

/-- A320074: Number of length n primitive (=aperiodic or period n) 9-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320074.P12082803860178623221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A320074 (n : ℕ) : ℤ :=
  A320074.P12082803860178623221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A320074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320632.P12850052149328175340

`eq[1, A379958(n+1)]+1`
-/

namespace A320632.P12850052149328175340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320632.P12850052149328175340

noncomputable section

/-- A320632: Numbers k such that there exists a pair of factorizations of k into factors > 1 where no factor of one divides any factor of the other.

Offset 1, canonical program `A320632.P12850052149328175340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320632 (n : ℕ) : ℤ :=
  (A320632.P12850052149328175340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321013.P13730474975989391293

`A338649(n+1)-A338652(n+1)`
-/

namespace A321013.P13730474975989391293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338649 (n + 1) - A338652 (n + 1)

end

end A321013.P13730474975989391293

noncomputable section

/-- A321013: a(n) = how many of {6,7,8} divide n.

Offset 1, canonical program `A321013.P13730474975989391293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321013 (n : ℕ) : ℤ :=
  A321013.P13730474975989391293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321015.P1134771040265211832

`∑{d}[n+1, A387540(#)]`
-/

namespace A321015.P1134771040265211832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A387540 d

end

end A321015.P1134771040265211832

noncomputable section

/-- A321015: Number of isohedral Voronoi parallelotopes in R^n.

Offset 1, canonical program `A321015.P1134771040265211832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A321015 (n : ℕ) : ℤ :=
  A321015.P1134771040265211832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A321015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321549.P10078138351214375187

`2*A321814(n+1)-A013958(n+1)`
-/

namespace A321549.P10078138351214375187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321814 (n + 1) - A013958 (n + 1)

end

end A321549.P10078138351214375187

noncomputable section

/-- A321549: a(n) = Sum_{d|n} (-1)^(d-1)*d^10.

Offset 1, canonical program `A321549.P10078138351214375187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321549 (n : ℕ) : ℤ :=
  A321549.P10078138351214375187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321555.P2088311004678496036

`2*A321819(n+1)-A013958(n+1)`
-/

namespace A321555.P2088311004678496036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321819 (n + 1) - A013958 (n + 1)

end

end A321555.P2088311004678496036

noncomputable section

/-- A321555: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^10.

Offset 1, canonical program `A321555.P2088311004678496036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321555 (n : ℕ) : ℤ :=
  A321555.P2088311004678496036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324652.P15448140147024622737

`eq[1, A324658(n+1)+1]+1`
-/

namespace A324652.P15448140147024622737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324658 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324652.P15448140147024622737

noncomputable section

/-- A324652: Numbers k such that A318468(k) (bitwise-AND of 2*k and sigma(k)) is equal to 2*k.

Offset 1, canonical program `A324652.P15448140147024622737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A324652 (n : ℕ) : ℤ :=
  (A324652.P15448140147024622737.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A324652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325102.P14679269037956445384

`2*A325103(n)`
-/

namespace A325102.P14679269037956445384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325103 n

end

end A325102.P14679269037956445384

noncomputable section

/-- A325102: Number of ordered pairs of positive integers up to n with no binary carries.

Offset 0, canonical program `A325102.P14679269037956445384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325102 (n : ℕ) : ℤ :=
  A325102.P14679269037956445384.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325102.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325423.P4379105431595009186

`lt[A260196(n), A340793(2*n+1)]`
-/

namespace A325423.P4379105431595009186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325423.P4379105431595009186

noncomputable section

/-- A325423: Numbers k such that sigma(2*k+1) >= sigma(2*k).

Offset 1, canonical program `A325423.P4379105431595009186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A325423 (n : ℕ) : ℤ :=
  (A325423.P4379105431595009186.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A325423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325887.P6318016964475315553

`∑{d}[n+1, A000463(#)*A349343((n+1)/#)]`
-/

namespace A325887.P6318016964475315553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000463 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A325887.P6318016964475315553

noncomputable section

/-- A325887: Excess of sum of odd integers up to n and coprime to n over sum of even integers up to n and coprime to n.

Offset 1, canonical program `A325887.P6318016964475315553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325887 (n : ℕ) : ℤ :=
  A325887.P6318016964475315553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329829.P3969999251013473238

`comp[A329830(n+1)-1]+1`
-/

namespace A329829.P3969999251013473238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329830 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A329829.P3969999251013473238

noncomputable section

/-- A329829: Beatty sequence for (2+sqrt(10))/3.

Offset 1, canonical program `A329829.P3969999251013473238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329829 (n : ℕ) : ℤ :=
  (A329829.P3969999251013473238.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330177.P3105431535659456884

`A330178(A279608(n+1)-1)+3`
-/

namespace A330177.P3105431535659456884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330178 (A279608 (n + 1) - 1).toNat + 3

end

end A330177.P3105431535659456884

noncomputable section

/-- A330177: a(n) = n + floor(ns/r) + floor(nt/r), where r = e - 2, s = e - 1, t = e.

Offset 1, canonical program `A330177.P3105431535659456884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2642 terms. -/
def A330177 (n : ℕ) : ℤ :=
  A330177.P3105431535659456884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2642 terms. -/
def A330177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333535.P11527301897847731392

`n-∑[A341591(n+1)]`
-/

namespace A333535.P11527301897847731392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333535.P11527301897847731392

noncomputable section

/-- A333535: Card{ k<=n, k such that all prime divisors of k are < sqrt(k) }.

Offset 1, canonical program `A333535.P11527301897847731392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333535 (n : ℕ) : ℤ :=
  A333535.P11527301897847731392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334239.P2316855968006640335

`A337566(n+1)-A005087(n+1)`
-/

namespace A334239.P2316855968006640335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337566 (n + 1) - A005087 (n + 1)

end

end A334239.P2316855968006640335

noncomputable section

/-- A334239: Number of r X s rectangles with composite side lengths such that r + s = 2n, r <= s and r | s.

Offset 1, canonical program `A334239.P2316855968006640335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334239 (n : ℕ) : ℤ :=
  A334239.P2316855968006640335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338373.P9838038020124048025

`eq[0, A340369(2*n+1)]`
-/

namespace A338373.P9838038020124048025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338373.P9838038020124048025

noncomputable section

/-- A338373: Numbers k such that bigomega(2*k + 1) >= 4.

Offset 1, canonical program `A338373.P9838038020124048025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5419 terms. -/
def A338373 (n : ℕ) : ℤ :=
  (A338373.P9838038020124048025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5419 terms. -/
def A338373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339690.P16723611076842397338

`eq[1, A372574(n+1)]+1`
-/

namespace A339690.P16723611076842397338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A339690.P16723611076842397338

noncomputable section

/-- A339690: Positive integers of the form 4^i*9^j*k with gcd(k,6)=1.

Offset 1, canonical program `A339690.P16723611076842397338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339690 (n : ℕ) : ℤ :=
  (A339690.P16723611076842397338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339963.P3504095214117337205

`eq[2, A339964(n+2)]+2`
-/

namespace A339963.P3504095214117337205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A339963.P3504095214117337205

noncomputable section

/-- A339963: Numbers k such that gcd(k+1, sigma(k)) is 2.

Offset 1, canonical program `A339963.P3504095214117337205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6031 terms. -/
def A339963 (n : ℕ) : ℤ :=
  (A339963.P3504095214117337205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6031 terms. -/
def A339963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344609.P17132378078969577972

`eq[0, A353669(n+1)]+1`
-/

namespace A344609.P17132378078969577972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344609.P17132378078969577972

noncomputable section

/-- A344609: Numbers whose alternating sum of prime indices is >= 0.

Offset 1, canonical program `A344609.P17132378078969577972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344609 (n : ℕ) : ℤ :=
  (A344609.P17132378078969577972.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345261.P8733278176874568448

`∑{d}[n+1, #*A367865((n+1)/#)]`
-/

namespace A345261.P8733278176874568448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A367865 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345261.P8733278176874568448

noncomputable section

/-- A345261: a(n) = Sum_{d|n} d * rad(d).

Offset 1, canonical program `A345261.P8733278176874568448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345261 (n : ℕ) : ℤ :=
  A345261.P8733278176874568448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346597.P17401246650234246717

`∑[(n+1)²/A355264(n+1)]`
-/

namespace A346597.P17401246650234246717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A355264 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346597.P17401246650234246717

noncomputable section

/-- A346597: Partial sums of A019554.

Offset 1, canonical program `A346597.P17401246650234246717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346597 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346597.P17401246650234246717.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346878.P5483888305537072488

`1+A346880(n+1)`
-/

namespace A346878.P5483888305537072488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A346880 (n + 1)

end

end A346878.P5483888305537072488

noncomputable section

/-- A346878: Sum of the divisors, except for the largest, of the n-th positive even number.

Offset 1, canonical program `A346878.P5483888305537072488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346878 (n : ℕ) : ℤ :=
  A346878.P5483888305537072488.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349337.P2491489838322960303

`∑{d}[n+1, A055615(#)*A355939((n+1)/#)]`
-/

namespace A349337.P2491489838322960303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A355939 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349337.P2491489838322960303

noncomputable section

/-- A349337: Dirichlet inverse of A230593.

Offset 1, canonical program `A349337.P2491489838322960303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349337 (n : ℕ) : ℤ :=
  A349337.P2491489838322960303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355947.P8187086082936947056

`A362625(n+1)+A339370(n+1)`
-/

namespace A355947.P8187086082936947056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362625 (n + 1) + A339370 (n + 1)

end

end A355947.P8187086082936947056

noncomputable section

/-- A355947: a(n) = Sum_{k=1..n} (n+1-k)*floor(n/k).

Offset 0, canonical program `A355947.P8187086082936947056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355947 (n : ℕ) : ℤ :=
  A355947.P8187086082936947056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358510.P3611814579381397063

`comp[A358511(n+1)-1]+1`
-/

namespace A358510.P3611814579381397063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358511 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A358510.P3611814579381397063

noncomputable section

/-- A358510: Positions of zeros in A342991.

Offset 1, canonical program `A358510.P3611814579381397063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358510 (n : ℕ) : ℤ :=
  (A358510.P3611814579381397063.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359508.P10292830697766331420

`abs(A378218(n+2))`
-/

namespace A359508.P10292830697766331420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A378218 (n + 2)|

end

end A359508.P10292830697766331420

noncomputable section

/-- A359508: a(n) = log_2(A359507(n) - 1).

Offset 1, canonical program `A359508.P10292830697766331420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359508 (n : ℕ) : ℤ :=
  A359508.P10292830697766331420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360015.P15905929138767482447

`eq[1, A373252(n+1)]+1`
-/

namespace A360015.P15905929138767482447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360015.P15905929138767482447

noncomputable section

/-- A360015: Numbers whose exponent of 2 in their canonical prime factorization is equal to the maximal exponent.

Offset 1, canonical program `A360015.P15905929138767482447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360015 (n : ℕ) : ℤ :=
  (A360015.P15905929138767482447.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361204.P7656448604655005906

`lt[A361205(n+1), 1]+1`
-/

namespace A361204.P7656448604655005906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361205 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A361204.P7656448604655005906

noncomputable section

/-- A361204: Positive integers k such that 2*omega(k) <= bigomega(k).

Offset 1, canonical program `A361204.P7656448604655005906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A361204 (n : ℕ) : ℤ :=
  (A361204.P7656448604655005906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A361204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363291.P15296637792301002088

`A363316(2*(n+1))`
-/

namespace A363291.P15296637792301002088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363316 (2 * (n + 1))

end

end A363291.P15296637792301002088

noncomputable section

/-- A363291: Sum of divisors of 4*n-1 of form 4*k+1.

Offset 1, canonical program `A363291.P15296637792301002088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363291 (n : ℕ) : ℤ :=
  A363291.P15296637792301002088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366534.P7513427709084143498

`filter[A366742(n+1), A209229(#)]`
-/

namespace A366534.P7513427709084143498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A366534.P7513427709084143498

noncomputable section

/-- A366534: The number of unitary divisors of the exponentially odd numbers (A268335).

Offset 1, canonical program `A366534.P7513427709084143498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A366534 (n : ℕ) : ℤ :=
  A366534.P7513427709084143498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. -/
def A366534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370597.P7414276233010119171

`record[root(A000027(2*(n+1)), A378887(n+1))]`
-/

namespace A370597.P7414276233010119171
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * (n + 1)) : ℝ) ^ (1 / (A378887 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370597.P7414276233010119171

noncomputable section

/-- A370597: Even numbers k such that gcd(k, A007814(k)) = 1.

Offset 1, canonical program `A370597.P7414276233010119171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A370597 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370597.P7414276233010119171.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. -/
def A370597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318458.P13171011643438111848

`A000203(n+1)-A318456(n+1)`
-/

namespace A318458.P13171011643438111848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A318456 (n + 1)

end

end A318458.P13171011643438111848

noncomputable section

/-- A318458: a(n) = n AND A001065(n), where AND is bitwise-and (A004198) & A001065 = sum of proper divisors.

Offset 1, canonical program `A318458.P13171011643438111848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318458 (n : ℕ) : ℤ :=
  A318458.P13171011643438111848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318666.P16554539009773594118

`2^A007949(n+1)`
-/

namespace A318666.P16554539009773594118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007949 (n + 1) : ℤ)

end

end A318666.P16554539009773594118

noncomputable section

/-- A318666: a(n) = 2^{the 3-adic valuation of n}.

Offset 1, canonical program `A318666.P16554539009773594118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318666 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318666.P16554539009773594118.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318674.P1768733066523102613

`(A048250(n+1)+A023900(n+1))/2`
-/

namespace A318674.P1768733066523102613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) + A023900 (n + 1) : ℚ) / 2

end

end A318674.P1768733066523102613

noncomputable section

/-- A318674: Sum of squarefree divisors of n that have an even number of prime factors.

Offset 1, canonical program `A318674.P1768733066523102613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318674 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318674.P1768733066523102613.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318674.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318829.P17686825492943057174

`A063994(n+1)/A049559(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318829.P17686825492943057174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063994 (n + 1) : ℚ) / (A049559 (n + 1) : ℚ)

end

end A318829.P17686825492943057174

noncomputable section

/-- A318829: a(n) = A063994(n) / A049559(n) = (1/gcd(n-1, phi(n))) * Product_{primes p dividing n} gcd(p-1, n-1).

Offset 1, canonical program `A318829.P17686825492943057174`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049559, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318829 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318829.P17686825492943057174.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049559, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318829.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320001.P12998613339711541630

`A279060(n+1)-A079979(n)`
-/

namespace A320001.P12998613339711541630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (n + 1) - A079979 n

end

end A320001.P12998613339711541630

noncomputable section

/-- A320001: Number of proper divisors of n of the form 6*k + 1.

Offset 1, canonical program `A320001.P12998613339711541630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320001 (n : ℕ) : ℤ :=
  A320001.P12998613339711541630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320005.P17788538960493926001

`∑{d}[n+1, A157658(#)*A319995((n+1)/#)]`
-/

namespace A320005.P17788538960493926001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A319995 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320005.P17788538960493926001

noncomputable section

/-- A320005: Number of proper divisors of n of the form 6*k + 5.

Offset 1, canonical program `A320005.P17788538960493926001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320005 (n : ℕ) : ℤ :=
  A320005.P17788538960493926001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320016.P17323051166244969309

`a(A032741(n+1))*Δ[A006218(n)]` with `a(0)=1, a(1)=1`
-/

namespace A320016.P17323051166244969309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A032741 (n + 1)).toNat * (f1 (n + 1) - f1 n)

end

end A320016.P17323051166244969309

noncomputable section

/-- A320016: a(1) = a(2) = 1; for n > 2, a(n) = A000005(n) * a(A000005(n)), where A000005(n) gives the number of divisors of n.

Offset 1, canonical program `A320016.P17323051166244969309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320016 (n : ℕ) : ℤ :=
  A320016.P17323051166244969309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321193.P431441058952180868

`2*(lt[A001221(2*(n+1)), 3]+1)`
-/

namespace A321193.P431441058952180868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A321193.P431441058952180868

noncomputable section

/-- A321193: Even numbers with no more than one odd prime factor, not counting multiplicity.

Offset 1, canonical program `A321193.P431441058952180868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321193 (n : ℕ) : ℤ :=
  (A321193.P431441058952180868.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322328.P406640115135084941

`A005361(n+1)*4^A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322328.P406640115135084941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) * (4 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A322328.P406640115135084941

noncomputable section

/-- A322328: a(n) = A005361(n) * 4^A001221(n) for n > 0.

Offset 1, canonical program `A322328.P406640115135084941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322328 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A322328.P406640115135084941.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A322328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324121.P11277204959102543780

`gcd(∑{d}[n+1, #], A038040(n+1))`
-/

namespace A324121.P11277204959102543780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A038040 (n + 1))

end

end A324121.P11277204959102543780

noncomputable section

/-- A324121: a(n) = gcd(n*d(n), sigma(n)), where d(n) = number of divisors of n (A000005) and sigma(n) = sum of divisors of n (A000203).

Offset 1, canonical program `A324121.P11277204959102543780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324121 (n : ℕ) : ℤ :=
  (A324121.P11277204959102543780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324245.P9435010914356498556

`A342131(n)%A324036(n)`
-/

namespace A324245.P9435010914356498556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342131 n) (A324036 n)

end

end A324245.P9435010914356498556

noncomputable section

/-- A324245: The modified Collatz map considered by Vaillant and Delarue.

Offset 0, canonical program `A324245.P9435010914356498556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324245 (n : ℕ) : ℤ :=
  A324245.P9435010914356498556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324501.P1716032831025346766

`∑{d}[n+1, A007955(n+1)/A007955(#)]`
-/

namespace A324501.P1716032831025346766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007955 (n + 1) : ℚ) / (A007955 d : ℚ)

end

end A324501.P1716032831025346766

noncomputable section

/-- A324501: a(n) = numerator of Sum_{d|n} (1/pod(d)) where pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A324501.P1716032831025346766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324501 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A324501.P1716032831025346766.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A324501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324726.P9824168674270206015

`eq[2*(n+1), A318466(n+1)]+1`
-/

namespace A324726.P9824168674270206015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324726.P9824168674270206015

noncomputable section

/-- A324726: Numbers k such that 2*k is equal to 2*k OR sigma(k), where OR is bitwise-or, A003986, and sigma is the sum of divisors function.

Offset 1, canonical program `A324726.P9824168674270206015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A324726 (n : ℕ) : ℤ :=
  (A324726.P9824168674270206015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A324726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325318.P11183084377846561957

`A000203(n+1)-A325316(n+1)`
-/

namespace A325318.P11183084377846561957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325316 (n + 1)

end

end A325318.P11183084377846561957

noncomputable section

/-- A325318: a(n) = A048250(n) AND A162296(n), where AND is the bitwise-AND, A004198.

Offset 1, canonical program `A325318.P11183084377846561957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325318 (n : ℕ) : ℤ :=
  A325318.P11183084377846561957.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325318.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325943.P7234983070192388028

`floor((n+2)/A001221(n+2))`
-/

namespace A325943.P7234983070192388028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A001221 (n + 2) : ℚ)⌋

end

end A325943.P7234983070192388028

noncomputable section

/-- A325943: a(n) = floor(n / omega(n)) where omega = A001221.

Offset 2, canonical program `A325943.P7234983070192388028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325943 (n : ℕ) : ℤ :=
  A325943.P7234983070192388028.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327326.P15839165817513930619

`A006218(n)-A005187(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327326.P15839165817513930619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A005187 n

end

end A327326.P15839165817513930619

noncomputable section

/-- A327326: a(n) = A006218(n) - A005187(n).

Offset 0, canonical program `A327326.P15839165817513930619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327326 (n : ℕ) : ℤ :=
  A327326.P15839165817513930619.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327326.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327327.P333352576343243044

`A024916(n+1)-A080277(n+1)`
-/

namespace A327327.P333352576343243044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A080277 (n + 1)

end

end A327327.P333352576343243044

noncomputable section

/-- A327327: Partial sums of the sum of nonpowers of 2 dividing n.

Offset 1, canonical program `A327327.P333352576343243044`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A080277, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327327 (n : ℕ) : ℤ :=
  A327327.P333352576343243044.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A080277, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A327327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A327329.P5185755489289824233

`2*A024916(n+1)`
-/

namespace A327329.P5185755489289824233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024916 (n + 1)

end

end A327329.P5185755489289824233

noncomputable section

/-- A327329: Twice the sum of all divisors of all positive integers <= n.

Offset 1, canonical program `A327329.P5185755489289824233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327329 (n : ℕ) : ℤ :=
  A327329.P5185755489289824233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A327329.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A328366.P4444315487186983068`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328366 (n : ℕ) : ℤ :=
  A328366.P4444315487186983068.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331080.P324264719985017404

`∑[A007425(n+1)*A007425(n+2)]`
-/

namespace A331080.P324264719985017404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) * A007425 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331080.P324264719985017404

noncomputable section

/-- A331080: a(n) = Sum_{i=1..n} d_3(i)*d_3(i+1), where d_3(n) = A007425(n).

Offset 1, canonical program `A331080.P324264719985017404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331080 (n : ℕ) : ℤ :=
  A331080.P324264719985017404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A331080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A331194.P6979775353615167908

`eq[(n+1)%10, A001221(n+1)]+1`
-/

namespace A331194.P6979775353615167908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331194.P6979775353615167908

noncomputable section

/-- A331194: Numbers whose last digit is the number of their distinct prime factors.

Offset 1, canonical program `A331194.P6979775353615167908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4880 terms. -/
def A331194 (n : ℕ) : ℤ :=
  (A331194.P6979775353615167908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4880 terms. -/
def A331194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332264.P12409925469232935551

`A143128(n+1)-A024916(n+1)`
-/

namespace A332264.P12409925469232935551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143128 (n + 1) - A024916 (n + 1)

end

end A332264.P12409925469232935551

noncomputable section

/-- A332264: Partial sums of A334136.

Offset 1, canonical program `A332264.P12409925469232935551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A143128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332264 (n : ℕ) : ℤ :=
  A332264.P12409925469232935551.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A143128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A332264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334579.P14328322525773657863

`∑{d}[n+1, A009205(#)]`
-/

namespace A334579.P14328322525773657863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A009205 d

end

end A334579.P14328322525773657863

noncomputable section

/-- A334579: a(n) = Sum_{d|n} gcd(tau(d), sigma(d)).

Offset 1, canonical program `A334579.P14328322525773657863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334579 (n : ℕ) : ℤ :=
  A334579.P14328322525773657863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334614.P10789168976288843835

`A000720(p?[round(8*n/7)]-n-1)+n+1`
-/

namespace A334614.P10789168976288843835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ) - 1).toNat + (n + 1 : ℤ)

end

end A334614.P10789168976288843835

noncomputable section

/-- A334614: a(n) = pi(prime(n) - n) + n, where pi is the prime counting function.

Offset 1, canonical program `A334614.P10789168976288843835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334614 (n : ℕ) : ℤ :=
  A334614.P10789168976288843835.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334714.P8757616556626411084

`A062298(a(n-1))+A000720(n+1)` with `a(0)=1`
-/

namespace A334714.P8757616556626411084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062298 (a (n - 1)).toNat + A000720 (n + 1)

end

end A334714.P8757616556626411084

noncomputable section

/-- A334714: Partial sums of A335294.

Offset 1, canonical program `A334714.P8757616556626411084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334714 (n : ℕ) : ℤ :=
  A334714.P8757616556626411084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334729.P8285158854772711246

`∏{d}[n+1, A009205(#)]`
-/

namespace A334729.P8285158854772711246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A009205 d

end

end A334729.P8285158854772711246

noncomputable section

/-- A334729: a(n) = Product_{d|n} gcd(tau(d), sigma(d)).

Offset 1, canonical program `A334729.P8285158854772711246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334729 (n : ℕ) : ℤ :=
  A334729.P8285158854772711246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336068.P10652948388313036667

`eq[n+1, lcm(n+1, A007949(n+1))]+1`
-/

namespace A336068.P10652948388313036667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A007949 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336068.P10652948388313036667

noncomputable section

/-- A336068: Numbers k such that the exponent of the highest power of 3 dividing k (A007949) is a divisor of k.

Offset 1, canonical program `A336068.P10652948388313036667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2869 terms. -/
def A336068 (n : ℕ) : ℤ :=
  (A336068.P10652948388313036667.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2869 terms. -/
def A336068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336357.P4795503866043282121

`lt[A001221(A000203(n+1)), A001221(n+1)]+1`
-/

namespace A336357.P4795503866043282121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336357.P4795503866043282121

noncomputable section

/-- A336357: Numbers k such that sigma(k) has fewer distinct prime factors than k.

Offset 1, canonical program `A336357.P4795503866043282121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A336357 (n : ℕ) : ℤ :=
  (A336357.P4795503866043282121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A336357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336691.P11677497221643847054

`A001221(∑{d}[n+1, #]+1)`
-/

namespace A336691.P11677497221643847054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A336691.P11677497221643847054

noncomputable section

/-- A336691: Number of distinct prime factors of 1+sigma(n).

Offset 1, canonical program `A336691.P11677497221643847054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336691 (n : ℕ) : ℤ :=
  A336691.P11677497221643847054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337788.P15449810275862815946

`A000720(n+A000720(n+1)+1)-A000720(n+1)`
-/

namespace A337788.P15449810275862815946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n : ℤ) + A000720 (n + 1) + 1).toNat - A000720 (n + 1)

end

end A337788.P15449810275862815946

noncomputable section

/-- A337788: The number of primes between n exclusive and n+primepi(n) inclusive.

Offset 1, canonical program `A337788.P15449810275862815946`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337788 (n : ℕ) : ℤ :=
  A337788.P15449810275862815946.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337788.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337958.P12404316380630835594

`2*A337957(n+1)-A337956(n+1)`
-/

namespace A337958.P12404316380630835594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337957 (n + 1) - A337956 (n + 1)

end

end A337958.P12404316380630835594

noncomputable section

/-- A337958: Number of achiral colorings of the 8 cubic facets of a tesseract or of the 8 vertices of a hyperoctahedron.

Offset 1, canonical program `A337958.P12404316380630835594`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337956, A337957, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337958 (n : ℕ) : ℤ :=
  A337958.P12404316380630835594.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337956, A337957, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A338215.P776974730790204605

`A095117(A062298(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A338215.P776974730790204605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (A062298 (n + 1)).toNat

end

end A338215.P776974730790204605

noncomputable section

/-- A338215: a(n) = A095117(A062298(n)).

Offset 1, canonical program `A338215.P776974730790204605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062298, A095117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338215 (n : ℕ) : ℤ :=
  A338215.P776974730790204605.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062298, A095117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A338215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339085.P11960722051434556278

`A000720(n+A000720(n+1)+1)-A000720(n-A000720(n+1)+1)`
-/

namespace A339085.P11960722051434556278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n : ℤ) + A000720 (n + 1) + 1).toNat - A000720 ((n : ℤ) - A000720 (n + 1) + 1).toNat

end

end A339085.P11960722051434556278

noncomputable section

/-- A339085: Number of primes p with n - pi(n) < p <= n + pi(n), where pi(n) is the number of primes <= n.

Offset 1, canonical program `A339085.P11960722051434556278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339085 (n : ℕ) : ℤ :=
  A339085.P11960722051434556278.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A339085.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A339184.P8605602739743868838

`A135034(n)-A135034(ceil(n/2))`
-/

namespace A339184.P8605602739743868838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 n - A135034 ⌈(n : ℚ) / 2⌉.toNat

end

end A339184.P8605602739743868838

noncomputable section

/-- A339184: Number of partitions of n into two parts such that the larger part is a nonzero square.

Offset 0, canonical program `A339184.P8605602739743868838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339184 (n : ℕ) : ℤ :=
  A339184.P8605602739743868838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339889.P1394041266667056392

`lt[A051903(n+1)-3, A001221(n+1)]+1`
-/

namespace A339889.P1394041266667056392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A339889.P1394041266667056392

noncomputable section

/-- A339889: Products of distinct primes or semiprimes.

Offset 1, canonical program `A339889.P1394041266667056392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339889 (n : ℕ) : ℤ :=
  (A339889.P1394041266667056392.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339918.P13148734605060684996

`A006218(3*n)-(A005843(n)+A004526(n))`
-/

namespace A339918.P13148734605060684996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (3 * n) - (A005843 n + A004526 n)

end

end A339918.P13148734605060684996

noncomputable section

/-- A339918: a(n) = Sum_{k=1..n} floor(3*n/k).

Offset 0, canonical program `A339918.P13148734605060684996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A339918 (n : ℕ) : ℤ :=
  A339918.P13148734605060684996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A339918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340195.P5948241727633577160

`∑{d}[n+1, A049559(#)]`
-/

namespace A340195.P5948241727633577160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049559 d

end

end A340195.P5948241727633577160

noncomputable section

/-- A340195: a(n) = Sum_{divisors d of n} A049559(d), where A049559(x) = gcd(phi(x), x-1).

Offset 1, canonical program `A340195.P5948241727633577160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340195 (n : ℕ) : ℤ :=
  A340195.P5948241727633577160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341276.P16530414387472096334

`1+A028896(n)-A006218(n)`
-/

namespace A341276.P16530414387472096334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A028896 n - A006218 n

end

end A341276.P16530414387472096334

noncomputable section

/-- A341276: a(n) = 1 + 3*n*(n+1) - Sum_{k=1..n} d(k), where d(k) is the number of divisors of k.

Offset 0, canonical program `A341276.P16530414387472096334`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341276 (n : ℕ) : ℤ :=
  A341276.P16530414387472096334.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A341276.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341523.P14861845080525811485

`∑{e}[A009194(n+1), #]`
-/

namespace A341523.P14861845080525811485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A341523.P14861845080525811485

noncomputable section

/-- A341523: Number of prime factors (with multiplicity) shared by n and sigma(n): a(n) = bigomega(gcd(n, sigma(n))).

Offset 1, canonical program `A341523.P14861845080525811485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341523 (n : ℕ) : ℤ :=
  (A341523.P14861845080525811485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343110.P14036708916110220053

`eq[0, A188172(n+1)]+1`
-/

namespace A343110.P14036708916110220053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343110.P14036708916110220053

noncomputable section

/-- A343110: Numbers having no divisor of the form 8*k + 7.

Offset 1, canonical program `A343110.P14036708916110220053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4347 terms. -/
def A343110 (n : ℕ) : ℤ :=
  (A343110.P14036708916110220053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4347 terms. -/
def A343110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344223.P14367821288968346752

`(n+1)*∑{d}[n+1, (n+1)^A001221(#)/#]`
-/

namespace A344223.P14367821288968346752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A001221 d : ℤ) / (d : ℚ))

end

end A344223.P14367821288968346752

noncomputable section

/-- A344223: a(n) = Sum_{k=1..n} tau(gcd(k,n)^n), where tau(n) is the number of divisors of n.

Offset 1, canonical program `A344223.P14367821288968346752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344223 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A344223.P14367821288968346752.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345355.P18399799280978424985

`∑{p}[n+1, #^A001221((n+1)/#)]`
-/

namespace A345355.P18399799280978424985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat : ℤ)

end

end A345355.P18399799280978424985

noncomputable section

/-- A345355: a(n) = Sum_{p|n, p prime} p^omega(n/p).

Offset 1, canonical program `A345355.P18399799280978424985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A345355.P18399799280978424985.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A345355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347094.P17942219228521589400

`A038040(n+1)+A328722(n+1)`
-/

namespace A347094.P17942219228521589400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) + A328722 (n + 1)

end

end A347094.P17942219228521589400

noncomputable section

/-- A347094: Sum of A038040 (convolution of sigma with Euler phi) and its Dirichlet inverse.

Offset 1, canonical program `A347094.P17942219228521589400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A328722, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347094 (n : ℕ) : ℤ :=
  A347094.P17942219228521589400.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038040, A328722, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350107.P1008043692238485637

`2*A143127(n+1)-A024916(n+1)`
-/

namespace A350107.P1008043692238485637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143127 (n + 1) - A024916 (n + 1)

end

end A350107.P1008043692238485637

noncomputable section

/-- A350107: a(n) = Sum_{k=1..n} k * floor(n/k)^2.

Offset 1, canonical program `A350107.P1008043692238485637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A143127, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350107 (n : ℕ) : ℤ :=
  A350107.P1008043692238485637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A143127, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350107.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350108.P2277365094345231568

`A024916(n+1)+3*A143128(n+1)-3*A143127(n+1)`
-/

namespace A350108.P2277365094345231568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + 3 * A143128 (n + 1) - 3 * A143127 (n + 1)

end

end A350108.P2277365094345231568

noncomputable section

/-- A350108: a(n) = Sum_{k=1..n} k * floor(n/k)^3.

Offset 1, canonical program `A350108.P2277365094345231568`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A143127, A143128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350108 (n : ℕ) : ℤ :=
  A350108.P2277365094345231568.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A143127, A143128, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A350108.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A350159.P901158934797568537

`A099777(n+1)+A000203(n+1)`
-/

namespace A350159.P901158934797568537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) + A000203 (n + 1)

end

end A350159.P901158934797568537

noncomputable section

/-- A350159: Number of subgroups of the dicyclic group Dic_n.

Offset 1, canonical program `A350159.P901158934797568537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099777, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350159 (n : ℕ) : ℤ :=
  A350159.P901158934797568537.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099777, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350159.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351439.P4622805423921165504

`A001221(gcd(n+1, A017665(n+1)))`
-/

namespace A351439.P4622805423921165504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (n + 1 : ℤ) (A017665 (n + 1)))

end

end A351439.P4622805423921165504

noncomputable section

/-- A351439: Number of prime factors p of n such that p^(1+valuation(n,p)) divides sigma(n).

Offset 1, canonical program `A351439.P4622805423921165504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351439 (n : ℕ) : ℤ :=
  A351439.P4622805423921165504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351843.P5616510655248736254

`A000203(n+1)*A008472(n+1)`
-/

namespace A351843.P5616510655248736254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A008472 (n + 1)

end

end A351843.P5616510655248736254

noncomputable section

/-- A351843: a(n) = sigma(n) * sopf(n).

Offset 1, canonical program `A351843.P5616510655248736254`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351843 (n : ℕ) : ℤ :=
  A351843.P5616510655248736254.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A351843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353134.P518667353040253407

`A000720((n+1)*∑{digits}[n+1, #])`
-/

namespace A353134.P518667353040253407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A353134.P518667353040253407

noncomputable section

/-- A353134: a(n) = PrimePi(n*SumOfDigits(n)).

Offset 1, canonical program `A353134.P518667353040253407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3788 terms. -/
def A353134 (n : ℕ) : ℤ :=
  A353134.P518667353040253407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3788 terms. -/
def A353134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353817.P3406860122766679345

`A010055(n+1)-A353800(n+1)`
-/

namespace A353817.P3406860122766679345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) - A353800 (n + 1)

end

end A353817.P3406860122766679345

noncomputable section

/-- A353817: a(n) = 1 if n is a prime power with an odd exponent, otherwise 0.

Offset 1, canonical program `A353817.P3406860122766679345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, A353800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353817 (n : ℕ) : ℤ :=
  A353817.P3406860122766679345.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, A353800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353817.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357215.P13758064934684103236

`2^A000720(n+1)-1`
-/

namespace A357215.P13758064934684103236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000720 (n + 1) : ℤ) - 1

end

end A357215.P13758064934684103236

noncomputable section

/-- A357215: a(n) = number of nonempty subsets S of {1, 2, ..., n} that contain only primes.

Offset 1, canonical program `A357215.P13758064934684103236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357215 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A357215.P13758064934684103236.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A357215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359239.P16669171904061520890

`A001822(3*n+1)`
-/

namespace A359239.P16669171904061520890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (3 * n + 1)

end

end A359239.P16669171904061520890

noncomputable section

/-- A359239: Number of divisors of 3*n-2 of form 3*k+2.

Offset 1, canonical program `A359239.P16669171904061520890`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359239 (n : ℕ) : ℤ :=
  A359239.P16669171904061520890.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001822, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359832.P15543321795730724365

`1-A328981(n+1)`
-/

namespace A359832.P15543321795730724365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A328981 (n + 1)

end

end A359832.P15543321795730724365

noncomputable section

/-- A359832: a(n) = 1 if the 2-adic valuation of n is either 0 or odd, otherwise 0.

Offset 1, canonical program `A359832.P15543321795730724365`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328981, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359832 (n : ℕ) : ℤ :=
  A359832.P15543321795730724365.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328981, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361264.P6755303600206869457

`A064549(n+1)*A007947(n+1)`
-/

namespace A361264.P6755303600206869457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) * A007947 (n + 1)

end

end A361264.P6755303600206869457

noncomputable section

/-- A361264: Multiplicative with a(p^e) = p^(e + 2), e > 0.

Offset 1, canonical program `A361264.P6755303600206869457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361264 (n : ℕ) : ℤ :=
  A361264.P6755303600206869457.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361265.P11907308521798501536

`A005361(n+1)*A064549(n+1)`
-/

namespace A361265.P11907308521798501536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A064549 (n + 1)

end

end A361265.P11907308521798501536

noncomputable section

/-- A361265: Multiplicative with a(p^e) = e * p^(e + 1), e > 0.

Offset 1, canonical program `A361265.P11907308521798501536`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361265 (n : ℕ) : ℤ :=
  A361265.P11907308521798501536.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362527.P900221847411490249

`A000040(A000720(a(n-1)+n))` with `a(0)=2`
-/

namespace A362527.P900221847411490249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A000720 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A362527.P900221847411490249

noncomputable section

/-- A362527: a(1) = 2 and a(n+1) is the largest prime <= a(n) + n.

Offset 1, canonical program `A362527.P900221847411490249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. -/
def A362527 (n : ℕ) : ℤ :=
  A362527.P900221847411490249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 454 terms. -/
def A362527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364360.P2176297382082199936

`∏{e}[n, A001221(n)^#]`
-/

namespace A364360.P2176297382082199936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001221 n ^ Nat.factorization (f1 n) p

end

end A364360.P2176297382082199936

noncomputable section

/-- A364360: a(n) = dpf(n) ^ tpf(n), where dpf(n) is the number of distinct prime factors of n if n >= 2 and otherwise = 0; tpf(n) is the number of all prime factors of n if n >= 2 and otherwise = 0.

Offset 0, canonical program `A364360.P2176297382082199936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A364360 (n : ℕ) : ℤ :=
  A364360.P2176297382082199936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A364360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364970.P269985968203337812

`(A064602(n+1)+A024916(n+1))/2`
-/

namespace A364970.P269985968203337812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064602 (n + 1) + A024916 (n + 1) : ℚ) / 2

end

end A364970.P269985968203337812

noncomputable section

/-- A364970: a(n) = Sum_{k=1..n} binomial(floor(n/k)+2,3).

Offset 1, canonical program `A364970.P269985968203337812`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A064602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364970 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A364970.P269985968203337812.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A064602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A364970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365409.P15440935900468717618

`(A064603(n+1)+3*A064602(n+1)+2*A024916(n+1))/6`
-/

namespace A365409.P15440935900468717618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064603 (n + 1) + 3 * A064602 (n + 1) + 2 * A024916 (n + 1) : ℚ) / 6

end

end A365409.P15440935900468717618

noncomputable section

/-- A365409: a(n) = Sum_{k=1..n} binomial(floor(n/k)+3,4).

Offset 1, canonical program `A365409.P15440935900468717618`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A064602, A064603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365409 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365409.P15440935900468717618.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A064602, A064603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365439.P12833997707315348155

`(A064604(n+1)+6*A064603(n+1)+11*A064602(n+1)+6*A024916(n+1))/24`
-/

namespace A365439.P12833997707315348155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064604 (n + 1) + 6 * A064603 (n + 1) + 11 * A064602 (n + 1) + 6 * A024916 (n + 1) : ℚ) / 24

end

end A365439.P12833997707315348155

noncomputable section

/-- A365439: a(n) = Sum_{k=1..n} binomial(floor(n/k)+4,5).

Offset 1, canonical program `A365439.P12833997707315348155`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A064602, A064603, A064604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365439 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365439.P12833997707315348155.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A064602, A064603, A064604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366078.P11404734746980857531

`A001221(n+1)-A295659(n+1)`
-/

namespace A366078.P11404734746980857531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A295659 (n + 1)

end

end A366078.P11404734746980857531

noncomputable section

/-- A366078: The number of distinct prime factors of the cubefree part of n (A360539).

Offset 1, canonical program `A366078.P11404734746980857531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A295659, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366078 (n : ℕ) : ℤ :=
  A366078.P11404734746980857531.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A295659, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366078.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366308.P7657093434936862615

`2^A366246(n+1)`
-/

namespace A366308.P7657093434936862615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366246 (n + 1) : ℤ)

end

end A366308.P7657093434936862615

noncomputable section

/-- A366308: The number of infinitary divisors of n that are terms of A366242.

Offset 1, canonical program `A366308.P7657093434936862615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366308 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366308.P7657093434936862615.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366246, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366967.P15258383013760261162

`(A064602(n+1)-A024916(n+1))/2`
-/

namespace A366967.P15258383013760261162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064602 (n + 1) - A024916 (n + 1) : ℚ) / 2

end

end A366967.P15258383013760261162

noncomputable section

/-- A366967: a(n) = Sum_{k=2..n} binomial(k,2) * floor(n/k).

Offset 1, canonical program `A366967.P15258383013760261162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A064602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366967 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366967.P15258383013760261162.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A064602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366971.P178044051024339791

`(A064603(n+1)-3*A064602(n+1)+2*A024916(n+1))/6`
-/

namespace A366971.P178044051024339791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064603 (n + 1) - 3 * A064602 (n + 1) + 2 * A024916 (n + 1) : ℚ) / 6

end

end A366971.P178044051024339791

noncomputable section

/-- A366971: a(n) = Sum_{k=3..n} binomial(k,3) * floor(n/k).

Offset 1, canonical program `A366971.P178044051024339791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A064602, A064603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366971 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366971.P178044051024339791.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A064602, A064603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366988.P1976086418433088332

`∑{e}[n+1, A000720(#)]`
-/

namespace A366988.P1976086418433088332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000720 (Nat.factorization (f1 n) p)

end

end A366988.P1976086418433088332

noncomputable section

/-- A366988: The number of prime powers of prime numbers (A053810) that divide n.

Offset 1, canonical program `A366988.P1976086418433088332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366988 (n : ℕ) : ℤ :=
  A366988.P1976086418433088332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366988.provenance : SequenceMachineLib.Provenance := .conjectured

